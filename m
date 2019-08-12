Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6BE8A0B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 16:23:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikz9D6q+MJxu/4LKgW4k0vUq4rEFycJR8Sc4UgtjL/g=; b=ObfGPg74CxE3LX
	qciFgLCN20r3vqbPHakqmDlXG59yizl1dT+0jBGxkZLsWpDavgo4Ann4EzBiUFAjviQus/vR7tMhP
	UkSCJSPB82cEqi1SG3bZHfOfqElxo+q5tFIOixqjsMR/PcxFmNwQGVAVM9MjVdUih2TyK56vAZqVN
	tEXzZZ8gcw7kdgM+KxFnRSIe6a6Z0eKRnxiCUiboJvQ5c8mhDNU1R5+5XtGKeOlfK3s+gYoxRVcrn
	79EQUlkpG/NtgjIYPs9EHe2Rz2EVfoGj6HG+XWOdZloEAQL0jFf4Y9ashwxGQBnJGG9JprQ2tY0x3
	101L5qzF4K14382fYPAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBEi-00037O-7W; Mon, 12 Aug 2019 14:23:48 +0000
Received: from mail-ve1eur01on0711.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::711]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBCT-0001e3-UU
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 14:21:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n6l1qihiyKSNmdpR/0jeN6IkCsHbx1FKkOtgX+JE4zNJix/yhlyfMNNpErXqeJG1aeTxBc2dvqc0QurvDwRreT+QEAYPRl3HLCRH/PKLd9i4RkixHDzg/7KXdzJUHfEhgFWImakCJD9vFiX3uwqihNR+eOdi45EHzri3Q11e3/2JveF1OKHIveUDPAgfMHLLETH7JQf2TIP8a6em2xaOxuF4+Csw440xfhPi2aDRhr7wO22SAp/YDznSClv/TPiuXzEpTbnJQDV7WOLYsoOb1kcGJbeDMjmhrdU+eS2UvS6M6fB8i31U1IQYxlT+AetEgVLKvWy33C4k/xPdhhiK/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0vbSgR25oYej+vyC/BecXfhmGZndDAqL0BVgREiPctw=;
 b=arK30CI09fInUIyXM68fX8mVBljZ3y+uYRfVhyO0xsp6fzPRjq5gJDwJqz9cypEn5n8foxH1rKBJWQOFBujXOLHvtjx2CSkMuAHm/rOprXixdcs8OrKAG1wPGL3NizLrI49KZWy16ULNQsNp/BdWmQ/VjSuB2f2sv7yuYbcd6VdjtvcNodukibm4RKQluiosYM3/3ppjwZj/QgkfyxU772CYpjFVcfxCGqTx2DhxmPXqrelZWRLUbM6u6lzpWkEa7CsXc9wsMJgcBwU9hdpVbdPB7VYyjXWQvBoXYaHIX911CU2DI1MRZXpKxS4NTSUiyt3q4RkRMQYWFzNcK/SSfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0vbSgR25oYej+vyC/BecXfhmGZndDAqL0BVgREiPctw=;
 b=INoMzjSolVAqV8dfJeD8GEEahjtbagRgy38zKTGYxGsS7EnBU96JrgXPMNqMqqQrpiySnQ7myJ/GBK6iBxuIgttW+Ry0rUU8akjTeGsk6AeFOwvMRb8FPNoVwTURhYZBERWF8pR3Xk+DbU8sb9JHLDYK3Ohy4WS0h99L6jvpjLg=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2942.eurprd05.prod.outlook.com (10.175.26.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.21; Mon, 12 Aug 2019 14:21:21 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 14:21:21 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v4 05/21] ARM: dts: imx7-colibri: add recovery for I2C for iMX7
Thread-Topic: [PATCH v4 05/21] ARM: dts: imx7-colibri: add recovery for I2C
 for iMX7
Thread-Index: AQHVURk2Uw5ESt/Pfk61M9kvOJGjAA==
Date: Mon, 12 Aug 2019 14:21:21 +0000
Message-ID: <20190812142105.1995-6-philippe.schenker@toradex.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
In-Reply-To: <20190812142105.1995-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P194CA0055.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::44) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2d14e5e4-58d1-4734-2f5b-08d71f305927
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2942; 
x-ms-traffictypediagnostic: VI1PR0502MB2942:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB29426CB2B7BD7095FCEF337DF4D30@VI1PR0502MB2942.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:188;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(39840400004)(346002)(366004)(396003)(199004)(189003)(5660300002)(54906003)(110136005)(316002)(478600001)(6486002)(86362001)(2201001)(66066001)(53936002)(6116002)(1076003)(3846002)(2906002)(4326008)(25786009)(66446008)(64756008)(66556008)(66946007)(66476007)(6436002)(8676002)(11346002)(476003)(2616005)(446003)(256004)(81166006)(81156014)(2501003)(44832011)(6512007)(486006)(50226002)(71200400001)(71190400001)(7416002)(8936002)(36756003)(52116002)(7736002)(305945005)(99286004)(102836004)(386003)(14454004)(76176011)(186003)(6506007)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2942;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Nu/vkf1dbL5shZEEuvd48NVNc7c0bzlV8gWeiihxZI8HSsrVtCzQ6Hdk+lS72TV8gufmZs9mwChTE/olnDdSkXGWPMpx0hf8JGQ/75zcIrjuOrW0sSHYCoDy5zpbA6LYkX4Hlw3psH1ogFsI+89QX8wzk/lDx11H2E7YfroqeBvugszfqGglHVmWz+e7I8dNqeZYd5GcPhPeZE5iC9tlaqtF4KcrTCG02LI2Kp0OicJNX+/+v10gbj3d8wh3KmJUwZmIQiXNOIZSLUNiGVSeTWRevCYwpQDmyNYW+hA3Axi8lRp3mwmUJPScLCEku+siYOEUNCb6AEgkdKleNaaUhxKO42adKeV3K8NJ+8h6S6dI1aj3O7wFO8Gdl7EQ6tLsrSVS3NaQ8iUzVx8kSAprqlrJlPyjTch6no5svAEXspk=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d14e5e4-58d1-4734-2f5b-08d71f305927
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 14:21:21.4703 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p9u94HAvqzKKIZsfFP15tDaSGJeHE7njq4y9Y3XVd5XY0amHtQHAtI1AkfsTc46erMCo0AzkctJUs8wH3o7IulsfE8Zt1WrUqBP3CmYjPyo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2942
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_072130_102655_C9609BEC 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:711 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Changes in v4:
- Make scl-gpios and sda-gpios (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)
- Change commit title to Michal's suggestion

Changes in v3: None
Changes in v2: None

 arch/arm/boot/dts/imx7-colibri.dtsi | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index a8d992f3e897..cab40d22d24e 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -140,8 +140,12 @@
 
 &i2c1 {
 	clock-frequency = <100000>;
-	pinctrl-names = "default";
+	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_i2c1 &pinctrl_i2c1_int>;
+	pinctrl-1 = <&pinctrl_i2c1_recovery &pinctrl_i2c1_int>;
+	scl-gpios = <&gpio1 4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio1 5 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
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
+	scl-gpios = <&gpio7 8 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio7 9 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
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
