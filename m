Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E67B258BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 22:15:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cmtgg4T7kXp68rq0kErFsh2tveMoUwUPYmyi1UfxrzE=; b=VR3UpOo+1+jGpf
	P93P7W/hnQoMghNi1XHUeH9K203Pb9go888zKG7ddRVw3L7sDxe4rcqrw4Ql5vkvu5CW7+Tr/BGtg
	yLDOISXxI16Ihtdd1LkJ5VXmlczlxe7tn7pwl5nggXdmjtMTzSadeIjPy1tDBL4SddUoOwCdul64q
	KezmYJOsv/M/gO98ImeNS4xnhMP7AF/58uAKxL1EEMGh2zpmws/oJ4cesxebaTH6rsoiSg17Umcz5
	XJWSIhcOyb+kz8cAlC705Q8RKvIRpPbf6zYxknP9EKa6KuaKiUaIM9TMx8V8Dy/9XEOM22AdTu+YZ
	iBZe5mbYsRXhDE10c4iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTBAE-0004fG-UD; Tue, 21 May 2019 20:15:10 +0000
Received: from mail-eopbgr140080.outbound.protection.outlook.com
 ([40.107.14.80] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTBA3-0004Vv-9n
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 20:15:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=igtS1UARn+GG/zHkLD/vh5/T59TX0yavbU/VEOUS60I=;
 b=lOHlEvCEduUseJpjuhHzv2TFf6ZYW7Y3iQCis2CRKqML+vQMfJ658VEFWwdW//jUDe/E1WuWvOaxZA4EtqAr096PYEJB7mL/mp7rI2pnEU0LN87sPYMS8ddFrNxNPgPIpKN26SXlGuTJ8o3spnlvbt1XfNbncHa3IZrKIh6SWho=
Received: from AM6PR04MB5863.eurprd04.prod.outlook.com (20.179.1.11) by
 AM6PR04MB5079.eurprd04.prod.outlook.com (20.177.34.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Tue, 21 May 2019 20:14:53 +0000
Received: from AM6PR04MB5863.eurprd04.prod.outlook.com
 ([fe80::29f1:bb22:4881:3cbd]) by AM6PR04MB5863.eurprd04.prod.outlook.com
 ([fe80::29f1:bb22:4881:3cbd%4]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 20:14:53 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Chuanhua Han <chuanhua.han@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [EXT] Re: [PATCH] arm64: dts: ls1028a: fix watchdog device node
Thread-Topic: [EXT] Re: [PATCH] arm64: dts: ls1028a: fix watchdog device node
Thread-Index: AQHVBjWLXx4zf+tY20C9RmzfaaLbEqZupocAgAA7pYCAAQj3MIAFssaAgAB4RGA=
Date: Tue, 21 May 2019 20:14:53 +0000
Message-ID: <AM6PR04MB58631458E6D851E4D83A77ED8F070@AM6PR04MB5863.eurprd04.prod.outlook.com>
References: <20190509070657.18281-1-chuanhua.han@nxp.com>
 <20190517023728.GA15856@dragon>
 <AM6PR04MB4357C78FCEBA1B00AA42ED2E970B0@AM6PR04MB4357.eurprd04.prod.outlook.com>
 <AM6PR04MB586341334E62A663EE5E8BD18F0B0@AM6PR04MB5863.eurprd04.prod.outlook.com>
 <AM6PR04MB435758E1498B6A2BE0C0ACE397070@AM6PR04MB4357.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB435758E1498B6A2BE0C0ACE397070@AM6PR04MB4357.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 72ead77c-158e-4233-19c6-08d6de28fca1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB5079; 
x-ms-traffictypediagnostic: AM6PR04MB5079:
x-microsoft-antispam-prvs: <AM6PR04MB507979268FE077D860B1ADAD8F070@AM6PR04MB5079.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(396003)(346002)(376002)(136003)(13464003)(189003)(199004)(54906003)(25786009)(74316002)(110136005)(53936002)(4326008)(86362001)(6506007)(102836004)(7696005)(6116002)(3846002)(53546011)(6436002)(52536014)(76176011)(476003)(81156014)(81166006)(305945005)(8676002)(486006)(7736002)(6246003)(256004)(14444005)(8936002)(66066001)(11346002)(446003)(66476007)(76116006)(73956011)(66446008)(64756008)(66556008)(66946007)(186003)(316002)(5660300002)(68736007)(33656002)(26005)(14454004)(71190400001)(71200400001)(55016002)(9686003)(478600001)(99286004)(2906002)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5079;
 H:AM6PR04MB5863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fJcSXDC9cb2CiSDs7nUj3t/mXRmC07LwUDpSU6MkQaJhvby2GR5tsDPYxlM6Fq0tUeXzsa91FII1Sz28mlSpm9gr/RF6jiLJ6tVd5x9gM+RtyQiE9VBgQv7l/OS+gmKD4+IgKszv3TCTvWNA83p25NHi6FAWonZ5HHX/0v6HHL1QDJmceTS8waMbGpffvbVhd96fTIpaX6NqAIDM4OA/C4Uv5NFIZw+fBmSD+mYvkgC9xM7+T+jSpCM5nY13Y3OCHK+RUpWsZx4yq91zwQuE3tew5sowNDCc2nupXFs/SYKOO88LOQC9a6H0EfoefZuJ0KCkVo9lAisLxncgz5IVnsU6QZa3VImKuhDbNgYW4X9qyFBylNWfHyNisI16SwqQHDyYGOuz23bArztWxLVMun9w5abthpaYsLqO794wn34=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72ead77c-158e-4233-19c6-08d6de28fca1
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 20:14:53.6489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_131459_444504_5202951F 
X-CRM114-Status: GOOD (  20.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.80 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Ying Zhang <ying.zhang22455@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQ2h1YW5odWEgSGFuDQo+
IFNlbnQ6IFR1ZXNkYXksIE1heSAyMSwgMjAxOSA4OjAwIEFNDQo+IFRvOiBMZW8gTGkgPGxlb3lh
bmcubGlAbnhwLmNvbT47IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz4NCj4gQ2M6IG1h
cmsucnV0bGFuZEBhcm0uY29tOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7
DQo+IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwu
b3JnOyBZaW5nIFpoYW5nDQo+IDx5aW5nLnpoYW5nMjI0NTVAbnhwLmNvbT4NCj4gU3ViamVjdDog
UkU6IFtFWFRdIFJlOiBbUEFUQ0hdIGFybTY0OiBkdHM6IGxzMTAyOGE6IGZpeCB3YXRjaGRvZyBk
ZXZpY2Ugbm9kZQ0KPiANCj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+
ID4gRnJvbTogTGVvIExpDQo+ID4gU2VudDogMjAxOcTqNdTCMTjI1SA2OjAxDQo+ID4gVG86IENo
dWFuaHVhIEhhbiA8Y2h1YW5odWEuaGFuQG54cC5jb20+OyBTaGF3biBHdW8NCj4gPiA8c2hhd25n
dW9Aa2VybmVsLm9yZz4NCj4gPiBDYzogbWFyay5ydXRsYW5kQGFybS5jb207IGxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsNCj4gPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9y
ZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgWWluZyBaaGFuZw0KPiA+IDx5aW5nLnpo
YW5nMjI0NTVAbnhwLmNvbT4NCj4gPiBTdWJqZWN0OiBSRTogW0VYVF0gUmU6IFtQQVRDSF0gYXJt
NjQ6IGR0czogbHMxMDI4YTogZml4IHdhdGNoZG9nDQo+ID4gZGV2aWNlIG5vZGUNCj4gPg0KPiA+
DQo+ID4NCj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBDaHVh
bmh1YSBIYW4NCj4gPiA+IFNlbnQ6IEZyaWRheSwgTWF5IDE3LCAyMDE5IDE6MTEgQU0NCj4gPiA+
IFRvOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+DQo+ID4gPiBDYzogTGVvIExpIDxs
ZW95YW5nLmxpQG54cC5jb20+OyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgbGludXgtYXJtLQ0KPiA+
ID4ga2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3Jn
OyBsaW51eC0NCj4gPiA+IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IFlpbmcgWmhhbmcgPHlpbmcu
emhhbmcyMjQ1NUBueHAuY29tPg0KPiA+ID4gU3ViamVjdDogUkU6IFtFWFRdIFJlOiBbUEFUQ0hd
IGFybTY0OiBkdHM6IGxzMTAyOGE6IGZpeCB3YXRjaGRvZw0KPiA+ID4gZGV2aWNlIG5vZGUNCj4g
PiA+DQo+ID4gPg0KPiA+ID4NCj4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4g
PiA+ID4gRnJvbTogU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPg0KPiA+ID4gPiBTZW50
OiAyMDE5xOo11MIxN8jVIDEwOjM4DQo+ID4gPiA+IFRvOiBDaHVhbmh1YSBIYW4gPGNodWFuaHVh
LmhhbkBueHAuY29tPg0KPiA+ID4gPiBDYzogTGVvIExpIDxsZW95YW5nLmxpQG54cC5jb20+OyBt
YXJrLnJ1dGxhbmRAYXJtLmNvbTsNCj4gPiA+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnOyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsNCj4gPiA+ID4gbGludXgta2Vy
bmVsQHZnZXIua2VybmVsLm9yZzsgWWluZyBaaGFuZyA8eWluZy56aGFuZzIyNDU1QG54cC5jb20+
DQo+ID4gPiA+IFN1YmplY3Q6IFtFWFRdIFJlOiBbUEFUQ0hdIGFybTY0OiBkdHM6IGxzMTAyOGE6
IGZpeCB3YXRjaGRvZw0KPiA+ID4gPiBkZXZpY2Ugbm9kZQ0KPiA+ID4gPg0KPiA+ID4gPiBDYXV0
aW9uOiBFWFQgRW1haWwNCj4gPiA+ID4NCj4gPiA+ID4gT24gVGh1LCBNYXkgMDksIDIwMTkgYXQg
MDM6MDY6NTdQTSArMDgwMCwgQ2h1YW5odWEgSGFuIHdyb3RlOg0KPiA+ID4gPiA+IGxzMTAyOGEg
cGxhdGZvcm0gdXNlcyBzcDgwNSB3YXRjaGRvZywgYW5kIHVzZSAxLzE2IHBsYXRmb3JtDQo+ID4g
PiA+ID4gY2xvY2sgYXMgdGltZXIgY2xvY2ssIHRoaXMgcGF0Y2ggZml4IGRldmljZSB0cmVlIG5v
ZGUuDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBaaGFuZyBZaW5nLTIyNDU1
IDx5aW5nLnpoYW5nMjI0NTVAbnhwLmNvbT4NCj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBDaHVh
bmh1YSBIYW4gPGNodWFuaHVhLmhhbkBueHAuY29tPg0KPiA+ID4gPiA+IC0tLQ0KPiA+ID4gPiA+
ICAuLi4vYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kgfCAxOQ0KPiA+
ID4gPiA+ICsrKysrKysrKysrKy0tLS0tLS0NCj4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEy
IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaQ0K
PiA+ID4gPiA+IGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRz
aQ0KPiA+ID4gPiA+IGluZGV4IGIwNDU4MTI0OWYwYi4uMTUxMGIxODU4MjQ2IDEwMDY0NA0KPiA+
ID4gPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0
c2kNCj4gPiA+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMx
MDI4YS5kdHNpDQo+ID4gPiA+ID4gQEAgLTI4NSwxMyArMjg1LDE4IEBADQo+ID4gPiA+ID4gICAg
ICAgICAgICAgICAgICAgICAgICNpbnRlcnJ1cHQtY2VsbHMgPSA8Mj47DQo+ID4gPiA+ID4gICAg
ICAgICAgICAgICB9Ow0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gLSAgICAgICAgICAgICB3ZG9nMDog
d2F0Y2hkb2dAMjNjMDAwMCB7DQo+ID4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgIGNvbXBh
dGlibGUgPSAiZnNsLGxzMTAyOGEtd2R0IiwgImZzbCxpbXgyMS13ZHQiOw0KPiA+ID4gPiA+IC0g
ICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgwIDB4MjNjMDAwMCAweDAgMHgxMDAwMD47DQo+
ID4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSA1OQ0K
PiA+IElSUV9UWVBFX0xFVkVMX0hJR0g+Ow0KPiA+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAg
ICBjbG9ja3MgPSA8JmNsb2NrZ2VuIDQgMT47DQo+ID4gPiA+ID4gLSAgICAgICAgICAgICAgICAg
ICAgIGJpZy1lbmRpYW47DQo+ID4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9
ICJkaXNhYmxlZCI7DQo+ID4gPiA+ID4gKyAgICAgICAgICAgICBjbHVzdGVyMV9jb3JlMF93YXRj
aGRvZzogd2R0QGMwMDAwMDAgew0KPiA+ID4gPg0KPiA+ID4gPiBLZWVwICd3YXRjaGRvZycgYXMg
dGhlIG5vZGUgbmFtZSwNCj4gPiA+IFRoYW5rcyBmb3IgeW91ciByZXBsYXkNCj4gPiA+IERvIHlv
dSBtZWFuIHJlcGxhY2UgdGhlIKGud2R0oa8gd2l0aCChrndhdGNoZG9noa8/DQo+ID4gPiBhbmQg
a2VlcCBub2RlcyBzb3J0IGluIHVuaXQtYWRkcmVzcy4NCj4gPiA+IFdoYXQgZG9lcyB0aGlzIG1l
YW4/DQo+ID4NCj4gPiBUaGF0IG1lYW5zIG9yZGVyIHRoZSBub2RlcyBieSB0aGUgYWRkcmVzc2Vz
IChlLmcuIGMwMDAwMDAsIGMwMTAwMDApDQo+IFRoZSBjdXJyZW50IG9yZGVyIGlzIGNvcnJlY3Sj
qFRoZSBmaXJzdCBpcyBjMDAwMDAwLCB0aGVuIGMwMDAwMDCjqS4NCg0KQnV0IHRoZXkgYXJlIGFk
ZGVkIGFmdGVyIGdwaW9AMjMyMDAwMCBhbmQgYmVmb3JlIHNhdGFAMzIwMDAwMC4NCg0KPiA+DQo+
ID4gPiA+DQo+ID4gPiA+IFNoYXduDQo+ID4gPiA+DQo+ID4gPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgIGNvbXBhdGlibGUgPSAiYXJtLHNwODA1IiwgImFybSxwcmltZWNlbGwiOw0KPiA+ID4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgwIDB4YzAwMDAwMCAweDAgMHgxMDAw
PjsNCj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbG9ja2dlbiA0
IDE1PiwgPCZjbG9ja2dlbiA0IDE1PjsNCj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
Y2xvY2stbmFtZXMgPSAiYXBiX3BjbGsiLCAid2RvZ19jbGsiOw0KPiA+ID4gPiA+ICsgICAgICAg
ICAgICAgfTsNCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gKyAgICAgICAgICAgICBjbHVzdGVyMV9j
b3JlMV93YXRjaGRvZzogd2R0QGMwMTAwMDAgew0KPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICBjb21wYXRpYmxlID0gImFybSxzcDgwNSIsICJhcm0scHJpbWVjZWxsIjsNCj4gPiA+ID4g
PiArICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4MCAweGMwMTAwMDAgMHgwIDB4MTAwMD47
DQo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2xvY2tnZW4gNCAx
NT4sIDwmY2xvY2tnZW4gNCAxNT47DQo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNs
b2NrLW5hbWVzID0gImFwYl9wY2xrIiwgIndkb2dfY2xrIjsNCj4gPiA+ID4gPiAgICAgICAgICAg
ICAgIH07DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiAgICAgICAgICAgICAgIHNhdGE6IHNhdGFAMzIw
MDAwMCB7DQo+ID4gPiA+ID4gLS0NCj4gPiA+ID4gPiAyLjE3LjENCj4gPiA+ID4gPg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
