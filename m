Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3520FA0146
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:08:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z9Yr9d/9WQqy9wlMXKg1eBKZ8y2KePNNdjKfdYAv4zE=; b=HU5BAcX4E5wYbP
	uVtyDsInur9/bvcY4gIetGT/q3NVyGP0Q/q81y1AQ5rFTLYHOmkTtabLlTpAJWT/O50bQ+i2MULI+
	j/4wKclw35QnH7deyQWazvb+2daSwkjf7kC9iWXmzyEUNW452MRhCjl7n3yIPl9kFAFK/gOoCE5c9
	VY6WXKKxvmwQ5Le403AjVJXv92Cpum0yPT6YIUQgh/wAtTsaipU9rBlGxgoWTe8dPI730xk4WktLo
	eT11lQgVu6mbmpx5i1J8qcT5zFQo+WHfbrwiOpdYFD+Kf49ZJuPp20y1oepVnrQTg7fSe6d42xF11
	o/FMyK/BQ7HEspBeojmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2wkW-0002lw-GU; Wed, 28 Aug 2019 12:08:28 +0000
Received: from mail-eopbgr150054.outbound.protection.outlook.com
 ([40.107.15.54] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2wk3-0002bi-Hr
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 12:08:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ChadZg9qJNAzmKJgFIrxVfYgCqzl47L989DqOVNrHp0tnd1kIsdsGnKYu1BSoato64NoO+QuOfkgkSGdpVbQiz7ORTTdODdY9w5GthbAWb//pDrRKxz8wWROpud2esdrq74cNiPzuDeJPsXBP3EEV27pLYOp+kvkWfjj96EiUqhADaiGbDI3/riqdGoE+9fo5nHgDg3Y9SPj+MNibOuA2TOJ82apcpY3sAmG4iHg2CIV6cMBCmTVFfyk+6RgmFIb7w6qxe74WjkozYg+VrCHtgNpqzZKWEHfS/nNjYjLi797zSRM3MvlHZj0ht579zrCq6P+hQAT91JWvekGz8uA8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=splZpLRIg307YZ8ZzcSuD2I78HnOFmZqTKJvaamvXK4=;
 b=k5vlJdjRk2kiokbiEXhwMwwPToVwAXQf6OLQqigNZsj+yVEeUUIQ4mCsYJvVPjX9aeB0V9lE/Qvn/5hQ/YdyvoXLr5/vxVr38Y4qYxfYO8lVkSfhzfXfw2MlQKJntKiQi5tv0J7Znhwbo44EagtG4sJHMUIXDyZDvDRQQPiAXrY+kThvSHGQddtboN582mklP+PB/TnzC6d7j0snROe+aXjX++MBmPyssYFvGCbeQ22z1u/fSsKjeaS+kk3nUDWejmVzNtK0mz7JgKVkAj3WEdepaVnFMyP88wyFZ1ihqAJKGKuGRwYmCOQzROcMDW+0wb+V/Jj0Mo1gj4V0Ki7eDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=splZpLRIg307YZ8ZzcSuD2I78HnOFmZqTKJvaamvXK4=;
 b=V7VozV9lKyzci6mgns9XdUIAG5Ar3fOTu6ExyhoEqYORqVRdO9xREVbnlZQ8/aRDkzkGOyPRBsN8WWYtkmzKFBjOozcP0wH7kcU2bfLfVeOhNkVtw5qMoNBVXSzZayZlZrV3Gep015QpTcpXsm49ZHancDefULeSsMQvQtdiBRM=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5402.eurprd04.prod.outlook.com (20.178.104.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.19; Wed, 28 Aug 2019 12:07:56 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f%4]) with mapi id 15.20.2199.021; Wed, 28 Aug 2019
 12:07:56 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "mark.rutland@arm.com" <mark.rutland@arm.com>, "will@kernel.org"
 <will@kernel.org>, "robin.murphy@arm.com" <robin.murphy@arm.com>
Subject: [PATCH V9 2/3] Documentation: admin-guide: perf: add i.MX8 ddr pmu
 user doc
Thread-Topic: [PATCH V9 2/3] Documentation: admin-guide: perf: add i.MX8 ddr
 pmu user doc
Thread-Index: AQHVXZk5JlxofySHm0WNpgZ0+Op51w==
Date: Wed, 28 Aug 2019 12:07:56 +0000
Message-ID: <20190828120524.9038-2-qiangqing.zhang@nxp.com>
References: <20190828120524.9038-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20190828120524.9038-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR01CA0127.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::31) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5ec4d1b6-52eb-4e84-645d-08d72bb05c41
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB7PR04MB5402; 
x-ms-traffictypediagnostic: DB7PR04MB5402:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5402D96C0AF3D4D616F79DF0E6A30@DB7PR04MB5402.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(366004)(376002)(346002)(54534003)(199004)(189003)(110136005)(25786009)(86362001)(6512007)(2501003)(256004)(2201001)(36756003)(3846002)(53936002)(6116002)(66946007)(66446008)(66556008)(66476007)(66066001)(1076003)(71190400001)(71200400001)(316002)(14444005)(64756008)(2616005)(81156014)(186003)(6486002)(478600001)(54906003)(486006)(8676002)(11346002)(8936002)(446003)(7736002)(6436002)(305945005)(99286004)(52116002)(76176011)(476003)(386003)(81166006)(6506007)(2906002)(102836004)(50226002)(5660300002)(4326008)(14454004)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5402;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iiffY2tl64IrohhwtQfFbxGCXytHdgQHZezCnHCjJVmOcTCuS0Z/MuBjvxYtmPZk6jshu6UwVkQQAZXt8ZsrhAQ8YxGsL1PcYr9+ge65Z/wNCq7wHE9megO2twmos5zoZjT5N+EkUK6XS2yNXO6fmAdDy4v6fMY+c0dVvt6lfISLzAwgk4JdLprvfl3Jn4sgIkNUUk1/qQwmWYej7avxbU5ChDIvUeE0lw9RuGHlkmkJkzi4Za5wp7O1GngqG2PN/iGG/EOsmj/kuiu1beJvyWlR8Hnj4x1juAV/5Ia3zXMkPlybJMuw7jyP1gYFAJebY8wtaEDDe5OlPtzyr+cAiL0OCVokQFm/erkNSnJYzGiekV3PwHo9kljJndhTZNFr8QaMc2zqa/8ixoAfShxtPtJreDrkCrWctrQCgXS4Srg=
Content-ID: <13E7EB8CC8632742B82CC28E5BEF1FCF@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ec4d1b6-52eb-4e84-645d-08d72bb05c41
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 12:07:56.0451 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EJlnLSHgFQeuZTFxd32/5X1MYeeSgq4Q9vDVlfJeA0yXRaInjQ872Vu5gfcBZo4DOuMIT9e0GDQMtLuijW+ITQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5402
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_050759_593131_A44AD9C2 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

QWRkIGkuTVg4IGRkciBwbXUgdXNlciBkb2MuDQoNClNpZ25lZC1vZmYtYnk6IEpvYWtpbSBaaGFu
ZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQoNCi0tLQ0KQ2hhbmdlTG9nOg0KVjEgLT4gVjQ6
DQoJKiBuZXcgYWRkIGluIFY0Lg0KVjQgLT4gVjU6DQoJKiBubyBjaGFuZ2UuDQpWNSAtPiBWNjoN
CgkqIGNoYW5nZSB0aGUgZXZlbnQgbmFtZQ0KVjYgLT4gVjc6DQoJKiBubyBjaGFuZ2UuDQpWNyAt
PiBWODoNCgkqIGltcHJvdmUgdGhlIGRvYywgYWRkIG1vcmUgZGV0YWlscy4NClY4IC0+IFY5Og0K
CSogaW1wcm92ZSB0aGUgZG9jLg0KLS0tDQogRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9wZXJm
L2lteC1kZHIucnN0IHwgNTIgKysrKysrKysrKysrKysrKysrKysrKw0KIDEgZmlsZSBjaGFuZ2Vk
LCA1MiBpbnNlcnRpb25zKCspDQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vYWRt
aW4tZ3VpZGUvcGVyZi9pbXgtZGRyLnJzdA0KDQpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9h
ZG1pbi1ndWlkZS9wZXJmL2lteC1kZHIucnN0IGIvRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9w
ZXJmL2lteC1kZHIucnN0DQpuZXcgZmlsZSBtb2RlIDEwMDY0NA0KaW5kZXggMDAwMDAwMDAwMDAw
Li41MTdhMjA1YWJhZDYNCi0tLSAvZGV2L251bGwNCisrKyBiL0RvY3VtZW50YXRpb24vYWRtaW4t
Z3VpZGUvcGVyZi9pbXgtZGRyLnJzdA0KQEAgLTAsMCArMSw1MiBAQA0KKz09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQorRnJlZXNjYWxlIGkuTVg4
IEREUiBQZXJmb3JtYW5jZSBNb25pdG9yaW5nIFVuaXQgKFBNVSkNCis9PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KKw0KK1RoZXJlIGFyZSBubyBw
ZXJmb3JtYW5jZSBjb3VudGVycyBpbnNpZGUgdGhlIERSQU0gY29udHJvbGxlciwgc28gcGVyZm9y
bWFuY2UNCitzaWduYWxzIGFyZSBicm91Z2h0IG91dCB0byB0aGUgZWRnZSBvZiB0aGUgY29udHJv
bGxlciB3aGVyZSBhIHNldCBvZiA0IHggMzIgYml0DQorY291bnRlcnMgaXMgaW1wbGVtZW50ZWQu
IFRoaXMgaXMgY29udHJvbGxlZCBieSB0aGUgQ1NWIG1vZGVzIHByb2dyYW1lZCBpbiBjb3VudGVy
DQorY29udHJvbCByZWdpc3RlciB3aGljaCBjYXVzZXMgYSBsYXJnZSBudW1iZXIgb2YgUEVSRiBz
aWduYWxzIHRvIGJlIGdlbmVyYXRlZC4NCisNCitTZWxlY3Rpb24gb2YgdGhlIHZhbHVlIGZvciBl
YWNoIGNvdW50ZXIgaXMgZG9uZSB2aWEgdGhlIGNvbmZpZyByZWdpc3RlcnMuIFRoZXJlDQoraXMg
b25lIHJlZ2lzdGVyIGZvciBlYWNoIGNvdW50ZXIuIENvdW50ZXIgMCBpcyBzcGVjaWFsIGluIHRo
YXQgaXQgYWx3YXlzIGNvdW50cw0KK+KAnHRpbWXigJ0gYW5kIHdoZW4gZXhwaXJlZCBjYXVzZXMg
YSBsb2NrIG9uIGl0c2VsZiBhbmQgdGhlIG90aGVyIGNvdW50ZXJzIGFuZCBhbg0KK2ludGVycnVw
dCBpcyByYWlzZWQuIElmIGFueSBvdGhlciBjb3VudGVyIG92ZXJmbG93cywgaXQgY29udGludWVz
IGNvdW50aW5nLCBhbmQNCitubyBpbnRlcnJ1cHQgaXMgcmFpc2VkLg0KKw0KK1RoZSAiZm9ybWF0
IiBkaXJlY3RvcnkgZGVzY3JpYmVzIGZvcm1hdCBvZiB0aGUgY29uZmlnIChldmVudCBJRCkgYW5k
IGNvbmZpZzENCisoQVhJIGZpbHRlcmluZykgZmllbGRzIG9mIHRoZSBwZXJmX2V2ZW50X2F0dHIg
c3RydWN0dXJlLCBzZWUgL3N5cy9idXMvZXZlbnRfc291cmNlLw0KK2RldmljZXMvaW14OF9kZHIw
L2Zvcm1hdC8uIFRoZSAiZXZlbnRzIiBkaXJlY3RvcnkgZGVzY3JpYmVzIHRoZSBldmVudHMgdHlw
ZXMNCitoYXJkd2FyZSBzdXBwb3J0ZWQgdGhhdCBjYW4gYmUgdXNlZCB3aXRoIHBlcmYgdG9vbCwg
c2VlIC9zeXMvYnVzL2V2ZW50X3NvdXJjZS8NCitkZXZpY2VzL2lteDhfZGRyMC9ldmVudHMvLg0K
KyAgZS5nLjo6DQorICAgICAgICBwZXJmIHN0YXQgLWEgLWUgaW14OF9kZHIwL2N5Y2xlcy8gY21k
DQorICAgICAgICBwZXJmIHN0YXQgLWEgLWUgaW14OF9kZHIwL3JlYWQvLGlteDhfZGRyMC93cml0
ZS8gY21kDQorDQorQVhJIGZpbHRlcmluZyBpcyBvbmx5IHVzZWQgYnkgQ1NWIG1vZGVzIDB4NDEg
KGF4aWQtcmVhZCkgYW5kIDB4NDIgKGF4aWQtd3JpdGUpDQordG8gY291bnQgcmVhZGluZyBvciB3
cml0aW5nIG1hdGNoZXMgZmlsdGVyIHNldHRpbmcuIEZpbHRlciBzZXR0aW5nIGlzIHZhcmlvdXMN
Citmcm9tIGRpZmZlcmVudCBEUkFNIGNvbnRyb2xsZXIgaW1wbGVtZW50YXRpb25zLCB3aGljaCBp
cyBkaXN0aW5ndWlzaGVkIGJ5IHF1aXJrcw0KK2luIHRoZSBkcml2ZXIuDQorDQorKiBXaXRoIERE
Ul9DQVBfQVhJX0lEX0ZJTFRFUiBxdWlyay4NCisgIEZpbHRlciBpcyBkZWZpbmVkIHdpdGggdHdv
IGNvbmZpZ3VyYXRpb24gcGFydHM6DQorICAtLUFYSV9JRCBkZWZpbmVzIEF4SUQgbWF0Y2hpbmcg
dmFsdWUuDQorICAtLUFYSV9NQVNLSU5HIGRlZmluZXMgd2hpY2ggYml0cyBvZiBBeElEIGFyZSBt
ZWFuaW5nZnVsIGZvciB0aGUgbWF0Y2hpbmcuDQorICAgICAgICAw77yaY29ycmVzcG9uZGluZyBi
aXQgaXMgbWFza2VkLg0KKyAgICAgICAgMTogY29ycmVzcG9uZGluZyBiaXQgaXMgbm90IG1hc2tl
ZCwgaS5lLiB1c2VkIHRvIGRvIHRoZSBtYXRjaGluZy4NCisNCisgIEFYSV9JRCBhbmQgQVhJX01B
U0tJTkcgYXJlIG1hcHBlZCBvbiBEUENSMSByZWdpc3RlciBpbiBwZXJmb3JtYW5jZSBjb3VudGVy
Lg0KKyAgV2hlbiBub24tbWFza2VkIGJpdHMgYXJlIG1hdGNoaW5nIGNvcnJlc3BvbmRpbmcgQVhJ
X0lEIGJpdHMgdGhlbiBjb3VudGVyIGlzDQorICBpbmNyZW1lbnRlZC4gUGVyZiBjb3VudGVyIGlz
IGluY3JlbWVudGVkIGlmDQorICAgICAgICAgIEF4SUQgJiYgQVhJX01BU0tJTkcgPT0gQVhJX0lE
ICYmIEFYSV9NQVNLSU5HDQorDQorICBUaGlzIGZpbHRlciBkb2Vzbid0IHN1cHBvcnQgZmlsdGVy
IGRpZmZlcmVudCBBWEkgSUQgZm9yIGF4aWQtcmVhZCBhbmQgYXhpZC13cml0ZQ0KKyAgZXZlbnQg
YXQgdGhlIHNhbWUgdGltZSBhcyB0aGlzIGZpbHRlciBpcyBzaGFyZWQgYmV0d2VlbiBjb3VudGVy
cy4NCisgIGUuZy46Og0KKyAgICAgICAgcGVyZiBzdGF0IC1hIC1lIGlteDhfZGRyMC9heGlkLXJl
YWQsYXhpX21hc2s9MHhNTU1NLGF4aV9pZD0weEREREQvIGNtZA0KKyAgICAgICAgcGVyZiBzdGF0
IC1hIC1lIGlteDhfZGRyMC9heGlkLXdyaXRlLGF4aV9tYXNrPTB4TU1NTSxheGlfaWQ9MHhERERE
LyBjbWQNCisNCisgIE5PVEU6IGF4aV9tYXNrIGlzIGludmVydGVkIGluIHVzZXJzcGFjZShpLmUu
IHNldCBiaXRzIGFyZSBiaXRzIHRvIG1hc2spLCBhbmQNCisgIGl0IHdpbGwgYmUgcmV2ZXJ0ZWQg
aW4gZHJpdmVyIGF1dG9tYXRpY2FsbHkuIHNvIHRoYXQgdGhlIHVzZXIgY2FuIGp1c3Qgc3BlY2lm
eQ0KKyAgYXhpX2lkIHRvIG1vbml0b3IgYSBzcGVjaWZpYyBpZCwgcmF0aGVyIHRoYW4gaGF2aW5n
IHRvIHNwZWNpZnkgYXhpX21hc2suDQorICBlLmcuOjoNCisgICAgICAgIHBlcmYgc3RhdCAtYSAt
ZSBpbXg4X2RkcjAvYXhpZC1yZWFkLGF4aV9pZD0weDEyLyBjbWQsIHdoaWNoIHdpbGwgbW9uaXRv
ciBBUklEPTB4MTINCi0tIA0KMi4xNy4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
