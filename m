Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 989FAD975B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 18:29:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yQyaKVvYI0g31S1vcUscVZcQBVCH/knKTkc+ACZUUl0=; b=uvPAIcpZ85vC+P
	xkpYMPfsCxGJGCDBk73ps5yx50m5M/pvRQdqqbNJenD8R4lBFZk7vK2q2kS6oj4j0yvVaAMdH9X3F
	wDXQOExPCal+DgDEodvtiXpAfC/hshesSxptWW/emrURjBxZ5YuL2XLKYcx9K3wZ8GatijawkYDQS
	atsZd8YxybsLz8O/AKbkc4rGlQyVwVZ4kOFahL21RysQCFJ5uCNTG/nO9cjfFjVbxhMXQMSANTscu
	+DiOJuy7X/xYjpFYoJIxWOQP/JcLXVw3xGxdIR1HONHvNg8qVGGcF7CVuBZuXszk11jyQ7c+cdq9F
	slH0WwNxmQ0crnU6KvQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKmAs-0001ET-1e; Wed, 16 Oct 2019 16:29:22 +0000
Received: from mail-eopbgr30131.outbound.protection.outlook.com
 ([40.107.3.131] helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmAP-0000yJ-Ic
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 16:28:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CvwvDY+8w7lUeBXYSYtZwGSHv5yZ9IzVkNhEOTH+hicAZzGtcNcCp/Mh0K5hw2+F53ebAnwx2VxJEtrphH8K+BSmPVlcS4VUwmjPjIB3MDeCoE98SzEFRJ1zuSzNzmntLWoh9qbOuhlfGreGRAe+TYXb40xqRH49vJtwogCvekTtBJUOPz1W9dqvOcpB+RAzoBqoBbvPlabO/aiw5D0QbsXhz7Q/4wjE0NhEjyf0Dax76B902JifB16pEd4OuBvkiCGMjhL4NIbsrZR9/C8CD3H/slMSE5SCUQ2OK+37ONt5ftdCgPa6Eb4ySSFvul4CJ7jIsKxHPuhscL+XAgkCEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HIfdlUkn+rcxnXUzJe0RcqcduXG71RQCzjp1HpOG9y8=;
 b=Z5tDW5NHCCXMg3KuMlP6leb8GjIuokjFSielJSDeHoGeoBjOgA2EIOozs4+X2AFMm5Wj68CR+BPZo4mRsNr175RIdyhPdOwcZsia67X5mQHyMl8pbvit80ojCZLpVOAimsekwUByj2SXbEAk7yIRf65R/EA0natZw2jDsoXUUnEAE3pX/v/1AjZEvuZOUqZ+FJqaKLOzG9qH68Gh3H80i0WVgUc9RrTYWwYpNVhSl1jGGGPm8St5CooPuI/7X5OgUV175OocjvP/3mlrBgJfV1RvvwmglxhXr2DnjteJSu6IAF13OdlPe7YWxl1cyN+M3z1WTghv/67PhPQRRpifFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HIfdlUkn+rcxnXUzJe0RcqcduXG71RQCzjp1HpOG9y8=;
 b=rkY1UVNxKsoWd3hnMHDms/ElKB7IqoWBx5YCMYlZ05ZVn593CPMUZyYE7X/eKGt3XfU5RXF+1xG+HaAC5W8X4eEVlX5QhVLDM0hmywfvfbA6Uc6SBkSMTEJUpPlwaYpooN9CvCuxLAQ3anL1HOGi7nrzn7a/AFXyikKcs5tu2Ig=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.19.20) by
 VI1PR0502MB3629.eurprd05.prod.outlook.com (52.134.7.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Wed, 16 Oct 2019 16:28:42 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f427:26bb:85cf:abad]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f427:26bb:85cf:abad%7]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 16:28:42 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Shawn Guo
 <shawnguo@kernel.org>
Subject: [PATCH v1 1/2] arm: dts: imx*(colibri|apalis): add missing recovery
 modes to i2c
Thread-Topic: [PATCH v1 1/2] arm: dts: imx*(colibri|apalis): add missing
 recovery modes to i2c
Thread-Index: AQHVhD7G2HgM23iAn0WcdFEjmyuWhg==
Date: Wed, 16 Oct 2019 16:28:42 +0000
Message-ID: <20191016162833.1893-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0006.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::19) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:26::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.23.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a907b77-bd25-4845-7a97-08d75255e8a7
x-ms-traffictypediagnostic: VI1PR0502MB3629:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB3629279C3F9037A7CDE5ACFEF4920@VI1PR0502MB3629.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:330;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(136003)(346002)(396003)(376002)(39850400004)(189003)(199004)(66066001)(26005)(86362001)(54906003)(36756003)(8676002)(7736002)(4326008)(66946007)(71190400001)(71200400001)(478600001)(7416002)(6512007)(256004)(14444005)(44832011)(386003)(66556008)(66446008)(66476007)(2906002)(64756008)(6506007)(5660300002)(102836004)(99286004)(316002)(186003)(25786009)(1076003)(486006)(14454004)(8936002)(2501003)(81156014)(3846002)(2616005)(50226002)(305945005)(6116002)(476003)(6436002)(81166006)(52116002)(110136005)(6486002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3629;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CsfvtETTs/Rak1A3+Jivp/bBPkqwRzv4knQzjfIAbjvZ6DymGa5SPidouvpUw8gJZb1RVRC2R4vjiOZ6fZ0mYTjN/UkpAebyRXSYDXkA6Paa+91K3NxkPLJUkh1GPFnfCRDledB16LiTKUSpESULGq8Poiit1eNiYNNmHNpOe3XMaNBXLiC+eiNgEcKOLFxp0Ol0gAzxEKxKSVd6gJn9lf11VtTwI/GRxMIwTM1FA1pAjcLRP0neF9eNuYK9e0ZryQ3zfHtPb40C/6BtnNY3bTFth1gGH4B3Y4VdVsf8Iltbg6wTsaBaq3VfEhCd27f9v5lKUKLVuLVhY0xf5CkjGAX1WezKci7vQDTvHSF3XtlllO8v+tFbroycn+ekKZ7mFY92fBmWAuxZQkyYIbtERPVuezi4ERErg5F1KFc//Ic=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a907b77-bd25-4845-7a97-08d75255e8a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 16:28:42.7630 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JoOCd6wIJQrnEdAhDtIuFOUYQujGgG6QP7zGMmQJcOzG3Nu21WLbl6ya1gpg2IIUQaXeocNp5XdQjL/g47t08XDjbr+lJBFaQ/qgJk9mWT4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3629
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_092853_614069_DCE1BE4D 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Luka Pivk <luka.pivk@toradex.com>, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds missing i2c recovery modes and corrects wrongly named
ones.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

 arch/arm/boot/dts/imx6qdl-apalis.dtsi  | 26 +++++++++++++++++++++-----
 arch/arm/boot/dts/imx6qdl-colibri.dtsi |  6 +++---
 2 files changed, 24 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-apalis.dtsi b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
index 7c4ad541c3f5..7baf4a6f04eb 100644
--- a/arch/arm/boot/dts/imx6qdl-apalis.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
@@ -205,8 +205,9 @@
 /* I2C1_SDA/SCL on MXM3 209/211 (e.g. RTC on carrier board) */
 &i2c1 {
 	clock-frequency = <100000>;
-	pinctrl-names = "default";
+	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_i2c1>;
+	pinctrl-1 = <&pinctrl_i2c1_gpio>;
 	status = "disabled";
 };
 
@@ -216,8 +217,9 @@
  */
 &i2c2 {
 	clock-frequency = <100000>;
-	pinctrl-names = "default";
+	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_i2c2>;
+	pinctrl-1 = <&pinctrl_i2c2_gpio>;
 	status = "okay";
 
 	pmic: pfuze100@8 {
@@ -372,9 +374,9 @@
  */
 &i2c3 {
 	clock-frequency = <100000>;
-	pinctrl-names = "default", "recovery";
+	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_i2c3>;
-	pinctrl-1 = <&pinctrl_i2c3_recovery>;
+	pinctrl-1 = <&pinctrl_i2c3_gpio>;
 	scl-gpios = <&gpio3 17 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	sda-gpios = <&gpio3 18 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "disabled";
@@ -646,6 +648,13 @@
 		>;
 	};
 
+	pinctrl_i2c1_gpio: i2c1gpiogrp {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_DAT8__GPIO5_IO26 0x4001b8b1
+			MX6QDL_PAD_CSI0_DAT9__GPIO5_IO27 0x4001b8b1
+		>;
+	};
+
 	pinctrl_i2c2: i2c2grp {
 		fsl,pins = <
 			MX6QDL_PAD_KEY_COL3__I2C2_SCL 0x4001b8b1
@@ -653,6 +662,13 @@
 		>;
 	};
 
+	pinctrl_i2c2_gpio: i2c2gpiogrp {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_COL3__GPIO4_IO12 0x4001b8b1
+			MX6QDL_PAD_KEY_ROW3__GPIO4_IO13 0x4001b8b1
+		>;
+	};
+
 	pinctrl_i2c3: i2c3grp {
 		fsl,pins = <
 			MX6QDL_PAD_EIM_D17__I2C3_SCL 0x4001b8b1
@@ -660,7 +676,7 @@
 		>;
 	};
 
-	pinctrl_i2c3_recovery: i2c3recoverygrp {
+	pinctrl_i2c3_gpio: i2c3gpiogrp {
 		fsl,pins = <
 			MX6QDL_PAD_EIM_D17__GPIO3_IO17 0x4001b8b1
 			MX6QDL_PAD_EIM_D18__GPIO3_IO18 0x4001b8b1
diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
index 019dda6b88ad..4ed7ae57030d 100644
--- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
@@ -312,9 +312,9 @@
  */
 &i2c3 {
 	clock-frequency = <100000>;
-	pinctrl-names = "default", "recovery";
+	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_i2c3>;
-	pinctrl-1 = <&pinctrl_i2c3_recovery>;
+	pinctrl-1 = <&pinctrl_i2c3_gpio>;
 	scl-gpios = <&gpio1 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	sda-gpios = <&gpio1 6 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "disabled";
@@ -516,7 +516,7 @@
 		>;
 	};
 
-	pinctrl_i2c3_recovery: i2c3recoverygrp {
+	pinctrl_i2c3_gpio: i2c3gpiogrp {
 		fsl,pins = <
 			MX6QDL_PAD_GPIO_3__GPIO1_IO03 0x4001b8b1
 			MX6QDL_PAD_GPIO_6__GPIO1_IO06 0x4001b8b1
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
