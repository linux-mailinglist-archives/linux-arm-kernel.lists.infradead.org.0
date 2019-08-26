Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDEB9CAAA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:35:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rRZeI4G8b6K7UR6KJOdNky9/QKw3JD/wyLoN7uNgKPw=; b=GVbVtoolFHgKnC
	ad9urH8GeDncyoae2u8Q0J07i7WMTNJE0OGcvBg3my1vVgXP05McrtHYNmx9qVd5NFnYX3gdQhVLz
	XOT3PSjU8zI+PNx9w8rdmZOp6ntLkFjvdRxd95xI+MO4+7gKjyZWTH7hLEI8Oahz54rgROBufK33l
	VjSCdT0QKMzrCkrQJxNU2joIebttwQ3h2Qsof5SGqpfDr/000saCOWMilc3x5A6mFNs1IP2XW7U1K
	OfeMt0fxCP1QBz48q8ddC02a0MCXfZLSXFY8f+fake5u05eDKWsSxjrIWO3qPPhu5ofSkd7dX9/ce
	FltfF3s3Mqvts8q5F4Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29Wo-0007se-0S; Mon, 26 Aug 2019 07:35:02 +0000
Received: from mail-eopbgr20081.outbound.protection.outlook.com ([40.107.2.81]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i29WA-0007Jp-AN
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 07:34:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rw1t+mn0MX8epzG1XLNCYm7VJp6j1PizBdZpfQgqnZyGBwv3UCHDc+OwGoklvRkPiN/sB3htsvLVZ4nBwZIZa9BaMMmNzXMpYtj91StPZvki80nfS0FSMAdYTesyMTSR4QZobqWmf7MW/Pt5w2gJy2ORd0zE2R/H85ZKk3N32luLVZkR4Zuw/qAB+RGqcqI25CNWWBKVoGOyeJYheV9sdhIuxqhKMUX4Bfbs3FrvpiQ+1/G51NOxJkdkp63sUr0fUNDdOt2OJ7Ci/j4XJEVVbXqQkqRmw4D3py3x6EDQrsw7HfnP/wt1/XNSrkyz3B+QefkhIjf3qWSmEIvnqHHSSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/3DQ6Fkq2u0+0bPy4FvIlQ5xzQZTvBQcuJrk6sod2AY=;
 b=G/Vnq7VXcOoUAV20UJavwAGpik8P1H82yLUOh2Co7X1ZHQJlHOGhftr68Osv6W9JAS9TNK1zj73AiGIDUo1X2oiwfzyb2ezOk5KN97kWKWt4IfLIus4rBvinxt3qdYYeXBsS+bASe5PNFYhBwc/ZqIUY7CCRlieECc/4/BE4VWaFGLAjlHdyK/cukMszJLIOT9FrlnO1r6iUklqKFu9gJ8JJ/6hUl0SChTdOmfj8j7W+jwvRKE9mUhmi0W73R3iwqthrElPpbeo90X7lmSaQU4W7KUEsDHzHRVyWoJck/5ChkNXVEWFQsZjfA6hFjhk1pEqJvTcR18PtGm11+2cH8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/3DQ6Fkq2u0+0bPy4FvIlQ5xzQZTvBQcuJrk6sod2AY=;
 b=HoSo7vMjc2VAfWaM4wPs9VuwIhQOlAqjCh4xg/5M4Hhe6DH6n8sv4SPMRLvJ0bP/yMfch8kUfIo2oZ8eprE4eAwUKhNJR5PYYBPXyX5/ko/agXMriSGCfOPUSGsuMXZesjc6j5Ku50R67CUbfQB1rZ1AKunC7ScMQljuCWI4mvk=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4122.eurprd04.prod.outlook.com (52.135.130.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Mon, 26 Aug 2019 07:34:19 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f%4]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 07:34:19 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "robin.murphy@arm.com" <robin.murphy@arm.com>, "will@kernel.org"
 <will@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>
Subject: [PATCH V6 2/3] Documentation: admin-guide: perf: add i.MX8 ddr pmu
 user doc
Thread-Topic: [PATCH V6 2/3] Documentation: admin-guide: perf: add i.MX8 ddr
 pmu user doc
Thread-Index: AQHVW+CsguzZcKJe/0G7XjtQ91RqNg==
Date: Mon, 26 Aug 2019 07:34:19 +0000
Message-ID: <20190826073128.10052-3-qiangqing.zhang@nxp.com>
References: <20190826073128.10052-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20190826073128.10052-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR03CA0087.apcprd03.prod.outlook.com
 (2603:1096:4:7c::15) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 097e65ac-b509-4273-ccbc-08d729f7ce5a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4122; 
x-ms-traffictypediagnostic: DB7PR04MB4122:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB41223CC13F6D198234363465E6A10@DB7PR04MB4122.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(39860400002)(136003)(346002)(199004)(189003)(54534003)(6486002)(26005)(2501003)(6436002)(2906002)(102836004)(14454004)(6506007)(386003)(316002)(110136005)(256004)(2616005)(50226002)(2201001)(305945005)(14444005)(36756003)(7736002)(66066001)(71200400001)(8676002)(86362001)(478600001)(5660300002)(4326008)(71190400001)(81156014)(81166006)(99286004)(54906003)(486006)(53936002)(3846002)(76176011)(52116002)(6116002)(66446008)(66946007)(66476007)(66556008)(6512007)(186003)(11346002)(1076003)(25786009)(8936002)(446003)(64756008)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4122;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: lBiFTGPp43DVbriPe276qRAxzc2yr9UabkChNY876WS0ygp05ZnGOTotXshgO1rC2B59sootoQTYHLArq4aJanL+GnjiAu2Hs8WF+sq0ug4YI/MoqB0f3VtLCKJN11bISKgROxNC5AXh4EkW7jirGhKM43/yn8Ju7oVKgLJ2Vv8Dov+EXNMfpnaAgsvDKB/hv1i863hsbrfYgMTrh9PihuFPogvnWcc9kt3l8vvanMXRF584wRsREm6iSNt3GfMW1jYfRe8WRJRtS88zS4URRm1Da3V90Mvn2MZ792nNAXSLQUp2wiCwQq2VqcBXTPlkRYUS6IvnrIQN1oewDVJr8+4bH86j2e15ik9e0fX9GQ1jKX5kh54W0sZdjKIDozTE2UbZchCIl68GK81gMjh+Ov5a8NnYPs+hah1N7wR537k=
Content-ID: <49B067E77C9EF748B265A02C23D4DA3D@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 097e65ac-b509-4273-ccbc-08d729f7ce5a
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 07:34:19.4550 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WYdrEhBCYwLb0WiIhN2cHAjZTy63HU3DpfuHANh2c55Ue2yqTU+0LeOZbDf18kOVAqMzO7pdFTfEqXexvjvEzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_003422_410091_DD68F525 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Frank Li <frank.li@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Joakim Zhang <qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGkuTVg4IGRkciBwbXUgdXNlciBkb2MuDQoNCkNoYW5nZUxvZzoNClYxIC0+IFY0Og0KCSog
bmV3IGFkZCBpbiBWNC4NClY0IC0+IFY1Og0KCSogbm8gY2hhbmdlLg0KVjUgLT4gVjY6DQoJKiBj
aGFuZ2UgdGhlIGV2ZW50IG5hbWUNCg0KU2lnbmVkLW9mZi1ieTogSm9ha2ltIFpoYW5nIDxxaWFu
Z3FpbmcuemhhbmdAbnhwLmNvbT4NCi0tLQ0KIERvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvcGVy
Zi9pbXgtZGRyLnJzdCB8IDMwICsrKysrKysrKysrKysrKysrKysrKysNCiAxIGZpbGUgY2hhbmdl
ZCwgMzAgaW5zZXJ0aW9ucygrKQ0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2Fk
bWluLWd1aWRlL3BlcmYvaW14LWRkci5yc3QNCg0KZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
YWRtaW4tZ3VpZGUvcGVyZi9pbXgtZGRyLnJzdCBiL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUv
cGVyZi9pbXgtZGRyLnJzdA0KbmV3IGZpbGUgbW9kZSAxMDA2NDQNCmluZGV4IDAwMDAwMDAwMDAw
MC4uMDcxZDM4Yjc0ZDlkDQotLS0gL2Rldi9udWxsDQorKysgYi9Eb2N1bWVudGF0aW9uL2FkbWlu
LWd1aWRlL3BlcmYvaW14LWRkci5yc3QNCkBAIC0wLDAgKzEsMzAgQEANCis9PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQorRnJlZXNjYWxlIGkuTVg4
IEREUiBQZXJmb3JtYW5jZSBNb25pdG9yaW5nIFVuaXQgKFBNVSkNCis9PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQorDQorVGhlcmUgYXJlIG5vIHBl
cmZvcm1hbmNlIGNvdW50ZXJzIGluc2lkZSB0aGUgRFJBTSBjb250cm9sbGVyLCBzbyBwZXJmb3Jt
YW5jZQ0KK3NpZ25hbHMgYXJlIGJyb3VnaHQgb3V0IHRvIHRoZSBlZGdlIG9mIHRoZSBjb250cm9s
bGVyIHdoZXJlIGEgc2V0IG9mIDQgeCAzMiBiaXQNCitjb3VudGVycyBpcyBpbXBsZW1lbnRlZC4g
VGhpcyBpcyBjb250cm9sbGVkIGJ5IHRoZSBQZXJmb3JtYW5jZSBsb2cgb24gcGFyYW1ldGVyDQor
d2hpY2ggY2F1c2VzIGEgbGFyZ2UgbnVtYmVyIG9mIFBFUkYgc2lnbmFscyB0byBiZSBnZW5lcmF0
ZWQuDQorDQorU2VsZWN0aW9uIG9mIHRoZSB2YWx1ZSBmb3IgZWFjaCBjb3VudGVyIGlzIGRvbmUg
dmlhIHRoZSBjb25maWcgcmVnaXN0aWVycy4gVGhlcmUNCitpcyBvbmUgcmVnaXN0ZXIgZm9yIGVh
Y2ggY291bnRlci4gQ291bnRlciAwIGlzIHNwZWNpYWwgaW4gdGhhdCBpdCBhbHdheXMgY291bnRz
DQor4oCcdGltZeKAnSBhbmQgd2hlbiBleHBpcmVkIGNhdXNlcyBhIGxvY2sgb24gaXRzZWxmIGFu
ZCB0aGUgb3RoZXIgY291bnRlcnMgYW5kIGFuDQoraW50ZXJydXB0IGllIGVuYWJsZSBvZiBjb3Vu
dGVyIDAgaXMgYSBnbG9iYWwgZnVuY3Rpb24uDQorDQorVGhlICJmb3JtYXQiIGRpcmVjdG9yeSBk
ZXNjcmliZXMgZm9ybWF0IG9mIHRoZSBjb25maWcgKGV2ZW50IElEKSBhbmQgY29uZmlnMQ0KKyhB
WEkgSUQgZmlsdGVyKSBmaWVsZHMgb2YgdGhlIHBlcmZfZXZlbnRfYXR0ciBzdHJ1Y3R1cmUsIHNl
ZSAvc3lzL2J1cy9ldmVudF9zb3VyY2UvDQorZGV2aWNlcy9pbXg4X2RkcjAvZm9ybWF0Ly4gVGhl
ICJldmVudHMiIGRpcmVjdG9yeSBkZXNjcmliZXMgdGhlIGV2ZW50cyB0eXBlcw0KK2hhcmR3YXJl
IHN1cHBvcnRlZCB0aGF0IGNhbiBiZSB1c2VkIHdpdGggcGVyZiB0b29sLCBzZWUgL3N5cy9idXMv
ZXZlbnRfc291cmNlLw0KK2RldmljZXMvaW14OF9kZHIwL2V2ZW50cy8uDQorDQorQVhJIElEIGZp
bHRlciBpcyBvbmx5IHVzZWQgYnkgQ1NWIG1vZGVzIDB4NDEgKGF4aWQtcmVhZCkgYW5kIDB4NDIg
KGF4aWQtd3JpdGUpDQordG8gY291bnQgcmVhZGluZyBvciB3cml0aW5nIG1hdGNoZXMgZmlsdGVy
IHNldHRpbmcuIFVzZXIgc2hvdWxkIHNwZWNpZnkgdGhpcyB0d28NCitldmVudHMgd2l0aCB0aGUg
c2FtZSBBWEkgSUQgZmlsdGVyIHZhbHVlIGlmIHdhbnQgdG8gY291bnQgYXQgdGhlIHNhbWUgdGlt
ZSwgYXMNCit0aGlzIGZpbHRlciByZWdpc3RlciBpcyBzaGFyZWQgYmV0d2VlbiBjb3VudGVycy4N
CisNCitFeGFtcGxlIGZvciBwZXJmIHRvb2wgdXNlOjoNCisNCisgICAgICAgIHBlcmYgc3RhdCAt
YSAtZSBpbXg4X2RkcjAvY3ljbGVzLyBzbGVlcCAxDQorICAgICAgICBwZXJmIHN0YXQgLWEgLWUg
aW14OF9kZHIwL3JlYWQvLGlteDhfZGRyMC93cml0ZS8gc2xlZXAgMQ0KKyAgICAgICAgcGVyZiBz
dGF0IC1hIC1lIGlteDhfZGRyMC9heGlkLXJlYWQsYXhpX2lkPTB4TU1NTUREREQvLGlteDhfZGRy
MC9heGlkLXdyaXRlLGF4aV9pZD0weE1NTU1ERERELyBzbGVlcCAxDQotLSANCjIuMTcuMQ0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
