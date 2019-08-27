Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 805679E937
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:24:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nkinbrbc09/ftoJa5NJM4qrECfcY102pesqfB2fPAwA=; b=qktqfJ6/TTP7zP
	AE7cU15ZyU6NJkLAhJCEyJMOgCKswUNR5V9AmWrbcnj8t7DzGozqTqH50gZ7v0D5USgeGE0TuLlNn
	WhMsL4gVSpdKH/rks3iWhsZnF0O6MrwmXcvKa6sJFS1WTkZtzxIXaP1pXqQNMsWpMqRdpYHmXkRYe
	J/uGccB7gVfSuxNn3dk4Qs4o+MaLMR5IgvhSgzw0LEOqFX9PsKJH/FIiM7ClVt8ytmmMcYtS79gp/
	cWfmeqJ7ObDsCx4Hu1WJsTxVbM866a6+rvZNl0WBpjB3HvHSrSU/W46qnO80D69QIxT0b67AzIWw3
	YG/r3Uda0soO39JIs0Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bSX-0000Eg-2S; Tue, 27 Aug 2019 13:24:29 +0000
Received: from mail-eopbgr50113.outbound.protection.outlook.com
 ([40.107.5.113] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bN6-0002cb-2I
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:18:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=en9WvhCnq11ONce879dipSXtL3BB/FgQDdHY8M52NA90KzVnGiethgRgdmHET6wSb5U1MP7JezvM/lln6Q5+D23oXH12VSbn0ncazgFcUtHZd1rn13tW1yhZ6lx85bHVsECPE0hh3QN2pOCSfgthk/r4iERtDlka6fz8C0S2k7dSEKI1DXF0BbeQCiIlXWhgo8IHmrioFO6t/sRVtq0M/997f5UBX9AaF1pO3ceIeD5U71QiM33/Pe31PpnThRi9WngqhBdiOyJO5NHkmHJs+mp1Ycqv+xZTXqs7LFQZuWJu3Pbz+irqltIUB0qCoRshID6nHS0Ro+IV4AupqzxCIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wJ64QS/8jVPjN2X3nlcHg/p/676cBfS4rbdraIY/t9s=;
 b=jnc8mDAEyH6Mr5NfEemMAxYdn5bmySanu0AhAVFz8LRrITcMSJIKpDiShUw8ybP3WtRN6ENGHGIcbG4smDU+BZP7Uxh7+IkrpHvOsu46Xc7szOJSX3omC0iLqkkhpnr4jdTZkyvBzgCIp2MwsGJO6y2BkrQwrfod4C35j44oxjooOIruJyvXmhm/WUKIvhi/EmdHMhFuusGST/HgaMT3GtNjXiC8/FHeL/uPhI2W8oZNZqcEVLy/aKnhL2vrdZAn4P8PodawrCeg/sMGOKtgveQmaW1ZKbTzE4p8O6yid6ppO8CTMEgJ2wCi8B53TqfhxU/Mp51XTNDW0crp7w4WPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wJ64QS/8jVPjN2X3nlcHg/p/676cBfS4rbdraIY/t9s=;
 b=REfiLRhVzW7KB8zZENXQIGJQmjER4BcZQHxf41VFZk4kmPDR32lpDcyTRCHfo2wZNrhqmple/arZs67LbQMV6JfnIzeUVX0YC/YxC3KLk0TwRSS+5k4LLuO0N43JWKIp9pT7fzFfETvJvP8INx7lCiaxij1AI/0s5LaWBtizV3I=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3008.eurprd05.prod.outlook.com (10.172.255.143) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 13:18:42 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9%6]) with mapi id 15.20.2199.021; Tue, 27 Aug 2019
 13:18:42 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan @ agner . ch" <stefan@agner.ch>,
 "devicetree @ vger . kernel . org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?utf-8?B?TWljaGFsIFZva8OhxI0=?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v5 13/13] ARM: dts: imx6ull-colibri: Add touchscreen used with
 Eval Board
Thread-Topic: [PATCH v5 13/13] ARM: dts: imx6ull-colibri: Add touchscreen used
 with Eval Board
Thread-Index: AQHVXNny2WCdTF6H40qV0xJg8ZiIRg==
Date: Tue, 27 Aug 2019 13:18:42 +0000
Message-ID: <20190827131806.6816-14-philippe.schenker@toradex.com>
References: <20190827131806.6816-1-philippe.schenker@toradex.com>
In-Reply-To: <20190827131806.6816-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0102CA0031.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:14::44) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.23.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: caaf72b4-e396-46a5-5bdb-08d72af114bc
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3008; 
x-ms-traffictypediagnostic: VI1PR0502MB3008:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB300840F0458A250417600290F4A00@VI1PR0502MB3008.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:530;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(366004)(376002)(39850400004)(396003)(136003)(199004)(189003)(4326008)(256004)(36756003)(6512007)(14444005)(86362001)(5660300002)(25786009)(66446008)(64756008)(66476007)(66556008)(1076003)(478600001)(66066001)(316002)(110136005)(53936002)(71200400001)(54906003)(71190400001)(7416002)(8936002)(8676002)(52116002)(76176011)(6116002)(6486002)(50226002)(3846002)(2906002)(66946007)(99286004)(486006)(44832011)(2616005)(14454004)(305945005)(6506007)(386003)(186003)(7736002)(26005)(81156014)(81166006)(6436002)(476003)(11346002)(446003)(102836004)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3008;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Y72o342tkGJU8dODCIANwFg0I11s49wKLQw3vkcsGt8wXd/mziCJ0QF4KWn65CpICB+RN497dR6Ie5R2T8JM+l7eGV61CRcpK+1Qxrkl3r9lujCH4qGZ80Kf7ziLPGZJTt/RKANiy9Zer2wsLcdPnUhsV9+NbtlJOlLVySH4vaQn/7FQBwXpcajhMyLp09wLPM86yl1ykzCs6XFqoMKzQX2wXvNzYmm4f6I7VV6QTrjoHwDqSMh63LK9ACcei9qHliYE1VU9ijIbgC6BPNC2Hk87KIYkGZx2QP3Q87Sl6GdeaZuctQ8j/G7LRV1LhOBuyFMIl0Rl0NZOxSYV5UR4YjAdpfEW5f8G+tDM7Wn8i/XcxIbooejyPQM+3ZQiaP43s09sF4gK6PQsBQg7jkloJcKUZnGMjzmxQzT4klez1iU=
Content-ID: <6625A000C6DDED4F94A0DF53AA4BE792@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: caaf72b4-e396-46a5-5bdb-08d72af114bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 13:18:42.1806 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +847SBpbmid/6ntqvzNJ9sVbLjIjUczViTe6II0SSZXMC43nYGI1e7bKrOgeYkf6RdeZbo2HSRWp2HAzEENdky1tJUygijOIj1+Pk9Z//6E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_061852_298688_0A3B82BD 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.113 listed in list.dnswl.org]
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBhZGRzIHRoZSBjb21tb24gdG91Y2hzY3JlZW4gdGhhdCBpcyB1c2VkIHdpdGggVG9yYWRl
eCdzDQpFdmFsIEJvYXJkcy4NCkl0IGlzIGRpc2FibGVkIGJ5IGRlZmF1bHQgYmVjYXVzZSB0aGUg
cGlucyBhcmUgYWxzbyB1c2VkIGZvciBQV00sDQp3aGljaCBpcyB0aGUgc3RhbmRhcmQgdXNlIGZv
ciBjb2xpYnJpIGJvYXJkcy4NCg0KU2lnbmVkLW9mZi1ieTogUGhpbGlwcGUgU2NoZW5rZXIgPHBo
aWxpcHBlLnNjaGVua2VyQHRvcmFkZXguY29tPg0KUmV2aWV3ZWQtYnk6IE9sZWtzYW5kciBTdXZv
cm92IDxvbGVrc2FuZHIuc3V2b3JvdkB0b3JhZGV4LmNvbT4NCg0KTWFyY2VsIFppc3dpbGVyIDxt
YXJjZWwuemlzd2lsZXJAdG9yYWRleC5jb20+DQpNYXggS3J1bW1lbmFjaGVyIDxtYXgua3J1bW1l
bmFjaGVyQHRvcmFkZXguY29tPg0Kc3RlZmFuQGFnbmVyLmNoIDxzdGVmYW5AYWduZXIuY2g+DQpk
ZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyA8ZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc+DQpS
b2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPg0KU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJu
ZWwub3JnPg0KTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4NCk1pY2hhbCBWb2vD
ocSNIDxtaWNoYWwudm9rYWNAeXNvZnQuY29tPg0KRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZ21h
aWwuY29tPg0KDQotLS0NCg0KQ2hhbmdlcyBpbiB2NToNCi0gQWRkZWQgbm90ZSB0byBjb21taXQg
bWVzc2FnZSBhYm91dCBkaXNhYmxlZCBzdGF0dXMNCi0gQWRkIE9sZWsncyBSZXZpZXdlZC1ieQ0K
DQpDaGFuZ2VzIGluIHY0OiBOb25lDQpDaGFuZ2VzIGluIHYzOiBOb25lDQpDaGFuZ2VzIGluIHYy
Og0KLSBSZW1vdmVkIGYwNzEwYQ0KdGhhdCBpcyBkb3duc3RyZWFtIG9ubHkNCi0gQ2hhbmdlZCB0
byBnZW5lcmljIG5vZGUgbmFtZQ0KLSBCZXR0ZXIgY29tbWVudA0KDQogLi4uL2FybS9ib290L2R0
cy9pbXg2dWxsLWNvbGlicmktZXZhbC12My5kdHNpIHwgMjQgKysrKysrKysrKysrKysrKysrKw0K
IDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9ib290L2R0cy9pbXg2dWxsLWNvbGlicmktZXZhbC12My5kdHNpIGIvYXJjaC9hcm0vYm9vdC9k
dHMvaW14NnVsbC1jb2xpYnJpLWV2YWwtdjMuZHRzaQ0KaW5kZXggYTc4ODQ5ZmQyYWZhLi40NThh
NDA4NGU1M2MgMTAwNjQ0DQotLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg2dWxsLWNvbGlicmkt
ZXZhbC12My5kdHNpDQorKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2dWxsLWNvbGlicmktZXZh
bC12My5kdHNpDQpAQCAtMTAwLDYgKzEwMCwyMSBAQA0KICZpMmMxIHsNCiAJc3RhdHVzID0gIm9r
YXkiOw0KIA0KKwkvKg0KKwkgKiBUb3VjaHNjcmVlbiBpcyB1c2luZyBTT0RJTU0gMjgvMzAsIGFs
c28gdXNlZCBmb3IgUFdNPEI+LCBQV008Qz4sDQorCSAqIGFrYSBwd20yLCBwd20zLiBzbyBpZiB5
b3UgZW5hYmxlIHRvdWNoc2NyZWVuLCBkaXNhYmxlIHRoZSBwd21zDQorCSAqLw0KKwl0b3VjaHNj
cmVlbkA0YSB7DQorCQljb21wYXRpYmxlID0gImF0bWVsLG1heHRvdWNoIjsNCisJCXBpbmN0cmwt
bmFtZXMgPSAiZGVmYXVsdCI7DQorCQlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfZ3Bpb3RvdWNoPjsN
CisJCXJlZyA9IDwweDRhPjsNCisJCWludGVycnVwdC1wYXJlbnQgPSA8JmdwaW80PjsNCisJCWlu
dGVycnVwdHMgPSA8MTYgSVJRX1RZUEVfRURHRV9GQUxMSU5HPjsJLyogU09ESU1NIDI4ICovDQor
CQlyZXNldC1ncGlvcyA9IDwmZ3BpbzIgNSBHUElPX0FDVElWRV9ISUdIPjsJLyogU09ESU1NIDMw
ICovDQorCQlzdGF0dXMgPSAiZGlzYWJsZWQiOw0KKwl9Ow0KKw0KIAkvKiBNNDFUME02IHJlYWwg
dGltZSBjbG9jayBvbiBjYXJyaWVyIGJvYXJkICovDQogCW00MXQwbTY6IHJ0Y0A2OCB7DQogCQlj
b21wYXRpYmxlID0gInN0LG00MXQwIjsNCkBAIC0xNzYsMyArMTkxLDEyIEBADQogCXNkLXVocy1z
ZHIxMDQ7DQogCXN0YXR1cyA9ICJva2F5IjsNCiB9Ow0KKw0KKyZpb211eGMgew0KKwlwaW5jdHJs
X2dwaW90b3VjaDogdG91Y2hncGlvcyB7DQorCQlmc2wscGlucyA9IDwNCisJCQlNWDZVTF9QQURf
TkFORF9EUVNfX0dQSU80X0lPMTYJCTB4NzQNCisJCQlNWDZVTF9QQURfRU5FVDFfVFhfRU5fX0dQ
SU8yX0lPMDUJMHgxNA0KKwkJPjsNCisJfTsNCit9Ow0KLS0gDQoyLjIzLjANCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
