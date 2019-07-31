Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDAB7BE9C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 12:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dqmR1ySynvBpLbr5eWwKkA/yOPd7frrX/kWorz4TosA=; b=j4vc6FvX14mcUp
	bscZAYCyxzpFMsi7izgIXchPHBFpk7D+pTtxJsALq6ElRduJBFWZ2GWTj1+5tMg2LU1MQaVbJiqx+
	OQkjsMiTAbNuckKB4ZZ563ARA1TwycA31kzQnzhZ8RUe+7oGiqt3WYgZgMGhJIN2qZULBHSNRDmDf
	kS0z5/TTSiLE3pxRtXxW68EzydIBkN3Xcm4NumfcE5eTDunki9HRTK9JQLUSqOmogTzZnh3gqpHyB
	oNUUfSpXQ99cVv412+jfwFb86r6X9D9uGFMF1FTa8MYRiP6y6QvStKSm9Dxf/Q/1ZRSXw3oxsfVnt
	xMjbxaxNnEtvf6h3PWtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsm7y-0002lU-KD; Wed, 31 Jul 2019 10:46:38 +0000
Received: from mail-ve1eur01on061d.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::61d]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsm7e-0002ZO-3P
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 10:46:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GxJiuip5o3PhUD8InrvCLfXOZoAkb2pZtRs1tzxLMNU9Jive/NK8pFlG9QZZMx4bMrUfaDTlM7oKQDiVcWF8/Aj7LG7QtoSUn3bHyzuVoBWEM3QsuFtQz486/CXjTb+z1EB47C/r1cRX1v1cprVDwulThDvrWqv7EERddDJUm6VfIapbgtYZeS+DyF30IZhz241NXch+YrQcQ/ZJDa3kp7Qkfc+A45vc8vjhPime3f65+QGQJhMGImb8oAV3CGCevjN9uMPKKnzSWOoO/JA6zcTFDlvT5/uJWZXoWjkhpfEf1vpfT30s6rdxpJzzCiKGmIth+Z9DCZvCTYvzXcVJEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vYe6gN/Y9cfvc5F2tnO3dUCdzvkuZMZoZy1Qo8JpNwE=;
 b=LTbMavRO2vGqkNbjgTrjJ7uAWzHZNUYAbKPHvIld64pxVGeFop27/YDW+6dn8T+HA7Viz334FXOG84/zHYL16qAMp5VKyfaH4r6teBk11uATE0J0qF45M/5xHLN9jzcPH7yWay+/O4RzL3qxWdAU4Pu5IbyR3iYOKnoIxSVtcM019ukY2guxHKHiKBtTSj+uWpiwM1/YgTFOYGa+JO2jYmdI0eIuAmlE0MVpFgxMs/7aWwK/h1BqU+TaJN7fYBbHz/ePo2AT8GfhSuRPuMWPHlxSf+SvE0JoKGE4NIyrjHZWWFPBCSqV7TtyGbKo3YMtFAbkwRmDN9zpSCSYtqILDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vYe6gN/Y9cfvc5F2tnO3dUCdzvkuZMZoZy1Qo8JpNwE=;
 b=i1iydFkR1sDC1QI+ZC6WMcy1aq3TbyIcSB7C+oho9S1gAU9QicCN6Qq6k/Nto1CcScLrc5FAuKFoEN5SEAIbTO7TrOcLocuMfFdSp5TkWIbbfpzBn6w+Zz1TNt8p0e6wSxL1Xldny2WnklOb25J1jI45uxMbqbx5dLuZxa7Mvhg=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4778.eurprd04.prod.outlook.com (20.176.233.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.11; Wed, 31 Jul 2019 10:46:14 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::6553:8d04:295c:774b]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::6553:8d04:295c:774b%5]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 10:46:14 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "robin.murphy@arm.com" <robin.murphy@arm.com>, "will@kernel.org"
 <will@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li
 <frank.li@nxp.com>
Subject: [PATCH V4 2/2] Documentation: admin-guide: perf: add i.MX8 ddr pmu
 user doc
Thread-Topic: [PATCH V4 2/2] Documentation: admin-guide: perf: add i.MX8 ddr
 pmu user doc
Thread-Index: AQHVR40sm2gF1783/0m0I6BiO+hsYg==
Date: Wed, 31 Jul 2019 10:46:13 +0000
Message-ID: <20190731104351.3117-2-qiangqing.zhang@nxp.com>
References: <20190731104351.3117-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20190731104351.3117-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR04CA0194.apcprd04.prod.outlook.com
 (2603:1096:4:14::32) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f46b56be-75cc-43ee-280a-08d715a44ed2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB7PR04MB4778; 
x-ms-traffictypediagnostic: DB7PR04MB4778:
x-microsoft-antispam-prvs: <DB7PR04MB4778E52AE6D727237E5A9EDDE6DF0@DB7PR04MB4778.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(366004)(346002)(376002)(189003)(199004)(54534003)(7736002)(64756008)(478600001)(66476007)(36756003)(6636002)(316002)(66066001)(2501003)(3846002)(6116002)(76176011)(110136005)(52116002)(54906003)(5660300002)(50226002)(6512007)(99286004)(6436002)(186003)(6486002)(81166006)(26005)(68736007)(2201001)(81156014)(102836004)(6506007)(8676002)(386003)(86362001)(8936002)(1076003)(25786009)(71200400001)(446003)(11346002)(486006)(53936002)(2906002)(14444005)(305945005)(71190400001)(2616005)(66946007)(66556008)(4326008)(66446008)(476003)(14454004)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4778;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9NP/NSVdKWxPbnI1etAkGTqh3P44YqPFEKYb9S/mICZQ1dR+cQ+Je2foetzvpXbj7r0MI6+J6OgcPHm0fsyEU8S3uJws2xOeT/GnHTNPi4wHDbqqjPxmw6+eqilNJ8+U6MvigCLDsPNqp/YAoaimMG4NMOoRekwY/MSqHnYcXYPaKzk41VtCbscPYsY4aETjLskOIkdmph/6QWeSyZqu40LTVXP+f9Vj06ZpSZ/RX0RgrpkXwQmV5URRlE7lxip5URxZbz4OYWyeNGXcdLWPq3ILWQAGZA+QqUHzT5ApxBK4nVY6Nk3xJdiZYAw+1zn5EF5f12JOhspZZ4LeqxEqA7HJ8djYk+ulkHtzlRV6bMjlpIbbOG/51iBA4qVbGzVtUaLICQ2rqCsmdqPuFyatL+lKTTUNdP21rG274AQiGSE=
Content-ID: <8067A104D5B7824B910E1425671D07CE@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f46b56be-75cc-43ee-280a-08d715a44ed2
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 10:46:13.9328 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qiangqing.zhang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4778
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_034618_142103_B390AA18 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:61d listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Joakim Zhang <qiangqing.zhang@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGkuTVg4IGRkciBwbXUgdXNlciBkb2MuDQoNCkNoYW5nZUxvZzoNClYxIC0+IFY0Og0KCSog
bmV3IGFkZCBpbiBWNC4NCg0KU2lnbmVkLW9mZi1ieTogSm9ha2ltIFpoYW5nIDxxaWFuZ3Fpbmcu
emhhbmdAbnhwLmNvbT4NCi0tLQ0KIERvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvcGVyZi9pbXgt
ZGRyLnJzdCB8IDMwICsrKysrKysrKysrKysrKysrKysrKysNCiAxIGZpbGUgY2hhbmdlZCwgMzAg
aW5zZXJ0aW9ucygrKQ0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2FkbWluLWd1
aWRlL3BlcmYvaW14LWRkci5yc3QNCg0KZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vYWRtaW4t
Z3VpZGUvcGVyZi9pbXgtZGRyLnJzdCBiL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvcGVyZi9p
bXgtZGRyLnJzdA0KbmV3IGZpbGUgbW9kZSAxMDA2NDQNCmluZGV4IDAwMDAwMDAwMDAwMC4uOWJl
YjQ3ZTg2YzljDQotLS0gL2Rldi9udWxsDQorKysgYi9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRl
L3BlcmYvaW14LWRkci5yc3QNCkBAIC0wLDAgKzEsMzAgQEANCis9PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQorRnJlZXNjYWxlIGkuTVg4IEREUiBQ
ZXJmb3JtYW5jZSBNb25pdG9yaW5nIFVuaXQgKFBNVSkNCis9PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQorDQorVGhlcmUgYXJlIG5vIHBlcmZvcm1h
bmNlIGNvdW50ZXJzIGluc2lkZSB0aGUgRFJBTSBjb250cm9sbGVyLCBzbyBwZXJmb3JtYW5jZQ0K
K3NpZ25hbHMgYXJlIGJyb3VnaHQgb3V0IHRvIHRoZSBlZGdlIG9mIHRoZSBjb250cm9sbGVyIHdo
ZXJlIGEgc2V0IG9mIDQgeCAzMiBiaXQNCitjb3VudGVycyBpcyBpbXBsZW1lbnRlZC4gVGhpcyBp
cyBjb250cm9sbGVkIGJ5IHRoZSBQZXJmb3JtYW5jZSBsb2cgb24gcGFyYW1ldGVyDQord2hpY2gg
Y2F1c2VzIGEgbGFyZ2UgbnVtYmVyIG9mIFBFUkYgc2lnbmFscyB0byBiZSBnZW5lcmF0ZWQuDQor
DQorU2VsZWN0aW9uIG9mIHRoZSB2YWx1ZSBmb3IgZWFjaCBjb3VudGVyIGlzIGRvbmUgdmlhIHRo
ZSBjb25maWcgcmVnaXN0aWVycy4gVGhlcmUNCitpcyBvbmUgcmVnaXN0ZXIgZm9yIGVhY2ggY291
bnRlci4gQ291bnRlciAwIGlzIHNwZWNpYWwgaW4gdGhhdCBpdCBhbHdheXMgY291bnRzDQor4oCc
dGltZeKAnSBhbmQgd2hlbiBleHBpcmVkIGNhdXNlcyBhIGxvY2sgb24gaXRzZWxmIGFuZCB0aGUg
b3RoZXIgY291bnRlcnMgYW5kIGFuDQoraW50ZXJydXB0IGllIGVuYWJsZSBvZiBjb3VudGVyIDAg
aXMgYSBnbG9iYWwgZnVuY3Rpb24uDQorDQorVGhlICJmb3JtYXQiIGRpcmVjdG9yeSBkZXNjcmli
ZXMgZm9ybWF0IG9mIHRoZSBjb25maWcgKGV2ZW50IElEKSBhbmQgY29uZmlnMQ0KKyhBWEkgSUQg
ZmlsdGVyKSBmaWVsZHMgb2YgdGhlIHBlcmZfZXZlbnRfYXR0ciBzdHJ1Y3R1cmUsIHNlZSAvc3lz
L2J1cy9ldmVudF9zb3VyY2UvDQorZGV2aWNlcy9pbXg4X2RkcjAvZm9ybWF0Ly4gVGhlICJldmVu
dHMiIGRpcmVjdG9yeSBkZXNjcmliZXMgdGhlIGV2ZW50cyB0eXBlcw0KK2hhcmR3YXJlIHN1cHBv
cnRlZCB0aGF0IGNhbiBiZSB1c2VkIHdpdGggcGVyZiB0b29sLCBzZWUgL3N5cy9idXMvZXZlbnRf
c291cmNlLw0KK2RldmljZXMvaW14OF9kZHIwL2V2ZW50cy8uDQorDQorQVhJIGZpbHRlcmluZyBp
cyB1c2VkIGJ5IENTViBtb2RlcyAweDQxIChheGktaWQtcmVhZCBldmVudCkgYW5kIDB4NDIgKGF4
aS1pZC13cml0ZQ0KK2V2ZW50KSB0byBjb3VudCByZWFkcyBvciB3cml0ZXMgbWF0Y2hpbmcgZmls
dGVyIHNldHRpbmcuIFJlYWQgYW5kIHdyaXRlIEFYSSBJRA0KK2ZpbHRlciBtdXN0IGhhdmUgdGhl
IHNhbWUgdmFsdWUgaWYgeW91IHdhbnQgdG8gc3BlY2lmeSB0aGVtIGF0IHRoZSBzYW1lIHRpbWUg
YXMNCit0aGlzIGZpbHRlciBpcyBzaGFyZWQgYmV0d2VlbiBjb3VudGVycy4NCisNCitFeGFtcGxl
IGZvciBwZXJmIHRvb2wgdXNlOjoNCisNCisgICAgICAgIHBlcmYgc3RhdCAtZSBpbXg4X2RkcjAv
Y3ljbGVzLyBzbGVlcCAxDQorICAgICAgICBwZXJmIHN0YXQgLWUgaW14OF9kZHIwL3JlYWQvLGlt
eDhfZGRyMC93cml0ZS8gc2xlZXAgMQ0KKyAgICAgICAgcGVyZiBzdGF0IC1lIGlteDhfZGRyMC9h
eGktaWQtcmVhZCxheGlfaWQ9MHhNTU1NRERERC8saW14OF9kZHIwL2F4aS1pZC13cml0ZSxheGlf
aWQ9MHhNTU1NRERERC8gc2xlZXAgMQ0KLS0gDQoyLjE3LjENCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
