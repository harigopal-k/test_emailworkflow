{
	"contents": {
		"d58bd85b-2960-4c4a-ad36-6c1b67be90c0": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "email.hari.emailworkflow",
			"subject": "EmailWorkflow",
			"name": "EmailWorkflow",
			"documentation": "Email Workflow",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				},
				"d2cf4c91-e7bb-49e2-a9e5-bd3493f193ca": {
					"name": "StartEvent2"
				}
			},
			"activities": {
				"58519b33-1222-4f85-987e-661ecd2b514c": {
					"name": "MailTask1"
				},
				"8d777a2b-89eb-48a8-b1de-dcb0d05acf58": {
					"name": "EmailCheck"
				},
				"0092718b-b4d8-42a2-8620-b772e361553c": {
					"name": "CheckStatus"
				},
				"625a5968-54e1-48b1-b5b9-8d4d20ef285e": {
					"name": "ExclusiveGateway2"
				},
				"73fe19b5-d27d-4d28-8eda-546363e4b0e9": {
					"name": "MailTask3"
				}
			},
			"sequenceFlows": {
				"3226f992-8eee-4832-acbb-28482fa0bd38": {
					"name": "SequenceFlow2"
				},
				"7c781406-5ffe-4559-8b57-e9e05d0b04f7": {
					"name": "SequenceFlow5"
				},
				"483abf17-98cc-461f-adb7-a5486188f4f0": {
					"name": "SequenceFlow8"
				},
				"b15a3002-7626-45b4-ab90-96273829d0dc": {
					"name": "SequenceFlow9"
				},
				"bf70656d-9f19-4bfd-aba0-2074088aff31": {
					"name": "SequenceFlow13"
				},
				"8c302070-a367-42ca-83cf-c93222cff7e0": {
					"name": "SequenceFlow14"
				},
				"e6e17532-24f4-4900-b047-52aeeac0b472": {
					"name": "SequenceFlow15"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"d2cf4c91-e7bb-49e2-a9e5-bd3493f193ca": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent2",
			"name": "StartEvent2",
			"sampleContextRefs": {
				"47eb6e46-323d-4f5a-a7b5-eeed615cd97b": {}
			}
		},
		"58519b33-1222-4f85-987e-661ecd2b514c": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask1",
			"name": "MailTask1",
			"mailDefinitionRef": "2d55c0d8-4ce5-4363-a54e-8d957b0bb594"
		},
		"8d777a2b-89eb-48a8-b1de-dcb0d05acf58": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Checking Email Status",
			"description": "Checking Email Status ",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": true,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/EmailWorkflow/EmailStatusCheck.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "emailstatuscheck"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "EmailCheck",
			"dueDateRef": "aeede05f-ab16-4652-a153-8aacdb514e41"
		},
		"0092718b-b4d8-42a2-8620-b772e361553c": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/EmailWorkflow/emailCheckStatus.js",
			"id": "scripttask1",
			"name": "CheckStatus"
		},
		"625a5968-54e1-48b1-b5b9-8d4d20ef285e": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "ExclusiveGateway2",
			"default": "8c302070-a367-42ca-83cf-c93222cff7e0"
		},
		"73fe19b5-d27d-4d28-8eda-546363e4b0e9": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask3",
			"name": "MailTask3",
			"mailDefinitionRef": "7b53d000-b633-4bb3-aaec-8629d4e78c8a"
		},
		"3226f992-8eee-4832-acbb-28482fa0bd38": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "58519b33-1222-4f85-987e-661ecd2b514c",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"7c781406-5ffe-4559-8b57-e9e05d0b04f7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "0092718b-b4d8-42a2-8620-b772e361553c",
			"targetRef": "625a5968-54e1-48b1-b5b9-8d4d20ef285e"
		},
		"483abf17-98cc-461f-adb7-a5486188f4f0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "d2cf4c91-e7bb-49e2-a9e5-bd3493f193ca",
			"targetRef": "8d777a2b-89eb-48a8-b1de-dcb0d05acf58"
		},
		"b15a3002-7626-45b4-ab90-96273829d0dc": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "8d777a2b-89eb-48a8-b1de-dcb0d05acf58",
			"targetRef": "0092718b-b4d8-42a2-8620-b772e361553c"
		},
		"bf70656d-9f19-4bfd-aba0-2074088aff31": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"correct\"}",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "625a5968-54e1-48b1-b5b9-8d4d20ef285e",
			"targetRef": "58519b33-1222-4f85-987e-661ecd2b514c"
		},
		"8c302070-a367-42ca-83cf-c93222cff7e0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "625a5968-54e1-48b1-b5b9-8d4d20ef285e",
			"targetRef": "73fe19b5-d27d-4d28-8eda-546363e4b0e9"
		},
		"e6e17532-24f4-4900-b047-52aeeac0b472": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "73fe19b5-d27d-4d28-8eda-546363e4b0e9",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"7649bac7-80b4-452f-9ebf-ca8b4eb565ea": {},
				"472332e3-10dc-4c29-a089-1011ddb096c6": {},
				"d8b6f3d0-4f5d-4434-826c-f80f7aaa0244": {},
				"1c1cf8b3-c081-4072-9db2-57fe9fcd3339": {},
				"e15e09ad-cd59-4a31-a054-326a6d3490e7": {},
				"e3f46782-9484-42f3-937e-4da07d0f8bf4": {},
				"7c002339-1eaf-4935-927d-cb8bbbadd897": {},
				"711b535d-ac49-49f3-bbbd-c0d948b4adc4": {},
				"55fca27c-6c8e-4fa8-85cb-9e09630214f8": {},
				"b4f00ccf-ffc6-42d4-8080-d3d8e50a7685": {},
				"ec20c83f-ac5d-486d-b5f7-8449787874d9": {},
				"04d225e3-6dd3-46e9-8b6b-b858d9f6789c": {},
				"252c5011-9f4c-44e3-8b79-071db46fee9a": {}
			}
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 675.9999976158142,
			"y": 79.5,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"7649bac7-80b4-452f-9ebf-ca8b4eb565ea": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 505.9999988079071,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "58519b33-1222-4f85-987e-661ecd2b514c"
		},
		"472332e3-10dc-4c29-a089-1011ddb096c6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "605.9999988079071,42 640.9999982118607,42 640.9999982118607,97 675.9999976158142,97",
			"sourceSymbol": "7649bac7-80b4-452f-9ebf-ca8b4eb565ea",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "3226f992-8eee-4832-acbb-28482fa0bd38"
		},
		"d8b6f3d0-4f5d-4434-826c-f80f7aaa0244": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"isAdjustToContent": false,
			"x": 94,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "8d777a2b-89eb-48a8-b1de-dcb0d05acf58"
		},
		"1c1cf8b3-c081-4072-9db2-57fe9fcd3339": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 244,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "0092718b-b4d8-42a2-8620-b772e361553c"
		},
		"e15e09ad-cd59-4a31-a054-326a6d3490e7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "344,97 394,97",
			"sourceSymbol": "1c1cf8b3-c081-4072-9db2-57fe9fcd3339",
			"targetSymbol": "55fca27c-6c8e-4fa8-85cb-9e09630214f8",
			"object": "7c781406-5ffe-4559-8b57-e9e05d0b04f7"
		},
		"e3f46782-9484-42f3-937e-4da07d0f8bf4": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 81,
			"width": 32,
			"height": 32,
			"object": "d2cf4c91-e7bb-49e2-a9e5-bd3493f193ca"
		},
		"7c002339-1eaf-4935-927d-cb8bbbadd897": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,97 94,97",
			"sourceSymbol": "e3f46782-9484-42f3-937e-4da07d0f8bf4",
			"targetSymbol": "d8b6f3d0-4f5d-4434-826c-f80f7aaa0244",
			"object": "483abf17-98cc-461f-adb7-a5486188f4f0"
		},
		"711b535d-ac49-49f3-bbbd-c0d948b4adc4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,97 244,97",
			"sourceSymbol": "d8b6f3d0-4f5d-4434-826c-f80f7aaa0244",
			"targetSymbol": "1c1cf8b3-c081-4072-9db2-57fe9fcd3339",
			"object": "b15a3002-7626-45b4-ab90-96273829d0dc"
		},
		"55fca27c-6c8e-4fa8-85cb-9e09630214f8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 394,
			"y": 76,
			"object": "625a5968-54e1-48b1-b5b9-8d4d20ef285e"
		},
		"b4f00ccf-ffc6-42d4-8080-d3d8e50a7685": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "436,97 470.99999940395355,97 470.99999940395355,42 505.4999988079071,42",
			"sourceSymbol": "55fca27c-6c8e-4fa8-85cb-9e09630214f8",
			"targetSymbol": "7649bac7-80b4-452f-9ebf-ca8b4eb565ea",
			"object": "bf70656d-9f19-4bfd-aba0-2074088aff31"
		},
		"ec20c83f-ac5d-486d-b5f7-8449787874d9": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 505.9999988079071,
			"y": 122,
			"width": 100,
			"height": 60,
			"object": "73fe19b5-d27d-4d28-8eda-546363e4b0e9"
		},
		"04d225e3-6dd3-46e9-8b6b-b858d9f6789c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "436,97 470.99999940395355,97 470.99999940395355,152 505.9999988079071,152",
			"sourceSymbol": "55fca27c-6c8e-4fa8-85cb-9e09630214f8",
			"targetSymbol": "ec20c83f-ac5d-486d-b5f7-8449787874d9",
			"object": "8c302070-a367-42ca-83cf-c93222cff7e0"
		},
		"252c5011-9f4c-44e3-8b79-071db46fee9a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "605.9999988079071,152 640.9999982118607,152 640.9999982118607,97 675.9999976158142,97",
			"sourceSymbol": "ec20c83f-ac5d-486d-b5f7-8449787874d9",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "e6e17532-24f4-4900-b047-52aeeac0b472"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 1,
			"timereventdefinition": 2,
			"maildefinition": 3,
			"sequenceflow": 15,
			"startevent": 2,
			"boundarytimerevent": 1,
			"endevent": 5,
			"usertask": 2,
			"servicetask": 1,
			"scripttask": 1,
			"mailtask": 3,
			"exclusivegateway": 2
		},
		"2d55c0d8-4ce5-4363-a54e-8d957b0bb594": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "harikonka12@gmail.com",
			"subject": "Mail Task Test",
			"text": "Hai \n\nYou email accepted\n\nThankyou,\nHarigopal Konka\n\n",
			"id": "maildefinition1"
		},
		"aeede05f-ab16-4652-a153-8aacdb514e41": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "PT1M",
			"id": "timereventdefinition1"
		},
		"47eb6e46-323d-4f5a-a7b5-eeed615cd97b": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/EmailWorkflow/EmailData.json",
			"id": "default-start-context"
		},
		"7b53d000-b633-4bb3-aaec-8629d4e78c8a": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition3",
			"to": "harikonka12@gmail.com",
			"subject": "Mail Task Test",
			"text": "Hai \n\nYou email Rejected\n\nThankyou,\nHarigopal Konka",
			"id": "maildefinition3"
		}
	}
}