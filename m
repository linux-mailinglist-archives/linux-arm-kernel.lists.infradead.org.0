Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0DAAA222
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 13:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EjAKWVWsAm6rWztKyC3g2iMME33T+qoQPaDCBiI/WGc=; b=rMLCiwWy9QbBe+
	KpOsLypTGdqFm36gaUAXP3/Skw5WsOF12LBcwdJlF0KPJGDKFA1rAucth1UzHdQ58poO2TiYJdYf8
	Kzd+U+dNHq3uxwCLEXvFgfbVwDOw9Z9OmAeuhEH4H0tM8Oi1FkB1wG+w0oyhv40XGoEzs58MfVxHJ
	nMxT2yfVu6lp3K9lI4lXFJtRn6vI/PN6ybOSu2a45caO8Jej4pHcMmg0iZjsJHFiGZokPivp9lRc4
	4wa0edWN89y2eH2C79UQrNIPc0ArkK+Gr/0NbmeKbaqoIBr2eBlu2zeuGCioXDJL5qhPeKo4rLZ+m
	RYHSvIBbk45JaDlHvEiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qPs-0004hR-Ck; Thu, 05 Sep 2019 11:59:08 +0000
Received: from mail-db5eur03on061f.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::61f]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qPM-0004UO-NV
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 11:58:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ixYkunzymDT7s2CWQLfeTAQHuBiUMKKjZPLJhGWtQMZKZx5f0HuWgqDEaK5BbEoM1Ht7U5XaMtyD/dmYGzFlWC8qtJ15ySALUMrqmVFh/GRZYNrt93ixfFv2il5fRQNFopIuZYn6Gc5+4/K+tsDMl6MEaXBDSoCqbNUxrvrIDj614ii9PAQPyfRr53lC6Vt/ji7nsejtMAfSJGbkmnKY1JVFx5tjXLQibtwJuUPOpyq/6vUTR0gB0N14SiCzO9k5CFYk2+VgTP12REVcOwXF++yyJYDqYHg2m9iFsjvAyi+D6Hz5oeR/702qEX4xqoKnxD62NKXilcxAEtWK9F13rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eKiaDvtX3uc9OfHB2O953KVbPXggDj8tZAZWAUvyDtc=;
 b=euKhmlPivIx9s2+qLQvAbjQqnEmhSKVgl3D/58VVuuKCGSLgdoxdYZFklGlWASsYYp1WBWhcO4eulRo36mwsQq2djX3H+/MZgPcELQ5ZMYnLkNRehC32zwNY6uc4pUnaFz+OyxB2qL9qFmU4mH8WX/NSZCALlo38ydvo0JTFwn/0p9Jb4d5dU/UU8JOKYiMGY+3PlB9txVtXBzrmLVlpCzm8wf2vEEiK0XJ2HqKg+WkqyYBee2CsHnrqTi9zgam0m9z8I93fo3ImncO6QXXAEvh0qIycQEnqbsLeEs0DH6u+flODO3EToF9qmwNrKvFF2rcnR3mWS8ULkxzy+8rUQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eKiaDvtX3uc9OfHB2O953KVbPXggDj8tZAZWAUvyDtc=;
 b=F/Ka/0NP3OVsQrxGdsK9NzLUnVEyp+rVH6SiO+1SNZoP/4M6o8AvzUh6PG5FCuW7ACunCotihzwAWjkgqeOvV8fApHKouhg/mDwNtgaxDag+2YlNUbZGZs01T+i3fgFZss5Seb4ooiyFVhWco16ENfpNBJTFzN4jU7VzVyIkYFE=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3805.eurprd04.prod.outlook.com (52.134.16.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Thu, 5 Sep 2019 11:58:33 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::19cd:9f82:31ce:fbbb]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::19cd:9f82:31ce:fbbb%8]) with mapi id 15.20.2220.022; Thu, 5 Sep 2019
 11:58:32 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH v4 1/6] dt-bindings: arm: fsl: Add the S32V234-EVB board
Thread-Topic: [PATCH v4 1/6] dt-bindings: arm: fsl: Add the S32V234-EVB board
Thread-Index: AQHVY+E9fcQlyRtkaE2EZMsziQDN0g==
Date: Thu, 5 Sep 2019 11:58:32 +0000
Message-ID: <20190905115803.19565-2-stefan-gabriel.mirea@nxp.com>
References: <20190905115803.19565-1-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20190905115803.19565-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: AM6P193CA0005.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:209:3e::18) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f9dabb6b-524f-4067-d7da-08d731f85fb5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3805; 
x-ms-traffictypediagnostic: VI1PR0402MB3805:|VI1PR0402MB3805:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB380500FD82C9C317E487568DDFBB0@VI1PR0402MB3805.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(366004)(396003)(376002)(136003)(199004)(189003)(476003)(81156014)(81166006)(446003)(2616005)(486006)(71190400001)(11346002)(6436002)(1076003)(54906003)(71200400001)(110136005)(53936002)(8676002)(7416002)(102836004)(478600001)(36756003)(14454004)(6512007)(25786009)(2501003)(2201001)(86362001)(256004)(66556008)(64756008)(66446008)(186003)(66946007)(26005)(4326008)(4744005)(3846002)(7736002)(316002)(6506007)(52116002)(99286004)(8936002)(76176011)(2906002)(305945005)(6486002)(5660300002)(50226002)(66066001)(6116002)(66476007)(6636002)(386003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3805;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: VGYwdfXfdg0+Tpetsy5IhDKSAqzEqedV3TJ283PFOuHf9tCx+yAABLwU3kw6TtCrs8wW3xHADSzVsJNN+vvItcipxU8V6Mp+IzuyNA7BW0u1QDEbgIlNICNqVVaiUO5p1HTBCkkTPGRZiHclWBS/MhqH0+wMbpIcqMH1tZmE181bkPZ8iRBGNs4Z6hWl2UQVdViMU6atLVmhUd3R/iODPTawQCfQ5wzyMv2RXYV+CZ1VCEtXe7c6tcYgh3i3dIehEWuc08eYlrtzjcKGdygZ52bP30VPhXMnpTctvOG5t5mFsvhSEQYSj78ZWS/qrL09HhjXWNpldhjhlmFJPm8BjqSX4js7CZzdGfcv3aXO/zpRv/7BpefOi9Q54FEjDVQJT6eaCMtU0LqJks60VFcNEkEKEM2isnYeLu3oMcNiCCg=
Content-ID: <DD9906772D4D7C48AAEDD610B5902931@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9dabb6b-524f-4067-d7da-08d731f85fb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 11:58:32.7995 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FiK6fLL8Se0uQUEo4HnyY9yUUhIVPx4JOrhq9Uo6gr/JUuopZdwvVD+Tz2xbz2IEQ7396er7a7lEyVmBel4Xqjj1hHYWCizNR8dUD38wg8U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3805
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_045836_766124_681995E1 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:61f listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
aW5kZXggNzI5NGFjMzZmNGMwLi41OTdjNTYzYmRlYzkgMTAwNjQ0DQotLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2ZzbC55YW1sDQorKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2ZzbC55YW1sDQpAQCAtMzA5LDQgKzMwOSwxMCBAQCBw
cm9wZXJ0aWVzOg0KICAgICAgICAgICAgICAgLSBmc2wsbHMyMDg4YS1yZGINCiAgICAgICAgICAg
LSBjb25zdDogZnNsLGxzMjA4OGENCiANCisgICAgICAtIGRlc2NyaXB0aW9uOiBTMzJWMjM0IGJh
c2VkIEJvYXJkcw0KKyAgICAgICAgaXRlbXM6DQorICAgICAgICAgIC0gZW51bToNCisgICAgICAg
ICAgICAgIC0gZnNsLHMzMnYyMzQtZXZiICAgICAgICAgICAjIFMzMlYyMzQtRVZCMiBDdXN0b21l
ciBFdmFsdWF0aW9uIEJvYXJkDQorICAgICAgICAgIC0gY29uc3Q6IGZzbCxzMzJ2MjM0DQorDQog
Li4uDQotLSANCjIuMjIuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
