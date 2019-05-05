Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5AC13E6A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 10:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WNvC3Pna2tEZw6dPGE0H7BeDSq3XSqTHTT4VWxaRGZI=; b=TTyxBzI499hEnN
	qk8j2SSIW6EHzcM8YcDdfOgMYkwWCx0UO82rz+SvZ1Mkz3E+TntXLpB9LyvWH9PiPW6ZfP22RZSxF
	eispaed7bC6KjiUOn/EXE3WBIuwoCfucIXjJLHTsRw6KjwIh0SbHOV560/8QXzCBpMnYAy6VgjeR0
	0LkEATKXWOnvH43GroOELGCfaEBz0WdB5EBBrx0BO+LZ3hsklFb6cKK3fSvtmXt6wu2UZEWEiRwWA
	jsQaA2OPYSFF0cF9pO/ZLgDjAt2jlPccpY1iuD/dgh80bHmpElESyfTN20FJJSNikvt861JZBGp8c
	VtzSMRj0jI1/F5PAkavw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNCJJ-0004ax-Di; Sun, 05 May 2019 08:15:49 +0000
Received: from mail-eopbgr150054.outbound.protection.outlook.com
 ([40.107.15.54] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNCJ8-0004a7-LJ
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 08:15:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kso9ZyYmPBMRShcghg2dkksDSFi/nLOrvKe/M3AgMpo=;
 b=se3dZORaO1p7DVKQhZ2IXS0dh5kFbpttJyceslSxIM86QrAiRVjA791lPDeU30q8OvM6Q+BaGxFt+Ue1EVLWYxga7tTxzQ25Fz/NRz9xuEOdjfFJmz+UsThWgNL3puVM5I/pux9hQRE6R8akH+p6u3ggdkBq+QAp5HSz3P/xzx8=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.5.23) by
 VI1PR0402MB3519.eurprd04.prod.outlook.com (52.134.4.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.14; Sun, 5 May 2019 08:15:31 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::9889:fa82:4172:14df]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::9889:fa82:4172:14df%6]) with mapi id 15.20.1856.012; Sun, 5 May 2019
 08:15:31 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Kay-Liu <liuk@cetca.net.cn>
Subject: RE: [PATCHv2 1/2] ARM: dts: imx6sx: Use MX6SX_CLK_ENET for fec 'ahb'
 clock
Thread-Topic: [PATCHv2 1/2] ARM: dts: imx6sx: Use MX6SX_CLK_ENET for fec 'ahb'
 clock
Thread-Index: AQHVAmkSkfnHjuPrDUuL+rGIVj8MEqZcLD7wgAABdIA=
Date: Sun, 5 May 2019 08:15:31 +0000
Message-ID: <VI1PR0402MB360058CE70AD60C116EE0634FF370@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <1556190530-19541-1-git-send-email-liuk@cetca.net.cn>
 <CAOMZO5BbA6oq8okTR-r800k4XY76XxxEdufd1mjcV6HdTpVotA@mail.gmail.com>
 <AM0PR04MB421133A3F3C6B534B6ECEA7880370@AM0PR04MB4211.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB421133A3F3C6B534B6ECEA7880370@AM0PR04MB4211.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2e285bd0-7298-4772-e11c-08d6d131d75e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3519; 
x-ms-traffictypediagnostic: VI1PR0402MB3519:
x-microsoft-antispam-prvs: <VI1PR0402MB35196B7E4F94609087D5223FFF370@VI1PR0402MB3519.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 00286C0CA6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(366004)(346002)(39860400002)(136003)(376002)(396003)(199004)(189003)(68736007)(86362001)(76176011)(7696005)(2906002)(99286004)(8936002)(6506007)(229853002)(8676002)(81156014)(81166006)(53546011)(102836004)(110136005)(73956011)(5660300002)(55016002)(52536014)(14444005)(66946007)(66446008)(64756008)(66556008)(66476007)(256004)(6246003)(53936002)(76116006)(4326008)(25786009)(33656002)(74316002)(446003)(11346002)(476003)(305945005)(186003)(7736002)(54906003)(7416002)(14454004)(316002)(66066001)(486006)(478600001)(26005)(9686003)(3846002)(71190400001)(6116002)(71200400001)(6436002)(32563001)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3519;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vXxP/X3ddQ+db0Zu1pvaLfOSDj0oJskKdpXPMGxbm9jF1OmLUyZJltdCdsMt/C7LKkUF4HMQwIfecXZbdM/mRYIgOdeY9jUeor6qYqM6fLtMr7muld1vJox+FbrZ2Ecxs+bvWhG0CxUBllDymCRFFTgaMX/hnbS3gMadJrOIBfqWLIKET9Z4sDqmAIiYcjFr0kEkfGTXzrqYh/RtaTcxkib9bJVbpxbUNydJbTvTS3NJJ1WkEZRI3WineHBTFAaQ+/FaxhbsVB6LFC7F6fcEBEddiK84hNE6rdyveo6fC0oxD9daftpaj+eAXTkYsSKD4kGJ5Qr82cL1Ivygf/16StLIEmTIy6FlMym5fUgePoSVF0zlI8u9KHeCPkEmZaxrDa+S385Ec7sEsy0YyQtQxouz1x4YlDOAg1BlpQJropo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e285bd0-7298-4772-e11c-08d6d131d75e
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2019 08:15:31.5375 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3519
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_011538_705129_D17E3004 
X-CRM114-Status: GOOD (  28.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, "open
 list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQWlzaGVuZyBEb25nIFNlbnQ6IFN1bmRheSwgTWF5IDUsIDIwMTkgNDowMyBQTQ0KPiA+
IEZyb206IEZhYmlvIEVzdGV2YW0gW21haWx0bzpmZXN0ZXZhbUBnbWFpbC5jb21dDQo+ID4gU2Vu
dDogU2F0dXJkYXksIE1heSA0LCAyMDE5IDc6MDQgUE0NCj4gPg0KPiA+IEhpIEtheS1MaXUsDQo+
ID4NCj4gPiBPbiBUaHUsIEFwciAyNSwgMjAxOSBhdCA4OjA5IEFNIDxsaXVrQGNldGNhLm5ldC5j
bj4gd3JvdGU6DQo+ID4gPg0KPiA+ID4gRnJvbTogS2F5LUxpdSA8bGl1a0BjZXRjYS5uZXQuY24+
DQo+ID4gPg0KPiA+ID4gVGhlIGlteDZzeCdzIGR0cyBmaWxlIGRlZmluZXMgZml2ZSBjbG9ja3Mg
Zm9yIGZlYywgdGhlICdhaGInY2xvY2sncw0KPiA+ID4gdmFsdWUgaXMgSU1YNlNYX0NMS19FTkVU
X0FIQiwgYnV0IGluIHRoZSBpLk1YNlNYIFJlZmVyZW5jZSBNYW51YWwNCj4gPiA+IHRoZXJlIGlz
IG5vIHN1Y2ggZW5ldCBhaGIgY2xvY2ssIHRoZXJlIGlzIG9ubHkgb25lICJlbmV0IGNsb2NrIiBp
bg0KPiA+ID4gdGhlDQo+ID4gPiBDQ01fQ0NHUjMgcmVnaXN0ZXIgd2hpY2ggaXMgY29udHJvbGxl
ZCBieSBiaXRzIDUtNCwgdGhlIGVuZXQgY2xvY2sNCj4gPiA+IGlzIGRlZmluZWQgZm9yIHRoZSAn
aXBnJyBjbG9jaywgdGhpcyBjYW4gY2F1c2UgcHJvYmxlbS4NCj4gPiA+IFRoZSBvcmlnaW5hbCBw
aGVub21lbm9uIGlzIHVzaW5nIGlteDYtc29sb3ggcHJvY2Vzc29yIGFuZCBNYXJ2ZWwNCj4gPiA+
IDg4RTYzOTAgc3dpdGNoIHdpdGggbGludXggT1MsIHRoZSBrZXJuZWwgd2lsbCBoYW5nIGR1cmlu
ZyB0aGUNCj4gPiA+IHN0YXJ0dXAgb2YgdGhlIGxpbnV4IE9TLg0KPiA+ID4gQWZ0ZXIgYW5hbHl6
aW5nIHRoZSBwaGVub21lbm9uLCB0aGUgcmVhc29uIG9mIENQVSBoYW5nIGlzIHJlYWQvd3JpdGUN
Cj4gPiA+IGVuZXQgbW9kdWxlJ3MgcmVnaXN0ZXIgd2hlbiB0aGUgZW5ldCBjbG9jayBpcyBkaXNh
YmxlZC4gVGhlIGtlcm5lbA0KPiA+ID4gY29kZSB0cnkgdG8gYXZvaWRzIHRoZSBwcm9ibGVtIGJ5
IHJlc3VtZSBlbmV0IGNsb2NrIGJlZm9yZQ0KPiA+ID4gcmVhZC93cml0ZSBlbmV0IHJlZ2lzdGVy
Lg0KPiA+ID4gQnV0IHRoZSBlbmV0IG1vZHVsZSdzIGNsb2NrIGNvbmZpZyB3aWxsIGNhdXNlIGEg
c3BlY2lhbCBlbnZpcm9ubWVudA0KPiA+ID4gd2hpY2ggY2FuIGJ5cGFzcyB0aGUgY2xvY2sgcmVz
dW1lIG1lY2hhbmlzbS4NCj4gPiA+IFRoZSBDUFUgaGFzIG9ubHkgb25lIGVuZXQgY2xvY2ssIGFm
dGVyIGtlcm5lbCBwYXJzZXMgdGhlIGR0cyBmaWxlLA0KPiA+ID4gdGhlIHR3byBjbG9jayB2YXJp
YWJsZXMgJ2lwZycgYW5kICdhaGInDQo+ID4gPiBmaW5uYWx5IHBvaW50IHRvIHRoZSBzYW1lIGVu
ZXQgY2xvY2sgcmVnaXN0ZXIuIFRoaXMgd2lsbCBjYXVzZSBlbmV0DQo+ID4gPiBjbG9jayBiZSBk
aXNhYmxlZCBhZnRlciBmZWMgcHJvYmUgb3Zlci4NCj4gPiA+IEJlY2F1c2UgdGhlIHBvd2VyIHNh
dmluZyBtb2R1bGUgd2lsbCBhZmZlY3QgdGhlIEJVRywgc28gdGhlcmUgYXJlDQo+ID4gPiB0d28g
c2l0dWF0aW9ucyBmb3IgdGhpcyBwcm9ibGVtOg0KPiA+ID4gMSlUdXJuIG9mZiBwb3dlciBzYXZp
bmcNCj4gPiA+IFR1cm4gb2ZmIHBvd2VyIHNhdmluZyBtZWFucyB0aGF0IHRoZSByZXN1bWUgbWVj
aGFuaXNtIGlzIGRpc2FibGVkLA0KPiA+ID4gc28gYWZ0ZXIgZmVjIHByb2JlIG92ZXIgaWYgYW55
IG9uZSByZWFkL3dyaXRlIGVuZXQgbW9kdWxlJ3MNCj4gPiA+IHJlZ2lzdGVyLCB0aGUgQ1BVIHdp
bGwgaGFuZyBiZWNhdXNlIG5vIG9uZSBjb3VsZCByZXN1bWUgdGhlIGVuZXQgY2xvY2suDQo+ID4g
PiAyKVR1cm4gb24gcG93ZXIgc2F2aW5nDQo+ID4gPiBUdXJuIG9uIHBvd2VyIHNhdmluZyBjb3Vs
ZCByZXN1bWUgZW5ldCBjbG9jayBiZWZvcmUgcmVhZC93cml0ZSBlbmV0DQo+ID4gPiByZWdpc3Rl
ciBieSBlbmFibGUgJ2lwZycgY2xrLCB0aGlzIHdpbGwgY2F1c2UgJ2FoYicgdmFyaWFibGUgc3Rh
dGUNCj4gPiA+IGFuZCBlbmV0IGNsb2NrIHJlZ2lzdGVyIHZhbHVlIGRvbid0IG1hdGNoLklmIGFu
eSB0YXNrIHJlYWQvd3JpdGUNCj4gPiA+IGVuZXQgYXQgYSBoaWdoIGZyZXF1ZW50bHksIHRoZSBr
ZXJuZWwgd2lsbCBrZWVwIHJlc3VtZSBzdGF0ZSBhbmQNCj4gPiA+IG5ldmVyIGVudGVyIHN1c3Bl
bmQgcHJvY2VzcywgdGhpcyBtZWFucyB0aGF0IHRoZSBrZXJuZWwgd2lsbCBvbmx5DQo+ID4gPiBt
b2RpZmllcyB0aGUgcmVnaXN0ZXIgdmFsdWUgZHVyaW5nIHRoZSBmaXJzdCByZXN1bWUuDQo+ID4g
PiBCdXQgdGhlIGtlcm5lbCBpbml0IHdpbGwgY2hlY2sgdW51c2VkIGNsb2NrIHZhcmlhYmxlIGlu
IHRoZSBsYXRlDQo+ID4gPiBpbml0Y2FsbCwgdGhlICdhaGInIGNsb2NrIHdpbGwgYmUgdHJlYXRl
ZCBhcyB1bnVzZWQsIGF0IHRoaXMgdGltZSwNCj4gPiA+IHRoZSBlbmV0IGNsb2NrIHdpbGwgYmUg
ZGlzYWJsZWQgYnlwYXNzIHRoZSByZXN1bWUgbWVjaGFuaXNtLCB0aGVuDQo+ID4gPiB0aGUgbmV4
dCByZWFkL3dyaXRlIGVuZXQgbW9kdWxlJ3MgcmVnaXN0ZXIgd2lsbCBjYXVzZSB0aGUgQ1BVIGhh
bmcuDQo+ID4gPiBQcm9wb3NlZCBzb2x1dGlvbiBpcyBkZWxldGUgdGhlICdhaGInIGNsb2NrJ3Mg
ZGVmaW5pdGlvbiBpbiB0aGUNCj4gPiA+IGNsay1pbXg2c3guYywgYW5kIG1vZGlmeSBmZWMgZGV2
aWNl4oCZcyBjbG9ja3MgaW4gdGhlIGR0cyBmaWxlLCBwb2ludA0KPiA+ID4g4oCYYWhi4oCZIGZy
b20gSU1YNlNYX0NMS19FTkVUX0FIQiB0byBJTVg2U1hfQ0xLX0VORVQNCj4gPiA+DQo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBLYXktTGl1IDxsaXVrQGNldGNhLm5ldC5jbj4NCj4gPiA+IC0tLQ0KPiA+
ID4gQ2hhbmdlIHNpbmNlIHYxOg0KPiA+ID4gLWlucHJvdmVkIGNvbW1pdCBsb2cgZGVzY3JpcHRp
b24NCj4gPiA+IC1hZGQgcGxhdGZvcm0gcmVsYXRlZCBjbG9jayBjaGFuZ2UgaW5zdGVhZCBvZiBk
ZXNjcmliZSBpcyBpbiB0aGUNCj4gPiA+IGV4dGVybmFsIFVSTA0KPiA+ID4NCj4gPiA+ICBhcmNo
L2FybS9ib290L2R0cy9pbXg2c3guZHRzaSB8IDQgKystLQ0KPiA+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZzeC5kdHNpDQo+ID4gPiBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL2lteDZzeC5kdHNpIGluZGV4IDViMTZlNjUuLmI4YjIzYTYgMTAwNjQ0DQo+ID4gPiAtLS0g
YS9hcmNoL2FybS9ib290L2R0cy9pbXg2c3guZHRzaQ0KPiA+ID4gKysrIGIvYXJjaC9hcm0vYm9v
dC9kdHMvaW14NnN4LmR0c2kNCj4gPiA+IEBAIC05MTksNyArOTE5LDcgQEANCj4gPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDExOA0KPiA+
IElSUV9UWVBFX0xFVkVMX0hJR0g+LA0KPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgPEdJQ19TUEkgMTE5DQo+ID4gSVJRX1RZUEVfTEVWRUxfSElHSD47
DQo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2xrcw0K
PiBJTVg2U1hfQ0xLX0VORVQ+LA0KPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICA8JmNsa3MNCj4gPiBJTVg2U1hfQ0xLX0VORVRfQUhCPiwNCj4gPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjbGtzDQo+IElNWDZTWF9DTEtf
RU5FVD4sDQo+ID4NCj4gPiBZZXMsIHRoZXJlIGlzIHJlYWxseSBubyBJTVg2U1hfQ0xLX0VORVRf
QUhCIGFzIHBlciB0aGUgUmVmZXJuY2UgTWFudWFsDQo+ID4gYW5kIGl0IGlzIHRoZSBzYW1lIHdl
IGRvIG9uIGlteDZxZGwuZHRzaToNCj4gPg0KPiA+IFJldmlld2VkLWJ5OiBGYWJpbyBFc3RldmFt
IDxmZXN0ZXZhbUBnbWFpbC5jb20+DQoNCk5hY2sgdGhlIHBhdGNoICENCg0KRmlyc3RseSwgaS5N
WDZTWCBoYXMgRU5FVCBBSEIgYnVzIGNsb2NrIGZvciBNQUMsIGFuZCBjdXJyZW50bHkgaXQgaXMg
c2V0IDIwME1oeiBsaWtlIGNsb2NrIHRyZWU6DQoJSU1YNlNYX0NMS19FTkVUX1BPREYgMjAwTWh6
IC0+IElNWDZTWF9DTEtfRU5FVF9TRUwgLT4gSU1YNlNYX0NMS19FTkVUX0FIQg0KDQpJTVg2U1hf
Q0xLX0VORVQgdGhlIGNsb2NrIGlzIElQRyBjbG9jayBmb3IgRU5FVCBJUCBpcGdfY2xrX21hYzBf
cy9pcGdfY2xrX3MuIA0KKFBsZWFzZSBjaGVjayBSTSBUYWJsZSAxOC0zLiBTeXN0ZW0gQ2xvY2tz
LCBHYXRpbmcsIGFuZCBPdmVycmlkZSkNCg0KU2Vjb25kbHksICBmb3IgeW91ciBpc3N1ZSB5b3Ug
Y2F1Z2h0LCB3aGljaCB3YXMgZml4ZWQgYnkgcGF0Y2g6DQpjb21taXQgZDdjM2EyMDZlNjMzOGU0
Y2NkZjAzMDcxOWRlYzAyOGUyNmE1MjFkNQ0KQXV0aG9yOiBBbmR5IER1YW4gPGZ1Z2FuZy5kdWFu
QG54cC5jb20+DQpEYXRlOiAgIFR1ZSBBcHIgOSAwMzo0MDo1NiAyMDE5ICswMDAwDQoNCiAgICBu
ZXQ6IGZlYzogbWFuYWdlIGFoYiBjbG9jayBpbiBydW50aW1lIHBtDQoNCiAgICBTb21lIFNPQyBs
aWtlIGkuTVg2U1ggY2xvY2sgaGF2ZSBzb21lIGxpbWl0czoNCiAgICAtIGFoYiBjbG9jayBzaG91
bGQgYmUgZGlzYWJsZWQgYmVmb3JlIGlwZy4NCiAgICAtIGFoYiBhbmQgaXBnIGNsb2NrcyBhcmUg
cmVxdWlyZWQgZm9yIE1BQyBNSUkgYnVzLg0KICAgIFNvLCBtb3ZlIHRoZSBhaGIgY2xvY2sgdG8g
cnVudGltZSBtYW5hZ2VtZW50IHRvZ2V0aGVyIHdpdGgNCiAgICBpcGcgY2xvY2suDQoNCiAgICBT
aWduZWQtb2ZmLWJ5OiBGdWdhbmcgRHVhbiA8ZnVnYW5nLmR1YW5AbnhwLmNvbT4NCiAgICBTaWdu
ZWQtb2ZmLWJ5OiBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+IA0KDQoNClNv
LCBwbGVhc2UgZG9uJ3QgcmVtb3ZlIGFoYiBjbG9jay4NCg0KQW5keQ0KPiANCj4gQ29weSBBbmR5
LCB0aGUgRU5FVCBvd25lciwgdG8gY29tbWVudC4NCj4gDQo+IEJUVywgaXQncyBzdHJhbmdlIHRo
YXQgSSBkaWQgbm90IHJlY2VpdmUgdGhlIG9yaWdpbmFsIHBhdGNoIGVtYWlsLg0KPiBBbHNvIGNh
bid0IGdyZXAgZnJvbSB0aGUgb3BlbiBsaXN0Lg0KPiANCj4gUmVnYXJkcw0KPiBEb25nIEFpc2hl
bmcNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
