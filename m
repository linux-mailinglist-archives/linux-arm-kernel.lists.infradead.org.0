Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D9E5F59E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 11:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v6riddeORfW+lOOtB99P/32o34FIiJ4fXVnv6ijzVRc=; b=o22l4xPh0WKgf6
	xk2MpQHBNEHEsOpbLy2BsDhCfOMtuhJNCzIf6gY+DgSq+ghbBKs8ilKYtLcqL3gXqhXnOlB2DKzXy
	FrzJSm1GdLvjuNTUxxb2LuRrtD4em5U8zkOf7MGB5H4EcV3Q0brAIoQuvTVm0U/HQULpbL8Sz66Qb
	DwlQxOQX72M1K5Q29CbW3+XJpkpJUD23ZdT2Pe11SAIoIpVE3O6+bH15VP0KD74JO0SRRxgNw9cua
	RE/c46CflcytYrFvTNWtnNXFDk2kbp92FbW8oiC9CIIMS4MYP/xV+eBTXadU1h8ZVLxbRMum+7W3h
	9XYpvwpFBDWDycpFbxHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiy7y-0004QZ-TT; Thu, 04 Jul 2019 09:34:07 +0000
Received: from mail-eopbgr60069.outbound.protection.outlook.com ([40.107.6.69]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiy7l-0004Ps-JU
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 09:33:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IeQX3qxgNf3EIKcI396TmEETVuBT8iK8x1+KU6jH/68=;
 b=hz/eMSo8FzUEBAqLLt6lBhV3jEOsNCpLmWwxsgIGY+/wXnF+IpZ/LxxOGSHO+Dc/K1neadUVrVN8R2lXnZuPxb2e9G4ohvxfhvtnFi4jN50mMR4k1dHGnMe64ZiW+g6Bdw09veRkXoYFf8YhXseRKk7tJSWtwe3UPT3iWTJGUtA=
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com (52.133.46.11) by
 AM0PR0402MB3746.eurprd04.prod.outlook.com (52.133.39.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Thu, 4 Jul 2019 09:33:50 +0000
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::dd66:8e13:93f0:65eb]) by AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::dd66:8e13:93f0:65eb%7]) with mapi id 15.20.2032.019; Thu, 4 Jul 2019
 09:33:50 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [EXT] Re: [RFC 1/2] arm64: dts: imx8mq: add the rpmsg support
Thread-Topic: [EXT] Re: [RFC 1/2] arm64: dts: imx8mq: add the rpmsg support
Thread-Index: AQHVMjLFUVpr/iSrXkCKXi0vWvmIC6a6Lj6AgAABnyA=
Date: Thu, 4 Jul 2019 09:33:50 +0000
Message-ID: <AM0PR0402MB3570E4D25B402AE2ED6EB7358CFA0@AM0PR0402MB3570.eurprd04.prod.outlook.com>
References: <1562220905-13875-1-git-send-email-hongxing.zhu@nxp.com>
 <1562220905-13875-2-git-send-email-hongxing.zhu@nxp.com>
 <eacde261-071a-c6eb-2cbb-a7695cd0ae90@pengutronix.de>
In-Reply-To: <eacde261-071a-c6eb-2cbb-a7695cd0ae90@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hongxing.zhu@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0eeb125a-ce88-4148-62d9-08d70062b8ca
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR0402MB3746; 
x-ms-traffictypediagnostic: AM0PR0402MB3746:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR0402MB37468EFA53406695A439C7448CFA0@AM0PR0402MB3746.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0088C92887
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(376002)(346002)(39860400002)(366004)(13464003)(189003)(199004)(76116006)(66946007)(64756008)(66476007)(66446008)(66556008)(73956011)(68736007)(53936002)(6246003)(2501003)(71190400001)(71200400001)(14444005)(6436002)(256004)(6306002)(11346002)(446003)(2201001)(476003)(5660300002)(52536014)(86362001)(9686003)(55016002)(486006)(110136005)(6506007)(25786009)(53546011)(33656002)(3846002)(45080400002)(6116002)(102836004)(229853002)(99286004)(8676002)(6636002)(66066001)(7696005)(76176011)(81156014)(478600001)(81166006)(2906002)(966005)(8936002)(316002)(26005)(74316002)(7736002)(14454004)(4326008)(186003)(305945005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3746;
 H:AM0PR0402MB3570.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4xX0pByCm2SDZb9XwJk2c6EDypm9LbDyUCqjnv2nzRrM1RiTCXN6V6NF4BaZezTIG+S4m2ZXegvu94D5ohAMjurd2Gs3wVTnZ6aNA3lace/5+ofb2Um4zFPBOA4ObArrJ1aZbyasX5oLHQ35mD/Vzg2hBM9eJwBac2vWEslD5DkyA1IaRpDh3CbZipepRFaelRQobOrb4NuEEN+GVo4w62xWdS5kh5/83nO3hOQKiDIqeoXrun83rkPA5KlAluWtFtR007itjAwz7qNmG3sNPXBQxIkvGC7EkFSS4LVhlmJy5kgckoWl/mJipCE8aHevHXyUXQAruD6vpPLTWbcTZziuwnmi4nLuKJOViQpMiBjfofMCccIoKrQwEm5Gdc8/8eqRZDsYVF7fAsO85rKHEP33xRyPfWOfNCaYev/wQ7s=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0eeb125a-ce88-4148-62d9-08d70062b8ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2019 09:33:50.1641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hongxing.zhu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3746
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_023353_639160_E3454253 
X-CRM114-Status: GOOD (  21.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.69 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgT2xla3NpajoNClRoYW5rIHlvdXIgZm9yIHlvdXIgY29tbWVudHMuDQoNCj4gLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogT2xla3NpaiBSZW1wZWwgW21haWx0bzpvLnJlbXBl
bEBwZW5ndXRyb25peC5kZV0NCj4gU2VudDogMjAxOeW5tDfmnIg05pelIDE3OjE4DQo+IFRvOiBS
aWNoYXJkIFpodSA8aG9uZ3hpbmcuemh1QG54cC5jb20+OyBzaGF3bmd1b0BrZXJuZWwub3JnOw0K
PiBzLmhhdWVyQHBlbmd1dHJvbml4LmRlOyBrZXJuZWxAcGVuZ3V0cm9uaXguZGU7IGZlc3RldmFt
QGdtYWlsLmNvbTsNCj4gZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT4NCj4gQ2M6IGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBbRVhUXSBSZTog
W1JGQyAxLzJdIGFybTY0OiBkdHM6IGlteDhtcTogYWRkIHRoZSBycG1zZyBzdXBwb3J0DQo+IA0K
PiBIaSBSaWNoYXJkLA0KPiANCj4gdGhpcyBwYXRjaCBpcyBtaXhpbmcgU29DIGFuZCBhcHBsaWNh
dGlvbiBzcGVjaWZpYyBwYXJ0cy4NCj4gQWRkaW5nIG11OiBtdUAzMGFhMDAwMCAgaXMgU29DIHNw
ZWNpZmljIGFuZCBzaG91bGQgZ28gdG8gc2VwYXJhdGUgcGF0Y2guDQo+IEV2ZXJ5IHRoaW5nIGVs
c2UgaXMgYXBwbGljYXRpb24gc3BlY2lmaWMgYW5kIG5lZWRlZCBmb3IgZGVtb25zdHJhdGlvbiBv
bmx5Lg0KPiBDb3JyZWN0Pw0KPiANCltSaWNoYXJkIFpodV0gWWVzLCBjb3JyZWN0LiBUaGUgbXUg
aXMgU29DIHNwZWNpZmljIHBhcnQuIEkgd291bGQgc3BsaXQgaXQgdG8gYSBzdGFuZGFsb25lIHBh
dGNoIGxhdGVyLg0KDQpCZXN0IFJlZ2FyZHMNClJpY2hhcmQgWmh1DQoNCj4gT24gMDQuMDcuMTkg
MDg6MzYsIFJpY2hhcmQgWmh1IHdyb3RlOg0KPiA+IEFkZCB0aGUgaU1YOE1RIFJQTVNHIHN1cHBv
cnQuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBSaWNoYXJkIFpodSA8aG9uZ3hpbmcuemh1QG54
cC5jb20+DQo+ID4gLS0tDQo+ID4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9NYWtl
ZmlsZSAgICAgICAgICAgICB8ICAyICstDQo+ID4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9pbXg4bXEtZXZrLXJwbXNnLmR0cyB8IDY3DQo+ICsrKysrKysrKysrKysrKysrKysrKysN
Cj4gPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpICAgICAgICAg
IHwgMjMgKysrKysrKysNCj4gPiAgIDMgZmlsZXMgY2hhbmdlZCwgOTEgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQ0KPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0DQo+ID4gYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvaW14OG1xLWV2ay1ycG1zZy5kdHMNCj4gPg0KPiA+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9NYWtlZmlsZQ0KPiA+IGIvYXJjaC9h
cm02NC9ib290L2R0cy9mcmVlc2NhbGUvTWFrZWZpbGUNCj4gPiBpbmRleCBjMDQzYWNhLi40Nzhm
NDQ4IDEwMDY0NA0KPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL01ha2Vm
aWxlDQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvTWFrZWZpbGUNCj4g
PiBAQCAtMjEsNyArMjEsNyBAQCBkdGItJChDT05GSUdfQVJDSF9MQVlFUlNDQVBFKSArPQ0KPiBm
c2wtbHgyMTYwYS1xZHMuZHRiDQo+ID4gICBkdGItJChDT05GSUdfQVJDSF9MQVlFUlNDQVBFKSAr
PSBmc2wtbHgyMTYwYS1yZGIuZHRiDQo+ID4NCj4gPiAgIGR0Yi0kKENPTkZJR19BUkNIX01YQykg
Kz0gaW14OG1tLWV2ay5kdGINCj4gPiAtZHRiLSQoQ09ORklHX0FSQ0hfTVhDKSArPSBpbXg4bXEt
ZXZrLmR0Yg0KPiA+ICtkdGItJChDT05GSUdfQVJDSF9NWEMpICs9IGlteDhtcS1ldmsuZHRiIGlt
eDhtcS1ldmstcnBtc2cuZHRiDQo+ID4gICBkdGItJChDT05GSUdfQVJDSF9NWEMpICs9IGlteDht
cS1saWJyZW01LWRldmtpdC5kdGINCj4gPiAgIGR0Yi0kKENPTkZJR19BUkNIX01YQykgKz0gaW14
OG1xLXppaS11bHRyYS1ybWIzLmR0Yg0KPiA+ICAgZHRiLSQoQ09ORklHX0FSQ0hfTVhDKSArPSBp
bXg4bXEtemlpLXVsdHJhLXplc3QuZHRiIGRpZmYgLS1naXQNCj4gPiBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvZnJlZXNjYWxlL2lteDhtcS1ldmstcnBtc2cuZHRzDQo+ID4gYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtZXZrLXJwbXNnLmR0cw0KPiA+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0DQo+ID4gaW5kZXggMDAwMDAwMC4uMTg1YTVjNA0KPiA+IC0tLSAvZGV2L251bGwNCj4g
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtZXZrLXJwbXNnLmR0
cw0KPiA+IEBAIC0wLDAgKzEsNjcgQEANCj4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IChHUEwtMi4wIE9SIE1JVCkNCj4gPiArLyoNCj4gPiArICogQ29weXJpZ2h0IDIwMTkgTlhQDQo+
ID4gKyAqLw0KPiA+ICsNCj4gPiArL2R0cy12MS87DQo+ID4gKw0KPiA+ICsjaW5jbHVkZSAiaW14
OG1xLWV2ay5kdHMiDQo+ID4gKw0KPiA+ICsvIHsNCj4gPiArICAgICByZXNlcnZlZC1tZW1vcnkg
ew0KPiA+ICsgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8Mj47DQo+ID4gKyAgICAgICAg
ICAgICAjc2l6ZS1jZWxscyA9IDwyPjsNCj4gPiArICAgICAgICAgICAgIHJhbmdlczsNCj4gPiAr
DQo+ID4gKyAgICAgICAgICAgICBtNF9yZXNlcnZlZDogbTRAMHg4MDAwMDAwMCB7DQo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgIG5vLW1hcDsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgcmVn
ID0gPDAgMHg4MDAwMDAwMCAwIDB4MTAwMDAwMD47DQo+ID4gKyAgICAgICAgICAgICB9Ow0KPiA+
ICsgICAgICAgICAgICAgcnBtc2dfcmVzZXJ2ZWQ6IHJwbXNnQDB4YjgwMDAwMDAgew0KPiA+ICsg
ICAgICAgICAgICAgICAgICAgICBuby1tYXA7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJl
ZyA9IDwwIDB4YjgwMDAwMDAgMCAweDQwMDAwMD47DQo+ID4gKyAgICAgICAgICAgICB9Ow0KPiA+
ICsgICAgICAgICAgICAgcnBtc2dfZG1hX3Jlc2VydmVkOnJwbXNnX2RtYUAweGI4NDAwMDAwIHsN
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJzaGFyZWQtZG1hLXBvb2wi
Ow0KPiA+ICsgICAgICAgICAgICAgICAgICAgICBuby1tYXA7DQo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgIHJlZyA9IDwwIDB4Yjg0MDAwMDAgMCAweDEwMDAwMD47DQo+ID4gKyAgICAgICAgICAg
ICB9Ow0KPiA+ICsgICAgIH07DQo+ID4gK307DQo+ID4gKw0KPiA+ICsvKg0KPiA+ICsgKiBSZWdh
cmRpbmcgdG8gdGhlIEhXIGNvbmZsaWNhdGlvbnMsIHRoZSBmb2xsb3dpbmcgbW9kdWxlIHNob3Vs
ZCBiZQ0KPiA+ICtkaXNhYmxlZA0KPiA+ICsgKiB3aGVuIE00IGlzIHJ1bm5pbmcgb24gZXZrIGJv
YXJkLg0KPiA+ICsgKiBncHQxLCBpMmMyLCBwd200LCB0bXUsIHVhcnQyLCB3ZG9nMyAgKi8NCj4g
PiArDQo+ID4gKyZpMmMyIHsNCj4gPiArICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOw0KPiA+ICt9
Ow0KPiA+ICsNCj4gPiArJnB3bTQgew0KPiA+ICsgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7DQo+
ID4gK307DQo+ID4gKw0KPiA+ICsmcnBtc2d7DQo+ID4gKyAgICAgLyoNCj4gPiArICAgICAgKiA2
NEsgZm9yIG9uZSBycG1zZyBpbnN0YW5jZToNCj4gPiArICAgICAgKiAtLTB4YjgwMDAwMDB+MHhi
ODAwZmZmZjogcGluZ3BvbmcNCj4gPiArICAgICAgKi8NCj4gPiArICAgICB2ZGV2LW51bXMgPSA8
MT47DQo+ID4gKyAgICAgcmVnID0gPDB4MCAweGI4MDAwMDAwIDB4MCAweDEwMDAwPjsNCj4gPiAr
ICAgICBtZW1vcnktcmVnaW9uID0gPCZycG1zZ19kbWFfcmVzZXJ2ZWQ+Ow0KPiA+ICsgICAgIHN0
YXR1cyA9ICJva2F5IjsNCj4gPiArfTsNCj4gPiArDQo+ID4gKyZ0bXUgew0KPiA+ICsgICAgIHN0
YXR1cyA9ICJkaXNhYmxlZCI7DQo+ID4gK307DQo+ID4gKw0KPiA+ICsmdWFydDIgew0KPiA+ICsg
ICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7DQo+ID4gK307DQo+ID4gKw0KPiA+ICsmd2RvZzN7DQo+
ID4gKyAgICAgc3RhdHVzID0gImRpc2FibGVkIjsNCj4gPiArfTsNCj4gPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kNCj4gPiBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpDQo+ID4gaW5kZXggODUwMDhkYy4uOTNk
OTBlMiAxMDA2NDQNCj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4
bXEuZHRzaQ0KPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5k
dHNpDQo+ID4gQEAgLTc3Nyw2ICs3NzcsMTUgQEANCj4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOw0KPiA+ICAgICAgICAgICAgICAgICAgICAgICB9
Ow0KPiA+DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIG11OiBtdUAzMGFhMDAwMCB7DQo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJmc2wsaW14OG1xLW11
IiwNCj4gImZzbCxpbXg2c3gtbXUiOw0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHJlZyA9IDwweDMwYWEwMDAwIDB4MTAwMDA+Ow0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSA4OA0KPiBJUlFfVFlQRV9MRVZFTF9ISUdIPjsN
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNsaw0KPiBJTVg4
TVFfQ0xLX01VX1JPT1Q+Ow0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2Nr
LW5hbWVzID0gIm11IjsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAjbWJveC1j
ZWxscyA9IDwyPjsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgfTsNCj4gPiArDQo+ID4gICAg
ICAgICAgICAgICAgICAgICAgIHVzZGhjMTogbW1jQDMwYjQwMDAwIHsNCj4gPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImZzbCxpbXg4bXEtdXNkaGMiLA0KPiA+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiZnNsLGlteDdkLXVz
ZGhjIjsNCj4gQEANCj4gPiAtMTAzMiw0ICsxMDQxLDE4IEBADQo+ID4gICAgICAgICAgICAgICAg
ICAgICAgIGludGVycnVwdC1wYXJlbnQgPSA8JmdpYz47DQo+ID4gICAgICAgICAgICAgICB9Ow0K
PiA+ICAgICAgIH07DQo+ID4gKw0KPiA+ICsgICAgIHJwbXNnOiBycG1zZ3sNCj4gPiArICAgICAg
ICAgICAgIGNvbXBhdGlibGUgPSAiZnNsLGlteDhtcS1ycG1zZyI7DQo+ID4gKyAgICAgICAgICAg
ICAvKiB1cCB0byBub3csIHRoZSBmb2xsb3dpbmcgY2hhbm5lbHMgYXJlIHVzZWQgaW4gaW14IHJw
bXNnDQo+ID4gKyAgICAgICAgICAgICAgKiAtIHR4MS9yeDE6IG1lc3NhZ2VzIGNoYW5uZWwuDQo+
ID4gKyAgICAgICAgICAgICAgKiAtIGdlbmVyYWwgaW50ZXJydXB0MTogcmVtb3RlIHByb2MgZmlu
aXNoIHJlLWluaXQgcnBtc2cNCj4gc3RhY2sNCj4gPiArICAgICAgICAgICAgICAqICAgd2hlbiBB
IGNvcmUgaXMgcGFydGl0aW9uIHJlc2V0Lg0KPiA+ICsgICAgICAgICAgICAgICovDQo+ID4gKyAg
ICAgICAgICAgICBtYm94LW5hbWVzID0gInR4IiwgInJ4IiwgInJ4ZGIiOw0KPiA+ICsgICAgICAg
ICAgICAgbWJveGVzID0gPCZtdSAwIDENCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAmbXUg
MSAxDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgJm11IDMgMT47DQo+ID4gKyAgICAgICAg
ICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOw0KPiA+ICsgICAgIH07DQo+ID4gICB9Ow0KPiA+DQo+
IA0KPiBLaW5kIHJlZ2FyZHMsDQo+IE9sZWtzaWogUmVtcGVsDQo+IA0KPiAtLQ0KPiBQZW5ndXRy
b25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfA0KPiB8DQo+IEluZHVzdHJpYWwg
TGludXggU29sdXRpb25zICAgICAgICAgICAgICAgICB8DQo+IGh0dHBzOi8vZXVyMDEuc2FmZWxp
bmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwJTNBJTJGJTJGd3d3LnANCj4gZW5n
dXRyb25peC5kZSUyRiZhbXA7ZGF0YT0wMiU3QzAxJTdDaG9uZ3hpbmcuemh1JTQwbnhwLmNvbSU3
QzU2Zg0KPiAzM2FkMzVkMmU0NGMxOGQ5ZDA4ZDcwMDYwNzgxMyU3QzY4NmVhMWQzYmMyYjRjNmZh
OTJjZDk5YzVjMzAxNg0KPiAzNSU3QzAlN0MwJTdDNjM2OTc4Mjg2NjQ3NTE3MjgzJmFtcDtzZGF0
YT00c1JFTXpWeXQlMkJTeiUyRmxTDQo+IDdmcXlYaWFHdmVYb2s5M2JYZGQ5TTFqdGtVWjglM0Qm
YW1wO3Jlc2VydmVkPTAgIHwNCj4gUGVpbmVyIFN0ci4gNi04LCAzMTEzNyBIaWxkZXNoZWltLCBH
ZXJtYW55IHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wDQo+IHwNCj4gQW10c2dlcmljaHQgSGls
ZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4Og0KPiArNDktNTEyMS0yMDY5MTctNTU1
NSB8DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
