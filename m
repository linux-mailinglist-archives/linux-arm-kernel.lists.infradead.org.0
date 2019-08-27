Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9D99E92E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZR+3Ozgm7L2ShbmDDiYIB/0OqyrQjvzT0llwvFp5Xo=; b=SYrr+NH8PJV7+z
	HAhXy1m6VYp9XMM781dSAHdiqULCy18M4b+2MmgEwKay3BhMFj/LAPG8M0Exei962U86Po3C1VHS2
	EYmuG8dS26Rkj7LquYOZd2/f8uTx9bh3F4/jDnCHDuXjlI+ngIrbvbRVuOLPv1a2J0OoZVWPEsU7i
	mVe+u/EFKag3WXII1/3fNvQzdyP48zns+U586MXk9T1TOgKd6QvF2wX8xbs/3P3xRr5V+Mg3ltSFg
	BI4TTmViFgYJEuiQNeZiITc53ESBt+tDWdJaQc22Jz75Os4L0aj4JoAUX5BhvWSQ8yYVbYjiwPJVK
	Y3rM8HwM2XmCEbI9Czzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bRo-00081M-V2; Tue, 27 Aug 2019 13:23:45 +0000
Received: from mail-eopbgr50113.outbound.protection.outlook.com
 ([40.107.5.113] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bMw-0002cb-ON
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:18:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DiSu1ZOt0aoneEX8jbUaKfKlCKgCZxrEAvs00zTZZ6ogCqxf70oXKcedp2+dtAJPPFBVZgiIYEHy5ZO5PGeuPBF5qtVpBMZ9WBn0q6lsc503YezXIRPvCxh6xI8M4voEpJGfqmqQtuF+VPvC0Jfb00H/fwWc6DlCGeL5gTvFvxkIc21wScu9nxmN0gf7bsf+B96qC7JnlBEVai91CWJLKJzd/EOxiLcPdUCDnzWJGNa0Yff066DzWotWUUin/TLgvNLpb/eoCqLANom8PoktbfRd4HegrCQbRl0y57xUx5xMCwFPPqwKVU2LHCtY6fPH3tKObCcWr4MXJVt3oB/CGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h7Zuy8caVejUd1TKmXB6UJ7ftoxgSyhXZB99usYxeQY=;
 b=Z1vAC0jrIOADonffeSpbF/WpXttGUeeD1mbqoMa1aXB4TjlPKlNwY5A4ZeHt356PcJVOrQvAsCosCrOcWeUtHeeBIBYZfY8oxaLMrm7WF4Tkm9Gy1vGnkIkpqpIUIApYZJRrSne70tir6rGsiH4CqKHF+hRpMeVmvIt7N11cT849/y98Yaf92W7k5WrDU36jgr4j9b3Wb08rLVkKHUnTfjOyyBGrgaYfQ4iwp0kyFAyZLubVcuOcMcEkmrerlqXZePkTXpDJQSCL+CHo0hlMxI34ZSqLh4HLscPwjYKIJbQ+/pcOYGObq51FTKUdJU09WKFAQAzSJuyrd6kQBTrODg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h7Zuy8caVejUd1TKmXB6UJ7ftoxgSyhXZB99usYxeQY=;
 b=cqm7FLG9XnhMdRQ4Yjk9VEfjmOH6KHd2fyjcYLVp1AAY3zK0gdPVFpuHZypEY8i3TLjG5EwPp7k1IBdnzcTybtnBgo1LMeUqfL8lDrJM/7i/cA6uvEmdkzHPHSvIE7eE7Xg3ew9r3YFP8OHdGL48pt2NAUJ3FzFCSbhyQ7z3R+M=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3008.eurprd05.prod.outlook.com (10.172.255.143) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 13:18:38 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9%6]) with mapi id 15.20.2199.021; Tue, 27 Aug 2019
 13:18:38 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan @ agner . ch" <stefan@agner.ch>,
 "devicetree @ vger . kernel . org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v5 11/13] ARM: dts: imx6ull: improve can templates
Thread-Topic: [PATCH v5 11/13] ARM: dts: imx6ull: improve can templates
Thread-Index: AQHVXNnwSzVNFthVukSntF0iDrSMvg==
Date: Tue, 27 Aug 2019 13:18:38 +0000
Message-ID: <20190827131806.6816-12-philippe.schenker@toradex.com>
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
x-ms-office365-filtering-correlation-id: cb1430dd-7084-4465-90a5-08d72af1127f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3008; 
x-ms-traffictypediagnostic: VI1PR0502MB3008:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB3008E5201AEE1C944EFA59FAF4A00@VI1PR0502MB3008.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(366004)(376002)(39850400004)(396003)(136003)(199004)(189003)(4326008)(256004)(36756003)(6512007)(14444005)(86362001)(5660300002)(25786009)(66446008)(64756008)(66476007)(66556008)(1076003)(478600001)(66066001)(316002)(110136005)(53936002)(71200400001)(54906003)(71190400001)(7416002)(8936002)(8676002)(52116002)(76176011)(6116002)(6486002)(50226002)(3846002)(2906002)(66946007)(99286004)(486006)(44832011)(2616005)(14454004)(305945005)(6506007)(386003)(186003)(7736002)(26005)(81156014)(81166006)(6436002)(476003)(11346002)(446003)(102836004)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3008;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RucAMYAzp0x4EMb0fQjEekTnMl1oPiwb31mrQATyYwBiKeW4vsJBEwpvooNZPaCXBgmijrUL3sMmfp5cT9H+vwVr3EHLWU5tgHjYh6AUIqJ1NwWj/1yaSgvmAcQA3WL95i4tHnfoXWVh2nwz7spUgtUSI/LUvu4mHH+VWnxIOijZfARJvuR54MVqBpzlujXzkpw00W2EtSLXKupn8BC4+Q8ggofXedCvITsVppKAbKlLzHMRLYWxkUWcYWxjlTqbFpd1T7KCVgNkAAWPmkjoY/QiXpPH1e6NUHauks3CbmIo+qiXoXqDcC48YARFWnocAzshijYmiApbqmXMI/dESsoXiDqcmytF0S4P66TEFNrvMTqSOYGVQ1S8/vLrE6Pad0u0Zy2Hg2qDDHYdLcT2bK00iAgr78o5pxn5wyT/du0=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb1430dd-7084-4465-90a5-08d72af1127f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 13:18:38.4238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: haIZTGwRzCRsoj90YVZT4v1hIfX/Rd1lXBUQuQUbKi87WyGlajcD32M2xcREcKyNVoAkUJacKh0hl2H88ArQIyYSahFPuzxJT+VBjwuP+Hg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_061843_120097_9D5B9E18 
X-CRM114-Status: GOOD (  13.27  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Max Krummenacher <max.krummenacher@toradex.com>

Add the pinmuxing and a inactive node for flexcan1 on SODIMM 55/63
and move the inactive flexcan nodes to imx6ull-colibri-eval-v3.dtsi
where they belong.

Note that this commit does not enable flexcan functionality, but rather
eases the effort needed to do so.

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

---

Changes in v5:
- Added Olek's Reviewed-by

Changes in v4:
- Move can nodes to module deviceteree include imx6ull-colibri.dtsi

Changes in v3: None
Changes in v2: None

 .../arm/boot/dts/imx6ull-colibri-nonwifi.dtsi |  2 +-
 arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi   |  2 +-
 arch/arm/boot/dts/imx6ull-colibri.dtsi        | 28 +++++++++++++++++--
 3 files changed, 28 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi b/arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi
index fb213bec4654..95a11b8bcbdb 100644
--- a/arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi
@@ -15,7 +15,7 @@
 &iomuxc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpio1 &pinctrl_gpio2 &pinctrl_gpio3
-		&pinctrl_gpio4 &pinctrl_gpio5 &pinctrl_gpio6>;
+		&pinctrl_gpio4 &pinctrl_gpio5 &pinctrl_gpio6 &pinctrl_gpio7>;
 };
 
 &iomuxc_snvs {
diff --git a/arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi b/arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi
index 038d8c90f6df..a0545431b3dc 100644
--- a/arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi
@@ -26,7 +26,7 @@
 &iomuxc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpio1 &pinctrl_gpio2 &pinctrl_gpio3
-		&pinctrl_gpio4 &pinctrl_gpio5>;
+		&pinctrl_gpio4 &pinctrl_gpio5 &pinctrl_gpio7>;
 
 };
 
diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi b/arch/arm/boot/dts/imx6ull-colibri.dtsi
index e3220298dd6f..6d850d997e1e 100644
--- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
@@ -54,6 +54,18 @@
 	vref-supply = <&reg_module_3v3_avdd>;
 };
 
+&can1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan1>;
+	status = "disabled";
+};
+
+&can2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan2>;
+	status = "disabled";
+};
+
 /* Colibri SPI */
 &ecspi1 {
 	cs-gpios = <&gpio3 26 GPIO_ACTIVE_HIGH>;
@@ -256,6 +268,13 @@
 		>;
 	};
 
+	pinctrl_flexcan1: flexcan1-grp {
+		fsl,pins = <
+			MX6UL_PAD_ENET1_RX_DATA0__FLEXCAN1_TX	0x1b020
+			MX6UL_PAD_ENET1_RX_DATA1__FLEXCAN1_RX	0x1b020
+		>;
+	};
+
 	pinctrl_flexcan2: flexcan2-grp {
 		fsl,pins = <
 			MX6UL_PAD_ENET1_TX_DATA0__FLEXCAN2_RX	0x1b020
@@ -271,8 +290,6 @@
 
 	pinctrl_gpio1: gpio1-grp {
 		fsl,pins = <
-			MX6UL_PAD_ENET1_RX_DATA0__GPIO2_IO00	0x74 /* SODIMM 55 */
-			MX6UL_PAD_ENET1_RX_DATA1__GPIO2_IO01	0x74 /* SODIMM 63 */
 			MX6UL_PAD_UART3_RX_DATA__GPIO1_IO25	0X14 /* SODIMM 77 */
 			MX6UL_PAD_JTAG_TCK__GPIO1_IO14		0x14 /* SODIMM 99 */
 			MX6UL_PAD_NAND_CE1_B__GPIO4_IO14	0x14 /* SODIMM 133 */
@@ -325,6 +342,13 @@
 		>;
 	};
 
+	pinctrl_gpio7: gpio7-grp { /* CAN1 */
+		fsl,pins = <
+			MX6UL_PAD_ENET1_RX_DATA0__GPIO2_IO00	0x74 /* SODIMM 55 */
+			MX6UL_PAD_ENET1_RX_DATA1__GPIO2_IO01	0x74 /* SODIMM 63 */
+		>;
+	};
+
 	pinctrl_gpmi_nand: gpmi-nand-grp {
 		fsl,pins = <
 			MX6UL_PAD_NAND_DATA00__RAWNAND_DATA00	0x100a9
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
