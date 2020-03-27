Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71477195C37
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 18:15:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7FNiqKITX4iQRyDqgDvBSQ7BRw6G7jgC+2uUivYC9kc=; b=VuQXPgDddnqMgZMfxKMKrML7zr
	ak+73My7zrTcWTY+F0MgMPBP/lPnhkmDEWQw5/CfcB2h77tlFm9H112YYmHch7E9BrYkBWs68B4mW
	xD1P/UVZvVj9MQiTQ3blEwPRsLE4/1v4eS6c+JPPJWCblzxBCXwQpdwAGo8JjVhZHO8GbCwcA98WG
	5Rs+de78BGKJjEXQXa6V0WMwQuyru1AMfQtyrSQFGcIcSYl9r/lgu34y8nyAuCH7Mh8lwc4Mwf/JX
	OCNnIohWNirOH43oZ3we9euDD4RmaTARBwLaKUPf2yGswjBx/HdRoXnYz6twTuxomsNT3szUrOKWA
	6vhTNhRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHsZx-0007LA-8f; Fri, 27 Mar 2020 17:15:33 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHsYo-0005OP-Gp
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 17:14:25 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200327171418epoutp0206d6c4c4203a97a27adde9283c398e14~AOI_fF1Mh0260702607epoutp02c
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 17:14:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200327171418epoutp0206d6c4c4203a97a27adde9283c398e14~AOI_fF1Mh0260702607epoutp02c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585329258;
 bh=dH9zNB6GIPr/pM56ia29Tp75RDqECXpWkWj73uv7q38=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CvFIr7xqXBkpYMDla+frH0BtscV6Qii5OaJZGZlZdQUOvEfj0OQfWIMqrK3yRLBn+
 v2jXI5CbovPoFZk/W4DNOpJkhou6KYYDXw/oCjVqim+5tSLNBaM/5DNL5+aBSRlPfM
 8WBGS3PKrAs7gaHGrkSJA/RV4B/dRqg1jDCmQOXc=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200327171417epcas5p463a994a1a9399c964dc807f2ac8f001b~AOI9Prhms2894128941epcas5p4e;
 Fri, 27 Mar 2020 17:14:17 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 80.CF.04782.8643E7E5; Sat, 28 Mar 2020 02:14:16 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20200327171416epcas5p43133a28159ef24b145fcc8f3df102dde~AOI8tm07s2894828948epcas5p4b;
 Fri, 27 Mar 2020 17:14:16 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200327171416epsmtrp293e2d9dc1abf00607927349ba2593d65~AOI8suQZf2787527875epsmtrp2S;
 Fri, 27 Mar 2020 17:14:16 +0000 (GMT)
X-AuditID: b6c32a49-89bff700000012ae-fa-5e7e3468071c
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 BF.3E.04158.8643E7E5; Sat, 28 Mar 2020 02:14:16 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200327171414epsmtip13dc5c5a2899d651c4dbf89a91750fb57~AOI6lmmia0050600506epsmtip1j;
 Fri, 27 Mar 2020 17:14:14 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: [PATCH v4 2/5] phy: samsung-ufs: add UFS PHY driver for samsung SoC
Date: Fri, 27 Mar 2020 22:36:35 +0530
Message-Id: <20200327170638.17670-3-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200327170638.17670-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprDKsWRmVeSWpSXmKPExsWy7bCmum6GSV2cwdRGC4sH87axWbz8eZXN
 4tP6ZawW84+cY7W48LSHzeL8+Q3sFje3HGWx2PT4GqvF5V1z2CxmnN/HZNF9fQebxfLj/5gs
 WvceYbdYuvUmowOfx+W+XiaPTas62Tw2L6n3aDm5n8Xj49NbLB59W1Yxehy/sZ3J4/MmOY/2
 A91MAZxRXDYpqTmZZalF+nYJXBkLHz9nKXjQzVjx/nUrWwNjf2kXIyeHhICJxI7+a8xdjFwc
 QgK7GSXO/3jJCuF8YpToOfOHEcL5xijxa/oBZpiWzUefsUMk9gK1LDnFBuG0MEl8mbefDaSK
 TUBb4u70LUwgtohAgMSl9wfBipgFTjBJzJhyB2yUsICPxM3enYwgNouAqsS6X2tZQWxeARuJ
 V4enskCsk5dYvQFiNaeArcSNndPArpUQeM8msXTaPDaIIheJA8uaoRqEJV4d38IOYUtJfH63
 F6iGA8jOlujZZQwRrpFYOu8YVLm9xIErc1hASpgFNCXW79IHCTML8En0/n7CBNHJK9HRJgRR
 rSrR/O4qVKe0xMTublYI20Niwb7bYLaQwARgoFyvmMAoOwth6AJGxlWMkqkFxbnpqcWmBYZ5
 qeV6xYm5xaV56XrJ+bmbGMFpRstzB+Oscz6HGAU4GJV4eFdcrY0TYk0sK67MPcQowcGsJML7
 NLImTog3JbGyKrUoP76oNCe1+BCjNAeLkjjvJNarMUIC6YklqdmpqQWpRTBZJg5OqQZGNV3l
 6wrdMh5KCn8+sT4qurbtnozl/0MxwjxR4fUxB28EhgfmGmkr3mk7cHTCxN+is7aXzWIMfGb1
 f6Yr5/mKzws1bqd6rrrTVSmWI/Lq2UOmP7U/b/2S3PVxyeeXkbH+ifc23Hl4MPfPfeGKb2sa
 I7ZLbesKyYhYve/g6rVcM5K8MpbKPNczV2Ipzkg01GIuKk4EALQkp0wvAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrDLMWRmVeSWpSXmKPExsWy7bCSnG6GSV2cQcchUYsH87axWbz8eZXN
 4tP6ZawW84+cY7W48LSHzeL8+Q3sFje3HGWx2PT4GqvF5V1z2CxmnN/HZNF9fQebxfLj/5gs
 WvceYbdYuvUmowOfx+W+XiaPTas62Tw2L6n3aDm5n8Xj49NbLB59W1Yxehy/sZ3J4/MmOY/2
 A91MAZxRXDYpqTmZZalF+nYJXBkLHz9nKXjQzVjx/nUrWwNjf2kXIyeHhICJxOajz9i7GLk4
 hAR2M0q8/fWUFSIhLXF94wR2CFtYYuW/51BFTUwSF7uusYEk2AS0Je5O38IEYosIBEncW7OW
 FaSIWeAKk8S9O88ZQRLCAj4SN3t3gtksAqoS636tBdvAK2Aj8erwVBaIDfISqzccYAaxOQVs
 JW7snAZmCwHVfGg6wDyBkW8BI8MqRsnUguLc9NxiwwKjvNRyveLE3OLSvHS95PzcTYzgMNfS
 2sF44kT8IUYBDkYlHt4VV2vjhFgTy4orcw8xSnAwK4nwPo2siRPiTUmsrEotyo8vKs1JLT7E
 KM3BoiTOK59/LFJIID2xJDU7NbUgtQgmy8TBKdXAaPRsT/BzdseI7SVdUlPEDdYHfL7MPv2U
 V+DevU/+X9gQGLBn3QP9wx+PGZparOHWnOyUtV4/WPai16f8YN32BRvT9YVX9c9kDA7u9vbT
 mzG9muvWuU/ZjYe+elm4veL9H7glq2xlcGukmLbL918bmbrm7b+9b/60/Didxao3WRXK9l12
 7znXoMRSnJFoqMVcVJwIALO1laJvAgAA
X-CMS-MailID: 20200327171416epcas5p43133a28159ef24b145fcc8f3df102dde
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200327171416epcas5p43133a28159ef24b145fcc8f3df102dde
References: <20200327170638.17670-1-alim.akhtar@samsung.com>
 <CGME20200327171416epcas5p43133a28159ef24b145fcc8f3df102dde@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_101422_908141_4F6F3C4C 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-samsung-soc@vger.kernel.org,
 martin.petersen@oracle.com, linux-kernel@vger.kernel.org, krzk@kernel.org,
 kwmad.kim@samsung.com, avri.altman@wdc.com, cang@codeaurora.org,
 Alim Akhtar <alim.akhtar@samsung.com>, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch introduces Samsung UFS PHY driver. This driver
supports to deal with phy calibration and power control
according to UFS host driver's behavior.

Reviewed-by: Kiwoong Kim <kwmad.kim@samsung.com>
Signed-off-by: Seungwon Jeon <essuuj@gmail.com>
Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/samsung/Kconfig           |   9 +
 drivers/phy/samsung/Makefile          |   1 +
 drivers/phy/samsung/phy-exynos7-ufs.h |  85 +++++++
 drivers/phy/samsung/phy-samsung-ufs.c | 310 ++++++++++++++++++++++++++
 drivers/phy/samsung/phy-samsung-ufs.h | 139 ++++++++++++
 5 files changed, 544 insertions(+)
 create mode 100644 drivers/phy/samsung/phy-exynos7-ufs.h
 create mode 100644 drivers/phy/samsung/phy-samsung-ufs.c
 create mode 100644 drivers/phy/samsung/phy-samsung-ufs.h

diff --git a/drivers/phy/samsung/Kconfig b/drivers/phy/samsung/Kconfig
index 9e483d1fdaf2..fc1e3c17f842 100644
--- a/drivers/phy/samsung/Kconfig
+++ b/drivers/phy/samsung/Kconfig
@@ -29,6 +29,15 @@ config PHY_EXYNOS_PCIE
 	  Enable PCIe PHY support for Exynos SoC series.
 	  This driver provides PHY interface for Exynos PCIe controller.
 
+config PHY_SAMSUNG_UFS
+	tristate "SAMSUNG SoC series UFS PHY driver"
+	depends on OF && (ARCH_EXYNOS || COMPILE_TEST)
+	select GENERIC_PHY
+	help
+	  Enable this to support the Samsung UFS PHY driver for
+	  Samsung SoCs. This driver provides the interface for UFS
+	  host controller to do PHY related programming.
+
 config PHY_SAMSUNG_USB2
 	tristate "Samsung USB 2.0 PHY driver"
 	depends on HAS_IOMEM
diff --git a/drivers/phy/samsung/Makefile b/drivers/phy/samsung/Makefile
index db9b1aa0de6e..3959100fe8a2 100644
--- a/drivers/phy/samsung/Makefile
+++ b/drivers/phy/samsung/Makefile
@@ -2,6 +2,7 @@
 obj-$(CONFIG_PHY_EXYNOS_DP_VIDEO)	+= phy-exynos-dp-video.o
 obj-$(CONFIG_PHY_EXYNOS_MIPI_VIDEO)	+= phy-exynos-mipi-video.o
 obj-$(CONFIG_PHY_EXYNOS_PCIE)		+= phy-exynos-pcie.o
+obj-$(CONFIG_PHY_SAMSUNG_UFS)		+= phy-samsung-ufs.o
 obj-$(CONFIG_PHY_SAMSUNG_USB2)		+= phy-exynos-usb2.o
 phy-exynos-usb2-y			+= phy-samsung-usb2.o
 phy-exynos-usb2-$(CONFIG_PHY_EXYNOS4210_USB2)	+= phy-exynos4210-usb2.o
diff --git a/drivers/phy/samsung/phy-exynos7-ufs.h b/drivers/phy/samsung/phy-exynos7-ufs.h
new file mode 100644
index 000000000000..da981c1ac040
--- /dev/null
+++ b/drivers/phy/samsung/phy-exynos7-ufs.h
@@ -0,0 +1,85 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * UFS PHY driver data for Samsung EXYNOS7 SoC
+ *
+ * Copyright (C) 2015 Samsung Electronics Co., Ltd.
+ */
+#ifndef _PHY_EXYNOS7_UFS_H_
+#define _PHY_EXYNOS7_UFS_H_
+
+#include "phy-samsung-ufs.h"
+
+#define EXYNOS7_EMBEDDED_COMBO_PHY_CTRL	0x720
+#define EXYNOS7_EMBEDDED_COMBO_PHY_CTRL_MASK	0x1
+#define EXYNOS7_EMBEDDED_COMBO_PHY_CTRL_EN	BIT(0)
+
+/* Calibration for phy initialization */
+static const struct samsung_ufs_phy_cfg exynos7_pre_init_cfg[] = {
+	PHY_COMN_REG_CFG(0x00f, 0xfa, PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x010, 0x82, PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x011, 0x1e, PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x017, 0x84, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG(0x035, 0x58, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG(0x036, 0x32, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG(0x037, 0x40, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG(0x03b, 0x83, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG(0x042, 0x88, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG(0x043, 0xa6, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG(0x048, 0x74, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG(0x04c, 0x5b, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG(0x04d, 0x83, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG(0x05c, 0x14, PWR_MODE_ANY),
+	END_UFS_PHY_CFG
+};
+
+static const struct samsung_ufs_phy_cfg exynos7_post_init_cfg[] = {
+	END_UFS_PHY_CFG
+};
+
+/* Calibration for HS mode series A/B */
+static const struct samsung_ufs_phy_cfg exynos7_pre_pwr_hs_cfg[] = {
+	PHY_COMN_REG_CFG(0x00f, 0xfa, PWR_MODE_HS_ANY),
+	PHY_COMN_REG_CFG(0x010, 0x82, PWR_MODE_HS_ANY),
+	PHY_COMN_REG_CFG(0x011, 0x1e, PWR_MODE_HS_ANY),
+	/* Setting order: 1st(0x16, 2nd(0x15) */
+	PHY_COMN_REG_CFG(0x016, 0xff, PWR_MODE_HS_ANY),
+	PHY_COMN_REG_CFG(0x015, 0x80, PWR_MODE_HS_ANY),
+	PHY_COMN_REG_CFG(0x017, 0x94, PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG(0x036, 0x32, PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG(0x037, 0x43, PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG(0x038, 0x3f, PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG(0x042, 0x88, PWR_MODE_HS_G2_SER_A),
+	PHY_TRSV_REG_CFG(0x042, 0xbb, PWR_MODE_HS_G2_SER_B),
+	PHY_TRSV_REG_CFG(0x043, 0xa6, PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG(0x048, 0x74, PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG(0x034, 0x35, PWR_MODE_HS_G2_SER_A),
+	PHY_TRSV_REG_CFG(0x034, 0x36, PWR_MODE_HS_G2_SER_B),
+	PHY_TRSV_REG_CFG(0x035, 0x5b, PWR_MODE_HS_G2_SER_A),
+	PHY_TRSV_REG_CFG(0x035, 0x5c, PWR_MODE_HS_G2_SER_B),
+	END_UFS_PHY_CFG
+};
+
+/* Calibration for HS mode series A/B atfer PMC */
+static const struct samsung_ufs_phy_cfg exynos7_post_pwr_hs_cfg[] = {
+	PHY_COMN_REG_CFG(0x015, 0x00, PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG(0x04d, 0x83, PWR_MODE_HS_ANY),
+	END_UFS_PHY_CFG
+};
+
+static const struct samsung_ufs_phy_cfg *exynos7_ufs_phy_cfgs[CFG_TAG_MAX] = {
+	[CFG_PRE_INIT]		= exynos7_pre_init_cfg,
+	[CFG_POST_INIT]		= exynos7_post_init_cfg,
+	[CFG_PRE_PWR_HS]	= exynos7_pre_pwr_hs_cfg,
+	[CFG_POST_PWR_HS]	= exynos7_post_pwr_hs_cfg,
+};
+
+static struct samsung_ufs_phy_drvdata exynos7_ufs_phy = {
+	.cfg = exynos7_ufs_phy_cfgs,
+	.isol = {
+		.offset = EXYNOS7_EMBEDDED_COMBO_PHY_CTRL,
+		.mask = EXYNOS7_EMBEDDED_COMBO_PHY_CTRL_MASK,
+		.en = EXYNOS7_EMBEDDED_COMBO_PHY_CTRL_EN,
+	},
+};
+
+#endif /* _PHY_EXYNOS7_UFS_H_ */
diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
new file mode 100644
index 000000000000..572e40e72776
--- /dev/null
+++ b/drivers/phy/samsung/phy-samsung-ufs.c
@@ -0,0 +1,310 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * UFS PHY driver for Samsung SoC
+ *
+ * Copyright (C) 2015 Samsung Electronics Co., Ltd.
+ * Author: Seungwon Jeon <essuuj@gmail.com>
+ * Author: Alim Akhtar <alim.akhtar@samsung.com>
+ *
+ */
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/err.h>
+#include <linux/of.h>
+#include <linux/io.h>
+#include <linux/iopoll.h>
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#include "phy-samsung-ufs.h"
+
+#define for_each_phy_lane(phy, i) \
+	for (i = 0; i < (phy)->lane_cnt; i++)
+#define for_each_phy_cfg(cfg) \
+	for (; (cfg)->id; (cfg)++)
+
+#define PHY_DEF_LANE_CNT	1
+
+static void samsung_ufs_phy_config(struct samsung_ufs_phy *phy,
+			const struct samsung_ufs_phy_cfg *cfg, u8 lane)
+{
+	enum {LANE_0, LANE_1}; /* lane index */
+
+	switch (lane) {
+	case LANE_0:
+		writel(cfg->val, (phy)->reg_pma + cfg->off_0);
+		break;
+	case LANE_1:
+		if (cfg->id == PHY_TRSV_BLK)
+			writel(cfg->val, (phy)->reg_pma + cfg->off_1);
+		break;
+	}
+}
+
+int samsung_ufs_phy_wait_for_lock_acq(struct phy *phy)
+{
+	struct samsung_ufs_phy *ufs_phy = get_samsung_ufs_phy(phy);
+	const unsigned int timeout_us = 100000;
+	const unsigned int sleep_us = 10;
+	u32 val;
+	int err;
+
+	err = readl_poll_timeout(
+			ufs_phy->reg_pma + PHY_APB_ADDR(PHY_PLL_LOCK_STATUS),
+			val, (val & PHY_PLL_LOCK_BIT), sleep_us, timeout_us);
+	if (err) {
+		dev_err(ufs_phy->dev,
+			"failed to get phy pll lock acquisition %d\n", err);
+		goto out;
+	}
+
+	err = readl_poll_timeout(
+			ufs_phy->reg_pma + PHY_APB_ADDR(PHY_CDR_LOCK_STATUS),
+			val, (val & PHY_CDR_LOCK_BIT), sleep_us, timeout_us);
+	if (err) {
+		dev_err(ufs_phy->dev,
+			"failed to get phy cdr lock acquisition %d\n", err);
+		goto out;
+	}
+
+out:
+	return err;
+}
+
+int samsung_ufs_phy_calibrate(struct phy *phy)
+{
+	struct samsung_ufs_phy *ufs_phy = get_samsung_ufs_phy(phy);
+	struct samsung_ufs_phy_cfg **cfgs = ufs_phy->cfg;
+	const struct samsung_ufs_phy_cfg *cfg;
+	int i;
+	int err = 0;
+
+	if (unlikely(ufs_phy->ufs_phy_state < CFG_PRE_INIT ||
+		     ufs_phy->ufs_phy_state >= CFG_TAG_MAX)) {
+		dev_err(ufs_phy->dev, "invalid phy config index %d\n",
+							ufs_phy->ufs_phy_state);
+		return -EINVAL;
+	}
+
+	if (ufs_phy->is_pre_init)
+		ufs_phy->is_pre_init = false;
+	if (ufs_phy->is_post_init) {
+		ufs_phy->is_post_init = false;
+		ufs_phy->ufs_phy_state = CFG_POST_INIT;
+	}
+	if (ufs_phy->is_pre_pmc) {
+		ufs_phy->is_pre_pmc = false;
+		ufs_phy->ufs_phy_state = CFG_PRE_PWR_HS;
+	}
+	if (ufs_phy->is_post_pmc) {
+		ufs_phy->is_post_pmc = false;
+		ufs_phy->ufs_phy_state = CFG_POST_PWR_HS;
+	}
+
+	switch (ufs_phy->ufs_phy_state) {
+	case CFG_PRE_INIT:
+		ufs_phy->is_post_init = true;
+		break;
+	case CFG_POST_INIT:
+		ufs_phy->is_pre_pmc = true;
+		break;
+	case CFG_PRE_PWR_HS:
+		ufs_phy->is_post_pmc = true;
+		break;
+	case CFG_POST_PWR_HS:
+		break;
+	default:
+		dev_err(ufs_phy->dev, "wrong state for phy calibration\n");
+	}
+
+	cfg = cfgs[ufs_phy->ufs_phy_state];
+	if (!cfg)
+		goto out;
+
+	for_each_phy_cfg(cfg) {
+		for_each_phy_lane(ufs_phy, i) {
+			samsung_ufs_phy_config(ufs_phy, cfg, i);
+		}
+	}
+
+	if (ufs_phy->ufs_phy_state == CFG_POST_PWR_HS)
+		err = samsung_ufs_phy_wait_for_lock_acq(phy);
+out:
+	return err;
+}
+
+static int samsung_ufs_phy_clks_init(struct samsung_ufs_phy *phy)
+{
+	struct clk *child, *parent;
+
+	child = devm_clk_get(phy->dev, "ref_clk");
+	if (IS_ERR(child))
+		dev_err(phy->dev, "failed to get ref_clk clock\n");
+	else
+		phy->ref_clk = child;
+
+	parent = devm_clk_get(phy->dev, "ref_clk_parent");
+	if (IS_ERR(parent))
+		dev_err(phy->dev, "failed to get ref_clk_parent clock\n");
+	else
+		phy->ref_clk_parent = parent;
+
+	return clk_set_parent(child, parent);
+}
+
+static int samsung_ufs_phy_init(struct phy *phy)
+{
+	struct samsung_ufs_phy *_phy = get_samsung_ufs_phy(phy);
+
+	_phy->lane_cnt = phy->attrs.bus_width;
+	_phy->ufs_phy_state = CFG_PRE_INIT;
+
+	_phy->is_pre_init = true;
+	_phy->is_post_init = false;
+	_phy->is_pre_pmc = false;
+	_phy->is_post_pmc = false;
+
+	samsung_ufs_phy_clks_init(_phy);
+
+	samsung_ufs_phy_calibrate(phy);
+
+	return 0;
+}
+
+static int samsung_ufs_phy_power_on(struct phy *phy)
+{
+	struct samsung_ufs_phy *_phy = get_samsung_ufs_phy(phy);
+	int ret;
+
+	ret = clk_prepare_enable(_phy->ref_clk);
+	if (ret) {
+		dev_err(_phy->dev, "%s: ref_clk enable failed %d\n",
+				__func__, ret);
+		return ret;
+	}
+
+	samsung_ufs_phy_ctrl_isol(_phy, false);
+	return 0;
+}
+
+static int samsung_ufs_phy_power_off(struct phy *phy)
+{
+	struct samsung_ufs_phy *_phy = get_samsung_ufs_phy(phy);
+
+	samsung_ufs_phy_ctrl_isol(_phy, true);
+	clk_disable_unprepare(_phy->ref_clk);
+	return 0;
+}
+
+static int samsung_ufs_phy_set_mode(struct phy *generic_phy,
+					enum phy_mode mode, int submode)
+{
+	struct samsung_ufs_phy *_phy = get_samsung_ufs_phy(generic_phy);
+
+	_phy->mode = PHY_MODE_INVALID;
+
+	if (mode > 0)
+		_phy->mode = mode;
+
+	return 0;
+}
+
+static struct phy_ops samsung_ufs_phy_ops = {
+	.init		= samsung_ufs_phy_init,
+	.power_on	= samsung_ufs_phy_power_on,
+	.power_off	= samsung_ufs_phy_power_off,
+	.calibrate	= samsung_ufs_phy_calibrate,
+	.set_mode	= samsung_ufs_phy_set_mode,
+}
+;
+static const struct of_device_id samsung_ufs_phy_match[];
+
+static int samsung_ufs_phy_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct resource *res;
+	const struct of_device_id *match;
+	struct samsung_ufs_phy *phy;
+	struct phy *gen_phy;
+	struct phy_provider *phy_provider;
+	const struct samsung_ufs_phy_drvdata *drvdata;
+	int err = 0;
+
+	match = of_match_node(samsung_ufs_phy_match, dev->of_node);
+	if (!match) {
+		err = -EINVAL;
+		dev_err(dev, "failed to get match_node\n");
+		goto out;
+	}
+
+	phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
+	if (!phy) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "phy-pma");
+	phy->reg_pma = devm_ioremap_resource(dev, res);
+	if (IS_ERR(phy->reg_pma)) {
+		err = PTR_ERR(phy->reg_pma);
+		goto out;
+	}
+
+	phy->reg_pmu = syscon_regmap_lookup_by_phandle(
+				dev->of_node, "samsung,pmu-syscon");
+	if (IS_ERR(phy->reg_pmu)) {
+		err = PTR_ERR(phy->reg_pmu);
+		dev_err(dev, "failed syscon remap for pmu\n");
+		goto out;
+	}
+
+	gen_phy = devm_phy_create(dev, NULL, &samsung_ufs_phy_ops);
+	if (IS_ERR(gen_phy)) {
+		err = PTR_ERR(gen_phy);
+		dev_err(dev, "failed to create PHY for ufs-phy\n");
+		goto out;
+	}
+
+	drvdata = match->data;
+	phy->dev = dev;
+	phy->drvdata = drvdata;
+	phy->cfg = (struct samsung_ufs_phy_cfg **)drvdata->cfg;
+	phy->isol = &drvdata->isol;
+	phy->lane_cnt = PHY_DEF_LANE_CNT;
+
+	phy_set_drvdata(gen_phy, phy);
+
+	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	if (IS_ERR(phy_provider)) {
+		err = PTR_ERR(phy_provider);
+		dev_err(dev, "failed to register phy-provider\n");
+		goto out;
+	}
+out:
+	return err;
+}
+
+static const struct of_device_id samsung_ufs_phy_match[] = {
+	{
+		.compatible = "samsung,exynos7-ufs-phy",
+		.data = &exynos7_ufs_phy,
+	},
+	{},
+};
+MODULE_DEVICE_TABLE(of, samsung_ufs_phy_match);
+
+static struct platform_driver samsung_ufs_phy_driver = {
+	.probe  = samsung_ufs_phy_probe,
+	.driver = {
+		.name = "samsung-ufs-phy",
+		.of_match_table = samsung_ufs_phy_match,
+	},
+};
+module_platform_driver(samsung_ufs_phy_driver);
+MODULE_DESCRIPTION("Samsung SoC UFS PHY Driver");
+MODULE_AUTHOR("Seungwon Jeon <essuuj@gmail.com>");
+MODULE_AUTHOR("Alim Akhtar <alim.akhtar@samsung.com>");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/phy/samsung/phy-samsung-ufs.h b/drivers/phy/samsung/phy-samsung-ufs.h
new file mode 100644
index 000000000000..971d67ae7f80
--- /dev/null
+++ b/drivers/phy/samsung/phy-samsung-ufs.h
@@ -0,0 +1,139 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * UFS PHY driver for Samsung EXYNOS SoC
+ *
+ * Copyright (C) 2015 Samsung Electronics Co., Ltd.
+ * Author: Seungwon Jeon <essuuj@gmail.com>
+ * Author: Alim Akhtar <alim.akhtar@samsung.com>
+ *
+ */
+#ifndef _PHY_SAMSUNG_UFS_
+#define _PHY_SAMSUNG_UFS_
+
+#define PHY_COMN_BLK	1
+#define PHY_TRSV_BLK	2
+#define END_UFS_PHY_CFG { 0 }
+#define PHY_TRSV_CH_OFFSET	0x30
+#define PHY_APB_ADDR(off)	((off) << 2)
+
+#define PHY_COMN_REG_CFG(o, v, d) {	\
+	.off_0 = PHY_APB_ADDR((o)),	\
+	.off_1 = 0,		\
+	.val = (v),		\
+	.desc = (d),		\
+	.id = PHY_COMN_BLK,	\
+}
+
+#define PHY_TRSV_REG_CFG(o, v, d) {	\
+	.off_0 = PHY_APB_ADDR((o)),	\
+	.off_1 = PHY_APB_ADDR((o) + PHY_TRSV_CH_OFFSET),	\
+	.val = (v),		\
+	.desc = (d),		\
+	.id = PHY_TRSV_BLK,	\
+}
+
+/* UFS PHY registers */
+#define PHY_PLL_LOCK_STATUS	0x1e
+#define PHY_CDR_LOCK_STATUS	0x5e
+
+#define PHY_PLL_LOCK_BIT	BIT(5)
+#define PHY_CDR_LOCK_BIT	BIT(4)
+
+/* description for PHY calibration */
+enum {
+	/* applicable to any */
+	PWR_DESC_ANY	= 0,
+	/* mode */
+	PWR_DESC_PWM	= 1,
+	PWR_DESC_HS	= 2,
+	/* series */
+	PWR_DESC_SER_A	= 1,
+	PWR_DESC_SER_B	= 2,
+	/* gear */
+	PWR_DESC_G1	= 1,
+	PWR_DESC_G2	= 2,
+	PWR_DESC_G3	= 3,
+	/* field mask */
+	MD_MASK		= 0x3,
+	SR_MASK		= 0x3,
+	GR_MASK		= 0x7,
+};
+
+#define PWR_MODE_HS_G1_ANY	PWR_MODE_HS(PWR_DESC_G1, PWR_DESC_ANY)
+#define PWR_MODE_HS_G1_SER_A	PWR_MODE_HS(PWR_DESC_G1, PWR_DESC_SER_A)
+#define PWR_MODE_HS_G1_SER_B	PWR_MODE_HS(PWR_DESC_G1, PWR_DESC_SER_B)
+#define PWR_MODE_HS_G2_ANY	PWR_MODE_HS(PWR_DESC_G2, PWR_DESC_ANY)
+#define PWR_MODE_HS_G2_SER_A	PWR_MODE_HS(PWR_DESC_G2, PWR_DESC_SER_A)
+#define PWR_MODE_HS_G2_SER_B	PWR_MODE_HS(PWR_DESC_G2, PWR_DESC_SER_B)
+#define PWR_MODE_HS_G3_ANY	PWR_MODE_HS(PWR_DESC_G3, PWR_DESC_ANY)
+#define PWR_MODE_HS_G3_SER_A	PWR_MODE_HS(PWR_DESC_G3, PWR_DESC_SER_A)
+#define PWR_MODE_HS_G3_SER_B	PWR_MODE_HS(PWR_DESC_G3, PWR_DESC_SER_B)
+#define PWR_MODE(g, s, m)	((((g) & GR_MASK) << 4) |\
+				 (((s) & SR_MASK) << 2) | ((m) & MD_MASK))
+#define PWR_MODE_PWM_ANY	PWR_MODE(PWR_DESC_ANY,\
+					 PWR_DESC_ANY, PWR_DESC_PWM)
+#define PWR_MODE_HS(g, s)	((((g) & GR_MASK) << 4) |\
+				 (((s) & SR_MASK) << 2) | PWR_DESC_HS)
+#define PWR_MODE_HS_ANY		PWR_MODE(PWR_DESC_ANY,\
+					 PWR_DESC_ANY, PWR_DESC_HS)
+#define PWR_MODE_ANY		PWR_MODE(PWR_DESC_ANY,\
+					 PWR_DESC_ANY, PWR_DESC_ANY)
+/* PHY calibration point/state */
+enum {
+	CFG_PRE_INIT,
+	CFG_POST_INIT,
+	CFG_PRE_PWR_HS,
+	CFG_POST_PWR_HS,
+	CFG_TAG_MAX,
+};
+
+struct samsung_ufs_phy_cfg {
+	u32 off_0;
+	u32 off_1;
+	u32 val;
+	u8 desc;
+	u8 id;
+};
+
+struct samsung_ufs_phy_drvdata {
+	const struct samsung_ufs_phy_cfg **cfg;
+	struct pmu_isol {
+		u32 offset;
+		u32 mask;
+		u32 en;
+	} isol;
+};
+
+struct samsung_ufs_phy {
+	struct device *dev;
+	void __iomem *reg_pma;
+	struct regmap *reg_pmu;
+	struct clk *ref_clk;
+	struct clk *ref_clk_parent;
+	const struct samsung_ufs_phy_drvdata *drvdata;
+	struct samsung_ufs_phy_cfg **cfg;
+	const struct pmu_isol *isol;
+	u8 lane_cnt;
+	int ufs_phy_state;
+	enum phy_mode mode;
+	bool is_pre_init;
+	bool is_post_init;
+	bool is_pre_pmc;
+	bool is_post_pmc;
+};
+
+static inline struct samsung_ufs_phy *get_samsung_ufs_phy(struct phy *phy)
+{
+	return (struct samsung_ufs_phy *)phy_get_drvdata(phy);
+}
+
+static inline void samsung_ufs_phy_ctrl_isol(
+		struct samsung_ufs_phy *phy, u32 isol)
+{
+	regmap_update_bits(phy->reg_pmu, phy->isol->offset,
+			phy->isol->mask, isol ? 0 : phy->isol->en);
+}
+
+#include "phy-exynos7-ufs.h"
+
+#endif /* _PHY_SAMSUNG_UFS_ */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
