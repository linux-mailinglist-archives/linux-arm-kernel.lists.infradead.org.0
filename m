Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1139CAA8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:34:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qVuqE/42on/fFItDEzWClHs7BxeY9N44sJKUR79nZYE=; b=EDN3JnWoDYIVR7
	p4iDmsUd0XNmhb7cypoiiwZw12POrAlcdQ9dWVdBVFovRjIsV8Spn398SSzmyiZQgZN6Pk8khj5mI
	/GmZxwSGESfV8hlNYZU1+KqvI0huW1o8vSGMGW8uOyOiQkd0maG40TE9m5k8RMTQHAWUBD44atFKR
	7Ogkm5SO7J/d4uldBZFn51PmEBBrwHMyucUmePelMGJFAOIUnKhKBrAZr8Hv7hKCjP8K+aae8rYaB
	BEahkogTytiCOdvgUER177Wp/QnpnLjj/XSvOTuLG00SUcGYDvI/d30I5BD/PuKExnuIoVhXiZgRl
	tijylFN6lsY/lfM9LdIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29WZ-0007Yw-5b; Mon, 26 Aug 2019 07:34:47 +0000
Received: from mail-eopbgr20081.outbound.protection.outlook.com ([40.107.2.81]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i29W8-0007Jp-6d
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 07:34:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PDH8e6haj2p7uDvO15wa1pzdfInC/OBsf3bTtNU4FnUpZ0mL2y1TlztsGt3WhRzXaJdaVaQ0d4OsrQlvl43fVv/FFwwsBhF93yQykf+oHylSgO4LKTDdPmH5LWHV5cQDfVl2WCU8PJ28gAm9TZaEmHMZ3f7xHG2/uzNcrebGvTtMKKo7RRrTOtCCuwHpk0ENxl/uuzBNuD9ZYzlA21I7uVln8KkxFWoa4QF/hbbii0hHxulVNaqAs/IrSeyRbvoQJwNsVmLHHE+r0SEe3WiAdu6gA4sl9XNHKJIDAxOb2j71Jvqiv5gAhfumYBwXBSuzHN3jlIqPkS8L3o21ZD4lng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vwGnm0ZY4n+qTU7ZJMZ5yBdjkaXnrIzKpgzUHDpcXh8=;
 b=Wv+JsrV3PxWwzhkLNmF0QMdYPMQGZ3XMHAwzeEHA6cTq3JpV7jrUJ2VIARG66GMiUFCjEf/O/Iok7Udb6PWzMdniIT2n6gjBtXt5FGt/UZJ4EsYkjkmV1J21c93HMHyywkNEzRxJOkQPHVk1QXrAsD5qi9SxMz6uUmigPXl3i26/sD434umn5CPzEOohUc/nLX2gdj9V28N50hQHZveGHhePouzrO7pSGZtUwjY96DRijBpkQqz7AqFJQjom1Jzp2JHzYC0r1Na2ine0dHbbyuIIam2FmP0mTtsGgxQQwDpn94b1I7EBa8CKw/E4lSTZ1N80hDDAM0/SytE3dqEafA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vwGnm0ZY4n+qTU7ZJMZ5yBdjkaXnrIzKpgzUHDpcXh8=;
 b=bkwOryGNHT/gGpxldqR8R73qVx4ozb9DIJS3hgigv4Lf0ezMSKtChdiB9HMHrFcDgDxd3MRgscIcgqYZxKpRn00ITYjaZ20qCaOO/ysSd1/xWQWdeUwltCROg6zBSs1buU5v6tCzquXuHu9DHG5FikynKeYfB/8u8Gqu/Klbh7o=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4122.eurprd04.prod.outlook.com (52.135.130.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Mon, 26 Aug 2019 07:34:16 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f%4]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 07:34:16 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "robin.murphy@arm.com" <robin.murphy@arm.com>, "will@kernel.org"
 <will@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>
Subject: [PATCH V6 1/3] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Topic: [PATCH V6 1/3] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Index: AQHVW+Cp+1e907fk80iOj0kPjwFqmA==
Date: Mon, 26 Aug 2019 07:34:15 +0000
Message-ID: <20190826073128.10052-2-qiangqing.zhang@nxp.com>
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
x-ms-office365-filtering-correlation-id: 3adba962-2fe2-4dc0-1461-08d729f7cc45
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4122; 
x-ms-traffictypediagnostic: DB7PR04MB4122:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB41228D00B9B12079E23D5142E6A10@DB7PR04MB4122.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(39860400002)(136003)(346002)(199004)(189003)(54534003)(6486002)(26005)(2501003)(6436002)(2906002)(102836004)(14454004)(6506007)(386003)(316002)(110136005)(256004)(2616005)(50226002)(2201001)(305945005)(14444005)(36756003)(7736002)(66066001)(71200400001)(8676002)(86362001)(478600001)(5660300002)(4326008)(71190400001)(81156014)(81166006)(99286004)(54906003)(486006)(53936002)(3846002)(76176011)(52116002)(6116002)(66446008)(66946007)(66476007)(66556008)(6512007)(186003)(11346002)(1076003)(25786009)(8936002)(446003)(64756008)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4122;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: By8mXzEEMTutdn+Oqzk0LfdXLAE/wm6toPC4zUqwsuaLgFEwUQxnNNF9NHYBv536CoWE+gTOnI8lZuXrBJMrNZ9aOlRkC9QoX5GJu4RXejbyHL2Sw0NDgcCU6Qce18OPBeGL3EwZLsyqmJ0h6BJjfsXnJGCOmoE9lUkk3Uw7yo50b3EGYfLDcJ5JknVGMr0xEfacb5cfie+3lgaaGlfpZ1iY3WLog2iXc6/M6LkSTFGgiwsDYc74+tTbSjNiNwcWTdRD5JyxOhqFA4bDkTOeQnxVtU3Fxl5pNKwUXPw1VVbgcK1FZ0zrQ//FQpPNHpGQHhcNit1+ID50EsBUd0lgp51O+Aj0ZE5VXwc4qlcJq5pYCis3rD3YmCxp8Hl/ZWxJXL8tL4V4fakLvDqVSIsFS+pNKfY2/jEXJlNFQRKjk18=
Content-ID: <A22DA55510D20247B275F8F363987CBE@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3adba962-2fe2-4dc0-1461-08d729f7cc45
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 07:34:16.0232 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VWs/aED+qBQSOaeaMotuvvcrC77PDfJUizz8Zk8INZBwLQtb/5Ob8la9alCyp0ga9sTby6NnrbmXnTaZFH5a2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_003420_285740_97E0B864 
X-CRM114-Status: GOOD (  19.79  )
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
cmVhZCxheGlfaWQ9MHhNTU1NRERERC8saW14OF9kZHIwL2F4aWQtd3JpdGUsYXhpX2lkPTB4TU1N
TUREREQvIGNtZA0KTU1NTTogQVhJX01BU0tJTkcgIEREREQ6IEFYSV9JRA0KcGVyZiBzdGF0IC1h
IC1lIGlteDhfZGRyMC9heGlkLXJlYWQsYXhpX2lkPTB4ZmZmZjAwMDEvIGNtZCwgd2hpY2ggd2ls
bCBtb25pdG9yIEFSSUQ9MQ0KDQpDaGFuZ2VMb2c6DQpWMSAtPiBWMjoNCgkqIGFkZCBlcnJvciBs
b2cgaWYgdXNlciBzcGVjaWZpZXMgcmVhZC93cml0ZSBBWEkgSUQgZmlsdGVyIGF0DQoJdGhlIHNh
bWUgdGltZS4NCgkqIG9mX2RldmljZV9nZXRfbWF0Y2hfZGF0YSgpIGluc3RlYWQgb2Ygb2ZfbWF0
Y2hfZGV2aWNlKCksIGFuZA0KCXJlbW92ZSB0aGUgY2hlY2sgb2YgcmV0dXJuIHZhbHVlLg0KVjIg
LT4gVjM6DQoJKiBtb3ZlIHRoZSBBWEkgSUQgY2hlY2sgdG8gZXZlbnRfYWRkKCkuDQoJKiBhZGQg
c3VwcG9ydCBmb3Igc2FtZSB2YWx1ZSBvZiBheGlfaWQuDQpWMyAtPiBWNDoNCgkqIG1vdmUgdGhl
IEFYSSBJRCBjaGVjayB0byBldmVudF9pbml0KCkuDQpWNCAtPiBWNToNCgkqIHJlamVjdCBldmVu
dCBncm91cCBpZiBBWEkgSUQgbm90IGNvbnNpc3RlbnQgaW4gZXZlbnRfaW5pdCgpLg0KVjUgLT4g
VjY6DQoJKiBjaGFuZ2UgdGhlIGV2ZW50IG5hbWU6IGF4aS1pZC1yZWFkLT5heGlkLXJlYWQ7DQoJ
YXhpLWlkLXdyaXRlLT5heGlkLXdyaXRlDQoJKiBhZGQgYW5vdGhlciBoZWxwZXI6IGRkcl9wZXJm
X2ZpbHRlcnNfY29tcGF0aWJsZSgpDQoJKiBkcm9wIHRoZSBkZXZfZGJnKCkNCg0KU2lnbmVkLW9m
Zi1ieTogSm9ha2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4NCi0tLQ0KIGRyaXZl
cnMvcGVyZi9mc2xfaW14OF9kZHJfcGVyZi5jIHwgNjUgKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKy0NCiAxIGZpbGUgY2hhbmdlZCwgNjMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJfcGVyZi5jIGIvZHJp
dmVycy9wZXJmL2ZzbF9pbXg4X2Rkcl9wZXJmLmMNCmluZGV4IDBlMzMxMGRiYjE0NS4uMjJhZjAx
YTI1ZDVkIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9wZXJmL2ZzbF9pbXg4X2Rkcl9wZXJmLmMNCisr
KyBiL2RyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJfcGVyZi5jDQpAQCAtNDIsOSArNDIsMjIgQEAN
CiANCiBzdGF0aWMgREVGSU5FX0lEQShkZHJfaWRhKTsNCiANCisvKiBERFIgUGVyZiBoYXJkd2Fy
ZSBmZWF0dXJlICovDQorI2RlZmluZSBERFJfQ0FQX0FYSV9JRF9GSUxURVIgICAgICAgICAgMHgx
ICAgICAvKiBzdXBwb3J0IEFYSSBJRCBmaWx0ZXIgKi8NCisNCitzdHJ1Y3QgZnNsX2Rkcl9kZXZ0
eXBlX2RhdGEgew0KKwl1bnNpZ25lZCBpbnQgcXVpcmtzOyAgICAvKiBxdWlya3MgbmVlZGVkIGZv
ciBkaWZmZXJlbnQgRERSIFBlcmYgY29yZSAqLw0KK307DQorDQorc3RhdGljIGNvbnN0IHN0cnVj
dCBmc2xfZGRyX2RldnR5cGVfZGF0YSBpbXg4X2RldnR5cGVfZGF0YTsNCisNCitzdGF0aWMgY29u
c3Qgc3RydWN0IGZzbF9kZHJfZGV2dHlwZV9kYXRhIGlteDhtX2RldnR5cGVfZGF0YSA9IHsNCisJ
LnF1aXJrcyA9IEREUl9DQVBfQVhJX0lEX0ZJTFRFUiwNCit9Ow0KKw0KIHN0YXRpYyBjb25zdCBz
dHJ1Y3Qgb2ZfZGV2aWNlX2lkIGlteF9kZHJfcG11X2R0X2lkc1tdID0gew0KLQl7IC5jb21wYXRp
YmxlID0gImZzbCxpbXg4LWRkci1wbXUiLH0sDQotCXsgLmNvbXBhdGlibGUgPSAiZnNsLGlteDht
LWRkci1wbXUiLH0sDQorCXsgLmNvbXBhdGlibGUgPSAiZnNsLGlteDgtZGRyLXBtdSIsIC5kYXRh
ID0gJmlteDhfZGV2dHlwZV9kYXRhfSwNCisJeyAuY29tcGF0aWJsZSA9ICJmc2wsaW14OG0tZGRy
LXBtdSIsIC5kYXRhID0gJmlteDhtX2RldnR5cGVfZGF0YX0sDQogCXsgLyogc2VudGluZWwgKi8g
fQ0KIH07DQogTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgaW14X2Rkcl9wbXVfZHRfaWRzKTsNCkBA
IC01OCw2ICs3MSw3IEBAIHN0cnVjdCBkZHJfcG11IHsNCiAJc3RydWN0IHBlcmZfZXZlbnQgKmV2
ZW50c1tOVU1fQ09VTlRFUlNdOw0KIAlpbnQgYWN0aXZlX2V2ZW50czsNCiAJZW51bSBjcHVocF9z
dGF0ZSBjcHVocF9zdGF0ZTsNCisJY29uc3Qgc3RydWN0IGZzbF9kZHJfZGV2dHlwZV9kYXRhICpk
ZXZ0eXBlX2RhdGE7DQogCWludCBpcnE7DQogCWludCBpZDsNCiB9Ow0KQEAgLTEyOSw2ICsxNDMs
OCBAQCBzdGF0aWMgc3RydWN0IGF0dHJpYnV0ZSAqZGRyX3BlcmZfZXZlbnRzX2F0dHJzW10gPSB7
DQogCUlNWDhfRERSX1BNVV9FVkVOVF9BVFRSKHJlZnJlc2gsIDB4MzcpLA0KIAlJTVg4X0REUl9Q
TVVfRVZFTlRfQVRUUih3cml0ZSwgMHgzOCksDQogCUlNWDhfRERSX1BNVV9FVkVOVF9BVFRSKHJh
dy1oYXphcmQsIDB4MzkpLA0KKwlJTVg4X0REUl9QTVVfRVZFTlRfQVRUUihheGlkLXJlYWQsIDB4
NDEpLA0KKwlJTVg4X0REUl9QTVVfRVZFTlRfQVRUUihheGlkLXdyaXRlLCAweDQyKSwNCiAJTlVM
TCwNCiB9Ow0KIA0KQEAgLTEzOCw5ICsxNTQsMTEgQEAgc3RhdGljIHN0cnVjdCBhdHRyaWJ1dGVf
Z3JvdXAgZGRyX3BlcmZfZXZlbnRzX2F0dHJfZ3JvdXAgPSB7DQogfTsNCiANCiBQTVVfRk9STUFU
X0FUVFIoZXZlbnQsICJjb25maWc6MC03Iik7DQorUE1VX0ZPUk1BVF9BVFRSKGF4aV9pZCwgImNv
bmZpZzE6MC0zMSIpOw0KIA0KIHN0YXRpYyBzdHJ1Y3QgYXR0cmlidXRlICpkZHJfcGVyZl9mb3Jt
YXRfYXR0cnNbXSA9IHsNCiAJJmZvcm1hdF9hdHRyX2V2ZW50LmF0dHIsDQorCSZmb3JtYXRfYXR0
cl9heGlfaWQuYXR0ciwNCiAJTlVMTCwNCiB9Ow0KIA0KQEAgLTE5MCw2ICsyMDgsMjYgQEAgc3Rh
dGljIHUzMiBkZHJfcGVyZl9yZWFkX2NvdW50ZXIoc3RydWN0IGRkcl9wbXUgKnBtdSwgaW50IGNv
dW50ZXIpDQogCXJldHVybiByZWFkbF9yZWxheGVkKHBtdS0+YmFzZSArIENPVU5URVJfUkVBRCAr
IGNvdW50ZXIgKiA0KTsNCiB9DQogDQorc3RhdGljIGJvb2wgZGRyX3BlcmZfaXNfZmlsdGVyZWQo
c3RydWN0IHBlcmZfZXZlbnQgKmV2ZW50KQ0KK3sNCisJcmV0dXJuIGV2ZW50LT5hdHRyLmNvbmZp
ZyA9PSAweDQxIHx8IGV2ZW50LT5hdHRyLmNvbmZpZyA9PSAweDQyOw0KK30NCisNCitzdGF0aWMg
dTMyIGRkcl9wZXJmX2ZpbHRlcl92YWwoc3RydWN0IHBlcmZfZXZlbnQgKmV2ZW50KQ0KK3sNCisJ
cmV0dXJuIGV2ZW50LT5hdHRyLmNvbmZpZzE7DQorfQ0KKw0KK3N0YXRpYyBib29sIGRkcl9wZXJm
X2ZpbHRlcnNfY29tcGF0aWJsZShzdHJ1Y3QgcGVyZl9ldmVudCAqYSwNCisJCQkJCXN0cnVjdCBw
ZXJmX2V2ZW50ICpiKQ0KK3sNCisJaWYgKCFkZHJfcGVyZl9pc19maWx0ZXJlZChhKSkNCisJCXJl
dHVybiB0cnVlOw0KKwlpZiAoIWRkcl9wZXJmX2lzX2ZpbHRlcmVkKGIpKQ0KKwkJcmV0dXJuIHRy
dWU7DQorCXJldHVybiBkZHJfcGVyZl9maWx0ZXJfdmFsKGEpID09IGRkcl9wZXJmX2ZpbHRlcl92
YWwoYik7DQorfQ0KKw0KIHN0YXRpYyBpbnQgZGRyX3BlcmZfZXZlbnRfaW5pdChzdHJ1Y3QgcGVy
Zl9ldmVudCAqZXZlbnQpDQogew0KIAlzdHJ1Y3QgZGRyX3BtdSAqcG11ID0gdG9fZGRyX3BtdShl
dmVudC0+cG11KTsNCkBAIC0yMTYsNiArMjU0LDE1IEBAIHN0YXRpYyBpbnQgZGRyX3BlcmZfZXZl
bnRfaW5pdChzdHJ1Y3QgcGVyZl9ldmVudCAqZXZlbnQpDQogCQkJIWlzX3NvZnR3YXJlX2V2ZW50
KGV2ZW50LT5ncm91cF9sZWFkZXIpKQ0KIAkJcmV0dXJuIC1FSU5WQUw7DQogDQorCWlmIChwbXUt
PmRldnR5cGVfZGF0YS0+cXVpcmtzICYgRERSX0NBUF9BWElfSURfRklMVEVSKSB7DQorCQlpZiAo
IWRkcl9wZXJmX2ZpbHRlcnNfY29tcGF0aWJsZShldmVudCwgZXZlbnQtPmdyb3VwX2xlYWRlcikp
DQorCQkJcmV0dXJuIC1FSU5WQUw7DQorCQlmb3JfZWFjaF9zaWJsaW5nX2V2ZW50KHNpYmxpbmcs
IGV2ZW50LT5ncm91cF9sZWFkZXIpIHsNCisJCQlpZiAoIWRkcl9wZXJmX2ZpbHRlcnNfY29tcGF0
aWJsZShldmVudCwgc2libGluZykpDQorCQkJCXJldHVybiAtRUlOVkFMOw0KKwkJfQ0KKwl9DQor
DQogCWZvcl9lYWNoX3NpYmxpbmdfZXZlbnQoc2libGluZywgZXZlbnQtPmdyb3VwX2xlYWRlcikg
ew0KIAkJaWYgKHNpYmxpbmctPnBtdSAhPSBldmVudC0+cG11ICYmDQogCQkJCSFpc19zb2Z0d2Fy
ZV9ldmVudChzaWJsaW5nKSkNCkBAIC0yODksNiArMzM2LDE4IEBAIHN0YXRpYyBpbnQgZGRyX3Bl
cmZfZXZlbnRfYWRkKHN0cnVjdCBwZXJmX2V2ZW50ICpldmVudCwgaW50IGZsYWdzKQ0KIAlpbnQg
Y291bnRlcjsNCiAJaW50IGNmZyA9IGV2ZW50LT5hdHRyLmNvbmZpZzsNCiANCisJaWYgKHBtdS0+
ZGV2dHlwZV9kYXRhLT5xdWlya3MgJiBERFJfQ0FQX0FYSV9JRF9GSUxURVIpIHsNCisJCWludCBp
Ow0KKw0KKwkJZm9yIChpID0gMTsgaSA8IE5VTV9DT1VOVEVSUzsgaSsrKSB7DQorCQkJaWYgKHBt
dS0+ZXZlbnRzW2ldICYmDQorCQkJICAgICFkZHJfcGVyZl9maWx0ZXJzX2NvbXBhdGlibGUoZXZl
bnQsIHBtdS0+ZXZlbnRzW2ldKSkNCisJCQkJcmV0dXJuIC1FSU5WQUw7DQorCQl9DQorDQorCQl3
cml0ZWwoZXZlbnQtPmF0dHIuY29uZmlnMSwgcG11LT5iYXNlICsgQ09VTlRFUl9EUENSMSk7DQor
CX0NCisNCiAJY291bnRlciA9IGRkcl9wZXJmX2FsbG9jX2NvdW50ZXIocG11LCBjZmcpOw0KIAlp
ZiAoY291bnRlciA8IDApIHsNCiAJCWRldl9kYmcocG11LT5kZXYsICJUaGVyZSBhcmUgbm90IGVu
b3VnaCBjb3VudGVyc1xuIik7DQpAQCAtNDczLDYgKzUzMiw4IEBAIHN0YXRpYyBpbnQgZGRyX3Bl
cmZfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikNCiAJaWYgKCFuYW1lKQ0KIAkJ
cmV0dXJuIC1FTk9NRU07DQogDQorCXBtdS0+ZGV2dHlwZV9kYXRhID0gb2ZfZGV2aWNlX2dldF9t
YXRjaF9kYXRhKCZwZGV2LT5kZXYpOw0KKw0KIAlwbXUtPmNwdSA9IHJhd19zbXBfcHJvY2Vzc29y
X2lkKCk7DQogCXJldCA9IGNwdWhwX3NldHVwX3N0YXRlX211bHRpKENQVUhQX0FQX09OTElORV9E
WU4sDQogCQkJCSAgICAgIEREUl9DUFVIUF9DQl9OQU1FLA0KLS0gDQoyLjE3LjENCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
