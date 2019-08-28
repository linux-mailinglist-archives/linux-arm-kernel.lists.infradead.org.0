Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B40A9F891
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 05:06:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QRQ5j+ETMRNOCR/TO3LWoGFKLefvZXFsr6EA1M38ECI=; b=XwS9wARXrCWGsZ
	Ju9TQOULG3EzyJJgcagUthqSqy//qgyQE5aMK6o6tOqAeKZCiiF5zkNuRiK1Q/ox1Xtbjt+Ds/6KB
	VXlDwEiafRwrKc33fODPNn0cj5U2IgtJUnSquT0yuz4xn3QeaoI71kh1xXKUPtJNwG5HZw/EX9GZz
	ON7uleo+2sVB7YwFWaE5NBd5DD1J9dXgf9CT5kWOvDOlbXIJVGpqAKKSlTsjnWgv0WZnv+pp6CBMy
	YPJtoohWYdJ41i/A7J8f3re54tuqGISngN+W7FbIltvU8AlIX2TTZQcxrko41K+tWnbr8q/P8P/Wl
	L2c+mifWmVUf4p0HoR4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2oHR-0005M7-0i; Wed, 28 Aug 2019 03:05:53 +0000
Received: from mail-eopbgr30056.outbound.protection.outlook.com ([40.107.3.56]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2oHE-0005L5-8G
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 03:05:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LL2hqEHBj5A7Qil2jP8T/psH3r9d8EAHED7/rNDK+PHDM+nXIGILfnM4bqiIujd/E9uWzAW5t/RUR67JcvMAo4W++QFrKfTwZW06GzNSmAZ6QsyWbNognTT05Rhq0Vih4ofS5zBq5obOrQNCmWCZPEJWp0U1lLEc3lrwXzI5c+Ym7qYk+1J5ZnybXquNnm4qWx1eT/YdWTG31lR6aQ3xeYbzKB5tqDkdcbehGQFQv9YEGsswyrS39EwWe8diJnzohEEy47F2g0YvxMBmGP6hUliQ5T5DZYTD6ePe+V3iRuLfZMSQyuEZ7/pnm15c1cQyr+2BA6XQNtseemEB89AzOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2AmMzIYHUSDgsZjwqWGIATCRQ9gqmd0+AbdcZFsJxH0=;
 b=WZqOV1rNkDNhIiiURDqjj80n53FtAfSj5CmPO/p4557xBM83f2Mst3ZTgWsgXa/cHQzWjkN3HJYwU2z9miWiHSkFY9Z39w6j7WqOh0sM1iGWvmB3ZFHXCWIcm2J4+kC+eFnj1kFzav8PMZIw2tL678B8iMc1oKGA1fl6tzvvHzi1LJOZId25lVs6niyYSL2Xh1b/mF33D7/73mTe2djZtg14WthfWgPR6TcFWiDc1Bf8KoptqEar1/fXu1R0h4YJ4yfZSvdjcHJfe62Erc9OXx9Dj70QllW2djKFmYravmqhpva69iFtiBCdf0mH5gLqyDApMSdQNzjHxSpuf4/qvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2AmMzIYHUSDgsZjwqWGIATCRQ9gqmd0+AbdcZFsJxH0=;
 b=nrts9ePNJ4m4NeJ2CIC34DzeorXseU1544t5kus3fbmf/5YghI+Zvqk+x/YcbZtLSIOY3e0YFX7q6ZBbrB3XWRDUb00xm186ERrbNqUVm4ncJLjvrep7jAbQEmd+Fh7cTMvPSDIP1Y0klhJEnTND1ojtt65a+Iws38mYxUJzEZY=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4633.eurprd04.prod.outlook.com (52.135.138.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Wed, 28 Aug 2019 03:05:37 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f%4]) with mapi id 15.20.2199.021; Wed, 28 Aug 2019
 03:05:37 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "mark.rutland@arm.com" <mark.rutland@arm.com>, "will@kernel.org"
 <will@kernel.org>, "robin.murphy@arm.com" <robin.murphy@arm.com>
Subject: [PATCH V8 1/3] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Topic: [PATCH V8 1/3] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Index: AQHVXU13WOxpPaartE2ouG051TY+nw==
Date: Wed, 28 Aug 2019 03:05:36 +0000
Message-ID: <20190828030305.7190-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR06CA0118.apcprd06.prod.outlook.com
 (2603:1096:1:1d::20) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 44826dab-3b5e-45cc-2162-08d72b649954
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4633; 
x-ms-traffictypediagnostic: DB7PR04MB4633:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB46339194D96AE2436A796DD5E6A30@DB7PR04MB4633.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(54534003)(199004)(189003)(305945005)(6512007)(26005)(7736002)(36756003)(1076003)(2906002)(2616005)(6486002)(186003)(476003)(14454004)(53936002)(3846002)(6116002)(52116002)(478600001)(6436002)(5660300002)(386003)(6506007)(8936002)(2501003)(66946007)(2201001)(71190400001)(71200400001)(86362001)(66476007)(66556008)(64756008)(66446008)(25786009)(256004)(54906003)(8676002)(81166006)(110136005)(4326008)(50226002)(102836004)(66066001)(486006)(99286004)(316002)(81156014)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4633;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gG5LxdGqLG73TuB7P8sFP1xGO4VXiNXFulgl/NPqqWciFpDlBswzqTOs+3QkJQxIwGGd+0o6WI+bj7RyB7eRc6EtgIvshDlWC65CnAKD463EngR37w/K7OnqDWw6v2hdYXS8hWRAvM1YV7TPXSsj06w70hdPA5UZGpTVZgIMKiolSHARK1Go4zcDrynoqpcwUSiRAKw50Oh+S5j9Dd7JLSR50sXG889ac+Z2K30VYQK/8TCTZZ+C57sY2CvE68tYIxU0U3rE55sgyIE+j7prL7R5GZrBMf1ezoOA//4xt+82V3eSgeC8W3spyYouoXrdx9j78kUEcwnaFuW5DRA6dBJ+Z3RNi23Wsky8JcMUp5dOBULgwmA9d2SJDnzLrYlwUqJO5D+GW3aC5LX9lvi8Yf2PUQmDtfMKOWDHkOjhGI8=
Content-ID: <5CFC0BE33F0B114C950BD224A55BD137@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44826dab-3b5e-45cc-2162-08d72b649954
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 03:05:36.9133 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iDJYZ3J0aXbcCldQ1Ms49TI4WZlWMU4YrcrKVAJsAwk/CEoxchBbMvvFn1fLirit73QtdWGHl1uYsUvbZ35qOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4633
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_200540_455510_3ABA2700 
X-CRM114-Status: GOOD (  20.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Frank Li <frank.li@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Joakim Zhang <qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QVhJIGZpbHRlcmluZyBpcyB1c2VkIGJ5IENTViBtb2RlcyAweDQxIGFuZCAweDQyIHRvIGNvdW50
IHJlYWRzIG9yDQp3cml0ZXMgd2l0aCBhbiBBUklEIG9yIEFXSUQgbWF0Y2hpbmcgZmlsdGVyIHNl
dHRpbmcuIEdyYW51bGFyaXR5IGlzIGF0DQpzdWJzeXN0ZW0gbGV2ZWwuIEltcGxlbWVudGF0aW9u
IGRvZXMgbm90IGFsbG93IGZpbHRyaW5nIGJldHdlZW4gbWFzdGVycw0Kd2l0aGluIGEgc3Vic3lz
dGVtLiBGaWx0ZXIgaXMgZGVmaW5lZCB3aXRoIDIgY29uZmlndXJhdGlvbiBwYXJhbWV0ZXJzLg0K
DQotLUFYSV9JRCBkZWZpbmVzIEF4SUQgbWF0Y2hpbmcgdmFsdWUNCi0tQVhJX01BU0tJTkcgZGVm
aW5lcyB3aGljaCBiaXRzIG9mIEF4SUQgYXJlIG1lYW5pbmdmdWwgZm9yIHRoZSBtYXRjaGluZw0K
CTDvvJpjb3JyZXNwb25kaW5nIGJpdCBpcyBtYXNrZWQNCgkxOiBjb3JyZXNwb25kaW5nIGJpdCBp
cyBub3QgbWFza2VkLCBpLmUuIHVzZWQgdG8gZG8gdGhlIG1hdGNoaW5nDQoNCldoZW4gbm9uLW1h
c2tlZCBiaXRzIGFyZSBtYXRjaGluZyBjb3JyZXNwb25kaW5nIEFYSV9JRCBiaXRzIHRoZW4gY291
bnRlcg0KaXMgaW5jcmVtZW50ZWQuIFRoaXMgZmlsdGVyIGFsbG93cyBjb3VudGluZyByZWFkIG9y
IHdyaXRlIGFjY2VzcyBmcm9tIGENCnN1YnN5c3RlbSBvciBtdWx0aXBsZSBzdWJzeXN0ZW1zLg0K
DQpQZXJmIGNvdW50ZXIgaXMgaW5jcmVtZW50ZWQgaWYgQXhJRCAmJiBBWElfTUFTS0lORyA9PSBB
WElfSUQgJiYgQVhJX01BU0tJTkcNCg0KQVhJX0lEIGFuZCBBWElfTUFTS0lORyBhcmUgbWFwcGVk
IG9uIERQQ1IxIHJlZ2lzdGVyIGluIHBlcmZvcm1hbmNlIGNvdW50ZXIuDQoNClJlYWQgYW5kIHdy
aXRlIEFYSSBJRCBmaWx0ZXIgc2hvdWxkIHdyaXRlIHNhbWUgdmFsdWUgdG8gRFBDUjEgaWYgd2Fu
dCB0bw0Kc3BlY2lmeSBhdCB0aGUgc2FtZSB0aW1lIGFzIHRoaXMgZmlsdGVyIGlzIHNoYXJlZCBi
ZXR3ZWVuIGNvdW50ZXJzLg0KDQplLmcuDQpwZXJmIHN0YXQgLWEgLWUgaW14OF9kZHIwL2F4aWQt
cmVhZCxheGlfbWFzaz0weE1NTU0sYXhpX2lkPTB4RERERC8gY21kDQpwZXJmIHN0YXQgLWEgLWUg
aW14OF9kZHIwL2F4aWQtd3JpdGUsYXhpX21hc2s9MHhNTU1NLGF4aV9pZD0weEREREQvIGNtZA0K
DQpOT1RFOiBheGlfbWFzayBpcyBpbnZlcnRlZCBpbiB1c2Vyc3BhY2UoaS5lLiBzZXQgYml0cyBh
cmUgYml0cyB0byBtYXNrKSwgYW5kDQppdCB3aWxsIGJlIHJldmVydGVkIGluIGRyaXZlciBhdXRv
bWF0aWNhbGx5LiBzbyB0aGF0IHRoZSB1c2VyIGNhbiBqdXN0IHNwZWNpZnkNCmF4aV9pZCB0byBt
b25pdG9yIGEgc3BlY2lmaWMgaWQsIHJhdGhlciB0aGFuIGhhdmluZyB0byBzcGVjaWZ5IGF4aV9t
YXNrLg0KZS5nLg0KcGVyZiBzdGF0IC1hIC1lIGlteDhfZGRyMC9heGlkLXJlYWQsYXhpX2lkPTB4
MTIvIGNtZCwgd2hpY2ggd2lsbCBtb25pdG9yIEFSSUQ9MHgxMg0KDQpDaGFuZ2VMb2c6DQpWMSAt
PiBWMjoNCgkqIGFkZCBlcnJvciBsb2cgaWYgdXNlciBzcGVjaWZpZXMgcmVhZC93cml0ZSBBWEkg
SUQgZmlsdGVyIGF0DQoJdGhlIHNhbWUgdGltZS4NCgkqIG9mX2RldmljZV9nZXRfbWF0Y2hfZGF0
YSgpIGluc3RlYWQgb2Ygb2ZfbWF0Y2hfZGV2aWNlKCksIGFuZA0KCXJlbW92ZSB0aGUgY2hlY2sg
b2YgcmV0dXJuIHZhbHVlLg0KVjIgLT4gVjM6DQoJKiBtb3ZlIHRoZSBBWEkgSUQgY2hlY2sgdG8g
ZXZlbnRfYWRkKCkuDQoJKiBhZGQgc3VwcG9ydCBmb3Igc2FtZSB2YWx1ZSBvZiBheGlfaWQuDQpW
MyAtPiBWNDoNCgkqIG1vdmUgdGhlIEFYSSBJRCBjaGVjayB0byBldmVudF9pbml0KCkuDQpWNCAt
PiBWNToNCgkqIHJlamVjdCBldmVudCBncm91cCBpZiBBWEkgSUQgbm90IGNvbnNpc3RlbnQgaW4g
ZXZlbnRfaW5pdCgpLg0KVjUgLT4gVjY6DQoJKiBjaGFuZ2UgdGhlIGV2ZW50IG5hbWU6IGF4aS1p
ZC1yZWFkLT5heGlkLXJlYWQ7DQoJYXhpLWlkLXdyaXRlLT5heGlkLXdyaXRlDQoJKiBhZGQgYW5v
dGhlciBoZWxwZXI6IGRkcl9wZXJmX2ZpbHRlcnNfY29tcGF0aWJsZSgpDQoJKiBkcm9wIHRoZSBk
ZXZfZGJnKCkNClY2IC0+IFY3Og0KCSogcmV2ZXJ0IEFYSV9NQVNLSU5HIGF0IGRyaXZlci4NClY3
IC0+IFY4Og0KCSogc2VwYXJhdGUgYXhpX2lkIHRvIGF4aV9tYXNrIGFuZCBheGlfaWQgdGhlc2Ug
dHdvIGZpbGVkcy4NCg0KU2lnbmVkLW9mZi1ieTogSm9ha2ltIFpoYW5nIDxxaWFuZ3Fpbmcuemhh
bmdAbnhwLmNvbT4NCi0tLQ0KIGRyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJfcGVyZi5jIHwgNzIg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0NCiAxIGZpbGUgY2hhbmdlZCwgNzAgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGVyZi9m
c2xfaW14OF9kZHJfcGVyZi5jIGIvZHJpdmVycy9wZXJmL2ZzbF9pbXg4X2Rkcl9wZXJmLmMNCmlu
ZGV4IDBlMzMxMGRiYjE0NS4uZTliZjk1NmY0MzRkIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9wZXJm
L2ZzbF9pbXg4X2Rkcl9wZXJmLmMNCisrKyBiL2RyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJfcGVy
Zi5jDQpAQCAtMzUsNiArMzUsOCBAQA0KICNkZWZpbmUgRVZFTlRfQ1lDTEVTX0NPVU5URVIJMA0K
ICNkZWZpbmUgTlVNX0NPVU5URVJTCQk0DQogDQorI2RlZmluZSBBWElfTUFTS0lOR19SRVZFUlQJ
MHhmZmZmMDAwMAkvKiBBWElfTUFTS0lORyhNU0IgMTZiaXRzKSArIEFYSV9JRChMU0IgMTZiaXRz
KSAqLw0KKw0KICNkZWZpbmUgdG9fZGRyX3BtdShwKQkJY29udGFpbmVyX29mKHAsIHN0cnVjdCBk
ZHJfcG11LCBwbXUpDQogDQogI2RlZmluZSBERFJfUEVSRl9ERVZfTkFNRQkiaW14OF9kZHIiDQpA
QCAtNDIsOSArNDQsMjIgQEANCiANCiBzdGF0aWMgREVGSU5FX0lEQShkZHJfaWRhKTsNCiANCisv
KiBERFIgUGVyZiBoYXJkd2FyZSBmZWF0dXJlICovDQorI2RlZmluZSBERFJfQ0FQX0FYSV9JRF9G
SUxURVIgICAgICAgICAgMHgxICAgICAvKiBzdXBwb3J0IEFYSSBJRCBmaWx0ZXIgKi8NCisNCitz
dHJ1Y3QgZnNsX2Rkcl9kZXZ0eXBlX2RhdGEgew0KKwl1bnNpZ25lZCBpbnQgcXVpcmtzOyAgICAv
KiBxdWlya3MgbmVlZGVkIGZvciBkaWZmZXJlbnQgRERSIFBlcmYgY29yZSAqLw0KK307DQorDQor
c3RhdGljIGNvbnN0IHN0cnVjdCBmc2xfZGRyX2RldnR5cGVfZGF0YSBpbXg4X2RldnR5cGVfZGF0
YTsNCisNCitzdGF0aWMgY29uc3Qgc3RydWN0IGZzbF9kZHJfZGV2dHlwZV9kYXRhIGlteDhtX2Rl
dnR5cGVfZGF0YSA9IHsNCisJLnF1aXJrcyA9IEREUl9DQVBfQVhJX0lEX0ZJTFRFUiwNCit9Ow0K
Kw0KIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGlteF9kZHJfcG11X2R0X2lkc1td
ID0gew0KLQl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg4LWRkci1wbXUiLH0sDQotCXsgLmNvbXBh
dGlibGUgPSAiZnNsLGlteDhtLWRkci1wbXUiLH0sDQorCXsgLmNvbXBhdGlibGUgPSAiZnNsLGlt
eDgtZGRyLXBtdSIsIC5kYXRhID0gJmlteDhfZGV2dHlwZV9kYXRhfSwNCisJeyAuY29tcGF0aWJs
ZSA9ICJmc2wsaW14OG0tZGRyLXBtdSIsIC5kYXRhID0gJmlteDhtX2RldnR5cGVfZGF0YX0sDQog
CXsgLyogc2VudGluZWwgKi8gfQ0KIH07DQogTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgaW14X2Rk
cl9wbXVfZHRfaWRzKTsNCkBAIC01OCw2ICs3Myw3IEBAIHN0cnVjdCBkZHJfcG11IHsNCiAJc3Ry
dWN0IHBlcmZfZXZlbnQgKmV2ZW50c1tOVU1fQ09VTlRFUlNdOw0KIAlpbnQgYWN0aXZlX2V2ZW50
czsNCiAJZW51bSBjcHVocF9zdGF0ZSBjcHVocF9zdGF0ZTsNCisJY29uc3Qgc3RydWN0IGZzbF9k
ZHJfZGV2dHlwZV9kYXRhICpkZXZ0eXBlX2RhdGE7DQogCWludCBpcnE7DQogCWludCBpZDsNCiB9
Ow0KQEAgLTEyOSw2ICsxNDUsOCBAQCBzdGF0aWMgc3RydWN0IGF0dHJpYnV0ZSAqZGRyX3BlcmZf
ZXZlbnRzX2F0dHJzW10gPSB7DQogCUlNWDhfRERSX1BNVV9FVkVOVF9BVFRSKHJlZnJlc2gsIDB4
MzcpLA0KIAlJTVg4X0REUl9QTVVfRVZFTlRfQVRUUih3cml0ZSwgMHgzOCksDQogCUlNWDhfRERS
X1BNVV9FVkVOVF9BVFRSKHJhdy1oYXphcmQsIDB4MzkpLA0KKwlJTVg4X0REUl9QTVVfRVZFTlRf
QVRUUihheGlkLXJlYWQsIDB4NDEpLA0KKwlJTVg4X0REUl9QTVVfRVZFTlRfQVRUUihheGlkLXdy
aXRlLCAweDQyKSwNCiAJTlVMTCwNCiB9Ow0KIA0KQEAgLTEzOCw5ICsxNTYsMTMgQEAgc3RhdGlj
IHN0cnVjdCBhdHRyaWJ1dGVfZ3JvdXAgZGRyX3BlcmZfZXZlbnRzX2F0dHJfZ3JvdXAgPSB7DQog
fTsNCiANCiBQTVVfRk9STUFUX0FUVFIoZXZlbnQsICJjb25maWc6MC03Iik7DQorUE1VX0ZPUk1B
VF9BVFRSKGF4aV9pZCwgImNvbmZpZzE6MC0xNSIpOw0KK1BNVV9GT1JNQVRfQVRUUihheGlfbWFz
aywgImNvbmZpZzE6MTYtMzEiKTsNCiANCiBzdGF0aWMgc3RydWN0IGF0dHJpYnV0ZSAqZGRyX3Bl
cmZfZm9ybWF0X2F0dHJzW10gPSB7DQogCSZmb3JtYXRfYXR0cl9ldmVudC5hdHRyLA0KKwkmZm9y
bWF0X2F0dHJfYXhpX2lkLmF0dHIsDQorCSZmb3JtYXRfYXR0cl9heGlfbWFzay5hdHRyLA0KIAlO
VUxMLA0KIH07DQogDQpAQCAtMTkwLDYgKzIxMiwyNiBAQCBzdGF0aWMgdTMyIGRkcl9wZXJmX3Jl
YWRfY291bnRlcihzdHJ1Y3QgZGRyX3BtdSAqcG11LCBpbnQgY291bnRlcikNCiAJcmV0dXJuIHJl
YWRsX3JlbGF4ZWQocG11LT5iYXNlICsgQ09VTlRFUl9SRUFEICsgY291bnRlciAqIDQpOw0KIH0N
CiANCitzdGF0aWMgYm9vbCBkZHJfcGVyZl9pc19maWx0ZXJlZChzdHJ1Y3QgcGVyZl9ldmVudCAq
ZXZlbnQpDQorew0KKwlyZXR1cm4gZXZlbnQtPmF0dHIuY29uZmlnID09IDB4NDEgfHwgZXZlbnQt
PmF0dHIuY29uZmlnID09IDB4NDI7DQorfQ0KKw0KK3N0YXRpYyB1MzIgZGRyX3BlcmZfZmlsdGVy
X3ZhbChzdHJ1Y3QgcGVyZl9ldmVudCAqZXZlbnQpDQorew0KKwlyZXR1cm4gZXZlbnQtPmF0dHIu
Y29uZmlnMTsNCit9DQorDQorc3RhdGljIGJvb2wgZGRyX3BlcmZfZmlsdGVyc19jb21wYXRpYmxl
KHN0cnVjdCBwZXJmX2V2ZW50ICphLA0KKwkJCQkJc3RydWN0IHBlcmZfZXZlbnQgKmIpDQorew0K
KwlpZiAoIWRkcl9wZXJmX2lzX2ZpbHRlcmVkKGEpKQ0KKwkJcmV0dXJuIHRydWU7DQorCWlmICgh
ZGRyX3BlcmZfaXNfZmlsdGVyZWQoYikpDQorCQlyZXR1cm4gdHJ1ZTsNCisJcmV0dXJuIGRkcl9w
ZXJmX2ZpbHRlcl92YWwoYSkgPT0gZGRyX3BlcmZfZmlsdGVyX3ZhbChiKTsNCit9DQorDQogc3Rh
dGljIGludCBkZHJfcGVyZl9ldmVudF9pbml0KHN0cnVjdCBwZXJmX2V2ZW50ICpldmVudCkNCiB7
DQogCXN0cnVjdCBkZHJfcG11ICpwbXUgPSB0b19kZHJfcG11KGV2ZW50LT5wbXUpOw0KQEAgLTIx
Niw2ICsyNTgsMTUgQEAgc3RhdGljIGludCBkZHJfcGVyZl9ldmVudF9pbml0KHN0cnVjdCBwZXJm
X2V2ZW50ICpldmVudCkNCiAJCQkhaXNfc29mdHdhcmVfZXZlbnQoZXZlbnQtPmdyb3VwX2xlYWRl
cikpDQogCQlyZXR1cm4gLUVJTlZBTDsNCiANCisJaWYgKHBtdS0+ZGV2dHlwZV9kYXRhLT5xdWly
a3MgJiBERFJfQ0FQX0FYSV9JRF9GSUxURVIpIHsNCisJCWlmICghZGRyX3BlcmZfZmlsdGVyc19j
b21wYXRpYmxlKGV2ZW50LCBldmVudC0+Z3JvdXBfbGVhZGVyKSkNCisJCQlyZXR1cm4gLUVJTlZB
TDsNCisJCWZvcl9lYWNoX3NpYmxpbmdfZXZlbnQoc2libGluZywgZXZlbnQtPmdyb3VwX2xlYWRl
cikgew0KKwkJCWlmICghZGRyX3BlcmZfZmlsdGVyc19jb21wYXRpYmxlKGV2ZW50LCBzaWJsaW5n
KSkNCisJCQkJcmV0dXJuIC1FSU5WQUw7DQorCQl9DQorCX0NCisNCiAJZm9yX2VhY2hfc2libGlu
Z19ldmVudChzaWJsaW5nLCBldmVudC0+Z3JvdXBfbGVhZGVyKSB7DQogCQlpZiAoc2libGluZy0+
cG11ICE9IGV2ZW50LT5wbXUgJiYNCiAJCQkJIWlzX3NvZnR3YXJlX2V2ZW50KHNpYmxpbmcpKQ0K
QEAgLTI4OCw2ICszMzksMjEgQEAgc3RhdGljIGludCBkZHJfcGVyZl9ldmVudF9hZGQoc3RydWN0
IHBlcmZfZXZlbnQgKmV2ZW50LCBpbnQgZmxhZ3MpDQogCXN0cnVjdCBod19wZXJmX2V2ZW50ICpo
d2MgPSAmZXZlbnQtPmh3Ow0KIAlpbnQgY291bnRlcjsNCiAJaW50IGNmZyA9IGV2ZW50LT5hdHRy
LmNvbmZpZzsNCisJaW50IGNmZzEgPSBldmVudC0+YXR0ci5jb25maWcxOw0KKw0KKwlpZiAocG11
LT5kZXZ0eXBlX2RhdGEtPnF1aXJrcyAmIEREUl9DQVBfQVhJX0lEX0ZJTFRFUikgew0KKwkJaW50
IGk7DQorDQorCQlmb3IgKGkgPSAxOyBpIDwgTlVNX0NPVU5URVJTOyBpKyspIHsNCisJCQlpZiAo
cG11LT5ldmVudHNbaV0gJiYNCisJCQkgICAgIWRkcl9wZXJmX2ZpbHRlcnNfY29tcGF0aWJsZShl
dmVudCwgcG11LT5ldmVudHNbaV0pKQ0KKwkJCQlyZXR1cm4gLUVJTlZBTDsNCisJCX0NCisNCisJ
CS8qIHJldmVydCBheGkgaWQgbWFza2luZyhheGlfbWFzaykgdmFsdWUgKi8NCisJCWNmZzEgXj0g
QVhJX01BU0tJTkdfUkVWRVJUOw0KKwkJd3JpdGVsKGNmZzEsIHBtdS0+YmFzZSArIENPVU5URVJf
RFBDUjEpOw0KKwl9DQogDQogCWNvdW50ZXIgPSBkZHJfcGVyZl9hbGxvY19jb3VudGVyKHBtdSwg
Y2ZnKTsNCiAJaWYgKGNvdW50ZXIgPCAwKSB7DQpAQCAtNDczLDYgKzUzOSw4IEBAIHN0YXRpYyBp
bnQgZGRyX3BlcmZfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikNCiAJaWYgKCFu
YW1lKQ0KIAkJcmV0dXJuIC1FTk9NRU07DQogDQorCXBtdS0+ZGV2dHlwZV9kYXRhID0gb2ZfZGV2
aWNlX2dldF9tYXRjaF9kYXRhKCZwZGV2LT5kZXYpOw0KKw0KIAlwbXUtPmNwdSA9IHJhd19zbXBf
cHJvY2Vzc29yX2lkKCk7DQogCXJldCA9IGNwdWhwX3NldHVwX3N0YXRlX211bHRpKENQVUhQX0FQ
X09OTElORV9EWU4sDQogCQkJCSAgICAgIEREUl9DUFVIUF9DQl9OQU1FLA0KLS0gDQoyLjE3LjEN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
