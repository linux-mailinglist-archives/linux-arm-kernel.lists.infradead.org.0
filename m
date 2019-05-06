Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF7114582
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 09:47:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xf4+bEYAnGo7OcXXwOXsKw1f5KUJFawFKKXqznDNYcs=; b=nVPm9l/VHNoT8e
	1AZzt/UAADCMWMcjeW//E7Z3nRlrGE8fMZScqYD9q4JAHdbagbtn534kKKxY+sThewho3dW8K3EOi
	gsT+w1GortA85NnoSmmzoidvcGtsFc/zWa1smIOJ1hrIOpVZDxspond6VwhNZDB7SVyEJwKmzEf8+
	01umqfG97ublZQZHlSMrgN3HdLEypmHAyEIH9jJUpMouT2z66BHJ3hSWXMcQmhqPtkGJd7LZfasSW
	4OQ1ifSMEvXgp42C5xbh/Jx7LEfellAqHjqkW+etnzPNHpVx0l1tqXnDuuEQA2Btdd3ceK3MXUAVX
	AZKg1RZ5lCz2jpEFMH6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNYKz-0007JW-5j; Mon, 06 May 2019 07:47:01 +0000
Received: from mail-am5eur03on062b.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::62b]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNYKq-0007J6-SE
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 07:46:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NlbrpMn4jcauvmvLzlZ3Ywlezr8Ks2g3uPSkYHoLfzM=;
 b=AKjrTTeNTM4phOI1QRA5QhAozTAlVTh576pyGCGkVVIf3Xbi1Gvq0Qfcn0U5gmd+/p14USxq+J+D8LF2awBSvi7zryyE8+QXWnB44cBn9BClooP5TvwUFDP2391QmsUUh+CgrOxHystuS05FRQf8YRTn7Phb2T1zeBslJ3iddEA=
Received: from AM6PR04MB4357.eurprd04.prod.outlook.com (52.135.167.33) by
 AM6PR04MB4421.eurprd04.prod.outlook.com (20.177.39.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Mon, 6 May 2019 07:46:49 +0000
Received: from AM6PR04MB4357.eurprd04.prod.outlook.com
 ([fe80::f062:7002:6318:780b]) by AM6PR04MB4357.eurprd04.prod.outlook.com
 ([fe80::f062:7002:6318:780b%2]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 07:46:49 +0000
From: Chuanhua Han <chuanhua.han@nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: RE: [EXT] Re: [PATCH 1/2] i2c: imx: I2C Driver doesn't consider
 I2C_IPGCLK_SEL RCW bit when using ls1046a SoC
Thread-Topic: [EXT] Re: [PATCH 1/2] i2c: imx: I2C Driver doesn't consider
 I2C_IPGCLK_SEL RCW bit when using ls1046a SoC
Thread-Index: AQHU/w+WtXmB7zSh+EKM7NDEvi24aqZUqIWAgAYQEbCAAwZvgIAAAgjQ
Date: Mon, 6 May 2019 07:46:49 +0000
Message-ID: <AM6PR04MB4357663A5CBEF3BBC8EBCECC97300@AM6PR04MB4357.eurprd04.prod.outlook.com>
References: <20190430044719.30720-1-chuanhua.han@nxp.com>
 <20190430125043.weqwzim4gpsvtkfe@pengutronix.de>
 <AM6PR04MB43571B8D52C1FE9ED20DBA1D97360@AM6PR04MB4357.eurprd04.prod.outlook.com>
 <20190506073735.ctzybytamu44pbvv@pengutronix.de>
In-Reply-To: <20190506073735.ctzybytamu44pbvv@pengutronix.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chuanhua.han@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1617b42f-a809-46a1-99f1-08d6d1f6ff22
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB4421; 
x-ms-traffictypediagnostic: AM6PR04MB4421:
x-ms-exchange-purlcount: 1
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AM6PR04MB442134B539C0538513456DBB97300@AM6PR04MB4421.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:612;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(136003)(346002)(376002)(396003)(199004)(189003)(13464003)(66946007)(6916009)(66476007)(64756008)(66446008)(68736007)(478600001)(7736002)(81156014)(256004)(52536014)(2906002)(7416002)(55016002)(14454004)(76176011)(7696005)(446003)(476003)(486006)(44832011)(11346002)(33656002)(53936002)(99286004)(316002)(26005)(229853002)(8676002)(186003)(6506007)(53546011)(45080400002)(102836004)(81166006)(966005)(8936002)(3846002)(6116002)(66556008)(54906003)(6436002)(305945005)(6246003)(4326008)(9686003)(25786009)(76116006)(74316002)(73956011)(71200400001)(66066001)(6306002)(5660300002)(86362001)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4421;
 H:AM6PR04MB4357.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ksb1a7YzvjhbLMsWpgVca0zaqPl1uLu2cT3nkvWieJgwSppl6aIeMIltFQ2dvIz4sMK/Pc2odPs+vr2ageX9NPPleKGW8Y9NLfpMK3Bn6kN+9ci0UqGto8QXNQnxyNJFXBqu181AnKmcBr7rEVh8JfmAwmeP4gIklySOPa6tAOuA6R/W0FtCGRVilJPdSEMifyLUdOfsz/UrriK14/gRWbkg9tdtqmTOQI5UBqaKy+PTYLOmRiT6FmqRoAnxWRAJ+egI+lroQBufcckysfEtSaqmdUSLEnG+uKuHle7bmMCvsmWQaLmFV4P8ymz14IYkviVZXvEHSYfnGrHpAIGhQOnXLitLlbriX8fm7PIUhRTaLYiT7JkqlIJOHH6MAQiHiXL86XoZ1kJoAV31xXxKhO1gWwIq0Bi1ZpiDmi2yK7A=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1617b42f-a809-46a1-99f1-08d6d1f6ff22
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 07:46:49.1230 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4421
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_004652_912504_886DFE1E 
X-CRM114-Status: GOOD (  22.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:62b listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sumit Batra <sumit.batra@nxp.com>, "eha@deif.com" <eha@deif.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "wsa+renesas@sang-engineering.com" <wsa+renesas@sang-engineering.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "peda@axentia.se" <peda@axentia.se>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2FzY2hhIEhhdWVyIDxz
LmhhdWVyQHBlbmd1dHJvbml4LmRlPg0KPiBTZW50OiAyMDE55bm0NeaciDbml6UgMTU6MzgNCj4g
VG86IENodWFuaHVhIEhhbiA8Y2h1YW5odWEuaGFuQG54cC5jb20+DQo+IENjOiBzaGF3bmd1b0Br
ZXJuZWwub3JnOyBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT47IHJvYmgrZHRAa2VybmVsLm9y
ZzsNCj4gbWFyay5ydXRsYW5kQGFybS5jb207IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7
DQo+IGxpbnV4LWkyY0B2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZzsNCj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGZlc3RldmFtQGdtYWls
LmNvbTsgZGwtbGludXgtaW14DQo+IDxsaW51eC1pbXhAbnhwLmNvbT47IHdzYStyZW5lc2FzQHNh
bmctZW5naW5lZXJpbmcuY29tOw0KPiB1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU7IGVo
YUBkZWlmLmNvbTsgbGludXhAcmVtcGVsLXByaXZhdC5kZTsNCj4gbC5zdGFjaEBwZW5ndXRyb25p
eC5kZTsgcGVkYUBheGVudGlhLnNlOyBTdW1pdCBCYXRyYQ0KPiA8c3VtaXQuYmF0cmFAbnhwLmNv
bT4NCj4gU3ViamVjdDogUmU6IFtFWFRdIFJlOiBbUEFUQ0ggMS8yXSBpMmM6IGlteDogSTJDIERy
aXZlciBkb2Vzbid0IGNvbnNpZGVyDQo+IEkyQ19JUEdDTEtfU0VMIFJDVyBiaXQgd2hlbiB1c2lu
ZyBsczEwNDZhIFNvQw0KPiANCj4gQ2F1dGlvbjogRVhUIEVtYWlsDQo+IA0KPiBPbiBTYXQsIE1h
eSAwNCwgMjAxOSBhdCAwOToyODo0OEFNICswMDAwLCBDaHVhbmh1YSBIYW4gd3JvdGU6DQo+ID4N
Cj4gPg0KPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IFNhc2No
YSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4NCj4gPiA+IFNlbnQ6IDIwMTnlubQ05pyI
MzDml6UgMjA6NTENCj4gPiA+IFRvOiBDaHVhbmh1YSBIYW4gPGNodWFuaHVhLmhhbkBueHAuY29t
Pg0KPiA+ID4gQ2M6IHNoYXduZ3VvQGtlcm5lbC5vcmc7IExlbyBMaSA8bGVveWFuZy5saUBueHAu
Y29tPjsNCj4gPiA+IHJvYmgrZHRAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5kQGFybS5jb207DQo+
ID4gPiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBsaW51eC1pMmNAdmdlci5rZXJuZWwu
b3JnOw0KPiA+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiA+ID4g
ZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGZlc3RldmFtQGdtYWlsLmNvbTsgZGwtbGludXgt
aW14DQo+ID4gPiA8bGludXgtaW14QG54cC5jb20+OyB3c2ErcmVuZXNhc0BzYW5nLWVuZ2luZWVy
aW5nLmNvbTsNCj4gPiA+IHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZTsgZWhhQGRlaWYu
Y29tOw0KPiA+ID4gbGludXhAcmVtcGVsLXByaXZhdC5kZTsgbC5zdGFjaEBwZW5ndXRyb25peC5k
ZTsgcGVkYUBheGVudGlhLnNlOw0KPiA+ID4gU3VtaXQgQmF0cmEgPHN1bWl0LmJhdHJhQG54cC5j
b20+DQo+ID4gPiBTdWJqZWN0OiBbRVhUXSBSZTogW1BBVENIIDEvMl0gaTJjOiBpbXg6IEkyQyBE
cml2ZXIgZG9lc24ndCBjb25zaWRlcg0KPiA+ID4gSTJDX0lQR0NMS19TRUwgUkNXIGJpdCB3aGVu
IHVzaW5nIGxzMTA0NmEgU29DDQo+ID4gPg0KPiA+ID4gQ2F1dGlvbjogRVhUIEVtYWlsDQo+ID4g
Pg0KPiA+ID4gT24gVHVlLCBBcHIgMzAsIDIwMTkgYXQgMTI6NDc6MThQTSArMDgwMCwgQ2h1YW5o
dWEgSGFuIHdyb3RlOg0KPiA+ID4gPiBUaGUgY3VycmVudCBrZXJuZWwgZHJpdmVyIGRvZXMgbm90
IGNvbnNpZGVyIEkyQ19JUEdDTEtfU0VMICg0MjQNCj4gPiA+ID4gYml0IG9mDQo+ID4gPiA+IFJD
VykgaW4gZGVjaWRpbmcgIGkyY19jbGtfcmF0ZSBpbiBmdW5jdGlvbiBpMmNfaW14X3NldF9jbGso
KSB7IDANCj4gPiA+ID4gUGxhdGZvcm0gY2xvY2svNCwgMSBQbGF0Zm9ybSBjbG9jay8yfS4NCj4g
PiA+ID4NCj4gPiA+ID4gV2hlbiB1c2luZyBsczEwNDZhIFNvQywgdGhpcyBwb3B1bGF0ZXMgaW5j
b3JyZWN0IHZhbHVlIGluIElCRkQNCj4gPiA+ID4gcmVnaXN0ZXIgaWYgSTJDX0lQR0NMS19TRUwg
PSAwLCB3aGljaCBnZW5lcmF0ZXMgaGFsZiBvZiB0aGUgZGVzaXJlZCBDbG9jay4NCj4gPiA+ID4N
Cj4gPiA+ID4gVGhlcmVmb3JlLCBpZiBsczEwNDZhIFNvQyBpcyB1c2VkLCB3ZSBuZWVkIHRvIHNl
dCB0aGUgaTJjIGNsb2NrDQo+ID4gPiA+IGFjY29yZGluZyB0byB0aGUgY29ycmVzcG9uZGluZyBS
Q1cuDQo+ID4gPg0KPiA+ID4gU28gdGhlIGNsb2NrIGRyaXZlciByZXBvcnRzIHRoZSB3cm9uZyBj
bG9jay4gUGxlYXNlIGZpeCB0aGUgY2xvY2sgZHJpdmVyIHRoZW4uDQo+ID4gTm8sIHRoaXMgaXMg
YSBwcm9ibGVtIHdpdGggdGhlIGkyYyBkcml2ZXIuIEl0IGlzIG5vdCBhIHByb2JsZW0gd2l0aA0K
PiA+IHRoZSBjbG9jayBkcml2ZXIsIHNvIHRoZSBpMmMgZHJpdmVyIG5lZWRzIHRvIGJlIG1vZGlm
aWVkLg0KPiANCj4gU28gaG93IGRvZXMgdGhpcyBSQ1cgYml0IGdldCBldmFsdWF0ZWQ/IEFjY29y
ZGluZyB0byB0aGUgcmVmZXJlbmNlIG1hbnVhbA0KPiBvbmx5IG9uZSBjbG9jayBnb2VzIHRvIHRo
ZSBpMmMgbW9kdWxlIChkZXNjcmliZWQgYXMgMS8yIFBsYXRmb3JtDQo+IENsb2NrKSBhbmQgdGhl
IGkyYyBtb2R1bGUgb25seSB0YWtlcyBvbmUgY2xvY2suIFNvIGl0IHNlZW1zIHRoZXJlIG11c3Qg
YmUgYSAvMg0KPiBkaXZpZGVyIHNvbWV3aGVyZSwgZWl0aGVyIGluIGVhY2ggaTJjIG1vZHVsZSBv
ciBzb21ld2hlcmUgb3V0c2lkZS4gQ2FuIHlvdXINCj4gSUMgZ3V5cyB0ZWxsIHlvdSB3aGVyZSBp
dCBpcz8NCj4gDQo+IE9uZSByZWFzb24gSSBzdWdnZXN0ZWQgdGhlIGNsb2NrIGRyaXZlciBpcyB0
aGF0IHRoZSBjbG9jayBkcml2ZXIgY29udGFpbnMgU29DDQo+IHNwZWNpZmljIGNvZGUgYWxyZWFk
eSwgc28gaXQgc2hvdWxkIGJlIGVhc2llciB0byBpbnRlZ3JhdGUgdGhlcmUuDQpPSywgSSB3aWxs
IHNlZSB0aGF0IGl0IGNhbiBiZSBxdWFsaWZpZWQgaW4gdGhlIGNsb2NrIGRyaXZlci4NCj4gDQo+
IFNhc2NoYQ0KPiANCj4gDQo+IC0tDQo+IFBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAg
ICAgICAgICAgICB8DQo+IHwNCj4gSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAgICAg
ICAgICAgIHwNCj4gaHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNv
bS8/dXJsPWh0dHAlM0ElMkYlMkZ3d3cucGUNCj4gbmd1dHJvbml4LmRlJTJGJmFtcDtkYXRhPTAy
JTdDMDElN0NjaHVhbmh1YS5oYW4lNDBueHAuY29tJTdDYjJkDQo+IDQ2ODA2OTljNDQ4ZTg1MTQz
MDhkNmQxZjViZjgyJTdDNjg2ZWExZDNiYzJiNGM2ZmE5MmNkOTljNWMzMDE2Mw0KPiA1JTdDMCU3
QzAlN0M2MzY5MjcyNTA3NDM1MTY1NjMmYW1wO3NkYXRhPXBGZENiaURYRSUyRkRsbDAxWDlOag0K
PiBIZzNTQ0RwRUN6Z3JyOE1MdFlCZEtINWMlM0QmYW1wO3Jlc2VydmVkPTAgIHwNCj4gUGVpbmVy
IFN0ci4gNi04LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01MTIxLTIw
NjkxNy0wDQo+IHwNCj4gQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAg
IHwgRmF4Og0KPiArNDktNTEyMS0yMDY5MTctNTU1NSB8DQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
