Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF44421FFD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 00:01:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLFBe50R8wa65y2sYpUaAiB/f7Of0+t/Vt4AlVPY1Sw=; b=GDIV9ZN98pPmsI
	zD6nnDeVQd+clknnZDW3I8Nk013hjXAsQI1WQLWj6n7V9KPQQkTG2sn4SErqubOW3xJGUTgcVtR00
	9DDknGjy3KvWrAFUUIXnPZPF+g7oS4lh8YPFIo3lHKmfEPXmeeCNIpuCELJfKtNQ6vVzlJXBQ29Tu
	gGzdHjqoWPYewonEQX5sP8WLUBoy9H+c+3gdaQGI8WuF4j4CTE+LgwlE+HfoTfeDyTlnqz5Hd1CFv
	we1uLqh9JMPefpdub6NMkFks4RYqbykz1nrIOa4Xl82au80boSdLuwF3VVacs2n6+AGG3G7/P//zc
	Bq/QahRvPpl9GX2nIbtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRkul-0005Lz-S9; Fri, 17 May 2019 22:01:19 +0000
Received: from mail-eopbgr60088.outbound.protection.outlook.com ([40.107.6.88]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRkuc-0005LH-OS
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 22:01:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fyjCdI3PxR81p0LbxvsWY7C1ZcpLNfOc676pWkwtN68=;
 b=ofdCzbayZBRADpoE8YkRh7lkel9yve4GjM3BAHRivZHxQthVV0OG3z1ION00B6ezKb9OU1rCxVp/8XYlLVcsoGzjjY1NY+ZIY+itD88ZU0ZVdAYra3hwMd6aExGCyaXOyWrgAgyAc1EdiBL/URjtHN7ncZ5i7c706DOJKvnXr9s=
Received: from AM6PR04MB5863.eurprd04.prod.outlook.com (20.179.1.11) by
 AM6PR04MB4070.eurprd04.prod.outlook.com (52.135.163.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Fri, 17 May 2019 22:01:03 +0000
Received: from AM6PR04MB5863.eurprd04.prod.outlook.com
 ([fe80::29f1:bb22:4881:3cbd]) by AM6PR04MB5863.eurprd04.prod.outlook.com
 ([fe80::29f1:bb22:4881:3cbd%4]) with mapi id 15.20.1900.010; Fri, 17 May 2019
 22:01:03 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Chuanhua Han <chuanhua.han@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [EXT] Re: [PATCH] arm64: dts: ls1028a: fix watchdog device node
Thread-Topic: [EXT] Re: [PATCH] arm64: dts: ls1028a: fix watchdog device node
Thread-Index: AQHVBjWLXx4zf+tY20C9RmzfaaLbEqZupocAgAA7pYCAAQj3MA==
Date: Fri, 17 May 2019 22:01:03 +0000
Message-ID: <AM6PR04MB586341334E62A663EE5E8BD18F0B0@AM6PR04MB5863.eurprd04.prod.outlook.com>
References: <20190509070657.18281-1-chuanhua.han@nxp.com>
 <20190517023728.GA15856@dragon>
 <AM6PR04MB4357C78FCEBA1B00AA42ED2E970B0@AM6PR04MB4357.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB4357C78FCEBA1B00AA42ED2E970B0@AM6PR04MB4357.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [136.49.234.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3100636e-d349-45f0-e3bc-08d6db132796
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB4070; 
x-ms-traffictypediagnostic: AM6PR04MB4070:
x-microsoft-antispam-prvs: <AM6PR04MB4070821EEFB9FC577638A7628F0B0@AM6PR04MB4070.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(376002)(39850400004)(346002)(366004)(13464003)(189003)(199004)(66476007)(71190400001)(64756008)(66556008)(71200400001)(66446008)(52536014)(86362001)(73956011)(3846002)(6116002)(4326008)(5660300002)(55016002)(9686003)(186003)(53936002)(14444005)(25786009)(14454004)(478600001)(305945005)(11346002)(486006)(74316002)(476003)(66066001)(446003)(76116006)(66946007)(6246003)(26005)(2906002)(256004)(8676002)(229853002)(110136005)(54906003)(99286004)(76176011)(7736002)(33656002)(8936002)(81156014)(102836004)(6506007)(53546011)(7696005)(68736007)(6436002)(316002)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4070;
 H:AM6PR04MB5863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yHiMzATVwBY+g9ohfnUpIncZDo7W1/mY32XGknYHEqF2Gj6TKl+8wx0czoGNrR9d82YvqHosGNtUQTHzmWeFI2MxJg/JCQzGcZ2VXw8YBBYLkPfbQD+dL/KlVWRJtnlY4Rut9O7NUsourA5PkKPLNDNTr9GXcqOMJFeLB/C/9dobCF1PdofflJC15YSTtXXSFdJqr44b4Io89bpeFZBZZHgxJgCVtj+ivBqWd/ABlgHSF8Z/iGDNfKUPOBqwWH5Y4GqvEYCVHrYQVPDNLPxrZ6ImcSQJcZi37vZvexbKorLUbN2bfCzHk1TbppGTahZI8Wye16lVRPhI8LcxMVH2NvbHBLhqzY50p/5SCzYay4EsXGFWeTRkFGBCTxy/2mFRQSyitCBa5hBXzye7lQ4W8yyuR2/ONnmbH2enWcRjdfs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3100636e-d349-45f0-e3bc-08d6db132796
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 22:01:03.2596 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_150111_072775_E4000DF5 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
IFNlbnQ6IEZyaWRheSwgTWF5IDE3LCAyMDE5IDE6MTEgQU0NCj4gVG86IFNoYXduIEd1byA8c2hh
d25ndW9Aa2VybmVsLm9yZz4NCj4gQ2M6IExlbyBMaSA8bGVveWFuZy5saUBueHAuY29tPjsgbWFy
ay5ydXRsYW5kQGFybS5jb207IGxpbnV4LWFybS0NCj4ga2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmc7IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC0NCj4ga2VybmVsQHZnZXIua2Vy
bmVsLm9yZzsgWWluZyBaaGFuZyA8eWluZy56aGFuZzIyNDU1QG54cC5jb20+DQo+IFN1YmplY3Q6
IFJFOiBbRVhUXSBSZTogW1BBVENIXSBhcm02NDogZHRzOiBsczEwMjhhOiBmaXggd2F0Y2hkb2cg
ZGV2aWNlIG5vZGUNCj4gDQo+IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0K
PiA+IEZyb206IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz4NCj4gPiBTZW50OiAyMDE5
xOo11MIxN8jVIDEwOjM4DQo+ID4gVG86IENodWFuaHVhIEhhbiA8Y2h1YW5odWEuaGFuQG54cC5j
b20+DQo+ID4gQ2M6IExlbyBMaSA8bGVveWFuZy5saUBueHAuY29tPjsgbWFyay5ydXRsYW5kQGFy
bS5jb207DQo+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBkZXZpY2V0
cmVlQHZnZXIua2VybmVsLm9yZzsNCj4gPiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBZ
aW5nIFpoYW5nIDx5aW5nLnpoYW5nMjI0NTVAbnhwLmNvbT4NCj4gPiBTdWJqZWN0OiBbRVhUXSBS
ZTogW1BBVENIXSBhcm02NDogZHRzOiBsczEwMjhhOiBmaXggd2F0Y2hkb2cgZGV2aWNlDQo+ID4g
bm9kZQ0KPiA+DQo+ID4gQ2F1dGlvbjogRVhUIEVtYWlsDQo+ID4NCj4gPiBPbiBUaHUsIE1heSAw
OSwgMjAxOSBhdCAwMzowNjo1N1BNICswODAwLCBDaHVhbmh1YSBIYW4gd3JvdGU6DQo+ID4gPiBs
czEwMjhhIHBsYXRmb3JtIHVzZXMgc3A4MDUgd2F0Y2hkb2csIGFuZCB1c2UgMS8xNiBwbGF0Zm9y
bSBjbG9jayBhcw0KPiA+ID4gdGltZXIgY2xvY2ssIHRoaXMgcGF0Y2ggZml4IGRldmljZSB0cmVl
IG5vZGUuDQo+ID4gPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogWmhhbmcgWWluZy0yMjQ1NSA8eWlu
Zy56aGFuZzIyNDU1QG54cC5jb20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBDaHVhbmh1YSBIYW4g
PGNodWFuaHVhLmhhbkBueHAuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgLi4uL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDI4YS5kdHNpIHwgMTkNCj4gPiA+ICsrKysrKysrKysrKy0t
LS0tLS0NCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlv
bnMoLSkNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVl
c2NhbGUvZnNsLWxzMTAyOGEuZHRzaQ0KPiA+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9mc2wtbHMxMDI4YS5kdHNpDQo+ID4gPiBpbmRleCBiMDQ1ODEyNDlmMGIuLjE1MTBiMTg1
ODI0NiAxMDA2NDQNCj4gPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2Zz
bC1sczEwMjhhLmR0c2kNCj4gPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxl
L2ZzbC1sczEwMjhhLmR0c2kNCj4gPiA+IEBAIC0yODUsMTMgKzI4NSwxOCBAQA0KPiA+ID4gICAg
ICAgICAgICAgICAgICAgICAgICNpbnRlcnJ1cHQtY2VsbHMgPSA8Mj47DQo+ID4gPiAgICAgICAg
ICAgICAgIH07DQo+ID4gPg0KPiA+ID4gLSAgICAgICAgICAgICB3ZG9nMDogd2F0Y2hkb2dAMjNj
MDAwMCB7DQo+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJmc2wsbHMx
MDI4YS13ZHQiLCAiZnNsLGlteDIxLXdkdCI7DQo+ID4gPiAtICAgICAgICAgICAgICAgICAgICAg
cmVnID0gPDB4MCAweDIzYzAwMDAgMHgwIDB4MTAwMDA+Ow0KPiA+ID4gLSAgICAgICAgICAgICAg
ICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSA1OSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsNCj4g
PiA+IC0gICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNsb2NrZ2VuIDQgMT47DQo+ID4g
PiAtICAgICAgICAgICAgICAgICAgICAgYmlnLWVuZGlhbjsNCj4gPiA+IC0gICAgICAgICAgICAg
ICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOw0KPiA+ID4gKyAgICAgICAgICAgICBjbHVzdGVy
MV9jb3JlMF93YXRjaGRvZzogd2R0QGMwMDAwMDAgew0KPiA+DQo+ID4gS2VlcCAnd2F0Y2hkb2cn
IGFzIHRoZSBub2RlIG5hbWUsDQo+IFRoYW5rcyBmb3IgeW91ciByZXBsYXkNCj4gRG8geW91IG1l
YW4gcmVwbGFjZSB0aGUgoa53ZHShryB3aXRoIKGud2F0Y2hkb2ehrz8NCj4gYW5kIGtlZXAgbm9k
ZXMgc29ydCBpbiB1bml0LWFkZHJlc3MuDQo+IFdoYXQgZG9lcyB0aGlzIG1lYW4/DQoNClRoYXQg
bWVhbnMgb3JkZXIgdGhlIG5vZGVzIGJ5IHRoZSBhZGRyZXNzZXMgKGUuZy4gYzAwMDAwMCwgYzAx
MDAwMCkNCg0KPiA+DQo+ID4gU2hhd24NCj4gPg0KPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
IGNvbXBhdGlibGUgPSAiYXJtLHNwODA1IiwgImFybSxwcmltZWNlbGwiOw0KPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIHJlZyA9IDwweDAgMHhjMDAwMDAwIDB4MCAweDEwMDA+Ow0KPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2xvY2tnZW4gNCAxNT4sIDwmY2xvY2tn
ZW4gNCAxNT47DQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiYXBi
X3BjbGsiLCAid2RvZ19jbGsiOw0KPiA+ID4gKyAgICAgICAgICAgICB9Ow0KPiA+ID4gKw0KPiA+
ID4gKyAgICAgICAgICAgICBjbHVzdGVyMV9jb3JlMV93YXRjaGRvZzogd2R0QGMwMTAwMDAgew0K
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYXJtLHNwODA1IiwgImFy
bSxwcmltZWNlbGwiOw0KPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDAgMHhj
MDEwMDAwIDB4MCAweDEwMDA+Ow0KPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9
IDwmY2xvY2tnZW4gNCAxNT4sIDwmY2xvY2tnZW4gNCAxNT47DQo+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgY2xvY2stbmFtZXMgPSAiYXBiX3BjbGsiLCAid2RvZ19jbGsiOw0KPiA+ID4gICAg
ICAgICAgICAgICB9Ow0KPiA+ID4NCj4gPiA+ICAgICAgICAgICAgICAgc2F0YTogc2F0YUAzMjAw
MDAwIHsNCj4gPiA+IC0tDQo+ID4gPiAyLjE3LjENCj4gPiA+DQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
