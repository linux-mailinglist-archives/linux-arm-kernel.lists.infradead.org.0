Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B569010557
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 07:51:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HW0ND5ZDCzNj103AxYQwPzyVRIjanYEw5iDz/CXhMJw=; b=BAG+4b1KHp4Dg6
	y/CvF4i4Q40Ubr0eupfJNkqFl1gYBr7BEwvKY2lFcYM+CWn+B0PLr80Rtuc8H5iVbYQTwcAgA7OIZ
	dRRoa/lf5uHaJSPkkrllSdeC+V+m1d9+hNaPAaG7UA7ptVUKEoVfQQnKUSsWv/BG00bTMIHrag2zv
	lKCU/gtSDeZcoJEVaSpomVfXOG8EY4iK/twwyHamthYGPVA/80flSubOTwgJlUXYkfpUjku14xjR8
	4/HzquErGZ9GnQ7nM+ndxDb6pmpMn5nHktRYIEsZo9A9v6ddHsAd5m1uyu4LxpV2l1LoaOWdi44RW
	AAwGEbK9uJAO1x3RfD/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLi9a-0004HW-70; Wed, 01 May 2019 05:51:38 +0000
Received: from mail-ve1eur03on070d.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::70d]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLi9S-0004H5-Dm
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 05:51:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ejJuFEGbzgBZnKAAwr2rdBd9s9MNRdpYdxUzW5JraFk=;
 b=PGMIx8vl1Ck+FKHW8UUQ045pHW2+3kaepbqXMD9WdZj59JBcMd5rjf5LwjZOnwiQjOP3enMfUJIcK1U8j8XToJaDVZZw0A/rfgO01u/O6HX8dVfti715Z5Woapn7fW+XU9Cke5rhux0mS+U+vJ2IJw9ZDqu5APibGNGJWrYp8nA=
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM (20.178.126.212) by
 VI1PR10MB0622.EURPRD10.PROD.OUTLOOK.COM (10.167.202.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Wed, 1 May 2019 05:51:26 +0000
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8]) by VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8%2]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 05:51:26 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: Christophe Leroy <christophe.leroy@c-s.fr>, Qiang Zhao
 <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH 2/5] soc/fsl/qe: qe.c: reduce static memory footprint by
 1.7K
Thread-Topic: [PATCH 2/5] soc/fsl/qe: qe.c: reduce static memory footprint by
 1.7K
Thread-Index: AQHU/1m4QeMNIhRtn0+qXCERrOOPqqZU8QOAgADUGAA=
Date: Wed, 1 May 2019 05:51:26 +0000
Message-ID: <cb6a20d0-5ff1-8be9-5e3a-bd5c881dbae6@prevas.dk>
References: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
 <20190430133615.25721-3-rasmus.villemoes@prevas.dk>
 <51b00425-58a7-089a-67a9-61cd315d5097@c-s.fr>
In-Reply-To: <51b00425-58a7-089a-67a9-61cd315d5097@c-s.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR08CA0049.eurprd08.prod.outlook.com
 (2603:10a6:7:2a::20) To VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:e3::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Rasmus.Villemoes@prevas.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.216.59.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f06b4b5-3439-4e73-ebd2-08d6cdf90c5f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR10MB0622; 
x-ms-traffictypediagnostic: VI1PR10MB0622:
x-microsoft-antispam-prvs: <VI1PR10MB06223A8BDE13838A09A142C38A3B0@VI1PR10MB0622.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39850400004)(346002)(396003)(376002)(136003)(189003)(199004)(6116002)(53936002)(386003)(14454004)(305945005)(6506007)(3846002)(71190400001)(71200400001)(25786009)(6512007)(186003)(66066001)(74482002)(102836004)(68736007)(44832011)(31686004)(6436002)(4326008)(76176011)(26005)(486006)(72206003)(7736002)(478600001)(6486002)(2906002)(6246003)(73956011)(316002)(52116002)(31696002)(2616005)(446003)(42882007)(8976002)(8936002)(476003)(66574012)(36756003)(8676002)(66946007)(81166006)(81156014)(99286004)(110136005)(66446008)(66556008)(5660300002)(64756008)(54906003)(229853002)(66476007)(256004)(14444005)(11346002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB0622;
 H:VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: eYo0MsT8al9xsJICF9CwmggTVIR0ZIy+OM/wwN7Mr0Uda2WS/8RhLlx3Dc0sI+boxer+zKDFIU91HMxrPRfqGIPoW3n1cQ7PFkNLR/+VTyzHNJC/RKxVF2wL32SZQZLla/bGtjLBmLi6Z3vOQ9FCA9bAgGF1GrTdxQEDQr9ly5CQ1Obu0OfAclYzlgDArf/MtJEbuMJRosZwwdPY+MLEUznYcn5nJ+kwVLy6JiFl6QiAjLy/v0R3xeBSPoeepAg/X6/w44PxzNqSbotaXTZxQg+zlBpmJwVayseKp6Vag7vPHJa2x4mT2Vf0+18dIGGM7uOWK7WiM7vjyNUGbcCUKJBcfgcOJMTDAN2PDgoOg7ecIx8r3GVHAY99kG/sOtwlFKPE3da2nPq68gTbLH7KG8EjezpfRNaYJCbbvKUn6Ck=
Content-ID: <FCC4588095BF224BBE921E82BA7899B2@EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f06b4b5-3439-4e73-ebd2-08d6cdf90c5f
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 05:51:26.0889 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB0622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_225130_552558_84E7799D 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:70d listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rasmus Villemoes <Rasmus.Villemoes@prevas.se>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Scott Wood <oss@buserror.net>, Rob Herring <robh+dt@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzAvMDQvMjAxOSAxOS4xMiwgQ2hyaXN0b3BoZSBMZXJveSB3cm90ZToNCj4gIA0KPiBMZSAz
MC8wNC8yMDE5IMOgIDE1OjM2LCBSYXNtdXMgVmlsbGVtb2VzIGEgw6ljcml0wqA6DQo+PiBUaGUg
Y3VycmVudCBhcnJheSBvZiBzdHJ1Y3QgcWVfc251bSB1c2UgMjU2KjQgYnl0ZXMgZm9yIGp1c3Qg
a2VlcGluZw0KPj4gdHJhY2sgb2YgdGhlIGZyZWUvdXNlZCBzdGF0ZSBvZiBlYWNoIGluZGV4LCBh
bmQgdGhlIHN0cnVjdCBsYXlvdXQNCj4+IG1lYW5zIHRoZXJlJ3MgYW5vdGhlciA3NjggYnl0ZXMg
b2YgcGFkZGluZy4gSWYgd2UganVzdCB1bnppcCB0aGF0DQo+PiBzdHJ1Y3R1cmUsIHRoZSBhcnJh
eSBvZiBzbnVtIHZhbHVlcyBqdXN0IHVzZSAyNTYgYnl0ZXMsIHdoaWxlIHRoZQ0KPj4gZnJlZS9p
bnVzZSBzdGF0ZSBjYW4gYmUgdHJhY2tlZCBpbiBhIDMyIGJ5dGUgYml0bWFwLg0KPj4NCj4+IFNv
IHRoaXMgcmVkdWNlcyB0aGUgLmRhdGEgZm9vdHByaW50IGJ5IDE3NjAgYnl0ZXMuIEl0IGFsc28g
c2VydmVzIGFzDQo+PiBwcmVwYXJhdGlvbiBmb3IgaW50cm9kdWNpbmcgYW5vdGhlciBEVCBiaW5k
aW5nIGZvciBzcGVjaWZ5aW5nIHRoZSBzbnVtDQo+PiB2YWx1ZXMuDQo+Pg0KPj4gU2lnbmVkLW9m
Zi1ieTogUmFzbXVzIFZpbGxlbW9lcyA8cmFzbXVzLnZpbGxlbW9lc0BwcmV2YXMuZGs+DQo+PiAt
LS0NCj4+IC0NCj4+IMKgIC8qIFdlIGFsbG9jYXRlIHRoaXMgaGVyZSBiZWNhdXNlIGl0IGlzIHVz
ZWQgYWxtb3N0IGV4Y2x1c2l2ZWx5IGZvcg0KPj4gwqDCoCAqIHRoZSBjb21tdW5pY2F0aW9uIHBy
b2Nlc3NvciBkZXZpY2VzLg0KPj4gwqDCoCAqLw0KPj4gwqAgc3RydWN0IHFlX2ltbWFwIF9faW9t
ZW0gKnFlX2ltbXI7DQo+PiDCoCBFWFBPUlRfU1lNQk9MKHFlX2ltbXIpOw0KPj4gwqAgLXN0YXRp
YyBzdHJ1Y3QgcWVfc251bSBzbnVtc1tRRV9OVU1fT0ZfU05VTV07wqDCoMKgIC8qIER5bmFtaWNh
bGx5DQo+PiBhbGxvY2F0ZWQgU05VTXMgKi8NCj4+ICtzdGF0aWMgdTggc251bXNbUUVfTlVNX09G
X1NOVU1dO8KgwqDCoCAvKiBEeW5hbWljYWxseSBhbGxvY2F0ZWQgU05VTXMgKi8NCj4+ICtzdGF0
aWMgREVDTEFSRV9CSVRNQVAoc251bV9zdGF0ZSwgUUVfTlVNX09GX1NOVU0pOw0KPj4gwqAgc3Rh
dGljIHVuc2lnbmVkIGludCBxZV9udW1fb2Zfc251bTsNCj4+IMKgIMKgIHN0YXRpYyBwaHlzX2Fk
ZHJfdCBxZWJhc2UgPSAtMTsNCj4+IEBAIC0zMDgsNiArMjk4LDcgQEAgc3RhdGljIHZvaWQgcWVf
c251bXNfaW5pdCh2b2lkKQ0KPj4gwqDCoMKgwqDCoCB9Ow0KPj4gwqDCoMKgwqDCoCBjb25zdCB1
OCAqc251bV9pbml0Ow0KPj4gwqAgK8KgwqDCoCBiaXRtYXBfemVybyhzbnVtX3N0YXRlLCBRRV9O
VU1fT0ZfU05VTSk7DQo+IA0KPiBEb2Vzbid0IG1ha2UgbXVjaCBpbXBvcnRhbmNlLCBidXQgd291
bGRuJ3QgaXQgYmUgbW9yZSBsb2dpY2FsIHRvIGFkZA0KPiB0aGlzIGxpbmUgd2hlcmUgdGhlIHNl
dHRpbmcgb2YgLnN0YXRlID0gUUVfU05VTV9TVEFURV9GUkVFIHdhcyBkb25lDQo+IHByZXZpb3Vz
bHksIGllIGFyb3VuZCB0aGUgZm9yKCkgbG9vcCBiZWxvdyA/DQoNClRoaXMgd2FzIG9uIHB1cnBv
c2UsIHRvIGF2b2lkIGhhdmluZyB0byBtb3ZlIGl0IHVwIGluIHBhdGNoIDQsIHdoZXJlIHdlDQpk
b24ndCBuZWNlc3NhcmlseSByZWFjaCB0aGUgZm9yIGxvb3AuDQoNCj4+IMKgwqDCoMKgwqAgcWVf
bnVtX29mX3NudW0gPSBxZV9nZXRfbnVtX29mX3NudW1zKCk7DQo+PiDCoCDCoMKgwqDCoMKgIGlm
IChxZV9udW1fb2Zfc251bSA9PSA3NikNCj4+IEBAIC0zMTUsMTAgKzMwNiw4IEBAIHN0YXRpYyB2
b2lkIHFlX3NudW1zX2luaXQodm9pZCkNCj4+IMKgwqDCoMKgwqAgZWxzZQ0KPj4gwqDCoMKgwqDC
oMKgwqDCoMKgIHNudW1faW5pdCA9IHNudW1faW5pdF80NjsNCj4+IMKgIC3CoMKgwqAgZm9yIChp
ID0gMDsgaSA8IHFlX251bV9vZl9zbnVtOyBpKyspIHsNCj4+IC3CoMKgwqDCoMKgwqDCoCBzbnVt
c1tpXS5udW0gPSBzbnVtX2luaXRbaV07DQo+PiAtwqDCoMKgwqDCoMKgwqAgc251bXNbaV0uc3Rh
dGUgPSBRRV9TTlVNX1NUQVRFX0ZSRUU7DQo+PiAtwqDCoMKgIH0NCj4+ICvCoMKgwqAgZm9yIChp
ID0gMDsgaSA8IHFlX251bV9vZl9zbnVtOyBpKyspDQo+PiArwqDCoMKgwqDCoMKgwqAgc251bXNb
aV0gPSBzbnVtX2luaXRbaV07DQo+IA0KPiBDb3VsZCB1c2UgbWVtY3B5KCkgaW5zdGVhZCA/DQoN
ClllcywgSSBzd2l0Y2ggdG8gdGhhdCBpbiA1LzUuIFN1cmUsIEkgY291bGQgZG8gaXQgaGVyZSBh
bHJlYWR5LCBidXQgSQ0KZGlkIGl0IHRoaXMgd2F5IHRvIGtlZXAgY2xvc2UgdG8gdGhlIGN1cnJl
bnQgc3R5bGUuIEkgZG9uJ3QgY2FyZSBlaXRoZXINCndheSwgc28gaWYgeW91IHByZWZlciBpbnRy
b2R1Y2luZyBtZW1jcHkgaGVyZSwgZmluZSBieSBtZS4NCg0KDQo+PiDCoMKgwqDCoMKgIHNwaW5f
dW5sb2NrX2lycXJlc3RvcmUoJnFlX2xvY2ssIGZsYWdzKTsNCj4+IMKgIEBAIC0zNDYsOCArMzMz
LDggQEAgdm9pZCBxZV9wdXRfc251bSh1OCBzbnVtKQ0KPj4gwqDCoMKgwqDCoCBpbnQgaTsNCj4+
IMKgIMKgwqDCoMKgwqAgZm9yIChpID0gMDsgaSA8IHFlX251bV9vZl9zbnVtOyBpKyspIHsNCj4+
IC3CoMKgwqDCoMKgwqDCoCBpZiAoc251bXNbaV0ubnVtID09IHNudW0pIHsNCj4+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHNudW1zW2ldLnN0YXRlID0gUUVfU05VTV9TVEFURV9GUkVFOw0KPj4g
K8KgwqDCoMKgwqDCoMKgIGlmIChzbnVtc1tpXSA9PSBzbnVtKSB7DQo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBjbGVhcl9iaXQoaSwgc251bV9zdGF0ZSk7DQo+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBicmVhazsNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9DQo+PiDCoMKgwqDCoMKg
IH0NCj4gDQo+IENhbiB3ZSByZXBsYWNlIHRoaXMgbG9vcCBieSBtZW1jaHIoKSA/DQoNCkhtLCB5
ZXMuIFNvIHRoYXQgd291bGQgYmUNCg0KICBjb25zdCB1OCAqcCA9IG1lbWNocihzbnVtcywgc251
bSwgcWVfbnVtX29mX3NudW0pDQogIGlmIChwKQ0KICAgIGNsZWFyX2JpdChwIC0gc251bXMsIHNu
dW1fc3RhdGUpOw0KDQpJIGd1ZXNzLiBMZXQgbWUgZm9sZCB0aGF0IGluIGFuZCBzZWUgaG93IGl0
IGxvb2tzLg0KDQpUaGFua3MsDQpSYXNtdXMNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
