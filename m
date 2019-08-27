Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 704FA9DBAE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 04:40:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cltdl8d04tGaF1OWx6kZDnUeSYylJCFigCUF508fwX8=; b=g8KVELphuo5mr6
	nCoXY6e+udxVJs12bkfaSOiSsWwX3zWBvWhXe32XcV5UqJ7+AQHFxo/IBBywZK133q5fDgH3PO4n3
	AkLFqgZkxyh38XK4D49GjCXmZQdgD7bgxgXOT12+et7ou86kAeMZwsYy4kUt+sxbR5UQdM0Xxlfb2
	Z4WUOlffm4yegyDrsM7Lt7nhPveONNLsDqRlBY27kvfOsdP37TaLWMGCHjyp6XKN4ZrB7pHsA6wbO
	mgOki+LkYZM/dEK2VaJpQEqy39DUFBdoc4Ao3380K19oYgp5I21yKEFSptDTxy+lIPtTyOou6VXpR
	0oc5Jzj9QBOVtki+Yi4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ROj-0006kH-6q; Tue, 27 Aug 2019 02:39:53 +0000
Received: from mail-eopbgr10068.outbound.protection.outlook.com ([40.107.1.68]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ROT-0006jM-MR
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 02:39:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VAYyk/9rW+z+k6/WzwUx7QjUTwz2JsOvo7cnsouu88o1gTFc7BgLFmBbSJp9V6AtAfInj9SCKytHo8+F6TIJX4a3rso85v3/p6v13JrO2iI00iKdPv3RBZSTQHAZlfTHmdud4AqHCCU+jOsRgRftpXgC4FH3ga1CP6qyi64KvzZbqe+oyd8VqvyD7jEi5VbK+mImnqt1x9J7/gObBdKXhstDeYaGNeNdVBooWT3ECzCtQYjU6oORxWynEAFK5gsLFLp7oMSTi8XeZ582kIyRBxqb6iO54Gyp6dSXdkOLVvcRbGq5ryvSfJDqFme5WgvOLwn3H3GFWwC5TwLPyskHMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R9Z0QoMrXT0usoqL45d32K3osRrx8qTbARtAiwpKobw=;
 b=BO2c0OdWsF+sU77po8NOobgLeLat8Ov6WZR7ujQb/gWataEVwyZgOZ634MYk2MV4Jbg+dqIwJ+7tYcg6pr/DZ/Y+09+6K0TX7MO9oIdkHTeP9iwpjQdN1Ww7kHKTpJUCG2mx/0f2YDB/Za9K8hSGc5Zs9bxzjGTs26yo2rRDla0QkgoKpwsLibtRwlB5UZRlackUsSydQovSjHAKLd2aWcQx1h4aWEBP7CyfK0/30ZRYbJ11XHbPkr7tNEOM23gQnf7N25k5Mhj7dV84emhbsizxwxah55noPxvWVLPLjI0q7Ruk89PyR5If1QYF0e58lZjnlmAfcmlGgoOfgOrJFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R9Z0QoMrXT0usoqL45d32K3osRrx8qTbARtAiwpKobw=;
 b=jzbxOErg+GzaaQFIOuPIvlADwQvxMe+gpWNQ5qW1GJ53PfVlR0WKo1FDFUqsN+bNYu4fFI3bYwGgTP7Ctituje/+Kjc+ocZnM5euQYfiLhWJchCHzU2vIbkwzNIT4A98FpzsNLYPSvwcGd4r9NtVRu56+4V8Qc0GDqRDmNhhzAU=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4156.eurprd04.prod.outlook.com (52.134.110.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 02:39:33 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f%4]) with mapi id 15.20.2199.021; Tue, 27 Aug 2019
 02:39:33 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "mark.rutland@arm.com" <mark.rutland@arm.com>, "will@kernel.org"
 <will@kernel.org>, "robin.murphy@arm.com" <robin.murphy@arm.com>
Subject: [PATCH V7 1/3] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Topic: [PATCH V7 1/3] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Index: AQHVXICo1nGwvEcfb0GCUPTjY3vD1A==
Date: Tue, 27 Aug 2019 02:39:32 +0000
Message-ID: <20190827023557.7071-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR01CA0111.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::15) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9d607097-2405-400e-2792-08d72a97cada
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB7PR04MB4156; 
x-ms-traffictypediagnostic: DB7PR04MB4156:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4156ACA660F0899A74596F77E6A00@DB7PR04MB4156.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(376002)(346002)(136003)(39860400002)(54534003)(189003)(199004)(99286004)(81156014)(81166006)(6506007)(386003)(26005)(71200400001)(71190400001)(1076003)(102836004)(25786009)(2906002)(6116002)(8676002)(186003)(36756003)(7736002)(3846002)(8936002)(66066001)(14444005)(256004)(52116002)(316002)(110136005)(54906003)(14454004)(50226002)(4326008)(478600001)(2201001)(5660300002)(53936002)(6436002)(486006)(476003)(2616005)(6486002)(66556008)(305945005)(86362001)(2501003)(66946007)(66446008)(64756008)(66476007)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4156;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nzt7JzeSxiKMnNfopHbgZ0kgpKoDZGqxc7T0aT9Wvl2c1YR0hm+D7khVzFXt/y4L0KVHd2joRWWum0/d7cy6xalhLl+rlS5QAgZ73Ovy8sK8CUiWdGPKqv0ORhbBIT366H/lIuQIUDyOOjxvU/q9m2zxe+vZaiWZJXBKEZ9MUQApW98vpjHTsZrQm6q/npandMx3VTO7FLqJNVNrfwi6Q89wJgp79YnfqOdYdewVtIUeIeXkCIWGQsj8UJp09j5LxCNBdDG/4+/pkN7dKeLGzEUKBEMcZOL9cKAJeuVuzQrt99xXsjus5vcLOZzJmD9NI6K+oZqxgAK6lcA6j2UqqPp5F0+pSB803tPiSiI9obnpC6H7+hOwo3Hxdl7HPeBNqfgC5FSudg+1EXSygLUoEweBYCUeFOzhYG/TKb0xjss=
Content-ID: <457C956E40AE814DA4EBBED1A24D4422@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d607097-2405-400e-2792-08d72a97cada
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 02:39:32.9996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Soz2zuLLG6ByMDdp2TyYfz0IXcHN4Hn3rsa3YJTJ5CK4nt51zrjzmm5UGblK+/HRv/RrkxWIdn8xf64wpbEAQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_193937_743695_2428CFDA 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
IC1lIGlteDhfZGRyMC9heGlkLXJlYWQsYXhpX2lkPTB4MTIvIGNtZCwgd2hpY2ggd2lsbCBtb25p
dG9yIEFSSUQ9MHgxMg0KDQpOT1RFOiBBWElfTUFTS0lORyBpcyBpbnZlcnRlZCBhdCBkcml2ZXIo
aS5lLiBzZXQgYml0cyBhcmUgYml0cyB0byBtYXNrKSwgc28NCnRoYXQgdGhlIHVzZXIgY2FuIGp1
c3Qgc3BlY2lmeSBheGlfaWQgdG8gbW9uaXRvciBhIHNwZWNpZmljIGlkLCByYXRoZXIgdGhhbg0K
aGF2aW5nIHRvIHNwZWNpZnkgYXhpX2lkPTB4ZmZmZjxpZD4uDQoNCkNoYW5nZUxvZzoNClYxIC0+
IFYyOg0KCSogYWRkIGVycm9yIGxvZyBpZiB1c2VyIHNwZWNpZmllcyByZWFkL3dyaXRlIEFYSSBJ
RCBmaWx0ZXIgYXQNCgl0aGUgc2FtZSB0aW1lLg0KCSogb2ZfZGV2aWNlX2dldF9tYXRjaF9kYXRh
KCkgaW5zdGVhZCBvZiBvZl9tYXRjaF9kZXZpY2UoKSwgYW5kDQoJcmVtb3ZlIHRoZSBjaGVjayBv
ZiByZXR1cm4gdmFsdWUuDQpWMiAtPiBWMzoNCgkqIG1vdmUgdGhlIEFYSSBJRCBjaGVjayB0byBl
dmVudF9hZGQoKS4NCgkqIGFkZCBzdXBwb3J0IGZvciBzYW1lIHZhbHVlIG9mIGF4aV9pZC4NClYz
IC0+IFY0Og0KCSogbW92ZSB0aGUgQVhJIElEIGNoZWNrIHRvIGV2ZW50X2luaXQoKS4NClY0IC0+
IFY1Og0KCSogcmVqZWN0IGV2ZW50IGdyb3VwIGlmIEFYSSBJRCBub3QgY29uc2lzdGVudCBpbiBl
dmVudF9pbml0KCkuDQpWNSAtPiBWNjoNCgkqIGNoYW5nZSB0aGUgZXZlbnQgbmFtZTogYXhpLWlk
LXJlYWQtPmF4aWQtcmVhZDsNCglheGktaWQtd3JpdGUtPmF4aWQtd3JpdGUNCgkqIGFkZCBhbm90
aGVyIGhlbHBlcjogZGRyX3BlcmZfZmlsdGVyc19jb21wYXRpYmxlKCkNCgkqIGRyb3AgdGhlIGRl
dl9kYmcoKQ0KVjYgLT4gVjc6DQoJKiByZXZlcnQgQVhJX01BU0tJTkcgYXQgZHJpdmVyLg0KDQpT
aWduZWQtb2ZmLWJ5OiBKb2FraW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAuY29tPg0KLS0t
DQogZHJpdmVycy9wZXJmL2ZzbF9pbXg4X2Rkcl9wZXJmLmMgfCA3MCArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrLQ0KIDEgZmlsZSBjaGFuZ2VkLCA2OCBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9wZXJmL2ZzbF9pbXg4X2Rkcl9wZXJm
LmMgYi9kcml2ZXJzL3BlcmYvZnNsX2lteDhfZGRyX3BlcmYuYw0KaW5kZXggMGUzMzEwZGJiMTQ1
Li5lYzIxMjBmYzMyMDcgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL3BlcmYvZnNsX2lteDhfZGRyX3Bl
cmYuYw0KKysrIGIvZHJpdmVycy9wZXJmL2ZzbF9pbXg4X2Rkcl9wZXJmLmMNCkBAIC0zNSw2ICsz
NSw4IEBADQogI2RlZmluZSBFVkVOVF9DWUNMRVNfQ09VTlRFUgkwDQogI2RlZmluZSBOVU1fQ09V
TlRFUlMJCTQNCiANCisjZGVmaW5lIEFYSV9NQVNLSU5HX1JFVkVSVAkweGZmZmYwMDAwCS8qIEFY
SV9NQVNLSU5HKE1TQiAxNmJpdHMpICsgQVhJX0lEKExTQiAxNmJpdHMpICovDQorDQogI2RlZmlu
ZSB0b19kZHJfcG11KHApCQljb250YWluZXJfb2YocCwgc3RydWN0IGRkcl9wbXUsIHBtdSkNCiAN
CiAjZGVmaW5lIEREUl9QRVJGX0RFVl9OQU1FCSJpbXg4X2RkciINCkBAIC00Miw5ICs0NCwyMiBA
QA0KIA0KIHN0YXRpYyBERUZJTkVfSURBKGRkcl9pZGEpOw0KIA0KKy8qIEREUiBQZXJmIGhhcmR3
YXJlIGZlYXR1cmUgKi8NCisjZGVmaW5lIEREUl9DQVBfQVhJX0lEX0ZJTFRFUiAgICAgICAgICAw
eDEgICAgIC8qIHN1cHBvcnQgQVhJIElEIGZpbHRlciAqLw0KKw0KK3N0cnVjdCBmc2xfZGRyX2Rl
dnR5cGVfZGF0YSB7DQorCXVuc2lnbmVkIGludCBxdWlya3M7ICAgIC8qIHF1aXJrcyBuZWVkZWQg
Zm9yIGRpZmZlcmVudCBERFIgUGVyZiBjb3JlICovDQorfTsNCisNCitzdGF0aWMgY29uc3Qgc3Ry
dWN0IGZzbF9kZHJfZGV2dHlwZV9kYXRhIGlteDhfZGV2dHlwZV9kYXRhOw0KKw0KK3N0YXRpYyBj
b25zdCBzdHJ1Y3QgZnNsX2Rkcl9kZXZ0eXBlX2RhdGEgaW14OG1fZGV2dHlwZV9kYXRhID0gew0K
KwkucXVpcmtzID0gRERSX0NBUF9BWElfSURfRklMVEVSLA0KK307DQorDQogc3RhdGljIGNvbnN0
IHN0cnVjdCBvZl9kZXZpY2VfaWQgaW14X2Rkcl9wbXVfZHRfaWRzW10gPSB7DQotCXsgLmNvbXBh
dGlibGUgPSAiZnNsLGlteDgtZGRyLXBtdSIsfSwNCi0JeyAuY29tcGF0aWJsZSA9ICJmc2wsaW14
OG0tZGRyLXBtdSIsfSwNCisJeyAuY29tcGF0aWJsZSA9ICJmc2wsaW14OC1kZHItcG11IiwgLmRh
dGEgPSAmaW14OF9kZXZ0eXBlX2RhdGF9LA0KKwl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg4bS1k
ZHItcG11IiwgLmRhdGEgPSAmaW14OG1fZGV2dHlwZV9kYXRhfSwNCiAJeyAvKiBzZW50aW5lbCAq
LyB9DQogfTsNCiBNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBpbXhfZGRyX3BtdV9kdF9pZHMpOw0K
QEAgLTU4LDYgKzczLDcgQEAgc3RydWN0IGRkcl9wbXUgew0KIAlzdHJ1Y3QgcGVyZl9ldmVudCAq
ZXZlbnRzW05VTV9DT1VOVEVSU107DQogCWludCBhY3RpdmVfZXZlbnRzOw0KIAllbnVtIGNwdWhw
X3N0YXRlIGNwdWhwX3N0YXRlOw0KKwljb25zdCBzdHJ1Y3QgZnNsX2Rkcl9kZXZ0eXBlX2RhdGEg
KmRldnR5cGVfZGF0YTsNCiAJaW50IGlycTsNCiAJaW50IGlkOw0KIH07DQpAQCAtMTI5LDYgKzE0
NSw4IEBAIHN0YXRpYyBzdHJ1Y3QgYXR0cmlidXRlICpkZHJfcGVyZl9ldmVudHNfYXR0cnNbXSA9
IHsNCiAJSU1YOF9ERFJfUE1VX0VWRU5UX0FUVFIocmVmcmVzaCwgMHgzNyksDQogCUlNWDhfRERS
X1BNVV9FVkVOVF9BVFRSKHdyaXRlLCAweDM4KSwNCiAJSU1YOF9ERFJfUE1VX0VWRU5UX0FUVFIo
cmF3LWhhemFyZCwgMHgzOSksDQorCUlNWDhfRERSX1BNVV9FVkVOVF9BVFRSKGF4aWQtcmVhZCwg
MHg0MSksDQorCUlNWDhfRERSX1BNVV9FVkVOVF9BVFRSKGF4aWQtd3JpdGUsIDB4NDIpLA0KIAlO
VUxMLA0KIH07DQogDQpAQCAtMTM4LDkgKzE1NiwxMSBAQCBzdGF0aWMgc3RydWN0IGF0dHJpYnV0
ZV9ncm91cCBkZHJfcGVyZl9ldmVudHNfYXR0cl9ncm91cCA9IHsNCiB9Ow0KIA0KIFBNVV9GT1JN
QVRfQVRUUihldmVudCwgImNvbmZpZzowLTciKTsNCitQTVVfRk9STUFUX0FUVFIoYXhpX2lkLCAi
Y29uZmlnMTowLTMxIik7DQogDQogc3RhdGljIHN0cnVjdCBhdHRyaWJ1dGUgKmRkcl9wZXJmX2Zv
cm1hdF9hdHRyc1tdID0gew0KIAkmZm9ybWF0X2F0dHJfZXZlbnQuYXR0ciwNCisJJmZvcm1hdF9h
dHRyX2F4aV9pZC5hdHRyLA0KIAlOVUxMLA0KIH07DQogDQpAQCAtMTkwLDYgKzIxMCwyNiBAQCBz
dGF0aWMgdTMyIGRkcl9wZXJmX3JlYWRfY291bnRlcihzdHJ1Y3QgZGRyX3BtdSAqcG11LCBpbnQg
Y291bnRlcikNCiAJcmV0dXJuIHJlYWRsX3JlbGF4ZWQocG11LT5iYXNlICsgQ09VTlRFUl9SRUFE
ICsgY291bnRlciAqIDQpOw0KIH0NCiANCitzdGF0aWMgYm9vbCBkZHJfcGVyZl9pc19maWx0ZXJl
ZChzdHJ1Y3QgcGVyZl9ldmVudCAqZXZlbnQpDQorew0KKwlyZXR1cm4gZXZlbnQtPmF0dHIuY29u
ZmlnID09IDB4NDEgfHwgZXZlbnQtPmF0dHIuY29uZmlnID09IDB4NDI7DQorfQ0KKw0KK3N0YXRp
YyB1MzIgZGRyX3BlcmZfZmlsdGVyX3ZhbChzdHJ1Y3QgcGVyZl9ldmVudCAqZXZlbnQpDQorew0K
KwlyZXR1cm4gZXZlbnQtPmF0dHIuY29uZmlnMTsNCit9DQorDQorc3RhdGljIGJvb2wgZGRyX3Bl
cmZfZmlsdGVyc19jb21wYXRpYmxlKHN0cnVjdCBwZXJmX2V2ZW50ICphLA0KKwkJCQkJc3RydWN0
IHBlcmZfZXZlbnQgKmIpDQorew0KKwlpZiAoIWRkcl9wZXJmX2lzX2ZpbHRlcmVkKGEpKQ0KKwkJ
cmV0dXJuIHRydWU7DQorCWlmICghZGRyX3BlcmZfaXNfZmlsdGVyZWQoYikpDQorCQlyZXR1cm4g
dHJ1ZTsNCisJcmV0dXJuIGRkcl9wZXJmX2ZpbHRlcl92YWwoYSkgPT0gZGRyX3BlcmZfZmlsdGVy
X3ZhbChiKTsNCit9DQorDQogc3RhdGljIGludCBkZHJfcGVyZl9ldmVudF9pbml0KHN0cnVjdCBw
ZXJmX2V2ZW50ICpldmVudCkNCiB7DQogCXN0cnVjdCBkZHJfcG11ICpwbXUgPSB0b19kZHJfcG11
KGV2ZW50LT5wbXUpOw0KQEAgLTIxNiw2ICsyNTYsMTUgQEAgc3RhdGljIGludCBkZHJfcGVyZl9l
dmVudF9pbml0KHN0cnVjdCBwZXJmX2V2ZW50ICpldmVudCkNCiAJCQkhaXNfc29mdHdhcmVfZXZl
bnQoZXZlbnQtPmdyb3VwX2xlYWRlcikpDQogCQlyZXR1cm4gLUVJTlZBTDsNCiANCisJaWYgKHBt
dS0+ZGV2dHlwZV9kYXRhLT5xdWlya3MgJiBERFJfQ0FQX0FYSV9JRF9GSUxURVIpIHsNCisJCWlm
ICghZGRyX3BlcmZfZmlsdGVyc19jb21wYXRpYmxlKGV2ZW50LCBldmVudC0+Z3JvdXBfbGVhZGVy
KSkNCisJCQlyZXR1cm4gLUVJTlZBTDsNCisJCWZvcl9lYWNoX3NpYmxpbmdfZXZlbnQoc2libGlu
ZywgZXZlbnQtPmdyb3VwX2xlYWRlcikgew0KKwkJCWlmICghZGRyX3BlcmZfZmlsdGVyc19jb21w
YXRpYmxlKGV2ZW50LCBzaWJsaW5nKSkNCisJCQkJcmV0dXJuIC1FSU5WQUw7DQorCQl9DQorCX0N
CisNCiAJZm9yX2VhY2hfc2libGluZ19ldmVudChzaWJsaW5nLCBldmVudC0+Z3JvdXBfbGVhZGVy
KSB7DQogCQlpZiAoc2libGluZy0+cG11ICE9IGV2ZW50LT5wbXUgJiYNCiAJCQkJIWlzX3NvZnR3
YXJlX2V2ZW50KHNpYmxpbmcpKQ0KQEAgLTI4OCw2ICszMzcsMjEgQEAgc3RhdGljIGludCBkZHJf
cGVyZl9ldmVudF9hZGQoc3RydWN0IHBlcmZfZXZlbnQgKmV2ZW50LCBpbnQgZmxhZ3MpDQogCXN0
cnVjdCBod19wZXJmX2V2ZW50ICpod2MgPSAmZXZlbnQtPmh3Ow0KIAlpbnQgY291bnRlcjsNCiAJ
aW50IGNmZyA9IGV2ZW50LT5hdHRyLmNvbmZpZzsNCisJaW50IGNmZzEgPSBldmVudC0+YXR0ci5j
b25maWcxOw0KKw0KKwlpZiAocG11LT5kZXZ0eXBlX2RhdGEtPnF1aXJrcyAmIEREUl9DQVBfQVhJ
X0lEX0ZJTFRFUikgew0KKwkJaW50IGk7DQorDQorCQlmb3IgKGkgPSAxOyBpIDwgTlVNX0NPVU5U
RVJTOyBpKyspIHsNCisJCQlpZiAocG11LT5ldmVudHNbaV0gJiYNCisJCQkgICAgIWRkcl9wZXJm
X2ZpbHRlcnNfY29tcGF0aWJsZShldmVudCwgcG11LT5ldmVudHNbaV0pKQ0KKwkJCQlyZXR1cm4g
LUVJTlZBTDsNCisJCX0NCisNCisJCS8qIHJldmVydCBheGlfaWQgbWFza2luZyB2YWx1ZSAqLw0K
KwkJY2ZnMSBePSBBWElfTUFTS0lOR19SRVZFUlQ7DQorCQl3cml0ZWwoY2ZnMSwgcG11LT5iYXNl
ICsgQ09VTlRFUl9EUENSMSk7DQorCX0NCiANCiAJY291bnRlciA9IGRkcl9wZXJmX2FsbG9jX2Nv
dW50ZXIocG11LCBjZmcpOw0KIAlpZiAoY291bnRlciA8IDApIHsNCkBAIC00NzMsNiArNTM3LDgg
QEAgc3RhdGljIGludCBkZHJfcGVyZl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQ0KIAlpZiAoIW5hbWUpDQogCQlyZXR1cm4gLUVOT01FTTsNCiANCisJcG11LT5kZXZ0eXBlX2Rh
dGEgPSBvZl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEoJnBkZXYtPmRldik7DQorDQogCXBtdS0+Y3B1
ID0gcmF3X3NtcF9wcm9jZXNzb3JfaWQoKTsNCiAJcmV0ID0gY3B1aHBfc2V0dXBfc3RhdGVfbXVs
dGkoQ1BVSFBfQVBfT05MSU5FX0RZTiwNCiAJCQkJICAgICAgRERSX0NQVUhQX0NCX05BTUUsDQot
LSANCjIuMTcuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
