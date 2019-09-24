Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C228BCB5F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 17:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TL0nURe5X2zyXQBfZTxAdzEGgDc1PuU4+YJFsOo72Wg=; b=GnQ
	ZqXqOn9YVLJWsZFvIlZUofxFAGikCtK3bdoecHF6o0KRhbwv795Q/STV+4R1hybE8d6YEdu93cl6t
	8VZre8Tzk7crGXFbgsov9KayhaNSGJmfpwYrrlNPo6cSYdXgk0YsjGUocr2E2j4nhClCS+tcSll1b
	NNGCGFOvR4rnxjOTKeZC629INJS/gjfrwBRPGS7Wks/qb+aC6toHwlugXzw97p4yhsUUaslR2aw2a
	xhPLcjAfsK8PUKuMXyzfJk2kQfYnGLFXS8q209XsqYHJ1M04odGXuavElNg0rYfJsUN0LpgRAUIxG
	z0Xo1uc0ry5WbpYxICXKnibmvMi6ODA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCmk6-0007pg-QG; Tue, 24 Sep 2019 15:28:42 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCmiT-000733-Q0; Tue, 24 Sep 2019 15:27:05 +0000
Received: by mail-pf1-x444.google.com with SMTP id a2so1563074pfo.10;
 Tue, 24 Sep 2019 08:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=578RZaDeMfjYGaXB5dcCvl19EVLLHjLDFN995ozRWsY=;
 b=eNEmvkEpWxJvnpwxP7q9FUtypqgBVmyhzLZONgFa2BIrewTZCfYV73Er4/+t4wZuit
 eCvRYTcXhECtndb0LfmVoUCV2KHFBsH+dKD+VmFKWGcv1vPEwLyDHN/1xywoIc9VEhYm
 SrlgF+x36D5c4TAf0aT1LT+js5qfJgam38GYmQ/qsG3akhorTa9RIReP112fWUP0ABx0
 YTZXpZIxTxjDiPgTeecLSX/z49gShvCR8wyYHI0va0LC7/KQhoItQ5ETZJUaGk7wyKW5
 g8N2u+5GmKGbkwqsHt7WHJFE70MLXz1uLEJnfkz9TPcXpRMD48CJ9OJuxp36zpmR+ZDx
 g77g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=578RZaDeMfjYGaXB5dcCvl19EVLLHjLDFN995ozRWsY=;
 b=Uly5SE4cOpYZ07e635Xv/vWCYmIJO6wOwy6GVTMolZxno0oU0bAX6dqVpN9/XUCQrE
 guaeKeWteIhwdbXNSNBpxzUF/YjHR/oW6G/KtGb7vrTbpbS1tFwHlZPkqbYK4JhdpoGD
 smp2EJn3/ro2ucv6uFkk7vcA4AiiWiS46nsXyy63w8dPUFu+iCAOrdv9KT3mhdGcZ0/N
 UTvTJpY2aF331cYzuQV3vP/bkAFb9WdlE2BJu8TbOU0pzMna+95tW0KEoGO27Z4bPWGQ
 /PclFEVpQ46JATjKC916Mn/1QgaQ1cXDL+9DBC9Iy5rYHlWuqDTE66NIZ0Tbp2FfRGSB
 Whvg==
X-Gm-Message-State: APjAAAXVBz+VfcB5E1KcnPJ4PQn+vgpmT1jFWQv+soAhgJ0Glqgjxb+S
 yiASiOfeo1wD/8HL3/i35B0=
X-Google-Smtp-Source: APXvYqyLe3Er29TJVgrg+L9V/A+JGQp4uK/OjJ5Ve/jqQbmgfr1Pd0a3zaCYy/XR4C800HXKJaf9QA==
X-Received: by 2002:a63:2006:: with SMTP id g6mr3596542pgg.287.1569338820343; 
 Tue, 24 Sep 2019 08:27:00 -0700 (PDT)
Received: from localhost.localdomain ([123.110.135.145])
 by smtp.gmail.com with ESMTPSA id u4sm4402171pfu.177.2019.09.24.08.26.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 24 Sep 2019 08:26:59 -0700 (PDT)
From: Gene Chen <gene.chen.richtek@gmail.com>
To: lee.jones@linaro.org,
	matthias.bgg@gmail.com
Subject: [PATCH v3] mfd: mt6360: add pmic mt6360 driver
Date: Tue, 24 Sep 2019 23:25:37 +0800
Message-Id: <1569338741-2784-1-git-send-email-gene.chen.richtek@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_082701_892283_5284E8D4 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gene.chen.richtek[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: gene_chen@richtek.com, linux-kernel@vger.kernel.org, cy_huang@richtek.com,
 linux-mediatek@lists.infradead.org, Wilma.Wu@mediatek.com,
 linux-arm-kernel@lists.infradead.org, shufan_lee@richtek.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Gene Chen <gene_chen@richtek.com>

Add mfd driver for mt6360 pmic chip include
Battery Charger/USB_PD/Flash LED/RGB LED/LDO/Buck

Signed-off-by: Gene Chen <gene_chen@richtek.com
---
 drivers/mfd/Kconfig                |  12 +
 drivers/mfd/Makefile               |   1 +
 drivers/mfd/mt6360-core.c          | 463 +++++++++++++++++++++++++++++++++++++
 include/linux/mfd/mt6360-private.h | 279 ++++++++++++++++++++++
 include/linux/mfd/mt6360.h         |  33 +++
 5 files changed, 788 insertions(+)
 create mode 100644 drivers/mfd/mt6360-core.c
 create mode 100644 include/linux/mfd/mt6360-private.h
 create mode 100644 include/linux/mfd/mt6360.h

changelogs between v1 & v2
- include missing header file

changelogs between v2 & v3
- add changelogs

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index f129f96..a422c76 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -862,6 +862,18 @@ config MFD_MAX8998
 	  additional drivers must be enabled in order to use the functionality
 	  of the device.
 
+config MFD_MT6360
+	tristate "Mediatek MT6360 SubPMIC"
+	select MFD_CORE
+	select REGMAP_I2C
+	select REGMAP_IRQ
+	depends on I2C
+	help
+	  Say Y here to enable MT6360 PMU/PMIC/LDO functional support.
+	  PMU part include charger, flashlight, rgb led
+	  PMIC part include 2-channel BUCKs and 2-channel LDOs
+	  LDO part include 4-channel LDOs
+
 config MFD_MT6397
 	tristate "MediaTek MT6397 PMIC Support"
 	select MFD_CORE
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index f026ada..77a8f0b 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -241,6 +241,7 @@ obj-$(CONFIG_INTEL_SOC_PMIC)	+= intel-soc-pmic.o
 obj-$(CONFIG_INTEL_SOC_PMIC_BXTWC)	+= intel_soc_pmic_bxtwc.o
 obj-$(CONFIG_INTEL_SOC_PMIC_CHTWC)	+= intel_soc_pmic_chtwc.o
 obj-$(CONFIG_INTEL_SOC_PMIC_CHTDC_TI)	+= intel_soc_pmic_chtdc_ti.o
+obj-$(CONFIG_MFD_MT6360)	+= mt6360-core.o
 obj-$(CONFIG_MFD_MT6397)	+= mt6397-core.o
 
 obj-$(CONFIG_MFD_ALTERA_A10SR)	+= altera-a10sr.o
diff --git a/drivers/mfd/mt6360-core.c b/drivers/mfd/mt6360-core.c
new file mode 100644
index 0000000..d3580618
--- /dev/null
+++ b/drivers/mfd/mt6360-core.c
@@ -0,0 +1,463 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ */
+
+#include <linux/i2c.h>
+#include <linux/init.h>
+#include <linux/kernel.h>
+#include <linux/mfd/core.h>
+#include <linux/module.h>
+#include <linux/of_irq.h>
+#include <linux/of_platform.h>
+#include <linux/version.h>
+
+#include <linux/mfd/mt6360.h>
+#include <linux/mfd/mt6360-private.h>
+
+/* reg 0 -> 0 ~ 7 */
+#define MT6360_CHG_TREG_EVT		(4)
+#define MT6360_CHG_AICR_EVT		(5)
+#define MT6360_CHG_MIVR_EVT		(6)
+#define MT6360_PWR_RDY_EVT		(7)
+/* REG 1 -> 8 ~ 15 */
+#define MT6360_CHG_BATSYSUV_EVT		(9)
+#define MT6360_FLED_CHG_VINOVP_EVT	(11)
+#define MT6360_CHG_VSYSUV_EVT		(12)
+#define MT6360_CHG_VSYSOV_EVT		(13)
+#define MT6360_CHG_VBATOV_EVT		(14)
+#define MT6360_CHG_VBUSOV_EVT		(15)
+/* REG 2 -> 16 ~ 23 */
+/* REG 3 -> 24 ~ 31 */
+#define MT6360_WD_PMU_DET		(25)
+#define MT6360_WD_PMU_DONE		(26)
+#define MT6360_CHG_TMRI			(27)
+#define MT6360_CHG_ADPBADI		(29)
+#define MT6360_CHG_RVPI			(30)
+#define MT6360_OTPI			(31)
+/* REG 4 -> 32 ~ 39 */
+#define MT6360_CHG_AICCMEASL		(32)
+#define MT6360_CHGDET_DONEI		(34)
+#define MT6360_WDTMRI			(35)
+#define MT6360_SSFINISHI		(36)
+#define MT6360_CHG_RECHGI		(37)
+#define MT6360_CHG_TERMI		(38)
+#define MT6360_CHG_IEOCI		(39)
+/* REG 5 -> 40 ~ 47 */
+#define MT6360_PUMPX_DONEI		(40)
+#define MT6360_BAT_OVP_ADC_EVT		(41)
+#define MT6360_TYPEC_OTP_EVT		(42)
+#define MT6360_ADC_WAKEUP_EVT		(43)
+#define MT6360_ADC_DONEI		(44)
+#define MT6360_BST_BATUVI		(45)
+#define MT6360_BST_VBUSOVI		(46)
+#define MT6360_BST_OLPI			(47)
+/* REG 6 -> 48 ~ 55 */
+#define MT6360_ATTACH_I			(48)
+#define MT6360_DETACH_I			(49)
+#define MT6360_QC30_STPDONE		(51)
+#define MT6360_QC_VBUSDET_DONE		(52)
+#define MT6360_HVDCP_DET		(53)
+#define MT6360_CHGDETI			(54)
+#define MT6360_DCDTI			(55)
+/* REG 7 -> 56 ~ 63 */
+#define MT6360_FOD_DONE_EVT		(56)
+#define MT6360_FOD_OV_EVT		(57)
+#define MT6360_CHRDET_UVP_EVT		(58)
+#define MT6360_CHRDET_OVP_EVT		(59)
+#define MT6360_CHRDET_EXT_EVT		(60)
+#define MT6360_FOD_LR_EVT		(61)
+#define MT6360_FOD_HR_EVT		(62)
+#define MT6360_FOD_DISCHG_FAIL_EVT	(63)
+/* REG 8 -> 64 ~ 71 */
+#define MT6360_USBID_EVT		(64)
+#define MT6360_APWDTRST_EVT		(65)
+#define MT6360_EN_EVT			(66)
+#define MT6360_QONB_RST_EVT		(67)
+#define MT6360_MRSTB_EVT		(68)
+#define MT6360_OTP_EVT			(69)
+#define MT6360_VDDAOV_EVT		(70)
+#define MT6360_SYSUV_EVT		(71)
+/* REG 9 -> 72 ~ 79 */
+#define MT6360_FLED_STRBPIN_EVT		(72)
+#define MT6360_FLED_TORPIN_EVT		(73)
+#define MT6360_FLED_TX_EVT		(74)
+#define MT6360_FLED_LVF_EVT		(75)
+#define MT6360_FLED2_SHORT_EVT		(78)
+#define MT6360_FLED1_SHORT_EVT		(79)
+/* REG 10 -> 80 ~ 87 */
+#define MT6360_FLED2_STRB_EVT		(80)
+#define MT6360_FLED1_STRB_EVT		(81)
+#define MT6360_FLED2_STRB_TO_EVT	(82)
+#define MT6360_FLED1_STRB_TO_EVT	(83)
+#define MT6360_FLED2_TOR_EVT		(84)
+#define MT6360_FLED1_TOR_EVT		(85)
+/* REG 11 -> 88 ~ 95 */
+/* REG 12 -> 96 ~ 103 */
+#define MT6360_BUCK1_PGB_EVT		(96)
+#define MT6360_BUCK1_OC_EVT		(100)
+#define MT6360_BUCK1_OV_EVT		(101)
+#define MT6360_BUCK1_UV_EVT		(102)
+/* REG 13 -> 104 ~ 111 */
+#define MT6360_BUCK2_PGB_EVT		(104)
+#define MT6360_BUCK2_OC_EVT		(108)
+#define MT6360_BUCK2_OV_EVT		(109)
+#define MT6360_BUCK2_UV_EVT		(110)
+/* REG 14 -> 112 ~ 119 */
+#define MT6360_LDO1_OC_EVT		(113)
+#define MT6360_LDO2_OC_EVT		(114)
+#define MT6360_LDO3_OC_EVT		(115)
+#define MT6360_LDO5_OC_EVT		(117)
+#define MT6360_LDO6_OC_EVT		(118)
+#define MT6360_LDO7_OC_EVT		(119)
+/* REG 15 -> 120 ~ 127 */
+#define MT6360_LDO1_PGB_EVT		(121)
+#define MT6360_LDO2_PGB_EVT		(122)
+#define MT6360_LDO3_PGB_EVT		(123)
+#define MT6360_LDO5_PGB_EVT		(125)
+#define MT6360_LDO6_PGB_EVT		(126)
+#define MT6360_LDO7_PGB_EVT		(127)
+
+#define MT6360_REGMAP_IRQ_REG(_irq_evt)		\
+	REGMAP_IRQ_REG(_irq_evt, (_irq_evt) / 8, BIT((_irq_evt) % 8))
+
+#define MT6360_MFD_CELL(_name)					\
+	{							\
+		.name = #_name,					\
+		.of_compatible = "mediatek," #_name,		\
+		.num_resources = ARRAY_SIZE(_name##_resources),	\
+		.resources = _name##_resources,			\
+	}
+
+static const struct regmap_irq mt6360_pmu_irqs[] =  {
+	MT6360_REGMAP_IRQ_REG(MT6360_CHG_TREG_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_CHG_AICR_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_CHG_MIVR_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_PWR_RDY_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_CHG_BATSYSUV_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_FLED_CHG_VINOVP_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_CHG_VSYSUV_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_CHG_VSYSOV_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_CHG_VBATOV_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_CHG_VBUSOV_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_WD_PMU_DET),
+	MT6360_REGMAP_IRQ_REG(MT6360_WD_PMU_DONE),
+	MT6360_REGMAP_IRQ_REG(MT6360_CHG_TMRI),
+	MT6360_REGMAP_IRQ_REG(MT6360_CHG_ADPBADI),
+	MT6360_REGMAP_IRQ_REG(MT6360_CHG_RVPI),
+	MT6360_REGMAP_IRQ_REG(MT6360_OTPI),
+	MT6360_REGMAP_IRQ_REG(MT6360_CHG_AICCMEASL),
+	MT6360_REGMAP_IRQ_REG(MT6360_CHGDET_DONEI),
+	MT6360_REGMAP_IRQ_REG(MT6360_WDTMRI),
+	MT6360_REGMAP_IRQ_REG(MT6360_SSFINISHI),
+	MT6360_REGMAP_IRQ_REG(MT6360_CHG_RECHGI),
+	MT6360_REGMAP_IRQ_REG(MT6360_CHG_TERMI),
+	MT6360_REGMAP_IRQ_REG(MT6360_CHG_IEOCI),
+	MT6360_REGMAP_IRQ_REG(MT6360_PUMPX_DONEI),
+	MT6360_REGMAP_IRQ_REG(MT6360_CHG_TREG_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_BAT_OVP_ADC_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_TYPEC_OTP_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_ADC_WAKEUP_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_ADC_DONEI),
+	MT6360_REGMAP_IRQ_REG(MT6360_BST_BATUVI),
+	MT6360_REGMAP_IRQ_REG(MT6360_BST_VBUSOVI),
+	MT6360_REGMAP_IRQ_REG(MT6360_BST_OLPI),
+	MT6360_REGMAP_IRQ_REG(MT6360_ATTACH_I),
+	MT6360_REGMAP_IRQ_REG(MT6360_DETACH_I),
+	MT6360_REGMAP_IRQ_REG(MT6360_QC30_STPDONE),
+	MT6360_REGMAP_IRQ_REG(MT6360_QC_VBUSDET_DONE),
+	MT6360_REGMAP_IRQ_REG(MT6360_HVDCP_DET),
+	MT6360_REGMAP_IRQ_REG(MT6360_CHGDETI),
+	MT6360_REGMAP_IRQ_REG(MT6360_DCDTI),
+	MT6360_REGMAP_IRQ_REG(MT6360_FOD_DONE_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_FOD_OV_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_CHRDET_UVP_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_CHRDET_OVP_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_CHRDET_EXT_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_FOD_LR_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_FOD_HR_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_FOD_DISCHG_FAIL_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_USBID_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_APWDTRST_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_EN_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_QONB_RST_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_MRSTB_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_OTP_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_VDDAOV_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_SYSUV_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_FLED_STRBPIN_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_FLED_TORPIN_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_FLED_TX_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_FLED_LVF_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_FLED2_SHORT_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_FLED1_SHORT_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_FLED2_STRB_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_FLED1_STRB_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_FLED2_STRB_TO_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_FLED1_STRB_TO_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_FLED2_TOR_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_FLED1_TOR_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_BUCK1_PGB_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_BUCK1_OC_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_BUCK1_OV_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_BUCK1_UV_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_BUCK2_PGB_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_BUCK2_OC_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_BUCK2_OV_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_BUCK2_UV_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_LDO1_OC_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_LDO2_OC_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_LDO3_OC_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_LDO5_OC_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_LDO6_OC_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_LDO7_OC_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_LDO1_PGB_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_LDO2_PGB_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_LDO3_PGB_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_LDO5_PGB_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_LDO6_PGB_EVT),
+	MT6360_REGMAP_IRQ_REG(MT6360_LDO7_PGB_EVT),
+};
+
+static int mt6360_pmu_handle_post_irq(void *irq_drv_data)
+{
+	struct mt6360_pmu_info *mpi = irq_drv_data;
+
+	return regmap_update_bits(mpi->regmap,
+		MT6360_PMU_IRQ_SET, MT6360_IRQ_RETRIG, MT6360_IRQ_RETRIG);
+}
+
+static const struct regmap_irq_chip mt6360_pmu_irq_chip = {
+	.irqs = mt6360_pmu_irqs,
+	.num_irqs = ARRAY_SIZE(mt6360_pmu_irqs),
+	.num_regs = MT6360_PMU_IRQ_REGNUM,
+	.mask_base = MT6360_PMU_CHG_MASK1,
+	.status_base = MT6360_PMU_CHG_IRQ1,
+	.ack_base = MT6360_PMU_CHG_IRQ1,
+	.init_ack_masked = true,
+	.use_ack = true,
+	.handle_post_irq = mt6360_pmu_handle_post_irq,
+};
+
+static const struct regmap_config mt6360_pmu_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = MT6360_PMU_MAXREG,
+};
+
+static const struct resource mt6360_adc_resources[] = {
+	DEFINE_RES_IRQ_NAMED(MT6360_ADC_DONEI, "adc_donei"),
+};
+
+static const struct resource mt6360_chg_resources[] = {
+	DEFINE_RES_IRQ_NAMED(MT6360_CHG_TREG_EVT, "chg_treg_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_PWR_RDY_EVT, "pwr_rdy_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_CHG_BATSYSUV_EVT, "chg_batsysuv_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_CHG_VSYSUV_EVT, "chg_vsysuv_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_CHG_VSYSOV_EVT, "chg_vsysov_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_CHG_VBATOV_EVT, "chg_vbatov_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_CHG_VBUSOV_EVT, "chg_vbusov_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_CHG_AICCMEASL, "chg_aiccmeasl"),
+	DEFINE_RES_IRQ_NAMED(MT6360_WDTMRI, "wdtmri"),
+	DEFINE_RES_IRQ_NAMED(MT6360_CHG_RECHGI, "chg_rechgi"),
+	DEFINE_RES_IRQ_NAMED(MT6360_CHG_TERMI, "chg_termi"),
+	DEFINE_RES_IRQ_NAMED(MT6360_CHG_IEOCI, "chg_ieoci"),
+	DEFINE_RES_IRQ_NAMED(MT6360_PUMPX_DONEI, "pumpx_donei"),
+	DEFINE_RES_IRQ_NAMED(MT6360_ATTACH_I, "attach_i"),
+	DEFINE_RES_IRQ_NAMED(MT6360_CHRDET_EXT_EVT, "chrdet_ext_evt"),
+};
+
+static const struct resource mt6360_led_resources[] = {
+	DEFINE_RES_IRQ_NAMED(MT6360_FLED_CHG_VINOVP_EVT, "fled_chg_vinovp_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_FLED_LVF_EVT, "fled_lvf_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_FLED2_SHORT_EVT, "fled2_short_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_FLED1_SHORT_EVT, "fled1_short_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_FLED2_STRB_TO_EVT, "fled2_strb_to_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_FLED1_STRB_TO_EVT, "fled1_strb_to_evt"),
+};
+
+static const struct resource mt6360_pmic_resources[] = {
+	DEFINE_RES_IRQ_NAMED(MT6360_BUCK1_PGB_EVT, "buck1_pgb_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_BUCK1_OC_EVT, "buck1_oc_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_BUCK1_OV_EVT, "buck1_ov_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_BUCK1_UV_EVT, "buck1_uv_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_BUCK2_PGB_EVT, "buck2_pgb_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_BUCK2_OC_EVT, "buck2_oc_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_BUCK2_OV_EVT, "buck2_ov_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_BUCK2_UV_EVT, "buck2_uv_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_LDO6_OC_EVT, "ldo6_oc_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_LDO7_OC_EVT, "ldo7_oc_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_LDO6_PGB_EVT, "ldo6_pgb_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_LDO7_PGB_EVT, "ldo7_pgb_evt"),
+};
+
+static const struct resource mt6360_ldo_resources[] = {
+	DEFINE_RES_IRQ_NAMED(MT6360_LDO1_OC_EVT, "ldo1_oc_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_LDO2_OC_EVT, "ldo2_oc_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_LDO3_OC_EVT, "ldo3_oc_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_LDO5_OC_EVT, "ldo5_oc_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_LDO1_PGB_EVT, "ldo1_pgb_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_LDO2_PGB_EVT, "ldo2_pgb_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_LDO3_PGB_EVT, "ldo3_pgb_evt"),
+	DEFINE_RES_IRQ_NAMED(MT6360_LDO5_PGB_EVT, "ldo5_pgb_evt"),
+};
+
+static const struct mfd_cell mt6360_devs[] = {
+	MT6360_MFD_CELL(mt6360_adc),
+	MT6360_MFD_CELL(mt6360_chg),
+	MT6360_MFD_CELL(mt6360_led),
+	MT6360_MFD_CELL(mt6360_pmic),
+	MT6360_MFD_CELL(mt6360_ldo),
+	/* tcpc dev */
+	{
+		.name = "mt6360_tcpc",
+		.of_compatible = "mediatek,mt6360_tcpc",
+	},
+};
+
+static const unsigned short mt6360_slave_addr[MT6360_SLAVE_MAX] = {
+	MT6360_PMU_SLAVEID,
+	MT6360_PMIC_SLAVEID,
+	MT6360_LDO_SLAVEID,
+	MT6360_TCPC_SLAVEID,
+};
+
+static int mt6360_pmu_probe(struct i2c_client *client,
+			    const struct i2c_device_id *id)
+{
+	struct mt6360_pmu_info *mpi;
+	unsigned int reg_data = 0;
+	int i, ret;
+
+	mpi = devm_kzalloc(&client->dev, sizeof(*mpi), GFP_KERNEL);
+	if (!mpi)
+		return -ENOMEM;
+	mpi->dev = &client->dev;
+	i2c_set_clientdata(client, mpi);
+
+	/* regmap regiser */
+	mpi->regmap = devm_regmap_init_i2c(client, &mt6360_pmu_regmap_config);
+	if (IS_ERR(mpi->regmap)) {
+		dev_err(&client->dev, "regmap register fail\n");
+		return PTR_ERR(mpi->regmap);
+	}
+	/* chip id check */
+	ret = regmap_read(mpi->regmap, MT6360_PMU_DEV_INFO, &reg_data);
+	if (ret < 0) {
+		dev_err(&client->dev, "device not found\n");
+		return ret;
+	}
+	if ((reg_data & CHIP_VEN_MASK) != CHIP_VEN_MT6360) {
+		dev_err(&client->dev, "not mt6360 chip\n");
+		return -ENODEV;
+	}
+	mpi->chip_rev = reg_data & CHIP_REV_MASK;
+	/* irq register */
+	memcpy(&mpi->irq_chip, &mt6360_pmu_irq_chip, sizeof(mpi->irq_chip));
+	mpi->irq_chip.name = dev_name(&client->dev);
+	mpi->irq_chip.irq_drv_data = mpi;
+	ret = devm_regmap_add_irq_chip(&client->dev, mpi->regmap, client->irq,
+				       IRQF_TRIGGER_FALLING, 0, &mpi->irq_chip,
+				       &mpi->irq_data);
+	if (ret < 0) {
+		dev_err(&client->dev, "regmap irq chip add fail\n");
+		return ret;
+	}
+	/* new i2c slave device */
+	for (i = 0; i < MT6360_SLAVE_MAX; i++) {
+		if (mt6360_slave_addr[i] == client->addr) {
+			mpi->i2c[i] = client;
+			continue;
+		}
+		mpi->i2c[i] = i2c_new_dummy(client->adapter,
+					    mt6360_slave_addr[i]);
+		if (!mpi->i2c[i]) {
+			dev_err(&client->dev, "new i2c dev [%d] fail\n", i);
+			ret = -ENODEV;
+			goto out;
+		}
+		i2c_set_clientdata(mpi->i2c[i], mpi);
+	}
+	/* mfd cell register */
+	ret = devm_mfd_add_devices(&client->dev, PLATFORM_DEVID_AUTO,
+				   mt6360_devs, ARRAY_SIZE(mt6360_devs), NULL,
+				   0, regmap_irq_get_domain(mpi->irq_data));
+	if (ret < 0) {
+		dev_err(&client->dev, "mfd add cells fail\n");
+		goto out;
+	}
+	dev_info(&client->dev, "Successfully probed\n");
+	return 0;
+out:
+	while (--i >= 0) {
+		if (mpi->i2c[i]->addr == client->addr)
+			continue;
+		i2c_unregister_device(mpi->i2c[i]);
+	}
+	return ret;
+}
+
+static int mt6360_pmu_remove(struct i2c_client *client)
+{
+	struct mt6360_pmu_info *mpi = i2c_get_clientdata(client);
+	int i;
+
+	for (i = 0; i < MT6360_SLAVE_MAX; i++) {
+		if (mpi->i2c[i]->addr == client->addr)
+			continue;
+		i2c_unregister_device(mpi->i2c[i]);
+	}
+	return 0;
+}
+
+static int __maybe_unused mt6360_pmu_suspend(struct device *dev)
+{
+	struct i2c_client *i2c = to_i2c_client(dev);
+
+	if (device_may_wakeup(dev))
+		enable_irq_wake(i2c->irq);
+	return 0;
+}
+
+static int __maybe_unused mt6360_pmu_resume(struct device *dev)
+{
+
+	struct i2c_client *i2c = to_i2c_client(dev);
+
+	if (device_may_wakeup(dev))
+		disable_irq_wake(i2c->irq);
+	return 0;
+}
+
+static SIMPLE_DEV_PM_OPS(mt6360_pmu_pm_ops,
+			 mt6360_pmu_suspend, mt6360_pmu_resume);
+
+static const struct of_device_id __maybe_unused mt6360_pmu_of_id[] = {
+	{ .compatible = "mediatek,mt6360_pmu", },
+	{},
+};
+MODULE_DEVICE_TABLE(of, mt6360_pmu_of_id);
+
+static const struct i2c_device_id mt6360_pmu_id[] = {
+	{ "mt6360_pmu", 0 },
+	{},
+};
+MODULE_DEVICE_TABLE(i2c, mt6360_pmu_id);
+
+static struct i2c_driver mt6360_pmu_driver = {
+	.driver = {
+		.name = "mt6360_pmu",
+		.owner = THIS_MODULE,
+		.pm = &mt6360_pmu_pm_ops,
+		.of_match_table = of_match_ptr(mt6360_pmu_of_id),
+	},
+	.probe = mt6360_pmu_probe,
+	.remove = mt6360_pmu_remove,
+	.id_table = mt6360_pmu_id,
+};
+module_i2c_driver(mt6360_pmu_driver);
+
+MODULE_AUTHOR("CY_Huang <cy_huang@richtek.com>");
+MODULE_DESCRIPTION("MT6360 PMU I2C Driver");
+MODULE_LICENSE("GPL");
+MODULE_VERSION("1.0.0");
diff --git a/include/linux/mfd/mt6360-private.h b/include/linux/mfd/mt6360-private.h
new file mode 100644
index 0000000..b07b3d9
--- /dev/null
+++ b/include/linux/mfd/mt6360-private.h
@@ -0,0 +1,279 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ */
+
+#ifndef __MT6360_PRIVATE_H__
+#define __MT6360_PRIVATE_H__
+
+#include <linux/interrupt.h>
+
+/* PMU register defininition */
+#define MT6360_PMU_DEV_INFO			(0x00)
+#define MT6360_PMU_CORE_CTRL1			(0x01)
+#define MT6360_PMU_RST1				(0x02)
+#define MT6360_PMU_CRCEN			(0x03)
+#define MT6360_PMU_RST_PAS_CODE1		(0x04)
+#define MT6360_PMU_RST_PAS_CODE2		(0x05)
+#define MT6360_PMU_CORE_CTRL2			(0x06)
+#define MT6360_PMU_TM_PAS_CODE1			(0x07)
+#define MT6360_PMU_TM_PAS_CODE2			(0x08)
+#define MT6360_PMU_TM_PAS_CODE3			(0x09)
+#define MT6360_PMU_TM_PAS_CODE4			(0x0A)
+#define MT6360_PMU_IRQ_IND			(0x0B)
+#define MT6360_PMU_IRQ_MASK			(0x0C)
+#define MT6360_PMU_IRQ_SET			(0x0D)
+#define MT6360_PMU_SHDN_CTRL			(0x0E)
+#define MT6360_PMU_TM_INF			(0x0F)
+#define MT6360_PMU_I2C_CTRL			(0x10)
+#define MT6360_PMU_CHG_CTRL1			(0x11)
+#define MT6360_PMU_CHG_CTRL2			(0x12)
+#define MT6360_PMU_CHG_CTRL3			(0x13)
+#define MT6360_PMU_CHG_CTRL4			(0x14)
+#define MT6360_PMU_CHG_CTRL5			(0x15)
+#define MT6360_PMU_CHG_CTRL6			(0x16)
+#define MT6360_PMU_CHG_CTRL7			(0x17)
+#define MT6360_PMU_CHG_CTRL8			(0x18)
+#define MT6360_PMU_CHG_CTRL9			(0x19)
+#define MT6360_PMU_CHG_CTRL10			(0x1A)
+#define MT6360_PMU_CHG_CTRL11			(0x1B)
+#define MT6360_PMU_CHG_CTRL12			(0x1C)
+#define MT6360_PMU_CHG_CTRL13			(0x1D)
+#define MT6360_PMU_CHG_CTRL14			(0x1E)
+#define MT6360_PMU_CHG_CTRL15			(0x1F)
+#define MT6360_PMU_CHG_CTRL16			(0x20)
+#define MT6360_PMU_CHG_AICC_RESULT		(0x21)
+#define MT6360_PMU_DEVICE_TYPE			(0x22)
+#define MT6360_PMU_QC_CONTROL1			(0x23)
+#define MT6360_PMU_QC_CONTROL2			(0x24)
+#define MT6360_PMU_QC30_CONTROL1		(0x25)
+#define MT6360_PMU_QC30_CONTROL2		(0x26)
+#define MT6360_PMU_USB_STATUS1			(0x27)
+#define MT6360_PMU_QC_STATUS1			(0x28)
+#define MT6360_PMU_QC_STATUS2			(0x29)
+#define MT6360_PMU_CHG_PUMP			(0x2A)
+#define MT6360_PMU_CHG_CTRL17			(0x2B)
+#define MT6360_PMU_CHG_CTRL18			(0x2C)
+#define MT6360_PMU_CHRDET_CTRL1			(0x2D)
+#define MT6360_PMU_CHRDET_CTRL2			(0x2E)
+#define MT6360_PMU_DPDN_CTRL			(0x2F)
+#define MT6360_PMU_CHG_HIDDEN_CTRL1		(0x30)
+#define MT6360_PMU_CHG_HIDDEN_CTRL2		(0x31)
+#define MT6360_PMU_CHG_HIDDEN_CTRL3		(0x32)
+#define MT6360_PMU_CHG_HIDDEN_CTRL4		(0x33)
+#define MT6360_PMU_CHG_HIDDEN_CTRL5		(0x34)
+#define MT6360_PMU_CHG_HIDDEN_CTRL6		(0x35)
+#define MT6360_PMU_CHG_HIDDEN_CTRL7		(0x36)
+#define MT6360_PMU_CHG_HIDDEN_CTRL8		(0x37)
+#define MT6360_PMU_CHG_HIDDEN_CTRL9		(0x38)
+#define MT6360_PMU_CHG_HIDDEN_CTRL10		(0x39)
+#define MT6360_PMU_CHG_HIDDEN_CTRL11		(0x3A)
+#define MT6360_PMU_CHG_HIDDEN_CTRL12		(0x3B)
+#define MT6360_PMU_CHG_HIDDEN_CTRL13		(0x3C)
+#define MT6360_PMU_CHG_HIDDEN_CTRL14		(0x3D)
+#define MT6360_PMU_CHG_HIDDEN_CTRL15		(0x3E)
+#define MT6360_PMU_CHG_HIDDEN_CTRL16		(0x3F)
+#define MT6360_PMU_CHG_HIDDEN_CTRL17		(0x40)
+#define MT6360_PMU_CHG_HIDDEN_CTRL18		(0x41)
+#define MT6360_PMU_CHG_HIDDEN_CTRL19		(0x42)
+#define MT6360_PMU_CHG_HIDDEN_CTRL20		(0x43)
+#define MT6360_PMU_CHG_HIDDEN_CTRL21		(0x44)
+#define MT6360_PMU_CHG_HIDDEN_CTRL22		(0x45)
+#define MT6360_PMU_CHG_HIDDEN_CTRL23		(0x46)
+#define MT6360_PMU_CHG_HIDDEN_CTRL24		(0x47)
+#define MT6360_PMU_CHG_HIDDEN_CTRL25		(0x48)
+#define MT6360_PMU_BC12_CTRL			(0x49)
+#define MT6360_PMU_CHG_STAT			(0x4A)
+#define MT6360_PMU_RESV1			(0x4B)
+#define MT6360_PMU_TYPEC_OTP_TH_SEL_CODEH	(0x4E)
+#define MT6360_PMU_TYPEC_OTP_TH_SEL_CODEL	(0x4F)
+#define MT6360_PMU_TYPEC_OTP_HYST_TH		(0x50)
+#define MT6360_PMU_TYPEC_OTP_CTRL		(0x51)
+#define MT6360_PMU_ADC_BAT_DATA_H		(0x52)
+#define MT6360_PMU_ADC_BAT_DATA_L		(0x53)
+#define MT6360_PMU_IMID_BACKBST_ON		(0x54)
+#define MT6360_PMU_IMID_BACKBST_OFF		(0x55)
+#define MT6360_PMU_ADC_CONFIG			(0x56)
+#define MT6360_PMU_ADC_EN2			(0x57)
+#define MT6360_PMU_ADC_IDLE_T			(0x58)
+#define MT6360_PMU_ADC_RPT_1			(0x5A)
+#define MT6360_PMU_ADC_RPT_2			(0x5B)
+#define MT6360_PMU_ADC_RPT_3			(0x5C)
+#define MT6360_PMU_ADC_RPT_ORG1			(0x5D)
+#define MT6360_PMU_ADC_RPT_ORG2			(0x5E)
+#define MT6360_PMU_BAT_OVP_TH_SEL_CODEH		(0x5F)
+#define MT6360_PMU_BAT_OVP_TH_SEL_CODEL		(0x60)
+#define MT6360_PMU_CHG_CTRL19			(0x61)
+#define MT6360_PMU_VDDASUPPLY			(0x62)
+#define MT6360_PMU_BC12_MANUAL			(0x63)
+#define MT6360_PMU_CHGDET_FUNC			(0x64)
+#define MT6360_PMU_FOD_CTRL			(0x65)
+#define MT6360_PMU_CHG_CTRL20			(0x66)
+#define MT6360_PMU_CHG_HIDDEN_CTRL26		(0x67)
+#define MT6360_PMU_CHG_HIDDEN_CTRL27		(0x68)
+#define MT6360_PMU_RESV2			(0x69)
+#define MT6360_PMU_USBID_CTRL1			(0x6D)
+#define MT6360_PMU_USBID_CTRL2			(0x6E)
+#define MT6360_PMU_USBID_CTRL3			(0x6F)
+#define MT6360_PMU_FLED_CFG			(0x70)
+#define MT6360_PMU_RESV3			(0x71)
+#define MT6360_PMU_FLED1_CTRL			(0x72)
+#define MT6360_PMU_FLED_STRB_CTRL		(0x73)
+#define MT6360_PMU_FLED1_STRB_CTRL2		(0x74)
+#define MT6360_PMU_FLED1_TOR_CTRL		(0x75)
+#define MT6360_PMU_FLED2_CTRL			(0x76)
+#define MT6360_PMU_RESV4			(0x77)
+#define MT6360_PMU_FLED2_STRB_CTRL2		(0x78)
+#define MT6360_PMU_FLED2_TOR_CTRL		(0x79)
+#define MT6360_PMU_FLED_VMIDTRK_CTRL1		(0x7A)
+#define MT6360_PMU_FLED_VMID_RTM		(0x7B)
+#define MT6360_PMU_FLED_VMIDTRK_CTRL2		(0x7C)
+#define MT6360_PMU_FLED_PWSEL			(0x7D)
+#define MT6360_PMU_FLED_EN			(0x7E)
+#define MT6360_PMU_FLED_Hidden1			(0x7F)
+#define MT6360_PMU_RGB_EN			(0x80)
+#define MT6360_PMU_RGB1_ISNK			(0x81)
+#define MT6360_PMU_RGB2_ISNK			(0x82)
+#define MT6360_PMU_RGB3_ISNK			(0x83)
+#define MT6360_PMU_RGB_ML_ISNK			(0x84)
+#define MT6360_PMU_RGB1_DIM			(0x85)
+#define MT6360_PMU_RGB2_DIM			(0x86)
+#define MT6360_PMU_RGB3_DIM			(0x87)
+#define MT6360_PMU_RESV5			(0x88)
+#define MT6360_PMU_RGB12_Freq			(0x89)
+#define MT6360_PMU_RGB34_Freq			(0x8A)
+#define MT6360_PMU_RGB1_Tr			(0x8B)
+#define MT6360_PMU_RGB1_Tf			(0x8C)
+#define MT6360_PMU_RGB1_TON_TOFF		(0x8D)
+#define MT6360_PMU_RGB2_Tr			(0x8E)
+#define MT6360_PMU_RGB2_Tf			(0x8F)
+#define MT6360_PMU_RGB2_TON_TOFF		(0x90)
+#define MT6360_PMU_RGB3_Tr			(0x91)
+#define MT6360_PMU_RGB3_Tf			(0x92)
+#define MT6360_PMU_RGB3_TON_TOFF		(0x93)
+#define MT6360_PMU_RGB_Hidden_CTRL1		(0x94)
+#define MT6360_PMU_RGB_Hidden_CTRL2		(0x95)
+#define MT6360_PMU_RESV6			(0x97)
+#define MT6360_PMU_SPARE1			(0x9A)
+#define MT6360_PMU_SPARE2			(0xA0)
+#define MT6360_PMU_SPARE3			(0xB0)
+#define MT6360_PMU_SPARE4			(0xC0)
+#define MT6360_PMU_CHG_IRQ1			(0xD0)
+#define MT6360_PMU_CHG_IRQ2			(0xD1)
+#define MT6360_PMU_CHG_IRQ3			(0xD2)
+#define MT6360_PMU_CHG_IRQ4			(0xD3)
+#define MT6360_PMU_CHG_IRQ5			(0xD4)
+#define MT6360_PMU_CHG_IRQ6			(0xD5)
+#define MT6360_PMU_QC_IRQ			(0xD6)
+#define MT6360_PMU_FOD_IRQ			(0xD7)
+#define MT6360_PMU_BASE_IRQ			(0xD8)
+#define MT6360_PMU_FLED_IRQ1			(0xD9)
+#define MT6360_PMU_FLED_IRQ2			(0xDA)
+#define MT6360_PMU_RGB_IRQ			(0xDB)
+#define MT6360_PMU_BUCK1_IRQ			(0xDC)
+#define MT6360_PMU_BUCK2_IRQ			(0xDD)
+#define MT6360_PMU_LDO_IRQ1			(0xDE)
+#define MT6360_PMU_LDO_IRQ2			(0xDF)
+#define MT6360_PMU_CHG_STAT1			(0xE0)
+#define MT6360_PMU_CHG_STAT2			(0xE1)
+#define MT6360_PMU_CHG_STAT3			(0xE2)
+#define MT6360_PMU_CHG_STAT4			(0xE3)
+#define MT6360_PMU_CHG_STAT5			(0xE4)
+#define MT6360_PMU_CHG_STAT6			(0xE5)
+#define MT6360_PMU_QC_STAT			(0xE6)
+#define MT6360_PMU_FOD_STAT			(0xE7)
+#define MT6360_PMU_BASE_STAT			(0xE8)
+#define MT6360_PMU_FLED_STAT1			(0xE9)
+#define MT6360_PMU_FLED_STAT2			(0xEA)
+#define MT6360_PMU_RGB_STAT			(0xEB)
+#define MT6360_PMU_BUCK1_STAT			(0xEC)
+#define MT6360_PMU_BUCK2_STAT			(0xED)
+#define MT6360_PMU_LDO_STAT1			(0xEE)
+#define MT6360_PMU_LDO_STAT2			(0xEF)
+#define MT6360_PMU_CHG_MASK1			(0xF0)
+#define MT6360_PMU_CHG_MASK2			(0xF1)
+#define MT6360_PMU_CHG_MASK3			(0xF2)
+#define MT6360_PMU_CHG_MASK4			(0xF3)
+#define MT6360_PMU_CHG_MASK5			(0xF4)
+#define MT6360_PMU_CHG_MASK6			(0xF5)
+#define MT6360_PMU_QC_MASK			(0xF6)
+#define MT6360_PMU_FOD_MASK			(0xF7)
+#define MT6360_PMU_BASE_MASK			(0xF8)
+#define MT6360_PMU_FLED_MASK1			(0xF9)
+#define MT6360_PMU_FLED_MASK2			(0xFA)
+#define MT6360_PMU_FAULTB_MASK			(0xFB)
+#define MT6360_PMU_BUCK1_MASK			(0xFC)
+#define MT6360_PMU_BUCK2_MASK			(0xFD)
+#define MT6360_PMU_LDO_MASK1			(0xFE)
+#define MT6360_PMU_LDO_MASK2			(0xFF)
+#define MT6360_PMU_MAXREG			(MT6360_PMU_LDO_MASK2)
+
+
+/* MT6360_PMU_IRQ_SET */
+#define MT6360_PMU_IRQ_REGNUM	(MT6360_PMU_LDO_IRQ2 - MT6360_PMU_CHG_IRQ1 + 1)
+#define MT6360_IRQ_RETRIG	BIT(2)
+
+#define CHIP_VEN_MASK				(0xF0)
+#define CHIP_VEN_MT6360				(0x50)
+#define CHIP_REV_MASK				(0x0F)
+
+/* IRQ definitions */
+struct mt6360_pmu_irq_desc {
+	const char *name;
+	irq_handler_t irq_handler;
+};
+
+#define  MT6360_DT_VALPROP(name, type) \
+			{#name, offsetof(type, name)}
+
+struct mt6360_val_prop {
+	const char *name;
+	size_t offset;
+};
+
+static inline void mt6360_dt_parser_helper(struct device_node *np, void *data,
+					   const struct mt6360_val_prop *props,
+					   int prop_cnt)
+{
+	int i;
+
+	for (i = 0; i < prop_cnt; i++) {
+		if (unlikely(!props[i].name))
+			continue;
+		of_property_read_u32(np, props[i].name, data + props[i].offset);
+	}
+}
+
+#define MT6360_PDATA_VALPROP(name, type, reg, shift, mask, func, base) \
+			{offsetof(type, name), reg, shift, mask, func, base}
+
+struct mt6360_pdata_prop {
+	size_t offset;
+	u8 reg;
+	u8 shift;
+	u8 mask;
+	u32 (*transform)(u32 val);
+	u8 base;
+};
+
+static inline int mt6360_pdata_apply_helper(void *context, void *pdata,
+					   const struct mt6360_pdata_prop *prop,
+					   int prop_cnt)
+{
+	int i, ret;
+	u32 val;
+
+	for (i = 0; i < prop_cnt; i++) {
+		val = *(u32 *)(pdata + prop[i].offset);
+		if (prop[i].transform)
+			val = prop[i].transform(val);
+		val += prop[i].base;
+		ret = regmap_update_bits(context,
+			     prop[i].reg, prop[i].mask, val << prop[i].shift);
+		if (ret < 0)
+			return ret;
+	}
+	return 0;
+}
+
+#endif /* __MT6360_PRIVATE_H__ */
diff --git a/include/linux/mfd/mt6360.h b/include/linux/mfd/mt6360.h
new file mode 100644
index 0000000..ba2e80a
--- /dev/null
+++ b/include/linux/mfd/mt6360.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ */
+
+#ifndef __MT6360_H__
+#define __MT6360_H__
+
+#include <linux/regmap.h>
+
+enum {
+	MT6360_SLAVE_PMU = 0,
+	MT6360_SLAVE_PMIC,
+	MT6360_SLAVE_LDO,
+	MT6360_SLAVE_TCPC,
+	MT6360_SLAVE_MAX,
+};
+
+#define MT6360_PMU_SLAVEID	(0x34)
+#define MT6360_PMIC_SLAVEID	(0x1A)
+#define MT6360_LDO_SLAVEID	(0x64)
+#define MT6360_TCPC_SLAVEID	(0x4E)
+
+struct mt6360_pmu_info {
+	struct i2c_client *i2c[MT6360_SLAVE_MAX];
+	struct device *dev;
+	struct regmap *regmap;
+	struct regmap_irq_chip_data *irq_data;
+	struct regmap_irq_chip irq_chip;
+	unsigned int chip_rev;
+};
+
+#endif /* __MT6360_H__ */
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
