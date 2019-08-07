Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCD684775
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:34:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O91V3kmYt4N3+IFy8nCoL7NLnt9QJOSBsf0EfaI8Wlw=; b=bi9SDWpGUyrS26
	izppN1OppHfy1f3B+Sbm7klA5w9FVQbUIqY/bvHlECdNn65jJ2TolwhylJAZVFc5Vric4tyi2vmTn
	3mkPxFnguYSciTIcGfS/mpD0B/UMQijafZjSDo8HHdmhT0ydFPvCYNp9pUA/VoYrYxU9QCklciORR
	v7A+1O3D+WdZKeqKBoV0bTDcBVOe3xYAdO3Q2ygkFNiZvXW7IXLiyV2GejZBTCZx29ty4feDuwT5m
	5buTZOU1pFXkAaz/lIxGKz7XQQwVU7Ak+yNd162q0iU4C8igh653eLSVFQ7/soyWw/ms1s1b8ncTj
	ZmbuN8teI6bfILmskWpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHOX-0000c4-BK; Wed, 07 Aug 2019 08:34:05 +0000
Received: from mail-eopbgr130100.outbound.protection.outlook.com
 ([40.107.13.100] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHHS-0002vu-Pb
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:26:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kVllv5MTvrVclAKhUuM1zMilcut9Q7wAlL6KFz4Udj0lEHwV2IHaF6tTQ5tLPljs15bYI+dfd9dW05TaYLlzOvj+XY0U2x/PvQ+T0LXQgbGxgtM3NIT7j1skbY7u3I1QWvCCuvIJj3Prc6d6Ca8l2TMFy9eJkd+XByFRnUc0Nd4GHWyAf7/wxbzO4BorRwYfmTiPasXXTpcxzxQ92V4yXtT3koDajOp+RYpLvcDvNUOzpci1Aii88mGPf93nyqU6DQPI2Njn0pa0cWz7iWOhvEVFRUXcjHcOmk0y7qbyvhhM2mAYEaogEdlLcq0Qo4GgbTPfZMmbdjoGranSvsCh0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ku3AQfp5VQeDR/9dE4om5YBobpXhmfT8C78mfIroT5M=;
 b=ZJtQyoG0s3+cBwJe37O0LbP6DlhDFD8CQzNIGU331p6W2v6lz8Pcza1ASE2y0d5zYavI/666dH7zabH8BtHnqDPnO9oYcK2JsxLclrPLCjcj2GK/zaIbhoZv1Qmh5oZup79oifuZ4nyCNsMYaq048ecickihacCfpghSL4y/gLQrG3b24O7hvmZWZwiRA+BCkxWRKBJ9ygUnzCHf7BZCCvXzkA+Dwn2Yd65SwmXrFgJ5LFZIu/7gpiAiTUQU93xbCdhgQBTkIA/z0iva01iUdS57yvPG4iB5/w/1Yy1WYWNep05xdavB4SqVag8bpkFb3eEElN5qAemPcp6A2KZyAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ku3AQfp5VQeDR/9dE4om5YBobpXhmfT8C78mfIroT5M=;
 b=croJcq/e9v23KVGfHXesCs0aiYygA9SCcFsuzJo9ji/e0EclYMo/wUiUaVGAfNEokET0LxoBnBTtdmmxiSyGNJ7uH8r/zjw2swgytV3d5YshUNfrOtA2fPqKUpCLj4Bs3HATYw8hOm1y+u1kNXnyFiqMzIu0EEXGKDeYMDOzVBo=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3614.eurprd05.prod.outlook.com (52.134.7.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Wed, 7 Aug 2019 08:26:45 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 08:26:45 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 19/21] ARM: dts: imx6/7-colibri: switch dr_mode to otg
Thread-Topic: [PATCH v3 19/21] ARM: dts: imx6/7-colibri: switch dr_mode to otg
Thread-Index: AQHVTPnYpzmKFIEQakCY1BjdKzKruA==
Date: Wed, 7 Aug 2019 08:26:44 +0000
Message-ID: <20190807082556.5013-20-philippe.schenker@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR0101CA0044.eurprd01.prod.exchangelabs.com
 (2603:10a6:200:41::12) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dd8aebf6-b3c7-417c-5029-08d71b10fb4e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3614; 
x-ms-traffictypediagnostic: VI1PR0502MB3614:
x-microsoft-antispam-prvs: <VI1PR0502MB361419D9772F15FD356515C0F4D40@VI1PR0502MB3614.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(396003)(39850400004)(136003)(366004)(199004)(189003)(305945005)(14444005)(6116002)(26005)(81156014)(76176011)(36756003)(3846002)(6486002)(86362001)(6512007)(478600001)(25786009)(71190400001)(2906002)(7416002)(81166006)(256004)(316002)(71200400001)(2201001)(44832011)(53936002)(7736002)(110136005)(8936002)(54906003)(52116002)(66446008)(64756008)(14454004)(99286004)(476003)(102836004)(8676002)(6436002)(1076003)(66556008)(5660300002)(6506007)(2501003)(4326008)(66946007)(486006)(446003)(11346002)(66066001)(68736007)(50226002)(186003)(66476007)(2616005)(386003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3614;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GVqh8h7h0ixmkXCtfV8tDccrbp0bZhaO9eyt3cWVGoIPVNi53ulcc6CIP2KrF72fv1Fp7VP5dH9YZh7hbLPo4EXnYmlwv77yubGzgorzxAWKoWeddM7TDOqnf4M8ZDTdv0DnAX93W3kbO8mo5hj514tU98nmNEfRZm+MyDYqRdYuE/Yspp7jTQsUsxnt03TELT//9MedTQcfVSSlzmRb5msbwSP3G5zLsz6Sin712TOzMvYp7U++deyRYIUbVug0atdkCYZta6z/eVNV5wRX7VueqQuv79XHCW3npT/wtVSNYmuHo+6WFJH5qNI1O90/kVCj/BVlpOeZTs1TEtQmKNVXU9JKNTunC+Zh6PWL9qKV6SjO0lxEulpIvVfzWfPGkeNwt0hEHocbleRUqJmyWbltnTkzg0Rpb8TWRkhEpRI=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd8aebf6-b3c7-417c-5029-08d71b10fb4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:26:45.0522 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ae+nn+lNBJSnsFzpjCKnSRbx9pfVNp6gmNfFDfkhnif8DFtLyELqg19HZaDZSJk0t7e6wWoRPzkrtKTn1YgN2s6rjVqCFEbC6jIjDs+HkUM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3614
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_012648_078394_A3BA3F10 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.100 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.100 listed in wl.mailspike.net]
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
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order for the otg ports, that these modules support, it is needed
that dr_mode is on otg. Switch to use that feature.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

Changes in v3: None
Changes in v2: None

 arch/arm/boot/dts/imx6qdl-colibri.dtsi | 2 +-
 arch/arm/boot/dts/imx7-colibri.dtsi    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
index 9a63debab0b5..6674198346d2 100644
--- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
@@ -388,7 +388,7 @@
 &usbotg {
 	pinctrl-names = "default";
 	disable-over-current;
-	dr_mode = "peripheral";
+	dr_mode = "otg";
 	status = "disabled";
 };
 
diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index 67f5e0c87fdc..42478f1aa146 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -320,7 +320,7 @@
 };
 
 &usbotg1 {
-	dr_mode = "host";
+	dr_mode = "otg";
 };
 
 &usdhc1 {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
