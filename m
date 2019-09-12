Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88853B09E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 10:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IUG+b9vElh2mQmwnpFoPoiYvEoZobvx8Bt4VrbXvdOI=; b=OTH
	b8oCkyERU0HuFkyAMgW0M2EXl2i4xBVI/RB0CLMZCF0MW6zwwbEt1lYTDKIVheECzDTHV5u9AxYQ2
	bgjVJwMJO7rMNWGpLsQfvKCmw4WTZKT9QAWDckxpxjxpk0LKW9PB30/IjEHFPyTE/W5zkJzWuQu1L
	CnGGfrrns42EpxGsowjGQyauYHDxQU9VKC9oKSrCjqt/OZLwj6hLFaeLzN2BW4zHlx9IQUCSTsabw
	t9+r0dVfQ51VlOYhCN5Iraj6jgqqYa/oM3Pf9QdACPnI8xS2Z5Y6Ok0ejhh9Xv9eyR7x1TsO27N5a
	FQ9dpM2Qxrt4QehPI/8lyju5XoBieyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8KBF-0005RK-BM; Thu, 12 Sep 2019 08:10:17 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8KAu-0005QD-HV; Thu, 12 Sep 2019 08:09:58 +0000
Received: by mail-pf1-x441.google.com with SMTP id h195so15480798pfe.5;
 Thu, 12 Sep 2019 01:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=BDwgpvRCPoRlKxQwn9tLrNpFXIVaah1/kS+A+STqxEo=;
 b=VEFQnUNDFS56V3FI4DXLXa7SG+KUA5TmhVUfiLOp8AAicoKfpxrOZgpQJf6V0Bett2
 /t+puLV4pHqNpgT5hfyT818UW3VeJwOUrcpowvPGE6c2IqedjLViqzjQDK81f/jqunrs
 RmPsTzm433p+ozVUHl4DFhMJO+alznBxX0aUXtSnIllLEH8A15sgNdLcbSuHGYycpDi5
 6nGyvydUQ8K9OGoD0nTnsiUtL030y3SzBwY0Ts4MVjtSBmkBDnHh0QB5+d7tQhokek5D
 GZFwkS8EHIL/rtQxcH1QrSRbEisYE+Dij4iGSUqK2Xb3FsVufpGwsBvkatHHXSUH+9bf
 wbNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=BDwgpvRCPoRlKxQwn9tLrNpFXIVaah1/kS+A+STqxEo=;
 b=JcTkNA/YyUS8w2jllvU3gW2VDqbMgSYu79FrT1JhMdztVa2Ic13cTemv96Lc+8sbcA
 ywrdhHE7S1I2rJpsBf9CAoWBizysqSU4xskq5Fz9rkmrSTZAjyua/D8ILTSO6UByS+AD
 vKAA6n5uLvVPy3rEG1KaNX9MKxDqTtOrxEcoSro6WWJnOHlrbdcxb9FQHIeVYyCaZFRd
 Pr/1+QdJ58rEnZ5upiEw90oP6LYR6b/wMq25Bf4AjfyrIJCgUX/EMWSCh2iFpKzpXh2Y
 y076TRx7Xlq+6OCVaUgd5QTycG6SE+CZO9+AAxzPrN/yuzr8FeolK0lGS4IW5c8DTy6f
 pGaw==
X-Gm-Message-State: APjAAAXP4E87tfxEVKeipPy5GDdxvQ5ZtXmwWiEbdllWT2KKu6XB4QrV
 3HfHJElvhjWMCoHyOL2+/X4=
X-Google-Smtp-Source: APXvYqyhcfflD19zJAsipz637jg2qW2udOQ9WffQDshp68Dpcrq8y0DuUmgGftFIVl3tiKBZb0rhFg==
X-Received: by 2002:a17:90a:fb92:: with SMTP id
 cp18mr10348752pjb.60.1568275792035; 
 Thu, 12 Sep 2019 01:09:52 -0700 (PDT)
Received: from localhost.localdomain ([49.216.13.52])
 by smtp.gmail.com with ESMTPSA id x13sm25549391pfm.157.2019.09.12.01.09.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 12 Sep 2019 01:09:51 -0700 (PDT)
From: Gene Chen <gene.chen.richtek@gmail.com>
To: matthias.bgg@gmail.com,
	gene_chen@richtek.com,
	Wilma.Wu@mediatek.com
Subject: 
Date: Thu, 12 Sep 2019 16:09:46 +0800
Message-Id: <1568275786-3505-1-git-send-email-gene.chen.richtek@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_010956_583593_6C9E3304 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gene.chen.richtek[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From 66208ef7fcdb4176bf63cd130b3e3197086ac4b3 Mon Sep 17 00:00:00 2001
From: Gene Chen <gene_chen@mediatek.corp-partner.google.com>
Date: Thu, 22 Aug 2019 14:21:03 +0800
Subject: [PATCH] mfd: mt6360: add pmic mt6360 driver

---
 drivers/mfd/Kconfig       |  12 ++
 drivers/mfd/Makefile      |   1 +
 drivers/mfd/mt6360-core.c | 463 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 476 insertions(+)
 create mode 100644 drivers/mfd/mt6360-core.c

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
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
