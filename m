Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D8C7C196
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:39:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xhapyQrlE9zwvLfGO9gBeerDjF+S0gRbb/vekcOW24o=; b=t1cf51GZ+sYU2f
	RuOWrsWfWW4GNr0fD1LLNGix14Gp0n0dQj8FR40uz+VQcVu/2bPR02b6MoN8LfWP8V8SbdBwY1dD/
	tGuA1bqEfyIFJZpHHtEALH+MPGHgJ+VmduxbgBla+/1+ZXZYyNEUPa6bqmWJo6jkPL2KGZqjj2HPi
	LVk09u7Ypk/+EHQA4UvBYEz9rW0zFsAq562MmqW14qXrDhJ1SSqBaM/MypEcDH1l+uBNLpgY8PNJD
	IsR/fVj/ns1IaYzPEQDUHCq6+H3PcTsKf91VmvoJ+VMp4CkRPWBoHeKStn6Gmp6pLT6ypxxCXcyNq
	NrCJPsdnhUEnpdDw0tzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsntF-0007Qn-7A; Wed, 31 Jul 2019 12:39:33 +0000
Received: from mail-eopbgr50113.outbound.protection.outlook.com
 ([40.107.5.113] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnrw-0005tW-MF
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:38:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HYfpPSlqiSn7R3eJwgcVpOqmewDRHJmR4+wy+vgnYHPRXTeS6Y7En8XKnUtkpwIW8A3Fo6m8kOgXyaQXaE/9KgoELPSaynrnSPu/kkpYMToGMPD60B0h328HgJBXhGXvyPWlRGDl3GENr+zS+8MJFen5iy2lfu3IiPBq1aKbThq1tjsKS/1J9Yuq/yFsl79XQlO24PclM2umjxsOT4B9kI22g3i6l7IU5wx2THfxYC7W18YjAsv/ZrGKI9b9AthfO+aIlGXAOcHxG+ZSnEUMobCEeFs1hTomqnAq4QBa9WLsiLwMpAZT/UvusxmUskOsRQm0lFS+l7Gv8asulmt8GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=buyK0CMD+beFl7G57vrFpq3e8zJbHvyfKR7qawHIy9s=;
 b=X1xJoGLdx1Ec+6JhspPipi70bGHAxvwdZ23ZiDdXunRnT1sA/ASyeTtreGDRIVHzKS5hzXb9Qvc9z3+JtqRyBySIo98IhBsVelos3CXp6Ih0FAEhElqb2SYZrmkYTdWkXbNZ1WyCR8JN1C68IE52CheluwHZJRcdmdvtOCIP8B0xIxglyOsIGJtqyK2Z13/QvvsdFQDBiVeGIFrAuJHbjJW6sWoWqy5943gTy9Atg2DzociIjGE4nGC8PkHbGhrv21u+XRAcT1gDw7rxvR8hU+nJ7LQ+S1kl9V3Iq1apgJER+xgXr+f8/HOhQ5rz8+xEJrGQrG+cVOlpXAd+1/mAJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=buyK0CMD+beFl7G57vrFpq3e8zJbHvyfKR7qawHIy9s=;
 b=rqUmfu1ivtMxgzM3JJcWVrsSTHIs+8b3lgVBOVDlGMMeSm6/BUkXU+Ofm7apRMSKj1Fo5TYDH4+6YOf9dAwXRSa64ouDWAYTrj+wNY0F4U3J3dLJVVKSwy6BxV6Ck0QTroIgjdK2Oks9ff+6VnAUB0Lb/wOBSG99CunFwVmRbYM=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3615.eurprd05.prod.outlook.com (52.134.7.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 12:38:08 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 12:38:08 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 05/20] ARM: dts: add recovery for I2C for iMX7
Thread-Topic: [PATCH v2 05/20] ARM: dts: add recovery for I2C for iMX7
Thread-Index: AQHVR5zO+FSW3mGr80K7Hkqp21YoIQ==
Date: Wed, 31 Jul 2019 12:38:08 +0000
Message-ID: <20190731123750.25670-6-philippe.schenker@toradex.com>
References: <20190731123750.25670-1-philippe.schenker@toradex.com>
In-Reply-To: <20190731123750.25670-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0012.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::25) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8d7c08aa-70d5-4566-b116-08d715b3f106
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3615; 
x-ms-traffictypediagnostic: VI1PR0502MB3615:
x-microsoft-antispam-prvs: <VI1PR0502MB3615ABAA73E9CACB6057958AF4DF0@VI1PR0502MB3615.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(376002)(136003)(396003)(366004)(346002)(199004)(189003)(66946007)(52116002)(66446008)(64756008)(66556008)(66476007)(76176011)(99286004)(53936002)(6512007)(6436002)(5660300002)(4326008)(7416002)(66066001)(6486002)(25786009)(478600001)(14454004)(7736002)(305945005)(71190400001)(71200400001)(3846002)(6116002)(36756003)(2501003)(68736007)(2906002)(2201001)(44832011)(486006)(476003)(86362001)(446003)(2616005)(11346002)(256004)(186003)(81166006)(81156014)(26005)(102836004)(50226002)(8936002)(8676002)(6506007)(386003)(316002)(54906003)(110136005)(1076003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3615;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: u9APjfAhrtjtW57wUVI7XyWHpQvOsCRkk1PQ+gKGiHwbDU8L8hRSmo8Ah1RAyEkvsh5nGzT/DvOb5zR9VVBvdNrwm2UlLXVumkXY3HE2rjMGJPJyBaNBN7upQETOucwe0B0AUK9AG9UnvtHZaL2tX+a6JOntHhAP0lMLmt3d6AkelxH4sMZo1upGu5Jok9V6FpEnB9mFUgh/aKVGWy4ar68UpKLaIxFxrIVpn8X4xTEo4AvWLgAqeNl0hjCjSmQt62ro9U//PGG8hfnYsZTzkDI2cTOvhIwEHmQJQ6JQWYL/lmZdYGPFTFywwSup7ROubeWFY4A8ytWVI6eTZx9+fzzyhXb0IZ2TVfMded7ok+AMwEhi38hkVRoDJEUZETec5VNT1IPEaWyMjR+/AGMxTVah1OA4kITGOsTv4fm+Xyo=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d7c08aa-70d5-4566-b116-08d715b3f106
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 12:38:08.5050 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: philippe.schenker@toradex.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3615
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_053812_753426_F79B5D28 
X-CRM114-Status: GOOD (  12.19  )
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

- add recovery mode for applicable i2c buses for
  Colibri iMX7 module.

Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

Changes in v2: None

 arch/arm/boot/dts/imx7-colibri.dtsi | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index a8d992f3e897..2480623c92ff 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -140,8 +140,12 @@
 
 &i2c1 {
 	clock-frequency = <100000>;
-	pinctrl-names = "default";
+	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_i2c1 &pinctrl_i2c1_int>;
+	pinctrl-1 = <&pinctrl_i2c1_recovery &pinctrl_i2c1_int>;
+	scl-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
+	sda-gpios = <&gpio1 5 GPIO_ACTIVE_HIGH>;
+
 	status = "okay";
 
 	codec: sgtl5000@a {
@@ -242,8 +246,11 @@
 
 &i2c4 {
 	clock-frequency = <100000>;
-	pinctrl-names = "default";
+	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_i2c4>;
+	pinctrl-1 = <&pinctrl_i2c4_recovery>;
+	scl-gpios = <&gpio7 8 GPIO_ACTIVE_HIGH>;
+	sda-gpios = <&gpio7 9 GPIO_ACTIVE_HIGH>;
 };
 
 &lcdif {
@@ -540,6 +547,13 @@
 		>;
 	};
 
+	pinctrl_i2c4_recovery: i2c4-recoverygrp {
+		fsl,pins = <
+			MX7D_PAD_ENET1_RGMII_TD2__GPIO7_IO8	0x4000007f
+			MX7D_PAD_ENET1_RGMII_TD3__GPIO7_IO9	0x4000007f
+		>;
+	};
+
 	pinctrl_lcdif_dat: lcdif-dat-grp {
 		fsl,pins = <
 			MX7D_PAD_LCD_DATA00__LCD_DATA0		0x79
@@ -740,6 +754,13 @@
 		>;
 	};
 
+	pinctrl_i2c1_recovery: i2c1-recoverygrp {
+		fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO04__GPIO1_IO4	0x4000007f
+			MX7D_PAD_LPSR_GPIO1_IO05__GPIO1_IO5	0x4000007f
+		>;
+	};
+
 	pinctrl_cd_usdhc1: usdhc1-cd-grp {
 		fsl,pins = <
 			MX7D_PAD_LPSR_GPIO1_IO00__GPIO1_IO0	0x59 /* CD */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
