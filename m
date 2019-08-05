Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D4F81145
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 07:10:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kgNTVZirmeRx52yKO0djgxOck7Cu9EuunkRXly6BCMo=; b=B7QUB7TJeT5jW0
	nUoEThv50FsyrUNFNc9lyUZojBk92DRu2gg40gJG+y39DmgusOeRtDAQ4/nbT/e/7sAP4r2Gxe8+t
	hKGb701R3zYbn+4DFGoFvgXAaGGvyxHiE14vDiq7/qnfoP6obl7RTOqOmlT4jbZ85qHI0+X/aQEJi
	g3qyCyC7TbuuGyrAzuvQcykkKJyJiu/ysuEEtw/8Y8TzfhKIz8NhADSARMc2Bf2zyhhrPhLOvvxDc
	d1l4obA31zf5X28nPeQJdsWZ+KhePZEWPHzk5BbLw8UMAT90VeFGhXDrumfkv+W13JN8kA0rEYGH0
	wa9BZu1dfTTiw3qBi6Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huVGj-0002nm-0f; Mon, 05 Aug 2019 05:10:49 +0000
Received: from mail-eopbgr60041.outbound.protection.outlook.com ([40.107.6.41]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huVGW-0002mw-JQ
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 05:10:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j4NvRh5nRcIFyjJxiiv9bHkKnmMMGrO3W3LDTvg/GJDnWF0VyTwZStqR+c3KO6tIitPjwmSU81DHIK663gynlWmT1HViAlIAyq9dtmGsG6dsHvKCSNiBd/iuf7DanNdso1sD6SLTIRhA0FboRLNFz2RnbVmXlxpWSxZ6HTQMSmwcVjdbfc3MzYWhT+wMiST/1Y1C8Tr+dOZiuZB036MdKHjcAwGB4/1KjuHUEnIrlDuTHe8TYG+34dbrmk2RzO3otYS5pfdP1VH8Y8soQMNjEbeYNYReJQLqiQDqmMZmTYckdfD6z0kqTHkjcW6TtLJIo1z6a/2YKqrJEqdTXYY5JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nojvH2ecsBd793nhUpcKJgET/ydz4OC41T5AYEdv5W8=;
 b=CLBBoYDLD6erDpjQdc7f2JCKQNQbIlkvFh5hnh7o1hrX7Jy/0GbMPlM44q06w3i2C3Jb24Lwuw2tgKzIAVMXjmkXi78f67HObGQBIMkVU7TuCEh0MOh9GUF0NvRQhNqrrkTiLTlw4ccvFtmUeOfDTOXKEZMOohiqc5PG9Q2ZJ2z8BuN8vptfoCbCMNvALxq0Aglb190qAQH2utNccVAR3Lsr8bGSPFF+PLzf0+uwouhnW0ewafPObZY8EfpIqmYh8/2OxY+aKh8bkc+bogNH1FifSd73lvmY/cRCCWENfUVnY3a+Xx1K/xYnLQy/rKjTuc8lQVe28Zr+ORh5cYaFuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nojvH2ecsBd793nhUpcKJgET/ydz4OC41T5AYEdv5W8=;
 b=DOXEvcefjfYqBhl6jOQBVKmczT2D6iEerz9nN/Yuq+Hu26Hd5MX52nzZyU+klXUZk7q+7tctyRinv3GFo2j3Mif1Xolj8fPwVtyh62HLx4s6z6ZfVmnhZuRokNlG7lZfegT1ur79O/TnZWdJuedKOJr6kpKXTJ3Q/kAhq73mcVU=
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com (52.133.46.11) by
 AM0PR0402MB3858.eurprd04.prod.outlook.com (52.133.39.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Mon, 5 Aug 2019 05:10:31 +0000
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::19ee:c210:d6cd:561f]) by AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::19ee:c210:d6cd:561f%6]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 05:10:31 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "o.rempel@pengutronix.de"
 <o.rempel@pengutronix.de>, Daniel Baluta <daniel.baluta@nxp.com>
Subject: RE: [PATCH v5 1/4] mailbox: imx: Fix Tx doorbell shutdown path
Thread-Topic: [PATCH v5 1/4] mailbox: imx: Fix Tx doorbell shutdown path
Thread-Index: AQHVSzveDE7drjWa6US67XCxYyDRS6br+KiAgAAItbA=
Date: Mon, 5 Aug 2019 05:10:30 +0000
Message-ID: <AM0PR0402MB357045BED7FE702C837F5CC88CDA0@AM0PR0402MB3570.eurprd04.prod.outlook.com>
References: <1564973491-18286-1-git-send-email-hongxing.zhu@nxp.com>
 <1564973491-18286-2-git-send-email-hongxing.zhu@nxp.com>
 <AM0PR04MB42110CA7AD41C91EF763808B80DA0@AM0PR04MB4211.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB42110CA7AD41C91EF763808B80DA0@AM0PR04MB4211.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hongxing.zhu@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f3adb5c-57d1-48e2-d0d1-08d719633ce2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR0402MB3858; 
x-ms-traffictypediagnostic: AM0PR0402MB3858:
x-microsoft-antispam-prvs: <AM0PR0402MB3858DD5BA5B3C26C3CDD6F2A8CDA0@AM0PR0402MB3858.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(346002)(396003)(39860400002)(376002)(13464003)(51234002)(72854002)(199004)(189003)(6116002)(3846002)(33656002)(2906002)(8676002)(74316002)(76116006)(305945005)(7736002)(256004)(14444005)(71200400001)(71190400001)(81156014)(81166006)(8936002)(11346002)(14454004)(486006)(186003)(26005)(446003)(476003)(2501003)(45080400002)(478600001)(66066001)(25786009)(4326008)(15650500001)(66946007)(66476007)(7696005)(66556008)(64756008)(66446008)(54906003)(5660300002)(52536014)(99286004)(9686003)(102836004)(55016002)(2201001)(6246003)(6506007)(53546011)(86362001)(6636002)(229853002)(53936002)(6436002)(110136005)(316002)(76176011)(68736007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3858;
 H:AM0PR0402MB3570.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: I1eSkOOBqc1IJdD8neK1fBQ5NACHEvIn8VvtpE2kbetxmBbzg2+VvKOB5HpzcFXgy9WduRzJB8YLZrrq9PG/AdqY1izo96aJPc4M64JoxNb1ZNlAWRY4w0iTYyZH9Jzv0C2huis7WzYh9y4KJOK59bWu8meysBosic9a+FWPFq8Mfyi1JIj+a9cCTBmY3pLIfcCDo+YeDSsdOQOqAfET1YDiuc3EOMPL8+PVp1l29shgxmN03K7f2QzfQJuggGmtoH42OxWscYWdse+4YnJnyZepNwrFzSVvzr2vdna9ggGXwCE0WRSttRgQZw5MCeZp6N3w2W2jo7DNwrmTxUy7zOp7bwB7v3sSneBremmydfnkSC2CA2hqWmUnmtVH2Y+BteWnCDmTfXXfxcrqTegf7oSJmU1QgCECG8oPSVAlKm8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f3adb5c-57d1-48e2-d0d1-08d719633ce2
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 05:10:30.9449 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hongxing.zhu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3858
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_221036_647010_305B7A0B 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEFpc2hlbmcgRG9uZw0KPiBT
ZW50OiAyMDE55bm0OOaciDXml6UgMTI6MzgNCj4gVG86IFJpY2hhcmQgWmh1IDxob25neGluZy56
aHVAbnhwLmNvbT47IGphc3Npc2luZ2hicmFyQGdtYWlsLmNvbTsNCj4gby5yZW1wZWxAcGVuZ3V0
cm9uaXguZGU7IERhbmllbCBCYWx1dGEgPGRhbmllbC5iYWx1dGFAbnhwLmNvbT4NCj4gQ2M6IGRs
LWxpbnV4LWlteCA8bGludXgtaW14QG54cC5jb20+OyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwu
b3JnOw0KPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IFJpY2hhcmQgWmh1
IDxob25neGluZy56aHVAbnhwLmNvbT4NCj4gU3ViamVjdDogUkU6IFtQQVRDSCB2NSAxLzRdIG1h
aWxib3g6IGlteDogRml4IFR4IGRvb3JiZWxsIHNodXRkb3duIHBhdGgNCj4gDQo+ID4gRnJvbTog
UmljaGFyZCBaaHUgPGhvbmd4aW5nLnpodUBueHAuY29tPg0KPiA+IFNlbnQ6IE1vbmRheSwgQXVn
dXN0IDUsIDIwMTkgMTA6NTEgQU0NCj4gPg0KPiA+IFR4IGRvb3JiZWxsIGlzIGhhbmRsZWQgYnkg
dHhkYl90YXNrbGV0IGFuZCBkb2Vzbid0IGhhdmUgYW4gYXNzb2NpYXRlZCBJUlEuDQo+ID4NCj4g
PiBBbnlob3csIGlteF9tdV9zaHV0ZG93biBpZ25vcmVzIHRoaXMgYW5kIHRyaWVzIHRvIGZyZWUg
YW4gSVJRIHRoYXQNCj4gPiB3YXNuJ3QgcmVxdWVzdGVkIGZvciBUeCBEQiByZXN1bHRpbmcgaW4g
dGhlIGZvbGxvd2luZyB3YXJuaW5nOg0KPiA+DQo+ID4gWyAgICAxLjk2NzY0NF0gVHJ5aW5nIHRv
IGZyZWUgYWxyZWFkeS1mcmVlIElSUSAyNg0KPiA+IFsgICAgMS45NzIxMDhdIFdBUk5JTkc6IENQ
VTogMiBQSUQ6IDE1NyBhdCBrZXJuZWwvaXJxL21hbmFnZS5jOjE3MDgNCj4gPiBfX2ZyZWVfaXJx
KzB4YzAvMHgzNTgNCj4gPiBbICAgIDEuOTgwMDI0XSBNb2R1bGVzIGxpbmtlZCBpbjoNCj4gPiBb
ICAgIDEuOTgzMDg4XSBDUFU6IDIgUElEOiAxNTcgQ29tbToga3dvcmtlci8yOjEgVGFpbnRlZDog
Rw0KPiA+IFsgICAgMS45OTM1MjRdIEhhcmR3YXJlIG5hbWU6IEZyZWVzY2FsZSBpLk1YOFFYUCBN
RUsgKERUKQ0KPiA+IFsgICAgMS45OTg2NjhdIFdvcmtxdWV1ZTogZXZlbnRzIGRlZmVycmVkX3By
b2JlX3dvcmtfZnVuYw0KPiA+IFsgICAgMi4wMDM4MTJdIHBzdGF0ZTogNjAwMDAwODUgKG5aQ3Yg
ZGFJZiAtUEFOIC1VQU8pDQo+ID4gWyAgICAyLjAwODYwN10gcGMgOiBfX2ZyZWVfaXJxKzB4YzAv
MHgzNTgNCj4gPiBbICAgIDIuMDEyMzY0XSBsciA6IF9fZnJlZV9pcnErMHhjMC8weDM1OA0KPiA+
IFsgICAgMi4wMTYxMTFdIHNwIDogZmZmZjAwMDAxMTc5YjdlMA0KPiA+IFsgICAgMi4wMTk0MjJd
IHgyOTogZmZmZjAwMDAxMTc5YjdlMCB4Mjg6IDAwMDAwMDAwMDAwMDAwMTgNCj4gPiBbICAgIDIu
MDI0NzM2XSB4Mjc6IGZmZmYwMDAwMTEyMzMwMDAgeDI2OiAwMDAwMDAwMDAwMDAwMDA0DQo+ID4g
WyAgICAyLjAzMDA1M10geDI1OiAwMDAwMDAwMDAwMDAwMDFhIHgyNDogZmZmZjgwMDgzYmVjNzRk
NA0KPiA+IFsgICAgMi4wMzUzNjldIHgyMzogMDAwMDAwMDAwMDAwMDAwMCB4MjI6IGZmZmY4MDA4
M2JlYzc1ODgNCj4gPiBbICAgIDIuMDQwNjg2XSB4MjE6IGZmZmY4MDA4M2IxZmU4ZDggeDIwOiBm
ZmZmODAwODNiZWM3NDAwDQo+ID4gWyAgICAyLjA0NjAwM10geDE5OiAwMDAwMDAwMDAwMDAwMDAw
IHgxODogZmZmZmZmZmZmZmZmZmZmZg0KPiA+IFsgICAgMi4wNTEzMjBdIHgxNzogMDAwMDAwMDAw
MDAwMDAwMCB4MTY6IDAwMDAwMDAwMDAwMDAwMDANCj4gPiBbICAgIDIuMDU2NjM3XSB4MTU6IGZm
ZmYwMDAwMTExMjk2YzggeDE0OiBmZmZmMDAwMDkxNzliNTE3DQo+ID4gWyAgICAyLjA2MTk1M10g
eDEzOiBmZmZmMDAwMDExNzliNTI1IHgxMjogZmZmZjAwMDAxMTE0MjAwMA0KPiA+IFsgICAgMi4w
NjcyNzBdIHgxMTogZmZmZjAwMDAxMTEyOWYyMCB4MTA6IGZmZmYwMDAwMTA1ZGE5NzANCj4gPiBb
ICAgIDIuMDcyNTg3XSB4OSA6IDAwMDAwMDAwZmZmZmZmZDAgeDggOiAwMDAwMDAwMDAwMDAwMTk0
DQo+ID4gWyAgICAyLjA3NzkwM10geDcgOiA2MTIwNjU2NTcyNjYyMDZmIHg2IDogZmZmZjAwMDAx
MTFlN2IwOQ0KPiA+IFsgICAgMi4wODMyMjBdIHg1IDogMDAwMDAwMDAwMDAwMDAwMyB4NCA6IDAw
MDAwMDAwMDAwMDAwMDANCj4gPiBbICAgIDIuMDg4NTM3XSB4MyA6IDAwMDAwMDAwMDAwMDAwMDAg
eDIgOiAwMDAwMDAwMGZmZmZmZmZmDQo+ID4gWyAgICAyLjA5Mzg1NF0geDEgOiAyOGI3MGYwYTJi
NjBhNTAwIHgwIDogMDAwMDAwMDAwMDAwMDAwMA0KPiA+IFsgICAgMi4wOTkxNzNdIENhbGwgdHJh
Y2U6DQo+ID4gWyAgICAyLjEwMTYxOF0gIF9fZnJlZV9pcnErMHhjMC8weDM1OA0KPiA+IFsgICAg
Mi4xMDUwMjFdICBmcmVlX2lycSsweDM4LzB4OTgNCj4gPiBbICAgIDIuMTA4MTcwXSAgaW14X211
X3NodXRkb3duKzB4OTAvMHhiMA0KPiA+IFsgICAgMi4xMTE5MjFdICBtYm94X2ZyZWVfY2hhbm5l
bC5wYXJ0LjIrMHgyNC8weGI4DQo+ID4gWyAgICAyLjExNjQ1M10gIG1ib3hfZnJlZV9jaGFubmVs
KzB4MTgvMHgyOA0KPiA+DQo+ID4gVGhpcyBidWcgaXMgcHJlc2VudCBmcm9tIHRoZSBiZWdpbm5p
bmcgb2YgdGltZXMuDQo+ID4NCj4gPiBDYzogT2xla3NpaiBSZW1wZWwgPG8ucmVtcGVsQHBlbmd1
dHJvbml4LmRlPg0KPiA+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBCYWx1dGEgPGRhbmllbC5iYWx1
dGFAbnhwLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBSaWNoYXJkIFpodSA8aG9uZ3hpbmcuemh1
QG54cC5jb20+DQo+IA0KPiBJIHRoaW5rIHlvdSBzaG91bGQga2VlcCB0aGUgb3JpZ2luYWwgYXV0
aG9yIGFuZCBGaXhlcyB0YWcuDQo+IE90aGVyd2lzZToNCj4gUmV2aWV3ZWQtYnk6IERvbmcgQWlz
aGVuZyA8YWlzaGVuZy5kb25nQG54cC5jb20+DQo+IA0KW1JpY2hhcmQgWmh1XSBTb3JyeSBhYm91
dCB0aGUgYXV0aG9yIGNoYW5nZXMsIGJlY2F1c2UgdGhlcmUgYXJlIGNvbmZsaWN0aW9uDQogd2hl
biBJIHVzZSAiZ2l0IGFtIiB0byBtZXJnZSB0aGlzIHBhdGNoLg0KV291bGQgY2hhbmdlIHRoZSBh
dXRob3IgYmFjaywgYW5kIHJlLXNlbmQgdGhlIHY1IHBhdGNoLXNldC4NCj4gUmVnYXJkcw0KPiBB
aXNoZW5nDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
