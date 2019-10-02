Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6845BC893C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 15:05:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y8vxM3HgS860lIRJzGtomNOkQujxDt5wXb5ogdn0m9E=; b=OTkYMNaPLzEUDU
	58wfWCoUFrkhEONiCb0RXGvIucEywo+5X2747OEgqhb8SdVfKJ0oOpRz9FPqfBuREpiR1YsoJNLFY
	k1hZueTLm0PhHNJdJ7cy/c/djbwIxYXFly9bVVOMFdW2kIkyrN8VFwJ3Fl8P9jyROtqOM8PfSWDkT
	ZEUpeTZS9QIzWmZZLFaDGtLWBV1oGjw8aunuZOnd1lCc1iSqVMsXQgRCIQ4VpwLz44IOuP1mogx0l
	c32hON0T+srUlaIns0j7Z/Vs7lNBHesUhZUWktYN7qGX8W90M2nAdtngiDzb78tkO5bxJp4rebumf
	uSXkprM9K8wI6nogBDwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFeJf-0005X1-Gi; Wed, 02 Oct 2019 13:05:15 +0000
Received: from mail-vi1eur04on0602.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::602]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFeJB-0005KX-JD
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 13:04:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HIUmy7ERW+ZZKJufXMUPPD/lQkUlcH9iT8AR/yafpz1iLpCrQNM2NV8azQvIDkpUiUqxtqaCUx8SV6NfNqchIj0zJHWP/M2UGdBwfp+k4SGUl6NiSd82UWtwLfIKrEs/lo7E8sRUmRu77K4gFEPI93mb8rIMr8wpFC3nvrqgJkJrT3lTTxiRRWt5j97CQvDPcL6jyntTJgtbI6DiynuJ37acQwUEbXPSygvj2Fa462SugHKUzLLQMJrzzRKOmmv9t8unwlPbuVI5rNheEA69WHtRaj/9s9FIlVCHuv49NLP/Z88ENkdCwDBIgcnYex9tCyQ1N9DPBC5eH+9MWLGqoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jPrfZE2ZzlgXwxvs9WgUYsD0eHrzsLPa8Nba2DpTt4o=;
 b=L+MMrpI3Z513NksZlIYED6VR7Nqg0JNvm77eFQEPMA8vdvEgpNuwytcoDhoLmj3y4Y9wm3O5BCQzX7iP0uiWWCniDTd3tlx7ROOKb8fICi+NhBbH/X/1ZigRlo0VOlztzpRnT2e0aIhlcl06WWBqI+TXCqRD6m8r1cU+kiF1Y2UfJW2aGv+a72Cp4jJGJwKph6bmWc8cfX3ueAdMcjAxGTimaBTiF7kz2GOtwKr+IYiNOsn9pef9L/CZsBSOl66lM/Gh9J1u0LA4tLe4uXuJxivmRCT7Fp9iEpUwqwc/leyPwBX6ubo559FEQd4ztL9aEsQjy3yEiv6nP5pNSKJ1Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jPrfZE2ZzlgXwxvs9WgUYsD0eHrzsLPa8Nba2DpTt4o=;
 b=R31Y5mLaFkn0bDIUhz/ak+oezkkqV5xYyrBFVEAEYXrPy1VymzIjiZyfDMor+Q35S/45NzxzUG5wW9Pdoh0vS6TDkXTWKQgJkWigxCEyO6tUBPk0NbQD/JOmoQcjfu4+dnrtCo7SCOHPwXHWC+gteRs7KApEHuGiQZN4Op/YK9Q=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3918.eurprd04.prod.outlook.com (52.134.17.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15; Wed, 2 Oct 2019 13:04:40 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::fd33:c447:3cab:c36]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::fd33:c447:3cab:c36%7]) with mapi id 15.20.2305.023; Wed, 2 Oct 2019
 13:04:40 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>
Subject: [PATCH v5 1/5] dt-bindings: arm: fsl: Add the S32V234-EVB board
Thread-Topic: [PATCH v5 1/5] dt-bindings: arm: fsl: Add the S32V234-EVB board
Thread-Index: AQHVeSHzRt15gcIyzkiIQ4Txg/5+kA==
Date: Wed, 2 Oct 2019 13:04:39 +0000
Message-ID: <20191002130425.28905-2-stefan-gabriel.mirea@nxp.com>
References: <20191002130425.28905-1-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20191002130425.28905-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: PR0P264CA0194.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1f::14) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.120.240.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f627acc0-ee0d-4b92-eab0-08d74739157e
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR0402MB3918:|VI1PR0402MB3918:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB3918BB5E0A2AB0801ECC41C6DF9C0@VI1PR0402MB3918.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0178184651
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(136003)(396003)(376002)(346002)(189003)(199004)(102836004)(2201001)(5660300002)(26005)(478600001)(76176011)(486006)(386003)(14454004)(50226002)(8676002)(8936002)(81156014)(305945005)(81166006)(6506007)(7736002)(7416002)(64756008)(6436002)(66556008)(66446008)(476003)(66066001)(2906002)(11346002)(2616005)(66476007)(6486002)(66946007)(25786009)(52116002)(2501003)(186003)(256004)(446003)(6512007)(6116002)(3846002)(36756003)(71190400001)(71200400001)(4744005)(4326008)(1076003)(86362001)(54906003)(99286004)(110136005)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3918;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ffrcKV9octv4hUr04GUPxqd9ul8qDrUoWIosZTto5xX72hSM7LDFHN5audHzjvcYIq+9oEc0q8OV4LgVu2//G8B2/ZV8hpkG5d69LwKaQfIxUV7ZdW1FwQD8kaHAZUmTQ0nhB88Yn6ktB9eN34vOyA9TgwITyeaJMA5DfEPGuagiA/We4CRzXJ7AXo8JLK31mCkZ/BQNlywKcClVEwg+uETIgg3uOD9T3rLkkbnVj7cHJchSuttvT+ZZbwAC3eHi/CbNMhCMaezVjlzeRyQZafSug7F3h3fE08ikS1ezLqnqdEQK93ME1tcRBR8MUSPJnl3oUIzoB7zWZ7NueowGjFL7I8IxdkMoZg4ISetsCPu/WyKZKNDuDsAzsaPCyLgslSoKA0KBcd2r1aaw4pR+c1zqFMCbQtyIc4rL3HPKnPE=
Content-ID: <645189E856AA654A9F01C6C622055648@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f627acc0-ee0d-4b92-eab0-08d74739157e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2019 13:04:39.8940 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EcehjH3yVlK2x7Jza/0NxewzMEUAT07HW3LqwD+koHH6XzCQ/p3n2UPllTX2rh7roXzunSIzkuQfUzxg9f+KqA1xNazm2YlQN7u1r1uijWg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3918
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_060445_632365_0D63C5D2 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:602 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Eddy Petrisor <eddy.petrisor@nxp.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogRWRkeSBQZXRyaciZb3IgPGVkZHkucGV0cmlzb3JAbnhwLmNvbT4NCg0KQWRkIGVudHJ5
IGZvciB0aGUgTlhQIFMzMlYyMzQgQ3VzdG9tZXIgRXZhbHVhdGlvbiBCb2FyZCB0byB0aGUgYm9h
cmQvU29DDQpiaW5kaW5ncy4NCg0KU2lnbmVkLW9mZi1ieTogRWRkeSBQZXRyaciZb3IgPGVkZHku
cGV0cmlzb3JAbnhwLmNvbT4NClNpZ25lZC1vZmYtYnk6IFN0ZWZhbi1HYWJyaWVsIE1pcmVhIDxz
dGVmYW4tZ2FicmllbC5taXJlYUBueHAuY29tPg0KUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxy
b2JoQGtlcm5lbC5vcmc+DQotLS0NCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
YXJtL2ZzbC55YW1sIHwgNiArKysrKysNCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
DQoNCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2Zz
bC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbA0K
aW5kZXggMWI0YjRlNjU3M2I1Li5jMjExZjRmODJlMjUgMTAwNjQ0DQotLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2ZzbC55YW1sDQorKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2ZzbC55YW1sDQpAQCAtMzM1LDQgKzMzNSwxMCBAQCBw
cm9wZXJ0aWVzOg0KICAgICAgICAgICAgICAgLSBmc2wsbHMyMDg4YS1yZGINCiAgICAgICAgICAg
LSBjb25zdDogZnNsLGxzMjA4OGENCiANCisgICAgICAtIGRlc2NyaXB0aW9uOiBTMzJWMjM0IGJh
c2VkIEJvYXJkcw0KKyAgICAgICAgaXRlbXM6DQorICAgICAgICAgIC0gZW51bToNCisgICAgICAg
ICAgICAgIC0gZnNsLHMzMnYyMzQtZXZiICAgICAgICAgICAjIFMzMlYyMzQtRVZCMiBDdXN0b21l
ciBFdmFsdWF0aW9uIEJvYXJkDQorICAgICAgICAgIC0gY29uc3Q6IGZzbCxzMzJ2MjM0DQorDQog
Li4uDQotLSANCjIuMjIuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
