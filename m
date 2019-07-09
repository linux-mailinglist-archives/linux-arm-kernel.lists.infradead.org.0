Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD56A631A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ZDjkn9dmJzQALxIqvPMzFnnjlyv9EpAmTmTR8wMQHs=; b=mE7Hii9/fF25vO
	RHJgUbPxpR1m+KDrW5Hjs9X5rkQWLgXRIDff758xSXnsyFA2IZ8D9oaGpCK/NuXGBslM4W84GyoZV
	n/tr7b22OpldyLQ6sTiCZHD344iifTZZuoEP0M6Gwpffp4nox2wniUUQFg28otz11O8nOVl/d4z3m
	PJV4DF6fn1mlXQGDqBebbCQ4okmqRqp7YDsP7uRd0hpYkdeZZ/lHw4V6R6SVGUxOU/eEJ1ipZVdUc
	xUfUfHpT+vYGoxySMIwXU9PpUDwWxlHPBy9PuR6t24M/2M3cqTfdGHXZ7I40jeO8/GErzbneUUpK2
	MAYow7sauQIewbQF4+hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkGC-0003Sr-QM; Tue, 09 Jul 2019 07:09:56 +0000
Received: from mail-eopbgr50072.outbound.protection.outlook.com ([40.107.5.72]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkFU-0003SF-Oi
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:09:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KxH4YUYLwGxd0Sb/3yJkwrScWFUV2mmh/YlriLm4U84=;
 b=J7A14EywrqqUELgZffA5cRlxdv4SyE6mcpeLd76F6ecxuCSxnGOHDpgQqQsx6EydV5QEQwWs0oBzCC4LY2irzWwY771F86bBvoCsBS8761K2+Xxo+xJ7spnJ67FiSQdv3yAOChFW0NXy6S66QHzAoG4oUfqIIhDmHZqmSHINE2I=
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com (52.133.46.11) by
 AM0PR0402MB3922.eurprd04.prod.outlook.com (52.133.39.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Tue, 9 Jul 2019 07:09:08 +0000
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::dd66:8e13:93f0:65eb]) by AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::dd66:8e13:93f0:65eb%7]) with mapi id 15.20.2052.020; Tue, 9 Jul 2019
 07:09:08 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>, "ohad@wizery.com"
 <ohad@wizery.com>, "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>, 
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>
Subject: RE: [EXT] Re: [RFC 2/2] rpmsg: imx: add the initial imx rpmsg support
Thread-Topic: [EXT] Re: [RFC 2/2] rpmsg: imx: add the initial imx rpmsg support
Thread-Index: AQHVL+e8AnKkQffEIE+CgEkyNPFBIaa6OA6AgAZHdqCAABn1gIABUIMg
Date: Tue, 9 Jul 2019 07:09:07 +0000
Message-ID: <AM0PR0402MB357036066B86CF1E3E6F0C358CF10@AM0PR0402MB3570.eurprd04.prod.outlook.com>
References: <1561968784-1124-1-git-send-email-hongxing.zhu@nxp.com>
 <1561968784-1124-3-git-send-email-hongxing.zhu@nxp.com>
 <3e0a061c-4f5e-ac32-031d-909a48644265@pengutronix.de>
 <AM0PR0402MB35706FFBFD76FF81BCF5E6018CF60@AM0PR0402MB3570.eurprd04.prod.outlook.com>
 <e4629709-fbe7-6af9-3cee-309b2ec1892f@pengutronix.de>
In-Reply-To: <e4629709-fbe7-6af9-3cee-309b2ec1892f@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hongxing.zhu@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 36f4baaf-e20d-46dc-4d47-08d7043c5615
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR0402MB3922; 
x-ms-traffictypediagnostic: AM0PR0402MB3922:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR0402MB39222C437C51A52E15FD99A18CF10@AM0PR0402MB3922.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(39860400002)(366004)(396003)(376002)(199004)(189003)(13464003)(68736007)(229853002)(6306002)(14454004)(25786009)(316002)(9686003)(53936002)(86362001)(6506007)(2501003)(2906002)(6436002)(74316002)(55016002)(4326008)(110136005)(3846002)(53546011)(5660300002)(81166006)(81156014)(2201001)(8676002)(186003)(99286004)(52536014)(11346002)(73956011)(66946007)(76116006)(66476007)(64756008)(66446008)(66066001)(478600001)(66556008)(446003)(71200400001)(71190400001)(76176011)(26005)(476003)(486006)(54906003)(7696005)(966005)(6116002)(6246003)(45080400002)(305945005)(256004)(8936002)(7736002)(102836004)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3922;
 H:AM0PR0402MB3570.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hGVEqI4TfraReNieGe1Ie86V9VoBCwOBQYd0M/8oeQSxitC4IMcCQi8/uZoSx6/dOJzXqaVG3ooUvBz2kUvriZFMshXX5CplFBbV5NZByy8fwss0g/N+3YvpUn/F+3ATayh8UM1ySnDY3wLEV7GJCv8cEiAaWakcyMsL0Dy50rcek4pm2R6IvAawSyWaIpR6JiBQEOuPWDPTCCJ2auD4ufTPc+UNmSmOkspMad5G92Wcqo16hyg3hBzl6g2jI76narvvBF+TZhGqznzBPjoxZ/dQiG5CrYv8baFZpWq51FpxdgjMbekMOJBH5Mg2HOIp+WUT3mK96XhF1b9PaAbr/6HVM7WVqd7E+3q6uYRIeyo8T1N+/NKB8R6HI5Ex40JJ7z5EUBx9e5x5ucmda4qo9tJ7V1PAnWBG+bXt3Sg5wkY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36f4baaf-e20d-46dc-4d47-08d7043c5615
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 07:09:08.1731 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hongxing.zhu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3922
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_000912_900052_9C77BA3E 
X-CRM114-Status: GOOD (  27.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "arnaud.pouliquen@st.com" <arnaud.pouliquen@st.com>,
 Fabien DESSENNE <fabien.dessenne@st.com>,
 "loic.pallardy@st.com" <loic.pallardy@st.com>,
 "elder@linaro.org" <elder@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgT2xla3NpajoNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBPbGVr
c2lqIFJlbXBlbCBbbWFpbHRvOm8ucmVtcGVsQHBlbmd1dHJvbml4LmRlXQ0KPiBTZW50OiAyMDE5
5bm0N+aciDjml6UgMTk6MDMNCj4gVG86IFJpY2hhcmQgWmh1IDxob25neGluZy56aHVAbnhwLmNv
bT47IG9oYWRAd2l6ZXJ5LmNvbTsNCj4gYmpvcm4uYW5kZXJzc29uQGxpbmFyby5vcmc7IGxpbnV4
LXJlbW90ZXByb2NAdmdlci5rZXJuZWwub3JnDQo+IENjOiBsb2ljLnBhbGxhcmR5QHN0LmNvbTsg
YXJuYXVkLnBvdWxpcXVlbkBzdC5jb207IEZhYmllbiBERVNTRU5ORQ0KPiA8ZmFiaWVuLmRlc3Nl
bm5lQHN0LmNvbT47IGVsZGVyQGxpbmFyby5vcmc7DQo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTogW0VYVF0gUmU6IFtSRkMgMi8yXSBycG1zZzog
aW14OiBhZGQgdGhlIGluaXRpYWwgaW14IHJwbXNnIHN1cHBvcnQNCj4gDQo+IENhdXRpb246IEVY
VCBFbWFpbA0KPiANCj4gSGkgUmljaGFyZCwNCj4gDQo+IE9uIDA4LjA3LjE5IDEyOjE3LCBSaWNo
YXJkIFpodSB3cm90ZToNCj4gPiBIaSBPbGVrc2lqOg0KPiA+IFRoYW5rcyBmb3IgeW91ciBjb21t
ZW50cy4NCj4gPg0KPiA+DQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZy
b206IE9sZWtzaWogUmVtcGVsIFttYWlsdG86by5yZW1wZWxAcGVuZ3V0cm9uaXguZGVdDQo+ID4+
IFNlbnQ6IDIwMTnlubQ35pyINOaXpSAxNzozNg0KPiA+PiBUbzogUmljaGFyZCBaaHUgPGhvbmd4
aW5nLnpodUBueHAuY29tPjsgb2hhZEB3aXplcnkuY29tOw0KPiA+PiBiam9ybi5hbmRlcnNzb25A
bGluYXJvLm9yZzsgbGludXgtcmVtb3RlcHJvY0B2Z2VyLmtlcm5lbC5vcmcNCj4gPj4gQ2M6IGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgRmFiaWVuIERFU1NFTk5FDQo+ID4+
IDxmYWJpZW4uZGVzc2VubmVAc3QuY29tPjsgbG9pYy5wYWxsYXJkeUBzdC5jb207DQo+ID4+IGFy
bmF1ZC5wb3VsaXF1ZW5Ac3QuY29tOyBzLWFubmFAdGkuY29tOyBlbGRlckBsaW5hcm8ub3JnDQo+
ID4+IFN1YmplY3Q6IFtFWFRdIFJlOiBbUkZDIDIvMl0gcnBtc2c6IGlteDogYWRkIHRoZSBpbml0
aWFsIGlteCBycG1zZw0KPiA+PiBzdXBwb3J0DQo+ID4+DQo+ID4+IENhdXRpb246IEVYVCBFbWFp
bA0KPiA+Pg0KPiA+PiBIaSBSaWNoYXJkLA0KPiA+Pg0KPiA+PiBPbiAwMS4wNy4xOSAxMDozNCwg
UmljaGFyZCBaaHUgd3JvdGU6DQo+ID4+PiBCYXNlZCBvbiAidmlydGlvX3JwbXNnX2J1cyIgZHJp
dmVyLCBUaGlzIHBhdGNoLXNldCBpcyB1c2VkIHRvIHNldCB1cA0KPiA+Pj4gdGhlIGNvbW11bmlj
YXRpb24gbWVjaGFuaXNtIGJldHdlZW4gQSBjb3JlIGFuZCBNIGNvcmUgb24gaS5NWCBBTVANCj4g
Pj4gU09Dcy4NCj4gPj4+DQo+ID4+PiBBZGQgdGhlIGluaXRpYWwgaW14IHJwbXNnIHN1cHBvcnQg
Z2x1ZSBkcml2ZXIgYW5kIG9uZSBwaW5ncG9uZyBkZW1vLA0KPiA+Pj4gZGVtb25zdHJhdGVkIHRo
ZSBkYXRhIHRyYW5zYWN0aW9ucyBiZXR3ZWVuIEEgY29yZSBhbmQgcmVtb3RlIE0gY29yZS4NCj4g
Pj4+IERpc3RyaWJ1dGVkIGZyYW1ld29yayBpcyB1c2VkIGluIElNWCBSUE1TRyBpbXBsZW1lbnRh
dGlvbiwgcmVmZXIgdG8NCj4gPj4+IHRoZSBmb2xsb3dpbmcgcmVxdWlyZW1lbnRzOg0KPiA+Pj4g
ICAgIC0gVGhlIENBTiBmdW5jdGlvbnMgY29udGFpbmVkIGluIE0gY29yZSBhbmQgUlRPUyBzaG91
bGQgYmUgcmVhZHkNCj4gYW5kDQo+ID4+PiAgICAgICBjb21wbGV0ZSBmdW5jdGlvbmFsIGluIDUw
bXMgYWZ0ZXIgQU1QIHN5c3RlbSBpcyB0dXJuZWQgb24uDQo+ID4+PiAgICAgLSBQYXJ0aXRpb24g
cmVzZXQuIFN5c3RlbSB3b3VsZG4ndCBiZSBzdGFsbGVkIGJ5IHRoZSBleGNlcHRpb25zIChlLngN
Cj4gPj4+ICAgICAgIHRoZSByZXNldCB0cmlnZ2VyZWQgYnkgdGhlIHN5c3RlbSBoYW5nKSBvY2N1
cnJlZCBhdCB0aGUgb3RoZXINCj4gc2lkZS4NCj4gPj4+ICAgICAgIEFuZCB0aGUgUlBNU0cgbWVj
aGFuaXNtIHNob3VsZCBiZSByZWNvdmVyZWQgYXV0b21hY3RpbGx5DQo+IGFmdGVyDQo+ID4+IHRo
ZQ0KPiA+Pj4gICAgICAgcGFydGl0aW9uIHJlc2V0IGlzIGNvbXBsZXRlZC4NCj4gPj4+IEluIHRo
aXMgc2NlbmFyaW8sIHRoZSBNIGNvcmUgYW5kIFJUT1Mgd291bGQgYmUga2lja2VkIG9mZiBieQ0K
PiA+Pj4gYm9vdGxvYWRlciBmaXJzdGx5LCB0aGVuIEEgY29yZSBhbmQgTGludXggd291bGQgYmUg
bG9hZGVkIGxhdGVyLg0KPiA+Pj4gQm90aCBNIGNvcmUvUlRPUyBhbmQgQSBjb3JlL0xpbnV4IGFy
ZSBydW5uaW5nIGluZGVwZW5kbHkuDQo+ID4+Pg0KPiA+Pj4gT25lIHBoeXNpY2FsIG1lbW9yeSBy
ZWdpb24gdXNlZCB0byBzdG9yZSB0aGUgdnJpbmcgaXMgbWFuZGF0b3J5DQo+ID4+PiByZXF1aXJl
ZCB0byBwcmUtcmVzZXJ2ZWQgYW5kIHdlbGwta25vd25lZCBieSBib3RoIEEgY29yZSBhbmQgTSBj
b3JlDQo+ID4+DQo+ID4+IEkgZG9uJ3Qgc2VlIGFueSB0aGluZyBpbXggc3BlY2lmaWMgaW4gdGhp
cyBwYXRjaC4gV2UgYWxyZWFkeSBoYXZlDQo+ID4+IHJlbW90ZXByb2Mgd2hpY2ggd291bGQgcGFy
c2UgZmlybXdhcmUgaGVhZGVyIGFuZCBjcmVhdGUgbmVlZGVkDQo+ID4+IGRldmljZXMuIFRoaXMg
ZHJpdmVyIGlzIG9ubHkgbmVlZGVkIGZvciB0aGUgY2FzZSB3aGVyZSBmaXJtd2FyZSB3YXMgc3Rh
cmVkDQo+IGJ5IHRoZSBib290bG9hZGVyLg0KPiA+Pg0KPiA+IFtSaWNoYXJkIFpodV0gQm9vdGxv
YWRlciBzdGFydHMgdGhlIGZpcm13YXJlIGlzIG1hbmRhdG9yeSByZXF1aXJlZCBpbg0KPiA+IHRo
ZXNlIHNjZW5hcmlvIHJlZmVyIHRvIHRoZSByZWFzb25zIGxpc3RlZCBpbiB0aGUgY29tbWl0Lg0K
PiA+IFRodXMsIHRoZSBkaXN0cmlidXRlZCBmcmFtZXdvcmsgaGFzIHRvIGJlIHVzZWQsIGFuZCBi
b3RoIEEgY29yZS9MaW51eA0KPiA+IGFuZCByZW1vdGUgY29yZS9SVE9TIHdvcmtzIGluZGVwZW5k
ZW50bHkuDQo+ID4NCj4gPj4gSSBwZXJzb25hbGx5IHdvdWxkIHByZWZlciB0byBoYXZlIGdlbmVy
aWMgZHJpdmVyIG9yIGV4dGVuZCB0aGUNCj4gPj4gcmVtb3RlcHJvYyBmcmFtZXdvcmsuIFNvIHdl
IGNhbiBub3RpZnkga2VybmVsIGFib3V0IHdvcmsgYWxyZWFkeSBkb25lDQo+IGJ5IGJvb3Rsb2Fk
ZXIuDQo+ID4+DQo+ID4gW1JpY2hhcmQgWmh1XSBUaGFua3MgZm9yIHlvdXIgc3VnZ2VzdGlvbnMu
DQo+ID4gUmVnYXJkaW5nIHRvIG15IHVuZGVyc3RhbmQsIGl0IHNlZW1zIHRoYXQgbWFzdGVyL3Ns
YXZlIG1vZGUgaXMgdXNlZCBpbiB0aGUNCj4gcmVtb3RlcHJvYyBjdXJyZW50bHkuDQo+ID4gQSBj
b3JlL0xpbnV4IGFjdHMgYXMgbWFzdGVyLCB0byBjb250cm9scy9tYW5pcHVsYXRlcyByZW1vdGUg
Y29yZS9SVE9TLg0KPiA+IEl0IGlzbid0IGFwcGxpY2FibGUgZm9yIHRoZSBzY2VuYXJpbyBkZXNj
cmliZWQgYnkgdGhpcyBwYXRjaC1zZXQuDQo+ID4NCj4gPj4gSW4gZ2VuZXJhbCwgc29tZSBtb3Jl
IGlzc3VlcyBzaG91bGQgYmUgc29sdmVkOg0KPiA+PiAtIEhhbmRsZSBvciBub3QgdG91Y2ggaWRs
ZSBjbG9ja3MgZm9yIGRpZmZlcmVudCBub2RlIHVzZWQgYnkgTSBjb3JlDQo+ID4+IGFuZCBub3Qg
bWFpbiBzeXN0ZW0uDQo+ID4+IC0gcGluIGNvbnRyb2wNCj4gPj4gLSByZWd1bGF0b3JzDQo+ID4+
DQo+ID4+IFNUIGRldnMgYWxyZWFkeSB0cmllZCB0byBzb2x2ZSB0aGlzIGlzc3VlcyBieSBjcmVh
dGluZyAicmVtb3RlcHJvYzoNCj4gPj4gYWRkIHN5c3RlbSByZXNvdXJjZSBtYW5hZ2VyIGRldmlj
ZSIgcGF0Y2guIEkgZG9uJ3Qga25vdyB3aGF0IGlzDQo+ID4+IGN1cnJlbnQgc3RhdGUgb2YgaXQg
KC9tZSBhZGRpbmcgU1QgZGV2cyB0byBDQykuDQo+ID4+DQo+ID4gW1JpY2hhcmQgWmh1XSBZZXMs
IGl0IGlzLiBNYW55IGNvbnRyaWJ1dGlvbnMgaGF2ZSBiZWVuIG1hZGUgYnkgRmFiaWVuLg0KPiA+
IElNSE8sIHRoZXJlIGFyZSBzb21lIGRpZmZlcmVudCBiZWhhdmlvcnMgb24gaU1YOFFYUC9RTSBw
bGF0Zm9ybXMsIHRoZQ0KPiA+ICAgcmVzb3VyY2VzIChlLnggSVAgbW9kdWxlcykgaGFkIGJlZW4g
YXNzaWduZWQgYW5kIG1hbmFnZWQgYnkgdGhlDQo+IFhSREMuDQo+ID4gSW4gdGhlIG90aGVyIHdv
cmRzLCB0aGUgSFcgcmVzb3VyY2VzIHdvdWxkIGJlIGFzc2lnbmVkIGFuZCBtYW5hZ2VkDQo+IHdv
dWxkDQo+ID4gICBiZSB0cmFuc3BhcmVudCB0byBTVy4NCj4gPg0KPiA+IFRodXMsIGJvdGggQSBj
b3JlL0xpbnV4IGFuZCBNIGNvcmUvUlRPUyBjYW4gd29yayByZWFsIGluZGVwZW5kZW50bHkuDQo+
ID4gU3lzdGVtIHdvdWxkbid0IGJlIHN0YWxsZWQgYnkgdGhlIGV4Y2VwdGlvbnMgKGUueCB0aGUg
cmVzZXQgdHJpZ2dlcmVkDQo+ID4gYnkgdGhlIHN5c3RlbSBoYW5nKSBvY2N1cnJlZCBhdCB0aGUg
b3RoZXIgc2lkZS4gQW5kIHRoZSBSUE1TRyBtZWNoYW5pc20NCj4gc2hvdWxkDQo+ID4gICBiZSBy
ZWNvdmVyZWQgYXV0b21hdGljYWxseSBhZnRlciB0aGUgcGFydGl0aW9uIHJlc2V0IGlzIGNvbXBs
ZXRlZC4NCj4gDQo+IEl0IGlzIGV4YWN0bHkgdGhlIHdheSBJIGRpZCB1bmRlcnN0b29kIGl0IGlu
IHRoZSBmaXJzIG1haWwuIEFueSB3YXksIGknbSBvayB3aXRoDQo+IHRoaXMgZHJpdmVyLiBKdXN0
IHJlbmFtZSBpbXggdG8gc29tZSB0aGluZyBnZW5lcmljLiBUaGlzIGRyaXZlciBjYW4gYW5kIHdp
bGwgYmUNCj4gcmV1c2VkIG9uIG90aGVyIHBsYXRmb3JtcyBhcyB3ZWxsLg0KW1JpY2hhcmQgWmh1
XSBUaGFua3MgZm9yIHlvdXIgdW5kZXJzdGFuZC4gV291bGQgY2hhbmdlIHRvIGdlbmVyaWMgbmFt
ZSBpZiB0aGlzIHBhdGNoLXNldA0KIGlzIGFjY2VwdGFibGUuIFRoYW5rIHlvdS4NCg0KQmVzdCBS
ZWdhcmRzDQpSaWNoYXJkIFpodQ0KPiANCj4gS2luZCByZWdhcmRzLA0KPiBPbGVrc2lqIFJlbXBl
bA0KPiANCj4gLS0NCj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwNCj4gfA0KPiBJbmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAgfA0K
PiBodHRwczovL2V1cjAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0
cCUzQSUyRiUyRnd3dy5wDQo+IGVuZ3V0cm9uaXguZGUlMkYmYW1wO2RhdGE9MDIlN0MwMSU3Q2hv
bmd4aW5nLnpodSU0MG54cC5jb20lN0M4NWYNCj4gNTYzN2M4MmNlNGNlODBmMDUwOGQ3MDM5M2Q0
OGUlN0M2ODZlYTFkM2JjMmI0YzZmYTkyY2Q5OWM1YzMwMTYzDQo+IDUlN0MwJTdDMCU3QzYzNjk4
MTgwNTc3MzI0NTE3MSZhbXA7c2RhdGE9JTJCWnJqdmtMV0Y3YWdndU9rdksNCj4gaVdpeWFLNzQz
b0kxVjlZbXBMY3lScmdKUSUzRCZhbXA7cmVzZXJ2ZWQ9MCAgfA0KPiBQZWluZXIgU3RyLiA2LTgs
IDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTANCj4g
fA0KPiBBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6DQo+
ICs0OS01MTIxLTIwNjkxNy01NTU1IHwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
