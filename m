Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC85D8171E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:33:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdlDmfFMKfXNF/SXOimGyQ7hT/e+gFhGKu6lWftrBdI=; b=HYb6nOOvIRm13t
	RTPsfAHPtnJtW7PV4MJSM9DaF+/ONJYc898M17aTrMtjS8wHEaGDrev0ZRCHD97UHwAYPzvfpMLas
	KvyZ4MYck9vgeLhtrTWZ8fn5Eaa2lzvggaTqRgfbtth6da9VDypyt5Z/OqsaQwUedsoqHxZ5AJkxk
	euRqbo9inSfF/0EjK+As9TEh2raCMVSDtgjSY/5j0WVIJE/iVOlyf/miqht38N5t0A8Ub9XV/Vc6R
	KSjDW6mSZxlMBVAeIoGa6FUyQKowy1c7YrLPtrkCszhptUPxrNZMI6C1iP/yqCrUr2gungbhftiJr
	LizI1UehlEE6SN3HpIQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huaJ5-0003eG-Sl; Mon, 05 Aug 2019 10:33:36 +0000
Received: from mail-eopbgr80084.outbound.protection.outlook.com ([40.107.8.84]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huaIs-0003Zo-4N
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:33:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gh/mMLGOF2LL57ulCfuxGVjWijJOMFaY2maA5xVsfXZGivyc6cfnoiUMn3dM4WjYU6M5e7y4kfz1U4kqBTOyoBCnrZ7TmTVu/ZmpR2N/vOFE6KBC8dG09DXNOCwA1Bfx0gotqFVf9kUyxQm4mBJ95gHvilWDFcjGSZos064WA6RThwv5KVf4uQVB1mp5iuU3EuyaC/fYoB/vqy1BeuyDykJE7YUS8w1hYaenh4L8eGCA37OUpfCO1jfHcxN0vZRmPA8HQCk4j2QePrZMEJlUrsLlfAczLQN07AHubT62r7NEvv034g5ll4UBhLATAFez8w33TGkRQTqY1h71ImM/HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F3it+KcAyYNPL1QHEYLWpSBRoBJyWZKi8MVoWPcVVfs=;
 b=juHAyTIjjl6z37rojVeFnwskAnooDAH9iSD5LldUlDGe/xswbB0oeiAsUjD4gRKSWusDZsZKVJorHxmqxhhndySU2N/U6+VTVBf5JvNinHtJkHRdwggpSgOA3mScbZ+2iy5e2AhfT/2/5gUC3w5RmbjExX7Uk01/xA8yCQfVXeI2kNwTvqLnYMNXXPyqBVYShTvOeZsaXV7bXlTsUoYM2Zi5BP4AYQ4R/t2ejNjFoDBJysitGwHqC6jRPmSxelvDzCXMt8yJJATEPCTNF6CuWvwED2o5lUkYi5CRbkNI3RMYooAcs9qsJktrPz52VHzudu8zmg9zLAOivhOGKqjVYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F3it+KcAyYNPL1QHEYLWpSBRoBJyWZKi8MVoWPcVVfs=;
 b=Y24++TR8bd/Sn0hojQGy5y3Kd6YjnIr16ZDpO0GnFRXRBvBSrPr2xf/Q7bfySGdBrTykpoxgOh5sHdfUZozHlwKYjmrcOgZlsLB30G10qZ/6Kx+UisW0CAv+Gt62A7iJkTnm7WMelX/c87bOjljcz9T7oXoaP+NLTqDVnVkoKoM=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4938.eurprd04.prod.outlook.com (20.176.235.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.20; Mon, 5 Aug 2019 10:33:16 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::6553:8d04:295c:774b]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::6553:8d04:295c:774b%5]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 10:33:16 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Robin Murphy <robin.murphy@arm.com>, "will@kernel.org" <will@kernel.org>, 
 "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>
Subject: RE: [PATCH V4 1/2] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Topic: [PATCH V4 1/2] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Index: AQHVR40oByyn0YjPrkGeE3hz4834O6bkqhiAgAEQJ/CAAFZdAIABXRHQgATuIuA=
Date: Mon, 5 Aug 2019 10:33:16 +0000
Message-ID: <DB7PR04MB46180FDE0FD470C035AF2892E6DA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <20190731104351.3117-1-qiangqing.zhang@nxp.com>
 <ad9491ed-24c5-8553-94be-cc96479adaf6@arm.com>
 <DB7PR04MB46183D09C6AB61E6AA90386FE6DE0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <5988bae3-e0db-a64d-8399-8ce65a92d970@arm.com>
 <DB7PR04MB4618301170B4E09F8B855B52E6D90@DB7PR04MB4618.eurprd04.prod.outlook.com>
In-Reply-To: <DB7PR04MB4618301170B4E09F8B855B52E6D90@DB7PR04MB4618.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 538b39fe-cb2e-4060-b45d-08d7199053db
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4938; 
x-ms-traffictypediagnostic: DB7PR04MB4938:
x-microsoft-antispam-prvs: <DB7PR04MB4938ADB743ADEE996DB04C25E6DA0@DB7PR04MB4938.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(396003)(346002)(366004)(13464003)(189003)(199004)(6116002)(3846002)(9686003)(186003)(2501003)(2906002)(7696005)(76176011)(81156014)(8676002)(81166006)(8936002)(53546011)(6506007)(33656002)(6636002)(4326008)(99286004)(7736002)(478600001)(54906003)(110136005)(316002)(66446008)(66946007)(66556008)(64756008)(66476007)(6246003)(14454004)(305945005)(76116006)(102836004)(52536014)(5660300002)(476003)(6436002)(446003)(11346002)(55016002)(71190400001)(229853002)(71200400001)(74316002)(26005)(66066001)(53936002)(486006)(5024004)(25786009)(2201001)(14444005)(68736007)(86362001)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4938;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xo+Vp1YPLSW4HV//nBULLyyuWP3fx3SAqP9zwb7NOzDgeLKXF/K0QzXjqkMZIDXo1xTf7CPs+Kyd7Tlmkcq6bX00i6vDr1lymUxlkplUQQOvggU2zS00GrLaolBB6JLXwHZsMGrjCzq6W9xJPdyNxsHkfowWTosX3JrcPOmx64sOAsR1J/qtd2RiHHon5WI/ZvrkfaLO0adqh7diTau4ppFOmjpqvFMzRxNkNHeDsRIfWPl2rAgahdcChDrTHOha98GJiS/JtMRbikiqv8PqQfy5Q/4c4w7oiDFrDQrOQuYmEOlzHIfe7CdceRnU/tT0b539g9CLuhEVI4OMW2p51+hsYzlUVOGmh6uWnwIH5qtXccHXpLYJolCZZKr9ZiNYcCqcXTI4OLgqQb4R1Ig0fpV/Uf3uPDk2BnQhfw8tpE4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 538b39fe-cb2e-4060-b45d-08d7199053db
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 10:33:16.7228 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qiangqing.zhang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4938
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_033322_439247_7CDF238D 
X-CRM114-Status: GOOD (  37.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpvYWtpbSBaaGFuZw0KPiBT
ZW50OiAyMDE55bm0OOaciDLml6UgMTU6MjANCj4gVG86IFJvYmluIE11cnBoeSA8cm9iaW4ubXVy
cGh5QGFybS5jb20+OyB3aWxsQGtlcm5lbC5vcmc7DQo+IG1hcmsucnV0bGFuZEBhcm0uY29tOyBG
cmFuayBMaSA8ZnJhbmsubGlAbnhwLmNvbT4NCj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZzsga2VybmVsQHBlbmd1dHJvbml4LmRlOyBkbC1saW51eC1pbXgNCj4gPGxp
bnV4LWlteEBueHAuY29tPg0KPiBTdWJqZWN0OiBSRTogW1BBVENIIFY0IDEvMl0gcGVyZjogaW14
OF9kZHJfcGVyZjogYWRkIEFYSSBJRCBmaWx0ZXIgc3VwcG9ydA0KPiANCj4gDQo+ID4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBo
eUBhcm0uY29tPg0KPiA+IFNlbnQ6IDIwMTnlubQ45pyIMeaXpSAxODowMA0KPiA+IFRvOiBKb2Fr
aW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAuY29tPjsgd2lsbEBrZXJuZWwub3JnOw0KPiA+
IG1hcmsucnV0bGFuZEBhcm0uY29tOyBGcmFuayBMaSA8ZnJhbmsubGlAbnhwLmNvbT4NCj4gPiBD
YzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBrZXJuZWxAcGVuZ3V0cm9u
aXguZGU7DQo+ID4gZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT4NCj4gPiBTdWJqZWN0
OiBSZTogW1BBVENIIFY0IDEvMl0gcGVyZjogaW14OF9kZHJfcGVyZjogYWRkIEFYSSBJRCBmaWx0
ZXINCj4gPiBzdXBwb3J0DQo+ID4NCj4gPiBPbiAyMDE5LTA4LTAxIDY6MjUgYW0sIEpvYWtpbSBa
aGFuZyB3cm90ZToNCj4gPiBbLi4uXQ0KPiA+ID4+PiBAQCAtMTk1LDYgKzIxNCwxOCBAQCBzdGF0
aWMgaW50IGRkcl9wZXJmX2V2ZW50X2luaXQoc3RydWN0DQo+ID4gPj4+IHBlcmZfZXZlbnQNCj4g
PiA+PiAqZXZlbnQpDQo+ID4gPj4+ICAgIAlzdHJ1Y3QgaHdfcGVyZl9ldmVudCAqaHdjID0gJmV2
ZW50LT5odzsNCj4gPiA+Pj4gICAgCXN0cnVjdCBwZXJmX2V2ZW50ICpzaWJsaW5nOw0KPiA+ID4+
Pg0KPiA+ID4+PiArCWlmIChwbXUtPmRldnR5cGVfZGF0YS0+cXVpcmtzICYgRERSX0NBUF9BWElf
SURfRklMVEVSKSB7DQo+ID4gPj4+ICsJCWlmIChldmVudC0+YXR0ci5jb25maWcgPT0gMHg0MSkN
Cj4gPiA+Pj4gKwkJCXBtdS0+YXhpX2lkX3JlYWQgPSBldmVudC0+YXR0ci5jb25maWcxOw0KPiA+
ID4+PiArDQo+ID4gPj4+ICsJCWlmIChldmVudC0+YXR0ci5jb25maWcgPT0gMHg0MikNCj4gPiA+
Pj4gKwkJCXBtdS0+YXhpX2lkX3dyaXRlID0gZXZlbnQtPmF0dHIuY29uZmlnMTsNCj4gPiA+Pj4g
Kw0KPiA+ID4+PiArCQlpZiAocG11LT5heGlfaWRfcmVhZCAmJiBwbXUtPmF4aV9pZF93cml0ZSAm
Jg0KPiA+ID4+PiArCQkgICAgKHBtdS0+YXhpX2lkX3JlYWQgIT0gcG11LT5heGlfaWRfd3JpdGUp
KQ0KPiA+ID4+PiArCQkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gPj4+ICsJfQ0KPiA+ID4+DQo+ID4g
Pj4gVGhpcyBpc24ndCB0aGUgY29ycmVjdCBhcHByb2FjaCB0aGF0IE1hcmsgb3V0bGluZWQgOigN
Cj4gPiA+Pg0KPiA+ID4+IEluIGV2ZW50X2luaXQsIHlvdSBzaG91bGQgdmFsaWRhdGUgdGhhdCBh
bnkgZmlsdGVyaW5nIGZvciB0aGUgZ2l2ZW4NCj4gPiA+PiBldmVudCBpcyBjb21wYXRpYmxlIHdp
dGggYW55IG90aGVyIHNpYmxpbmcgZXZlbnRzIGluIHRoZSBzYW1lDQo+ID4gPj4gZ3JvdXAsIGJ1
dCB5b3Ugc2hvdWxkIG5vdCBjb25zaWRlciAoYW5kIHNob3VsZCBkZWZpbml0ZWx5IG5vdA0KPiA+
ID4+IGNoYW5nZSkgdGhlIGN1cnJlbnQgc3RhdGUgb2YgdGhlIFBNVSBhdCB0aGF0IHBvaW50LiBU
aGlzIHN0ZXAgaXMNCj4gPiA+PiBhYm91dCByZWplY3RpbmcgZXZlbnQgY29uZmlndXJhdGlvbnMg
d2hpY2ggY291bGQNCj4gPiA+PiAqbmV2ZXIqIGJlIHN1Y2Nlc3NmdWxseSBzY2hlZHVsZWQgKHNp
bmNlIGEgZ3JvdXAgcmVwcmVzZW50cyBhIHNldA0KPiA+ID4+IG9mIGV2ZW50cyB3aGljaCBtdXN0
IGJlIHNjaGVkdWxlZCBhbGwgYXQgdGhlIHNhbWUgdGltZSkuDQo+ID4gPj4NCj4gPiA+PiBJbiBl
dmVudF9hZGQsIHlvdSBrbm93IHRoZSBnaXZlbiBldmVudC9ncm91cCBpcyBzdWZmaWNpZW50bHkg
dmFsaWQNCj4gPiA+PiB0bw0KPiA+ID4+ICpwb3RlbnRpYWxseSogYmUgc2NoZWR1bGVkLCBnaXZl
biB0aGF0IGl0IGhhcyBwYXNzZWQgdGhlIGV2ZW50X2luaXQNCj4gPiA+PiBjaGVja3MsIGJ1dCB5
b3UgdGhlbiBuZWVkIHRvIGNoZWNrIHRoYXQgdGhlIGZpbHRlcmluZyBpcyBjb21wYXRpYmxlDQo+
ID4gPj4gd2l0aCBhbGwgb3RoZXIgZXZlbnRzDQo+ID4gPj4gKmN1cnJlbnRseSogY291bnRpbmcg
b24gdGhlIFBNVS4gSWYgdGhpcyBmYWlscywgcGVyZiBjb3JlIHdpbGwgdHJ5DQo+ID4gPj4gdG8g
cmVzY2hlZHVsZSB0aGUgY3VycmVudCBldmVudHMgdW50aWwgdGhlIG5ldyBvbmUgaXMgYWJsZSB0
byBydW4uDQo+ID4gPj4gVGhhdCdzIHdoeSB5b3UgbmVlZCB0aGUgYWRkaXRpb25hbCBzdGVwIG9m
IHZhbGlkYXRpbmcgZ3JvdXBzDQo+ID4gPj4gYmVmb3JlaGFuZCwgYmVjYXVzZSBvdGhlcndpc2Ug
eW91IGNvdWxkIGVuZCB1cCB3aXRoIGNvbnRyYWRpY3RvcnkNCj4gPiA+PiBzY2hlZHVsaW5nIGNv
bnN0cmFpbnRzIGF0IHRoaXMgcG9pbnQgYW5kIG5ldmVyIG1ha2UgcHJvZ3Jlc3MuDQo+ID4gPg0K
PiA+ID4gSGkgTWFyayBhbmQgUm9iaW4sDQo+ID4gPg0KPiA+ID4gVGhhbmtzIGZvciBhbGwgeW91
ciBraW5kbHkgZGV0YWlsZWQgZXhwbGFuYXRpb24gZmlyc3RseS4NCj4gPiA+DQo+ID4gPiBNeSB1
bmRlcnN0YW5kaW5nIGZyb20geW91ciBjb21tZW50cywgSSBuZWVkIHRvIHZhbGlkYXRlIHRoZSBm
aWx0ZXJpbmcgKGkuZS4NCj4gPiBjb25maWcxL2F4aV9pZCkgZm9yICphbGwqIGV2ZW50cyBpbiBz
YW1lIGdyb3VwIGR1cmluZyBldmVudF9pbml0LCByaWdodD8NCj4gPiA+IEJ1dCBpdCdzIHNvIHN0
cmFuZ2UgZm9yIHRoYXQgYXhpX2lkIGlzIG9ubHkgZm9yIGF4aS1pZC1yZWFkIGFuZCBheGktaWQt
d3JpdGUNCj4gZXZlbnQuDQo+ID4gV2UgZG9uJ3QgbmVlZCB0byBzcGVjaWZ5IGF4aV9pZCBmb3Ig
YW55IG90aGVyIGV2ZW50cyB3aGVuIG1peGVkIHdpdGgNCj4gPiB0aGVzZSB0d28gZXZlbnRzLg0K
PiA+DQo+ID4gU29ycnksIEkgaW1wbGljaXRseSBtZWFudCBhbGwgKnJlbGV2YW50KiBldmVudHMg
LSBvYnZpb3VzbHkgdGhlcmUncw0KPiA+IG5vdGhpbmcgdG8gY2hlY2sgZm9yIGV2ZW50cyB3aGlj
aCBkb24ndCBoYXZlIGZpbHRlcmluZyBhbnl3YXkuIEFsbA0KPiA+IHRoYXQgbWF0dGVycyBpcyB0
aGUgY2FzZSB3aGVyZSB3ZSdyZSBhc2tlZCB0byBjcmVhdGUgYSByZWFkL3dyaXRlDQo+ID4gZXZl
bnQgaW4gYSBncm91cCB3aGljaCBhbHJlYWR5IGhhcyBhdCBsZWFzdCBvbmUgb3RoZXIgcmVhZC93
cml0ZSBldmVudA0KPiA+IGFzIGEgc2libGluZy4gSSd2ZSBza2V0Y2hlZCBvdXQgYSBxdWljayAo
Y29tcGxldGVseSB1bnRlc3RlZCkgZXhhbXBsZQ0KPiA+IG9mIG9uZSB3YXkgdG8gZG8gdGhhdCBw
YXJ0IGJlbG93LiBUaGUgbG9naWMgZm9yIGV2ZW50X2FkZCB3b3VsZCBiZQ0KPiA+IHZlcnkgc2lt
aWxhciwgZXhjZXB0IGluc3RlYWQgb2YgY29tcGFyaW5nIHRoZSBzaWJsaW5nIGFnYWluc3QgdGhl
DQo+ID4gZXZlbnQsIHRoZXJlIHlvdSdkIGNvbXBhcmUgdGhlIGV2ZW50IGFnYWluc3QgdGhlIGN1
cnJlbnQgUE1VIHN0YXRlLg0KPiA+DQo+ID4gPiBJZiBJIGNhbiBqdXN0IGNoZWNrIHRoZSBheGkt
aWQtcmVhZCBhbmQgYXhpLWlkLXdyaXRlIGV2ZW50IGR1cmluZw0KPiA+ID4gZXZlbnRfYWRkIGFu
ZCB0aGVuIHBhc3MgdGhlIGF4aV9pZCB2YWx1ZSB0byB0aGUgZmlsdGVyIHJlZ2lzdGVyLg0KPiA+
ID4gRG9uJ3QgY2hlY2sgdGhlIGNhc2UgdGhhdCB1c2VyIHNwZWNpZnkgYm90aCBvZiB0aGVtIGF0
IHRoZSBzYW1lIHRpbWUNCj4gPiA+IHdpdGggZGlmZmVyZW50DQo+ID4gZmlsdGVyaW5nIHZhbHVl
LiBJbnN0ZWFkIG9mIGNoZWNraW5nIGl0IGluIHRoZSBkcml2ZXIsIEkgYWRkIHRoZSBkb2MNCj4g
PiBpbiBEb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL3BlcmYvIGRpcmVjdG9yeSB0byBub3RlIHRo
YXQgYXhpLWlkLXJlYWQNCj4gPiBhbmQgYXhpLWlkLXdyaXRlIGV2ZW50IHNob3VsZCBiZSBzcGVj
aWZpZWQgc2VwYXJhdGVseSwgb3Igc3BlY2lmaWVkIGF0DQo+ID4gdGhlIHNhbWUgdGltZSB3aXRo
IHNhbWUgYXhpX2lkIHZhbHVlLg0KPiA+DQo+ID4gU3VyZSwgd2UgY291bGQganVzdCByZWx5IG9u
IHRoZSB1c2VyIHRvIGdldCBpdCByaWdodCwgYnV0IHRoYXQgbWVhbnMNCj4gPiB0aGVyZSdzIGEg
ZmFpciBjaGFuY2UgdGhhdCB0aGUgdXNlciBjYW4gaW5hZHZlcnRlbnRseSBnZXQgaXQgd3Jvbmcs
DQo+ID4gZ2V0IG5vbnNlbnNpY2FsIHJlc3VsdHMsIGFuZCB3YXN0ZSBhIHdlZWsgdHJ5aW5nIHRv
IGRlYnVnIGEgcGVyY2VpdmVkDQo+ID4gcHJvYmxlbSB3aGljaCBkb2Vzbid0IGFjdHVhbGx5IGV4
aXN0LiBJdCdzIG5vdCBkaWZmaWN1bHQgZm9yIHRoZQ0KPiA+IGRyaXZlciB0byBwZXJmb3JtIHRo
ZSBjb3JyZWN0IHZhbGlkYXRpb24sIHNvIGl0J3MgYmV0dGVyIGZvciBldmVyeW9uZSBpZiBpdCBk
b2VzLg0KPiA+DQo+ID4gSXQgYWxzbyBzZWVtcyByZWFzb25hYmxlIHRoYXQgYSB1c2VyIG1pZ2h0
IHdhbnQgdG8gaW50ZW50aW9uYWxseQ0KPiA+IG1lYXN1cmUgZXZlbnRzIG9uIGRpZmZlcmVudCBJ
RHMgb3ZlciB0aGUgc2FtZSBydW4gKGJ1dCBub3QgaW4gdGhlIHNhbWUNCj4gPiBncm91cCksIGUu
Zy4gdG8gY29tcGFyZSB0aGUgcmVsYXRpdmUgYXZlcmFnZSBiYW5kd2lkdGggb2YgdHdvIGRldmlj
ZXMsDQo+ID4gcGVyaGFwcyB0byB0dW5lIFFvUyBwYXJhbWV0ZXJzLiBUaGF0IHJlcXVpcmVzIHBl
cmYgY29yZSB0byBrbm93IGl0DQo+ID4gbmVlZHMgdG8gcm90YXRlIHRoZSBldmVudHMgZHVyaW5n
IHRoZSBydW4sIHdoaWNoIHdpbGwgb25seSBoYXBwZW4gaWYNCj4gZXZlbnRfYWRkIGRvZXMgdGhl
IHJpZ2h0IHRoaW5nLg0KPiA+DQo+ID4gUm9iaW4uDQo+IA0KPiBIaSBSb2JpbiwNCj4gDQo+IEkg
Y29tcGxldGVseSB1bmRlcnN0b29kIHdoYXQgeW91IHNhaWQgbm93LCB0aGFuayB5b3UgdmVyeSBt
dWNoLiBCdXQgSSBjYW1lDQo+IGFjcm9zcyBhbm90aGVyIGlzc3VlIHdoZW4gSSB0ZXN0IHRoaXMg
Y2FzZS4gWW91IGNhbiBzZWUgYmVsb3cuDQo+IA0KPiBbLi4uXQ0KPiA+ICAgICAgICAgIGZvcl9l
YWNoX3NpYmxpbmdfZXZlbnQoc2libGluZywgZXZlbnQtPmdyb3VwX2xlYWRlcikgew0KPiA+ICAg
ICAgICAgICAgICAgICAgaWYgKHNpYmxpbmctPnBtdSAhPSBldmVudC0+cG11ICYmDQo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIWlzX3NvZnR3YXJlX2V2ZW50KHNpYmxpbmcp
KQ0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4gPiArDQo+
ID4gKyAgICAgICAgICAgICAgIGlmIChpc19maWx0ZXJlZCAmJiBkZHJfcGVyZl9pc19maWx0ZXJl
ZChzaWJsaW5nKSAmJg0KPiA+ICsgICAgICAgICAgICAgICAgICAgZGRyX3BlcmZfZmlsdGVyX3Zh
bChzaWJsaW5nKSAhPSBmaWx0ZXJfdmFsKQ0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHJl
dHVybiAtRUlOVkFMOw0KPiA+ICAgICAgICAgIH0NCj4gWy4uLl0NCj4gDQo+IE5lZWQgdG8gY2hl
Y2sgdGhlIGF4aSBpZCB2YWx1ZSBvZiBzaWJsaW5nIGV2ZW50cyBpbiBvbmUgc2FtZSBncm91cCB3
aXRoDQo+IGZvcl9lYWNoX3NpYmxpbmdfZXZlbnQgKCk6DQo+ICNkZWZpbmUgZm9yX2VhY2hfc2li
bGluZ19ldmVudChzaWJsaW5nLCBldmVudCkgICAgICAgICAgICAgICAgICBcDQo+ICAgICAgICAg
IGlmICgoZXZlbnQpLT5ncm91cF9sZWFkZXIgPT0gKGV2ZW50KSkgICAgICAgICAgICAgICAgICAg
XA0KPiAgICAgICAgICAgICAgICAgIGxpc3RfZm9yX2VhY2hfZW50cnkoKHNpYmxpbmcpLCAmKGV2
ZW50KS0+c2libGluZ19saXN0LA0KPiBzaWJsaW5nX2xpc3QpDQo+IA0KPiBCdXQgSSBmb3VuZCB0
aGF0IGFsbCBjaGVjayBpbiB0aGlzIEZvciBsb29wIHdpbGwgbmV2ZXIgYmUgY2hlY2tlZCwgdGhh
dCBtZWFucyB0aGUNCj4gY29kZSBuZXZlciBydW5zIGludG8gdGhpcyBGb3IgbG9vcC4NCj4gICAg
ICAgICAgICAgICAgaWYgKHNpYmxpbmctPnBtdSAhPSBldmVudC0+cG11ICYmDQo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICFpc19zb2Z0d2FyZV9ldmVudChzaWJsaW5nKSkNCj4gICAg
ICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4gDQo+ICAgICAgICAgICAgICAg
IGlmIChpc19maWx0ZXJlZCAmJiBkZHJfcGVyZl9pc19maWx0ZXJlZChzaWJsaW5nKSAmJg0KPiAg
ICAgICAgICAgICAgICAgICBkZHJfcGVyZl9maWx0ZXJfdmFsKHNpYmxpbmcpICE9IGZpbHRlcl92
YWwpDQo+ICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+IA0KPiBGaW5h
bGx5IEkgZm91bmQgdGhhdCBpdCBjYW4ndCBpdGVyYXRlIG92ZXIgdGhlIGxpc3Qgd2l0aCBsaXN0
X2Zvcl9lYWNoX2VudHJ5KChzaWJsaW5nKSwNCj4gJihldmVudCktPnNpYmxpbmdfbGlzdCwgc2li
bGluZ19saXN0KS4gU28gZHJpdmVyIGNhbid0IHJlamVjdCBldmVudCBncm91cCB3aXRoIGF4aSBp
ZA0KPiBpbGxlZ2FsIHZhbHVlIGR1cmluZyBldmVudF9pbml0KCkgbm93LiBEbyB5b3Uga25vdyB3
aHkgaXQgY2FuJ3QgaXRlcmF0ZSB0byBzaWJsaW5nDQo+IGV2ZW50cz8NCg0KSGkgUm9iaW4sDQoN
CkkgaGF2ZSBhbiBhbm90aGVyIHF1ZXN0aW9uLCB3aXRoIGJlbG93IGNvbmZpZ3VyYXRpb24sIGlm
IHRoaXMgbWVhbnMgY3ljbGVzLCByZWFkIGFuZCB3cml0ZSBldmVudHMgaXMgYW4gZXZlbnQgZ3Jv
dXA/DQoJcGVyZiBzdGF0IC1lIGlteDhfZGRyMC9jeWNsZXMvLGlteDhfZGRyMC9yZWFkLyxpbXg4
X2RkcjAvd3JpdGUvIHNsZWVwIDENCg0KSWYgeWVzLCBJIGZvdW5kIHRoYXQgcGVyZiBldmVudCBj
b3JlIGF0dGFjaCBldmVudCBncm91cChwZXJmX2dyb3VwX2F0dGFjaCgpIGluIGtlcm5lbC9ldmVu
dHMvY29yZS5jKSBhZnRlciBwZXJmIGV2ZW50IGluaXRpYWxpemF0aW9uIChwZXJmX3RyeV9pbml0
X2V2ZW50KCkgY2FsbCBwbXUtPmV2ZW50X2luaXQoKSBjYWxsYmFjayBpbiBrZXJuZWwvZXZlbnRz
L2NvcmUuYykuDQpJcyBpdCByZWFzb25hYmxlIGFzIHdlIGFsd2F5cyBjaGVjayB0aGUgc2libGlu
ZyBldmVudCBmb3JtIGV2ZW50X2luaXQgY2FsbGJhY2s/IEFuZCBlYWNoIHBlcmYgZXZlbnQgcGFz
cyB0byBwZXJmX2dyb3VwX2F0dGFjaCgpIGFsd2F5cyBwb2ludCB0byBpdCdzIGdyb3VwIGxlYWRl
ciwgc28gZm9yX2VhY2hfc2libGluZ19ldmVudCgpIGluIGV2ZW50X2luaXQoKSBjYW4ndA0KaXRl
cmF0ZSB0byBpdCdzIHNpYmxpbmcgZXZlbnRzLCBhcyBpdCBoYXMgbm8gc2libGluZyBldmVudHMg
ZnJvbSBwZXJmX2Zyb3VwX2F0dGFjaCgpLg0KDQpEbyBJIG1pc3VuZGVyc3RhbmQgYW5ndGhpbmc/
DQoNCkJlc3QgUmVnYXJkcywNCkpvYWtpbSBaaGFuZw0KPiBCZXN0IFJlZ2FyZHMsDQo+IEpvYWtp
bSBaaGFuZw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
