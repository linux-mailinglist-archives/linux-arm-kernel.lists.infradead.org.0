Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B16717993
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 14:40:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ft3x7Urw1sOFjaiM5iKctKLSH77lfO1yknPH8kvoygU=; b=jm1TL/kpxHFbXl
	zvWoQHQfPPnHCVE05XsAzS+dVPBTrNac69l/DYwrqNFeOKqoYGQ70Ynihe1f8nH4Az53+78tyBrjZ
	l1CfJAyVvuF5lyAMEVMPfBuPs++dR5Tb9Hcc/IsFXmLl8zIoK1uL8mpL0/cQU2Fltk/gd6YNIB847
	d1h150r51O7orFbWSSD5QSaQJGeYWgKt9AXL6oM96T/5s5gRuRUHpVlnIoJFzdf+W4+e5zIMrjnKz
	PlSi5R3eDVnN+kSRqJ9YwfAwKHZVtypofSfRooJxqTxdOHI4yJOclfb/qm4il+gPeA+skm+lJ0Xgg
	itJl1ar++SEVX5LrbPPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOLs7-0000ju-6Z; Wed, 08 May 2019 12:40:31 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOLrz-0000iz-62
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 12:40:25 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id C0045FB03;
 Wed,  8 May 2019 14:40:20 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nZU3glKHYqCD; Wed,  8 May 2019 14:40:18 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 566BE47B7D; Wed,  8 May 2019 14:40:18 +0200 (CEST)
Date: Wed, 8 May 2019 14:40:18 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Leonard Crestez <leonard.crestez@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, Lucas Stach <l.stach@pengutronix.de>
Subject: [RFC PATCH] soc: imx: Try harder to get imq8mq SoC revisions
Message-ID: <20190508124018.GA16859@bogon.m.sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB6434517A0235C8308D86B050EE310@AM0PR04MB6434.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_054023_535430_BE82FDA3 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leonard,

Thanks for your comments. Let's try s.th. different then: identify by
bootrom, ocotop and anatop and fall back to ATF afterwards (I'll split
out the DT part and add binding docs if this makes sense). I'm also
happy to drop the whole ATF logic until mailine ATF catched up:

The mainline ATF doesn't currently support the FSL_SIP_GET_SOC_INFO call
nor does it have the code to identify different imx8mq SOC revisions so
mimic what NXPs ATF does here.

As a fallback use ATF so we can identify new revisions once it gains
support or when using NXPs ATF.

Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 12 ++++
 drivers/soc/imx/soc-imx8.c                | 68 ++++++++++++++++++-----
 2 files changed, 67 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dt=
s/freescale/imx8mq.dtsi
index 6d635ba0904c..52aa1600b33b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -246,6 +246,18 @@
 		ranges =3D <0x0 0x0 0x0 0x3e000000>;
 		dma-ranges =3D <0x40000000 0x0 0x40000000 0xc0000000>;
 =

+		bus@00000000 { /* ROM */
+			compatible =3D "simple-bus";
+			#address-cells =3D <1>;
+			#size-cells =3D <1>;
+			ranges =3D <0x00000000 0x00000000 0x20000>;
+
+			rom@00000000 {
+				compatible =3D "fsl,imx8mq-bootrom";
+				reg =3D <0x00000000 0x1e800>;
+			};
+		};
+
 		bus@30000000 { /* AIPS1 */
 			compatible =3D "fsl,imx8mq-aips-bus", "simple-bus";
 			#address-cells =3D <1>;
diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
index fc6429f9170a..0a1fe82efe86 100644
--- a/drivers/soc/imx/soc-imx8.c
+++ b/drivers/soc/imx/soc-imx8.c
@@ -3,6 +3,7 @@
  * Copyright 2019 NXP.
  */
 =

+#include <linux/arm-smccc.h>
 #include <linux/init.h>
 #include <linux/io.h>
 #include <linux/of_address.h>
@@ -11,39 +12,80 @@
 #include <linux/platform_device.h>
 #include <linux/of.h>
 =

+#define REV_A0				0x10
+#define REV_B0				0x20
 #define REV_B1				0x21
 =

+#define IMX8MQ_SW_INFO_A0		0x800
+#define IMX8MQ_SW_INFO_B0		0x83C
 #define IMX8MQ_SW_INFO_B1		0x40
 #define IMX8MQ_SW_MAGIC_B1		0xff0055aa
 =

+#define FSL_SIP_GET_SOC_INFO		0xc2000006
+
 struct imx8_soc_data {
 	char *name;
 	u32 (*soc_revision)(void);
 };
 =

-static u32 __init imx8mq_soc_revision(void)
+static u32 __init imx8mq_soc_revision_atf(void)
+{
+	struct arm_smccc_res res =3D { 0 };
+
+	arm_smccc_smc(FSL_SIP_GET_SOC_INFO, 0, 0, 0, 0, 0, 0, 0, &res);
+	/*
+	 * Bit [23:16] is the silicon ID
+	 * Bit[7:4] is the base layer revision,
+	 * Bit[3:0] is the metal layer revision
+	 * e.g. 0x10 stands for Tapeout 1.0
+	 */
+	return res.a0 & 0xff;
+}
+
+static u32 __init imx8mq_soc_magic_node(const char *node, u32 offset)
 {
 	struct device_node *np;
-	void __iomem *ocotp_base;
+	void __iomem *base;
 	u32 magic;
-	u32 rev =3D 0;
 =

-	np =3D of_find_compatible_node(NULL, NULL, "fsl,imx8mq-ocotp");
+	np =3D of_find_compatible_node(NULL, NULL, node);
 	if (!np)
-		goto out;
+		return 0;
+	base =3D of_iomap(np, 0);
+	WARN_ON(!base);
+
+	magic =3D readl_relaxed(base + offset);
+	iounmap(base);
+	of_node_put(np);
+
+	return magic;
+}
 =

-	ocotp_base =3D of_iomap(np, 0);
-	WARN_ON(!ocotp_base);
+static u32 __init imx8mq_soc_revision(void)
+{
+	u32 magic;
 =

-	magic =3D readl_relaxed(ocotp_base + IMX8MQ_SW_INFO_B1);
+	/* B1 revision identified by ocotop */
+	magic =3D imx8mq_soc_magic_node("fsl,imx8mq-ocotp", IMX8MQ_SW_INFO_B1);
 	if (magic =3D=3D IMX8MQ_SW_MAGIC_B1)
-		rev =3D REV_B1;
+		return REV_B1;
 =

-	iounmap(ocotp_base);
+	/* B0 identified by bootrom */
+	magic =3D imx8mq_soc_magic_node("fsl,imx8mq-bootrom", IMX8MQ_SW_INFO_B0);
+	if ((magic & 0xff) =3D=3D REV_B0)
+		return REV_B0;
 =

-out:
-	of_node_put(np);
-	return rev;
+	/* A0 identified by anatop */
+	magic =3D imx8mq_soc_magic_node("fsl,imx8mq-anatop", IMX8MQ_SW_INFO_A0);
+	if ((magic & 0xff) =3D=3D REV_A0)
+		return REV_A0;
+
+	/* Read revision from ATF as fallback */
+	magic =3D imx8mq_soc_revision_atf();
+	if (magic !=3D 0xff)
+		return magic;
+
+	return 0;
 }
 =

 static const struct imx8_soc_data imx8mq_soc_data =3D {
-- =

2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
