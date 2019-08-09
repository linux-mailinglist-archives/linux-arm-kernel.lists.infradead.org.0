Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CC98788B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 13:30:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mYFnZl5T8kXj911kzwa7aTH/7Gr+Dw62JyBUBlWJI/w=; b=j2Sq3X8sFb5aXy
	/brth/WZnP38WpZqv9eLSRm+TJlCOhb1dBcweW5YnKPtjI7PAupzaVr3XYijG9bbu7LBzvN5w+Kpq
	UqFmj5kKOQoHKNhvzAQArpc2vm1kvltJUZDpyTnWSFN+JjWBcfnMVQtXAdbOJ2g7xy1duzJF/696Y
	MyZfwo56MEfL3P02frWeYBO4+sGykiQ0J3MKaTiydKoooxCP3XZ7f3m2XdtAiP1DYBxFG7cfENt9s
	SvvreAIHO6GrBVQjO4OUpAPd8INzT0LaqlV40/JwnF4L9/LNnK/o7xgp6DEhqhWNSFJhfrBfSgsvI
	jhShFmcdl+Wrm8EvYFIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw35x-0007Qp-1j; Fri, 09 Aug 2019 11:30:05 +0000
Received: from mail-eopbgr130047.outbound.protection.outlook.com
 ([40.107.13.47] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw358-0006rZ-5y
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 11:29:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZtzaZxja+Dr9Q3wIpU6F5eUrklh+FizOe6fe0xz4WpG09egqNpwMTLDOcienV8vyNM82n2iIMHgwmbf/6/3XNCG/Xwa7u+FNFmLnrkPXEzZkntrFX94Mk/F6E+zNEGsKv7BvTr1MJ/jS16Y2D2vZzRRB12LW2B+LQDn3EK36RsUYfoCAoGupZKhVkp3IH99k517wTFSpp9IdV+fsEznedIOUomyIIexF3ZLIimDaABKjbWJa12IgWaFJ5j/PhbRQTHOiaxV4dur3W0rDkDQmIU12ykXNoB/lMjXjp+lpNagiB83JEaDQ56sn15lmxZcQXTbE80eTeAZ+tRpIxQP9qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mKjW5UtnTT3GBpJ6GvAa07sXmgQD7r0ymBXSxSCwx8U=;
 b=kUNPaxdUkpQgxZwKd5gp+aEZj+9brs0JabP79uNnDr1eCkdV9CtTy/hK2FTMq8KnDUIspq2cfWGEJppXDGddtdfWro2e0pONGQQsryYZjAvtBQuXXT/wfQ8vB6afJW134nX5WsZ4c/U/jFNnLbKOeGLB3oHBsVtsquJ8Cf5eysAXqLsyT23nZLDtDpQEuc5mA9esghjBfhDfMxJK01rBe/33zxml4SY6QNwAWMBj0PWABxDXHJ7mSSSQYLd51TGyVMuNhY5GT8FcMGxlMqfLylVToZFL2wMkg/8jguBFKefEwG4SFh3SaC0W7EadJFyyOhy/t9bh3K8naQv7H0qmew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mKjW5UtnTT3GBpJ6GvAa07sXmgQD7r0ymBXSxSCwx8U=;
 b=Q8r+DdcxCa9lweSWDEalRJp1ROfOLyY734Yfk7pTfuWwPeStdueVb21fstgA1Q+6RePlTFyQivF24BbkI4/Ih+qsd9yRPEniSIAiKUQ6NJbSfHEH0nZsg9JD8WWL9j7PkJglPbbCQwcAJIHZSL7m0FeamAC8sMGrlAS9piJ3dvE=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3359.eurprd04.prod.outlook.com (52.134.1.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.13; Fri, 9 Aug 2019 11:29:08 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 11:29:08 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH v2 1/6] dt-bindings: arm: fsl: Add the S32V234-EVB board
Thread-Topic: [PATCH v2 1/6] dt-bindings: arm: fsl: Add the S32V234-EVB board
Thread-Index: AQHVTqWokwLnrOjveU+AMnEcXYSIEA==
Date: Fri, 9 Aug 2019 11:29:08 +0000
Message-ID: <20190809112853.15846-2-stefan-gabriel.mirea@nxp.com>
References: <20190809112853.15846-1-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20190809112853.15846-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: AM5PR06CA0024.eurprd06.prod.outlook.com
 (2603:10a6:206:2::37) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 98e1032c-ff41-4069-98ec-08d71cbccb1a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3359; 
x-ms-traffictypediagnostic: VI1PR0402MB3359:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB33595D9A337A0DEF66372988DFD60@VI1PR0402MB3359.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(396003)(39860400002)(136003)(346002)(199004)(189003)(66476007)(66446008)(66556008)(64756008)(5660300002)(6512007)(26005)(186003)(2201001)(52116002)(76176011)(8936002)(99286004)(14454004)(50226002)(4744005)(1076003)(86362001)(66946007)(71190400001)(71200400001)(4326008)(386003)(6506007)(53936002)(478600001)(102836004)(110136005)(2906002)(256004)(25786009)(8676002)(66066001)(476003)(2616005)(54906003)(2501003)(486006)(316002)(36756003)(6116002)(3846002)(6486002)(7736002)(6636002)(7416002)(6436002)(305945005)(81156014)(446003)(11346002)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3359;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: d5/G2lIYQdH0iNJbZzv97T3kH/Krk9d+pJ4MGLAE1/2SAtitTy/Vrv7RvsRT05bb2CuAb+C80QoPDoMCWeHnC4/dmFZIZOLMNwZURpIXGD5EMf7UExSCPOb/hywVMyNVMRjSplFg46TsfebRCB4r++7AsIs963s6vwD4jKBCWiXlExP2WkFpXE/am/9kEKiV4KMYkiWOVLJrHoNTBSu7K3bTdJhwiL9E3XEo+jf9Ai5iwV5eMzhc5NjvlBzyh+zfvVQmdtEgXuWdH/9ekXXnn5RV2wcNxsWWM6xYIJVMfBa3/1DIPt66kQvaFom3vG2d5eOPS13mK+YiqkHih896nnb4TKcqDUzW05obDGDz9fVy/rcqgpfGb7bPAXhmVh+W9u9Z/FpuduQ6qIucpI8zO45+/lD6aYQVxayuneXl840=
Content-ID: <EFD5A50DFD96F44EA7EE9C248A236DF0@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98e1032c-ff41-4069-98ec-08d71cbccb1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 11:29:08.7280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PJIOT03s4tDLQ4ixMCvIJME0tzZ0rxQIJcNjJ7YC//bmewlc+EePdPG2D4sBoGXtDJ2ooaCJiVKkD/al9edVMZtQzkzVrvwUSMWjUR4Cp6U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3359
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_042914_220953_D9394338 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
dGVmYW4tZ2FicmllbC5taXJlYUBueHAuY29tPg0KLS0tDQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbCB8IDYgKysrKysrDQogMSBmaWxlIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2FybS9mc2wueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9h
cm0vZnNsLnlhbWwNCmluZGV4IDcyOTRhYzM2ZjRjMC4uNTk3YzU2M2JkZWM5IDEwMDY0NA0KLS0t
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbA0KKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbA0KQEAgLTMwOSw0
ICszMDksMTAgQEAgcHJvcGVydGllczoNCiAgICAgICAgICAgICAgIC0gZnNsLGxzMjA4OGEtcmRi
DQogICAgICAgICAgIC0gY29uc3Q6IGZzbCxsczIwODhhDQogDQorICAgICAgLSBkZXNjcmlwdGlv
bjogUzMyVjIzNCBiYXNlZCBCb2FyZHMNCisgICAgICAgIGl0ZW1zOg0KKyAgICAgICAgICAtIGVu
dW06DQorICAgICAgICAgICAgICAtIGZzbCxzMzJ2MjM0LWV2YiAgICAgICAgICAgIyBTMzJWMjM0
LUVWQjIgQ3VzdG9tZXIgRXZhbHVhdGlvbiBCb2FyZA0KKyAgICAgICAgICAtIGNvbnN0OiBmc2ws
czMydjIzNA0KKw0KIC4uLg0KLS0gDQoyLjIyLjANCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
