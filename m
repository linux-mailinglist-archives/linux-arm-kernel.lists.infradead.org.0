Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9B81F3869
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:47:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pxQJTB+cN8Ix9fuI8etxmcRcMM3E9hhR4EDpaLWgQHE=; b=CXfjvmeiEpKU41
	7VuptQ5wZR/p12L8UodihZWGP7OkPTZ5tZ0+kFVorvIAe6JE4NlENP+/ELugkZidlI9qkH6Awz0ji
	IMiQqih8ZPJh060gRWP7yYnwROMMfG3E0gwcCrH7oI894UJvEa0KbLRNmyvBvcGP+Wx+Eso7LXfet
	2zoeLnrpkLGNzmDuqrAgflhBP9jSd7gx8TBj4PTp+WluPUEiWkCi0pqTeNGKUni9Kuh4E61t5/968
	L+r1e1D/cQsztrr/9uDoF26COReO1OX1jtflFDTWxA0btdR+Z1jPDUjnkx/pGzvDYqi07s56K+pFf
	pKJMH+Y8JJoPin8++Atg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibme-0002UR-Ry; Tue, 09 Jun 2020 10:47:08 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiblP-0001Z8-Da; Tue, 09 Jun 2020 10:45:57 +0000
X-UUID: 0a3315f6879e433ca4e31ede5e620b62-20200609
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=ghj3U5Uiw5kH3QIGkUg7sf+EOxYdEDwQ77XhzksL17Y=; 
 b=jeItsakqeF3br0mNCmMmIuRQkw57x0x0EoGebCiqDWaCzqlYtdlKNazCwrbHx4/akmuFvBcs6kXMRzYYW2KmYL14077kWK84y40yEmpRgols65q0sXMsDr+GZDmCqEfUvC0KBt0IhRwOr9Pq2LvDaibfIgQAjBketcQTzd4QH4k=;
X-UUID: 0a3315f6879e433ca4e31ede5e620b62-20200609
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <roger.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1136766798; Tue, 09 Jun 2020 02:45:50 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 9 Jun 2020 03:45:44 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 9 Jun 2020 18:45:36 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 9 Jun 2020 18:45:35 +0800
From: Roger Lu <roger.lu@mediatek.com>
To: Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Nicolas Boichat <drinkcat@google.com>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v9 3/4] PM / AVS: SVS: introduce SVS engine
Date: Tue, 9 Jun 2020 18:45:33 +0800
Message-ID: <20200609104534.29314-4-roger.lu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200609104534.29314-1-roger.lu@mediatek.com>
References: <20200609104534.29314-1-roger.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_034551_527941_5142D4C9 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 Angus Lin <Angus.Lin@mediatek.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Roger Lu <roger.lu@mediatek.com>,
 linux-kernel@vger.kernel.org, Xiaoqing Liu <Xiaoqing.Liu@mediatek.com>,
 YT Lee <yt.lee@mediatek.com>, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, HenryC Chen <HenryC.Chen@mediatek.com>,
 Charles Yang <Charles.Yang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Smart Voltage Scaling(SVS) engine is a piece of hardware
which has several controllers(banks) for calculating suitable
voltage to different power domains(CPU/GPU/CCI) according to
chip process corner, temperatures and other factors. Then DVFS
driver could apply SVS bank voltage to PMIC/Buck.

Signed-off-by: Roger Lu <roger.lu@mediatek.com>
---
 drivers/power/avs/Kconfig     |   10 +
 drivers/power/avs/Makefile    |    1 +
 drivers/power/avs/mtk_svs.c   | 1858 +++++++++++++++++++++++++++++++++
 include/linux/power/mtk_svs.h |   23 +
 4 files changed, 1892 insertions(+)
 create mode 100644 drivers/power/avs/mtk_svs.c
 create mode 100644 include/linux/power/mtk_svs.h

diff --git a/drivers/power/avs/Kconfig b/drivers/power/avs/Kconfig
index cdb4237bfd02..754e9315c4ea 100644
--- a/drivers/power/avs/Kconfig
+++ b/drivers/power/avs/Kconfig
@@ -35,3 +35,13 @@ config ROCKCHIP_IODOMAIN
 	  Say y here to enable support io domains on Rockchip SoCs. It is
 	  necessary for the io domain setting of the SoC to match the
 	  voltage supplied by the regulators.
+
+config MTK_SVS
+	tristate "MediaTek Smart Voltage Scaling(SVS)"
+	depends on POWER_AVS && MTK_EFUSE && NVMEM
+	help
+	  The Smart Voltage Scaling(SVS) engine is a piece of hardware
+	  which has several controllers(banks) for calculating suitable
+	  voltage to different power domains(CPU/GPU/CCI) according to
+	  chip process corner, temperatures and other factors. Then DVFS
+	  driver could apply SVS bank voltage to PMIC/Buck.
diff --git a/drivers/power/avs/Makefile b/drivers/power/avs/Makefile
index 9007d05853e2..231adf078582 100644
--- a/drivers/power/avs/Makefile
+++ b/drivers/power/avs/Makefile
@@ -2,3 +2,4 @@
 obj-$(CONFIG_POWER_AVS_OMAP)		+= smartreflex.o
 obj-$(CONFIG_QCOM_CPR)			+= qcom-cpr.o
 obj-$(CONFIG_ROCKCHIP_IODOMAIN)		+= rockchip-io-domain.o
+obj-$(CONFIG_MTK_SVS)			+= mtk_svs.o
diff --git a/drivers/power/avs/mtk_svs.c b/drivers/power/avs/mtk_svs.c
new file mode 100644
index 000000000000..3e26191f6a3b
--- /dev/null
+++ b/drivers/power/avs/mtk_svs.c
@@ -0,0 +1,1858 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 MediaTek Inc.
+ */
+
+#include <linux/bits.h>
+#include <linux/clk.h>
+#include <linux/completion.h>
+#include <linux/init.h>
+#include <linux/interrupt.h>
+#include <linux/kernel.h>
+#include <linux/kthread.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/nvmem-consumer.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/pm_domain.h>
+#include <linux/pm_opp.h>
+#include <linux/pm_qos.h>
+#include <linux/pm_runtime.h>
+#include <linux/power/mtk_svs.h>
+#include <linux/regulator/consumer.h>
+#include <linux/reset.h>
+#include <linux/slab.h>
+#include <linux/spinlock.h>
+#include <linux/thermal.h>
+
+/* svs bank 1-line sw id */
+#define SVSB_CPU_LITTLE			BIT(0)
+#define SVSB_CPU_BIG			BIT(1)
+#define SVSB_CCI			BIT(2)
+#define SVSB_GPU			BIT(3)
+
+/* svs bank mode support */
+#define SVSB_MODE_ALL_DISABLE		(0)
+#define SVSB_MODE_INIT01		BIT(1)
+#define SVSB_MODE_INIT02		BIT(2)
+#define SVSB_MODE_MON			BIT(3)
+
+/* svs bank init01 condition */
+#define SVSB_INIT01_VOLT_IGNORE		BIT(1)
+#define SVSB_INIT01_VOLT_INC_ONLY	BIT(2)
+#define SVSB_INIT01_CLK_EN		BIT(31)
+
+/* svs bank common setting */
+#define SVSB_TZONE_HIGH_TEMP_MAX	(U32_MAX)
+#define SVSB_RUNCONFIG_DEFAULT		(0x80000000)
+#define SVSB_DC_SIGNED_BIT		(0x8000)
+#define SVSB_INTEN_INIT0x		(0x00005f01)
+#define SVSB_INTEN_MONVOPEN		(0x00ff0000)
+#define SVSB_EN_OFF			(0x0)
+#define SVSB_EN_MASK			(0x7)
+#define SVSB_EN_INIT01			(0x1)
+#define SVSB_EN_INIT02			(0x5)
+#define SVSB_EN_MON			(0x2)
+#define SVSB_INTSTS_MONVOP		(0x00ff0000)
+#define SVSB_INTSTS_COMPLETE		(0x1)
+#define SVSB_INTSTS_CLEAN		(0x00ffffff)
+
+static DEFINE_SPINLOCK(mtk_svs_lock);
+struct mtk_svs;
+
+/*
+ * enum svsb_phase - svs bank phase enumeration
+ * @SVSB_PHASE_INIT01: basic init for svs bank
+ * @SVSB_PHASE_INIT02: svs bank can provide voltages
+ * @SVSB_PHASE_MON: svs bank can provide voltages with thermal effect
+ * @SVSB_PHASE_ERROR: svs bank encouters unexpected condition
+ *
+ * Each svs bank has its own independent phase. We enable each svs bank by
+ * running their phase orderly. However, When svs bank ecnounters unexpected
+ * condition, it will fire an irq (PHASE_ERROR) to inform svs software.
+ *
+ * svs bank general phase-enabled order:
+ * SVSB_PHASE_INIT01 -> SVSB_PHASE_INIT02 -> SVSB_PHASE_MON
+ */
+enum svsb_phase {
+	SVSB_PHASE_INIT01 = 0,
+	SVSB_PHASE_INIT02,
+	SVSB_PHASE_MON,
+	SVSB_PHASE_ERROR,
+};
+
+enum svs_reg_index {
+	TEMPMONCTL0 = 0,
+	TEMPMONCTL1,
+	TEMPMONCTL2,
+	TEMPMONINT,
+	TEMPMONINTSTS,
+	TEMPMONIDET0,
+	TEMPMONIDET1,
+	TEMPMONIDET2,
+	TEMPH2NTHRE,
+	TEMPHTHRE,
+	TEMPCTHRE,
+	TEMPOFFSETH,
+	TEMPOFFSETL,
+	TEMPMSRCTL0,
+	TEMPMSRCTL1,
+	TEMPAHBPOLL,
+	TEMPAHBTO,
+	TEMPADCPNP0,
+	TEMPADCPNP1,
+	TEMPADCPNP2,
+	TEMPADCMUX,
+	TEMPADCEXT,
+	TEMPADCEXT1,
+	TEMPADCEN,
+	TEMPPNPMUXADDR,
+	TEMPADCMUXADDR,
+	TEMPADCEXTADDR,
+	TEMPADCEXT1ADDR,
+	TEMPADCENADDR,
+	TEMPADCVALIDADDR,
+	TEMPADCVOLTADDR,
+	TEMPRDCTRL,
+	TEMPADCVALIDMASK,
+	TEMPADCVOLTAGESHIFT,
+	TEMPADCWRITECTRL,
+	TEMPMSR0,
+	TEMPMSR1,
+	TEMPMSR2,
+	TEMPADCHADDR,
+	TEMPIMMD0,
+	TEMPIMMD1,
+	TEMPIMMD2,
+	TEMPMONIDET3,
+	TEMPADCPNP3,
+	TEMPMSR3,
+	TEMPIMMD3,
+	TEMPPROTCTL,
+	TEMPPROTTA,
+	TEMPPROTTB,
+	TEMPPROTTC,
+	TEMPSPARE0,
+	TEMPSPARE1,
+	TEMPSPARE2,
+	TEMPSPARE3,
+	TEMPMSR0_1,
+	TEMPMSR1_1,
+	TEMPMSR2_1,
+	TEMPMSR3_1,
+	DESCHAR,
+	TEMPCHAR,
+	DETCHAR,
+	AGECHAR,
+	DCCONFIG,
+	AGECONFIG,
+	FREQPCT30,
+	FREQPCT74,
+	LIMITVALS,
+	VBOOT,
+	DETWINDOW,
+	CONFIG,
+	TSCALCS,
+	RUNCONFIG,
+	SVSEN,
+	INIT2VALS,
+	DCVALUES,
+	AGEVALUES,
+	VOP30,
+	VOP74,
+	TEMP,
+	INTSTS,
+	INTSTSRAW,
+	INTEN,
+	CHKINT,
+	CHKSHIFT,
+	STATUS,
+	VDESIGN30,
+	VDESIGN74,
+	DVT30,
+	DVT74,
+	AGECOUNT,
+	SMSTATE0,
+	SMSTATE1,
+	CTL0,
+	DESDETSEC,
+	TEMPAGESEC,
+	CTRLSPARE0,
+	CTRLSPARE1,
+	CTRLSPARE2,
+	CTRLSPARE3,
+	CORESEL,
+	THERMINTST,
+	INTST,
+	THSTAGE0ST,
+	THSTAGE1ST,
+	THSTAGE2ST,
+	THAHBST0,
+	THAHBST1,
+	SPARE0,
+	SPARE1,
+	SPARE2,
+	SPARE3,
+	THSLPEVEB,
+	reg_num,
+};
+
+static const u32 svs_regs_v2[] = {
+	[TEMPMONCTL0]		= 0x000,
+	[TEMPMONCTL1]		= 0x004,
+	[TEMPMONCTL2]		= 0x008,
+	[TEMPMONINT]		= 0x00c,
+	[TEMPMONINTSTS]		= 0x010,
+	[TEMPMONIDET0]		= 0x014,
+	[TEMPMONIDET1]		= 0x018,
+	[TEMPMONIDET2]		= 0x01c,
+	[TEMPH2NTHRE]		= 0x024,
+	[TEMPHTHRE]		= 0x028,
+	[TEMPCTHRE]		= 0x02c,
+	[TEMPOFFSETH]		= 0x030,
+	[TEMPOFFSETL]		= 0x034,
+	[TEMPMSRCTL0]		= 0x038,
+	[TEMPMSRCTL1]		= 0x03c,
+	[TEMPAHBPOLL]		= 0x040,
+	[TEMPAHBTO]		= 0x044,
+	[TEMPADCPNP0]		= 0x048,
+	[TEMPADCPNP1]		= 0x04c,
+	[TEMPADCPNP2]		= 0x050,
+	[TEMPADCMUX]		= 0x054,
+	[TEMPADCEXT]		= 0x058,
+	[TEMPADCEXT1]		= 0x05c,
+	[TEMPADCEN]		= 0x060,
+	[TEMPPNPMUXADDR]	= 0x064,
+	[TEMPADCMUXADDR]	= 0x068,
+	[TEMPADCEXTADDR]	= 0x06c,
+	[TEMPADCEXT1ADDR]	= 0x070,
+	[TEMPADCENADDR]		= 0x074,
+	[TEMPADCVALIDADDR]	= 0x078,
+	[TEMPADCVOLTADDR]	= 0x07c,
+	[TEMPRDCTRL]		= 0x080,
+	[TEMPADCVALIDMASK]	= 0x084,
+	[TEMPADCVOLTAGESHIFT]	= 0x088,
+	[TEMPADCWRITECTRL]	= 0x08c,
+	[TEMPMSR0]		= 0x090,
+	[TEMPMSR1]		= 0x094,
+	[TEMPMSR2]		= 0x098,
+	[TEMPADCHADDR]		= 0x09c,
+	[TEMPIMMD0]		= 0x0a0,
+	[TEMPIMMD1]		= 0x0a4,
+	[TEMPIMMD2]		= 0x0a8,
+	[TEMPMONIDET3]		= 0x0b0,
+	[TEMPADCPNP3]		= 0x0b4,
+	[TEMPMSR3]		= 0x0b8,
+	[TEMPIMMD3]		= 0x0bc,
+	[TEMPPROTCTL]		= 0x0c0,
+	[TEMPPROTTA]		= 0x0c4,
+	[TEMPPROTTB]		= 0x0c8,
+	[TEMPPROTTC]		= 0x0cc,
+	[TEMPSPARE0]		= 0x0f0,
+	[TEMPSPARE1]		= 0x0f4,
+	[TEMPSPARE2]		= 0x0f8,
+	[TEMPSPARE3]		= 0x0fc,
+	[TEMPMSR0_1]		= 0x190,
+	[TEMPMSR1_1]		= 0x194,
+	[TEMPMSR2_1]		= 0x198,
+	[TEMPMSR3_1]		= 0x1b8,
+	[DESCHAR]		= 0xc00,
+	[TEMPCHAR]		= 0xc04,
+	[DETCHAR]		= 0xc08,
+	[AGECHAR]		= 0xc0c,
+	[DCCONFIG]		= 0xc10,
+	[AGECONFIG]		= 0xc14,
+	[FREQPCT30]		= 0xc18,
+	[FREQPCT74]		= 0xc1c,
+	[LIMITVALS]		= 0xc20,
+	[VBOOT]			= 0xc24,
+	[DETWINDOW]		= 0xc28,
+	[CONFIG]		= 0xc2c,
+	[TSCALCS]		= 0xc30,
+	[RUNCONFIG]		= 0xc34,
+	[SVSEN]			= 0xc38,
+	[INIT2VALS]		= 0xc3c,
+	[DCVALUES]		= 0xc40,
+	[AGEVALUES]		= 0xc44,
+	[VOP30]			= 0xc48,
+	[VOP74]			= 0xc4c,
+	[TEMP]			= 0xc50,
+	[INTSTS]		= 0xc54,
+	[INTSTSRAW]		= 0xc58,
+	[INTEN]			= 0xc5c,
+	[CHKINT]		= 0xc60,
+	[CHKSHIFT]		= 0xc64,
+	[STATUS]		= 0xc68,
+	[VDESIGN30]		= 0xc6c,
+	[VDESIGN74]		= 0xc70,
+	[DVT30]			= 0xc74,
+	[DVT74]			= 0xc78,
+	[AGECOUNT]		= 0xc7c,
+	[SMSTATE0]		= 0xc80,
+	[SMSTATE1]		= 0xc84,
+	[CTL0]			= 0xc88,
+	[DESDETSEC]		= 0xce0,
+	[TEMPAGESEC]		= 0xce4,
+	[CTRLSPARE0]		= 0xcf0,
+	[CTRLSPARE1]		= 0xcf4,
+	[CTRLSPARE2]		= 0xcf8,
+	[CTRLSPARE3]		= 0xcfc,
+	[CORESEL]		= 0xf00,
+	[THERMINTST]		= 0xf04,
+	[INTST]			= 0xf08,
+	[THSTAGE0ST]		= 0xf0c,
+	[THSTAGE1ST]		= 0xf10,
+	[THSTAGE2ST]		= 0xf14,
+	[THAHBST0]		= 0xf18,
+	[THAHBST1]		= 0xf1c,
+	[SPARE0]		= 0xf20,
+	[SPARE1]		= 0xf24,
+	[SPARE2]		= 0xf28,
+	[SPARE3]		= 0xf2c,
+	[THSLPEVEB]		= 0xf30,
+};
+
+/*
+ * struct thermal_parameter - This is for storing thermal efuse data.
+ * We cacluate thermal efuse data to produce "mts" and "bts" for
+ * svs bank mon mode.
+ */
+struct thermal_parameter {
+	int adc_ge_t;
+	int adc_oe_t;
+	int ge;
+	int oe;
+	int gain;
+	int o_vtsabb;
+	int o_vtsmcu1;
+	int o_vtsmcu2;
+	int o_vtsmcu3;
+	int o_vtsmcu4;
+	int o_vtsmcu5;
+	int degc_cali;
+	int adc_cali_en_t;
+	int o_slope;
+	int o_slope_sign;
+	int ts_id;
+};
+
+/*
+ * struct svs_bank - svs bank representation
+ * @dev: bank device for opp table/mtcmos/buck control
+ * @init_completion: the timeout completion for bank init
+ * @buck: phandle of the regulator
+ * @lock: mutex lock to protect voltage update process
+ * @suspended: suspend flag of this bank
+ * @mtcmos_request: bank's power-domain on request
+ * @volt_offset: bank voltage offset controlled by svs software
+ * @mode_support: bank mode support.
+ * @opp_freqs: signed-off frequencies from default opp table
+ * @opp_volts: signed-off voltages from default opp table
+ * @freqs_pct: percent of "opp_freqs / freq_base" for bank init
+ * @volts: bank voltages
+ * @freq_base: reference frequency for bank init
+ * @vboot: voltage request for bank init01 stage only
+ * @volt_step: bank voltage step
+ * @volt_base: bank voltage base
+ * @init01_volt_flag: bank init01 voltage flag
+ * @phase: bank current phase
+ * @vmax: bank voltage maximum
+ * @vmin: bank votlage minimum
+ * @temp: bank temperature
+ * @temp_upper_bound: bank temperature upper bound
+ * @temp_lower_bound: bank temperature lower bound
+ * @tzone_high_temp: thermal zone high temperature threshold
+ * @tzone_high_temp_offset: thermal zone high temperature offset
+ * @tzone_low_temp: thermal zone low temperature threshold
+ * @tzone_low_temp_offset: thermal zone low temperature offset
+ * @core_sel: bank selection
+ * @opp_count: bank opp count
+ * @int_st: bank interrupt identification
+ * @sw_id: bank software identification
+ * @ctl0: bank thermal sensor selection
+ * @of_compatible: of_compatible string of bank
+ * @name: bank name
+ * @tzone_name: thermal zone name
+ * @buck_name: regulator name
+ *
+ * Other structure members which are not listed above are svs platform
+ * efuse data for bank init
+ */
+struct svs_bank {
+	struct device *dev;
+	struct completion init_completion;
+	struct regulator *buck;
+	struct mutex lock;	/* lock to protect voltage update process */
+	bool suspended;
+	bool mtcmos_request;
+	s32 volt_offset;
+	u32 mode_support;
+	u32 opp_freqs[16];
+	u32 opp_volts[16];
+	u32 freqs_pct[16];
+	u32 volts[16];
+	u32 freq_base;
+	u32 vboot;
+	u32 volt_step;
+	u32 volt_base;
+	u32 init01_volt_flag;
+	u32 phase;
+	u32 vmax;
+	u32 vmin;
+	u32 bts;
+	u32 mts;
+	u32 bdes;
+	u32 mdes;
+	u32 mtdes;
+	u32 dcbdet;
+	u32 dcmdet;
+	u32 dthi;
+	u32 dtlo;
+	u32 det_window;
+	u32 det_max;
+	u32 age_config;
+	u32 age_voffset_in;
+	u32 agem;
+	u32 dc_config;
+	u32 dc_voffset_in;
+	u32 dvt_fixed;
+	u32 vco;
+	u32 chk_shift;
+	u32 temp;
+	u32 temp_upper_bound;
+	u32 temp_lower_bound;
+	u32 tzone_high_temp;
+	u32 tzone_high_temp_offset;
+	u32 tzone_low_temp;
+	u32 tzone_low_temp_offset;
+	u32 core_sel;
+	u32 opp_count;
+	u32 int_st;
+	u32 sw_id;
+	u32 ctl0;
+	u8 *of_compatible;
+	u8 *name;
+	u8 *tzone_name;
+	u8 *buck_name;
+};
+
+/*
+ * struct svs_platform - svs platform data
+ * @banks: phandle of the banks that support
+ * @efuse_parsing: phandle of efuse parsing function
+ * @set_freqs_pct: phandle of set frequencies percent function
+ * @get_vops: phandle of  get bank voltages function
+ * @irqflags: irq settings flags
+ * @fake_efuse: the flag for running svs with fake efuse
+ * @need_hw_reset: the flag for reset svs HW when system suspend
+ * @regs: phandle to the registers map
+ * @bank_num: the total number of banks
+ * @efuse_check: the svs efuse check index
+ * @suppliers: the devices which needs to be probed first
+ * @name: svs platform name
+ *
+ * svs platorm data will be instanced with const flag and stored
+ * as data memeber in struct of_device_id.
+ */
+struct svs_platform {
+	struct svs_bank *banks;
+	bool (*efuse_parsing)(struct mtk_svs *svs);
+	void (*set_freqs_pct)(struct mtk_svs *svs);
+	void (*get_vops)(struct mtk_svs *svs);
+	unsigned long irqflags;
+	bool fake_efuse;
+	bool need_hw_reset;
+	const u32 *regs;
+	u32 bank_num;
+	u32 efuse_check;
+	u8 *suppliers[2];
+	u8 *name;
+};
+
+/*
+ * struct mtk_svs - generic svs
+ * @svs_platform: phandle of svs platform data
+ * @pbank: phandle of svs bank whose register is going be updated
+ * @dev: svs platform device
+ * @base: svs platform register address base
+ * @main_clk: main clock for svs bank
+ * @efuse_num: the total number of svs platform efuse
+ * @thermal_efuse_num: the total number of thermal efuse
+ * @efuse: svs platform efuse data received from NVMEM framework
+ * @thermal_efuse: thermal efuse data received from NVMEM framework
+ *
+ * This generic svs helps retrieve different svs platform resource
+ * from dts and has a phandle to a svs bank for us to update its registers.
+ */
+struct mtk_svs {
+	const struct svs_platform *platform;
+	struct svs_bank *pbank;
+	struct device *dev;
+	void __iomem *base;
+	struct clk *main_clk;
+	size_t efuse_num;
+	size_t thermal_efuse_num;
+	u32 *efuse;
+	u32 *thermal_efuse;
+};
+
+unsigned long claim_mtk_svs_lock(void)
+	__acquires(&mtk_svs_lock)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&mtk_svs_lock, flags);
+
+	return flags;
+}
+EXPORT_SYMBOL_GPL(claim_mtk_svs_lock);
+
+void release_mtk_svs_lock(unsigned long flags)
+	__releases(&mtk_svs_lock)
+{
+	spin_unlock_irqrestore(&mtk_svs_lock, flags);
+}
+EXPORT_SYMBOL_GPL(release_mtk_svs_lock);
+
+static u32 percent(u32 numerator, u32 denominator)
+{
+	u32 pct;
+
+	/* If not divide 1000, "numerator * 100" will have data overflow. */
+	numerator /= 1000;
+	denominator /= 1000;
+	pct = ((numerator * 100) + denominator - 1) / denominator;
+	pct &= GENMASK(7, 0);
+
+	return pct;
+}
+
+static u32 svs_readl(struct mtk_svs *svs, enum svs_reg_index rg_i)
+{
+	return readl(svs->base + svs->platform->regs[rg_i]);
+}
+
+static void svs_writel(struct mtk_svs *svs, u32 val, enum svs_reg_index rg_i)
+{
+	writel(val, svs->base + svs->platform->regs[rg_i]);
+}
+
+static void svs_switch_bank(struct mtk_svs *svs)
+{
+	struct svs_bank *svsb = svs->pbank;
+
+	svs_writel(svs, svsb->core_sel, CORESEL);
+}
+
+static u32 svs_bank_volt_to_opp_volt(u32 svsb_volt, u32 svsb_volt_step,
+				     u32 svsb_volt_base)
+{
+	u32 opp_u_volt;
+
+	opp_u_volt = (svsb_volt * svsb_volt_step) + svsb_volt_base;
+
+	return opp_u_volt;
+}
+
+static int svs_get_bank_zone_temperature(u8 *tzone_name, int *tzone_temp)
+{
+	struct thermal_zone_device *tzd;
+
+	tzd = thermal_zone_get_zone_by_name(tzone_name);
+	if (IS_ERR(tzd))
+		return PTR_ERR(tzd);
+
+	return thermal_zone_get_temp(tzd, tzone_temp);
+}
+
+static int svs_adjust_pm_opp_volts(struct svs_bank *svsb, bool force_update)
+{
+	u32 i, svsb_volt, opp_volt, temp_offset = 0;
+	int tzone_temp, ret = -EPERM;
+
+	mutex_lock(&svsb->lock);
+
+	/*
+	 * If svs bank is suspended, it means signed-off voltages are applied.
+	 * Don't need to update opp voltage anymore.
+	 */
+	if (svsb->suspended && !force_update) {
+		dev_notice(svsb->dev, "bank is suspended\n");
+		ret = -EPERM;
+		goto unlock_mutex;
+	}
+
+	/* Get thermal effect */
+	if (svsb->phase == SVSB_PHASE_MON) {
+		if (svsb->temp > svsb->temp_upper_bound &&
+		    svsb->temp < svsb->temp_lower_bound) {
+			dev_warn(svsb->dev, "svsb->temp = 0x%x, abnormal?\n",
+				 svsb->temp);
+			ret = -EINVAL;
+			goto unlock_mutex;
+		}
+
+		ret = svs_get_bank_zone_temperature(svsb->tzone_name,
+						    &tzone_temp);
+		if (ret) {
+			dev_err(svsb->dev, "no \"%s\" zone temperature(%d)?\n",
+				svsb->tzone_name, ret);
+			dev_err(svsb->dev, "set signed-off voltage instead\n");
+			svsb->phase = SVSB_PHASE_ERROR;
+		}
+
+		if (tzone_temp >= svsb->tzone_high_temp)
+			temp_offset += svsb->tzone_high_temp_offset;
+		else if (tzone_temp <= svsb->tzone_low_temp)
+			temp_offset += svsb->tzone_low_temp_offset;
+	}
+
+	/* vmin <= svsb_volt (opp_volt) <= signed-off voltage */
+	for (i = 0; i < svsb->opp_count; i++) {
+		if (svsb->phase == SVSB_PHASE_MON) {
+			svsb_volt = max((svsb->volts[i] + svsb->volt_offset +
+					 temp_offset), svsb->vmin);
+			opp_volt = svs_bank_volt_to_opp_volt(svsb_volt,
+							     svsb->volt_step,
+							     svsb->volt_base);
+		} else if (svsb->phase == SVSB_PHASE_INIT02) {
+			svsb_volt = max((svsb->volts[i] + svsb->volt_offset),
+					svsb->vmin);
+			opp_volt = svs_bank_volt_to_opp_volt(svsb_volt,
+							     svsb->volt_step,
+							     svsb->volt_base);
+		} else if (svsb->phase == SVSB_PHASE_ERROR) {
+			opp_volt = svsb->opp_volts[i];
+		} else {
+			dev_err(svsb->dev, "unknown phase: %u?\n",
+				svsb->phase);
+			ret = -EINVAL;
+			goto unlock_mutex;
+		}
+
+		opp_volt = min(opp_volt, svsb->opp_volts[i]);
+		ret = dev_pm_opp_adjust_voltage(svsb->dev, svsb->opp_freqs[i],
+						opp_volt, opp_volt,
+						svsb->opp_volts[i]);
+		if (ret) {
+			dev_err(svsb->dev, "set voltage fail: %d\n", ret);
+			goto unlock_mutex;
+		}
+	}
+
+unlock_mutex:
+	mutex_unlock(&svsb->lock);
+
+	return ret;
+}
+
+static u32 interpolate(u32 f0, u32 f1, u32 v0, u32 v1, u32 fx)
+{
+	u32 vy;
+
+	if (v0 == v1 || f0 == f1)
+		return v0;
+
+	/* *100 to have decimal fraction factor, +99 for rounding up. */
+	vy = (v0 * 100) - ((((v0 - v1) * 100) / (f0 - f1)) * (f0 - fx));
+	vy = (vy + 99) / 100;
+
+	return vy;
+}
+
+static void svs_get_vops_v2(struct mtk_svs *svs)
+{
+	struct svs_bank *svsb = svs->pbank;
+	u32 temp, i;
+
+	temp = svs_readl(svs, VOP30);
+	svsb->volts[6] = (temp >> 24) & GENMASK(7, 0);
+	svsb->volts[4] = (temp >> 16) & GENMASK(7, 0);
+	svsb->volts[2] = (temp >> 8)  & GENMASK(7, 0);
+	svsb->volts[0] = (temp & GENMASK(7, 0));
+
+	temp = svs_readl(svs, VOP74);
+	svsb->volts[14] = (temp >> 24) & GENMASK(7, 0);
+	svsb->volts[12] = (temp >> 16) & GENMASK(7, 0);
+	svsb->volts[10] = (temp >> 8)  & GENMASK(7, 0);
+	svsb->volts[8] = (temp & GENMASK(7, 0));
+
+	for (i = 0; i <= 7; i++) {
+		if (i < 7) {
+			svsb->volts[(i * 2) + 1] =
+				interpolate(svsb->freqs_pct[i * 2],
+					    svsb->freqs_pct[(i + 1) * 2],
+					    svsb->volts[i * 2],
+					    svsb->volts[(i + 1) * 2],
+					    svsb->freqs_pct[(i * 2) + 1]);
+		} else if (i == 7) {
+			svsb->volts[(i * 2) + 1] =
+				interpolate(svsb->freqs_pct[(i - 1) * 2],
+					    svsb->freqs_pct[i * 2],
+					    svsb->volts[(i - 1) * 2],
+					    svsb->volts[i * 2],
+					    svsb->freqs_pct[(i * 2) + 1]);
+		}
+	}
+}
+
+static void svs_set_freqs_pct_v2(struct mtk_svs *svs)
+{
+	struct svs_bank *svsb = svs->pbank;
+
+	svs_writel(svs,
+		   ((svsb->freqs_pct[6] << 24) & GENMASK(31, 24)) |
+		   ((svsb->freqs_pct[4] << 16) & GENMASK(23, 16)) |
+		   ((svsb->freqs_pct[2] << 8) & GENMASK(15, 8)) |
+		   (svsb->freqs_pct[0] & GENMASK(7, 0)),
+		   FREQPCT30);
+	svs_writel(svs,
+		   ((svsb->freqs_pct[14] << 24) & GENMASK(31, 24)) |
+		   ((svsb->freqs_pct[12] << 16) & GENMASK(23, 16)) |
+		   ((svsb->freqs_pct[10] << 8) & GENMASK(15, 8)) |
+		   ((svsb->freqs_pct[8]) & GENMASK(7, 0)),
+		   FREQPCT74);
+}
+
+static void svs_set_bank_phase(struct mtk_svs *svs, u32 target_phase)
+{
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb = svs->pbank;
+	u32 des_char, temp_char, det_char, limit_vals;
+	u32 init2vals, ts_calcs, val, filter, i;
+
+	svs_switch_bank(svs);
+
+	des_char = ((svsb->bdes << 8) & GENMASK(15, 8)) |
+		   (svsb->mdes & GENMASK(7, 0));
+	svs_writel(svs, des_char, DESCHAR);
+
+	temp_char = ((svsb->vco << 16) & GENMASK(23, 16)) |
+		    ((svsb->mtdes << 8) & GENMASK(15, 8)) |
+		    (svsb->dvt_fixed & GENMASK(7, 0));
+	svs_writel(svs, temp_char, TEMPCHAR);
+
+	det_char = ((svsb->dcbdet << 8) & GENMASK(15, 8)) |
+		   (svsb->dcmdet & GENMASK(7, 0));
+	svs_writel(svs, det_char, DETCHAR);
+
+	svs_writel(svs, svsb->dc_config, DCCONFIG);
+	svs_writel(svs, svsb->age_config, AGECONFIG);
+
+	if (!svsb->agem) {
+		svs_writel(svs, SVSB_RUNCONFIG_DEFAULT, RUNCONFIG);
+	} else {
+		val = 0x0;
+
+		for (i = 0; i < 24; i += 2) {
+			filter = 0x3 << i;
+
+			if (!(svsb->age_config & filter))
+				val |= (0x1 << i);
+			else
+				val |= (svsb->age_config & filter);
+		}
+		svs_writel(svs, val, RUNCONFIG);
+	}
+
+	svsp->set_freqs_pct(svs);
+
+	limit_vals = ((svsb->vmax << 24) & GENMASK(31, 24)) |
+		     ((svsb->vmin << 16) & GENMASK(23, 16)) |
+		     ((svsb->dthi << 8) & GENMASK(15, 8)) |
+		     (svsb->dtlo & GENMASK(7, 0));
+	svs_writel(svs, limit_vals, LIMITVALS);
+	svs_writel(svs, (svsb->vboot & GENMASK(7, 0)), VBOOT);
+	svs_writel(svs, (svsb->det_window & GENMASK(15, 0)), DETWINDOW);
+	svs_writel(svs, (svsb->det_max & GENMASK(15, 0)), CONFIG);
+
+	if (svsb->chk_shift)
+		svs_writel(svs, (svsb->chk_shift & GENMASK(7, 0)), CHKSHIFT);
+
+	if (svsb->ctl0)
+		svs_writel(svs, svsb->ctl0, CTL0);
+
+	svs_writel(svs, SVSB_INTSTS_CLEAN, INTSTS);
+
+	switch (target_phase) {
+	case SVSB_PHASE_INIT01:
+		svs_writel(svs, SVSB_INTEN_INIT0x, INTEN);
+		svs_writel(svs, SVSB_EN_INIT01, SVSEN);
+		break;
+	case SVSB_PHASE_INIT02:
+		svs_writel(svs, SVSB_INTEN_INIT0x, INTEN);
+		init2vals = ((svsb->age_voffset_in << 16) & GENMASK(31, 16)) |
+			    (svsb->dc_voffset_in & GENMASK(15, 0));
+		svs_writel(svs, init2vals, INIT2VALS);
+		svs_writel(svs, SVSB_EN_INIT02, SVSEN);
+		break;
+	case SVSB_PHASE_MON:
+		ts_calcs = ((svsb->bts << 12) & GENMASK(23, 12)) |
+			   (svsb->mts & GENMASK(11, 0));
+		svs_writel(svs, ts_calcs, TSCALCS);
+		svs_writel(svs, SVSB_INTEN_MONVOPEN, INTEN);
+		svs_writel(svs, SVSB_EN_MON, SVSEN);
+		break;
+	default:
+		WARN_ON(1);
+		break;
+	}
+}
+
+static inline void svs_init01_isr_handler(struct mtk_svs *svs)
+{
+	struct svs_bank *svsb = svs->pbank;
+
+	dev_notice(svsb->dev, "%s: VDN74:0x%08x, VDN30:0x%08x, DC:0x%08x\n",
+		   __func__, svs_readl(svs, VDESIGN74),
+		   svs_readl(svs, VDESIGN30), svs_readl(svs, DCVALUES));
+
+	svsb->phase = SVSB_PHASE_INIT01;
+	svsb->dc_voffset_in = ~(svs_readl(svs, DCVALUES) & GENMASK(15, 0)) + 1;
+	if (svsb->init01_volt_flag == SVSB_INIT01_VOLT_IGNORE)
+		svsb->dc_voffset_in = 0;
+	else if ((svsb->dc_voffset_in & SVSB_DC_SIGNED_BIT) &&
+		 (svsb->init01_volt_flag == SVSB_INIT01_VOLT_INC_ONLY))
+		svsb->dc_voffset_in = 0;
+
+	svsb->age_voffset_in = svs_readl(svs, AGEVALUES) & GENMASK(15, 0);
+
+	svs_writel(svs, SVSB_EN_OFF, SVSEN);
+	svs_writel(svs, SVSB_INTSTS_COMPLETE, INTSTS);
+
+	/* svs init01 clock gating */
+	svsb->core_sel &= ~SVSB_INIT01_CLK_EN;
+	complete(&svsb->init_completion);
+}
+
+static inline void svs_init02_isr_handler(struct mtk_svs *svs)
+{
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb = svs->pbank;
+
+	dev_notice(svsb->dev, "%s: VOP74:0x%08x, VOP30:0x%08x, DC:0x%08x\n",
+		   __func__, svs_readl(svs, VOP74), svs_readl(svs, VOP30),
+		   svs_readl(svs, DCVALUES));
+
+	svsb->phase = SVSB_PHASE_INIT02;
+	svsp->get_vops(svs);
+
+	svs_writel(svs, SVSB_EN_OFF, SVSEN);
+	svs_writel(svs, SVSB_INTSTS_COMPLETE, INTSTS);
+
+	complete(&svsb->init_completion);
+}
+
+static inline void svs_mon_mode_isr_handler(struct mtk_svs *svs)
+{
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb = svs->pbank;
+
+	svsb->phase = SVSB_PHASE_MON;
+	svsb->temp = svs_readl(svs, TEMP) & GENMASK(7, 0);
+	svsp->get_vops(svs);
+
+	svs_writel(svs, SVSB_INTSTS_MONVOP, INTSTS);
+}
+
+static inline void svs_error_isr_handler(struct mtk_svs *svs)
+{
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb = svs->pbank;
+
+	dev_err(svsb->dev, "%s: %s, CORESEL = 0x%08x\n",
+		__func__, svsp->name, svs_readl(svs, CORESEL));
+	dev_err(svsb->dev, "SVSEN = 0x%08x, INTSTS = 0x%08x\n",
+		svs_readl(svs, SVSEN), svs_readl(svs, INTSTS));
+	dev_err(svsb->dev, "SMSTATE0 = 0x%08x, SMSTATE1 = 0x%08x\n",
+		svs_readl(svs, SMSTATE0), svs_readl(svs, SMSTATE1));
+	dev_err(svsb->dev, "TEMP = 0x%08x, TEMPMSR0 = 0x%08x\n",
+		svs_readl(svs, TEMP), svs_readl(svs, TEMPMSR0));
+	dev_err(svsb->dev, "TEMPMSR1 = 0x%08x, TEMPMSR2 = 0x%08x\n",
+		svs_readl(svs, TEMPMSR1), svs_readl(svs, TEMPMSR2));
+	dev_err(svsb->dev, "TEMPMONCTL0 = 0x%08x, TEMPMSRCTL1 = 0x%08x\n",
+		svs_readl(svs, TEMPMONCTL0), svs_readl(svs, TEMPMSRCTL1));
+
+	svsb->mode_support = SVSB_MODE_ALL_DISABLE;
+
+	if (svsb->phase != SVSB_PHASE_INIT01)
+		svsb->phase = SVSB_PHASE_ERROR;
+
+	svs_writel(svs, SVSB_EN_OFF, SVSEN);
+	svs_writel(svs, SVSB_INTSTS_CLEAN, INTSTS);
+}
+
+static irqreturn_t svs_isr(int irq, void *data)
+{
+	struct mtk_svs *svs = (struct mtk_svs *)data;
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb = NULL;
+	unsigned long flags;
+	u32 idx, int_sts, svs_en;
+
+	flags = claim_mtk_svs_lock();
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+		svs->pbank = svsb;
+
+		/* Find out which svs bank fires interrupt */
+		if (svsb->int_st & svs_readl(svs, INTST))
+			continue;
+
+		if (!svsb->suspended) {
+			svs_switch_bank(svs);
+			int_sts = svs_readl(svs, INTSTS);
+			svs_en = svs_readl(svs, SVSEN);
+
+			if (int_sts == SVSB_INTSTS_COMPLETE &&
+			    ((svs_en & SVSB_EN_MASK) == SVSB_EN_INIT01))
+				svs_init01_isr_handler(svs);
+			else if ((int_sts == SVSB_INTSTS_COMPLETE) &&
+				 ((svs_en & SVSB_EN_MASK) == SVSB_EN_INIT02))
+				svs_init02_isr_handler(svs);
+			else if (!!(int_sts & SVSB_INTSTS_MONVOP))
+				svs_mon_mode_isr_handler(svs);
+			else
+				svs_error_isr_handler(svs);
+		}
+
+		break;
+	}
+	release_mtk_svs_lock(flags);
+
+	if (svsb->phase != SVSB_PHASE_INIT01)
+		svs_adjust_pm_opp_volts(svsb, false);
+
+	return IRQ_HANDLED;
+}
+
+static void svs_mon_mode(struct mtk_svs *svs)
+{
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb;
+	unsigned long flags;
+	u32 idx;
+
+	flags = claim_mtk_svs_lock();
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+		svs->pbank = svsb;
+
+		if (!(svsb->mode_support & SVSB_MODE_MON))
+			continue;
+
+		svs_set_bank_phase(svs, SVSB_PHASE_MON);
+	}
+	release_mtk_svs_lock(flags);
+}
+
+static int svs_init02(struct mtk_svs *svs)
+{
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb;
+	unsigned long flags, time_left;
+	u32 idx;
+
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+		svs->pbank = svsb;
+
+		if (!(svsb->mode_support & SVSB_MODE_INIT02))
+			continue;
+
+		reinit_completion(&svsb->init_completion);
+		flags = claim_mtk_svs_lock();
+		svs_set_bank_phase(svs, SVSB_PHASE_INIT02);
+		release_mtk_svs_lock(flags);
+		time_left =
+			wait_for_completion_timeout(&svsb->init_completion,
+						    msecs_to_jiffies(2000));
+		if (!time_left) {
+			dev_err(svsb->dev, "init02 completion timeout\n");
+			return -EBUSY;
+		}
+	}
+
+	return 0;
+}
+
+static int svs_init01(struct mtk_svs *svs)
+{
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb;
+	struct pm_qos_request *qos_request;
+	unsigned long flags, time_left;
+	bool search_done;
+	int ret = -EPERM;
+	u32 opp_freqs, opp_vboot, buck_volt, idx, i;
+
+	qos_request = kzalloc(sizeof(*qos_request), GFP_KERNEL);
+	if (!qos_request)
+		return -ENOMEM;
+
+	/* Let CPUs leave idle-off state for initializing svs_init01. */
+	cpu_latency_qos_add_request(qos_request, 0);
+
+	/*
+	 * Sometimes two svs banks use the same buck.
+	 * Therefore, we set each svs bank to vboot voltage first.
+	 */
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+		search_done = false;
+
+		ret = regulator_set_mode(svsb->buck, REGULATOR_MODE_FAST);
+		if (ret)
+			dev_notice(svsb->dev, "set fast mode fail: %d\n", ret);
+
+		if (svsb->mtcmos_request) {
+			ret = regulator_enable(svsb->buck);
+			if (ret) {
+				dev_err(svsb->dev, "enable \"%s\" fail: %d\n",
+					svsb->buck_name, ret);
+				goto init01_finish;
+			}
+
+			ret = dev_pm_domain_attach(svsb->dev, false);
+			if (ret) {
+				dev_err(svsb->dev,
+					"attach pm domain fail: %d\n", ret);
+				goto init01_finish;
+			}
+
+			pm_runtime_enable(svsb->dev);
+			ret = pm_runtime_get_sync(svsb->dev);
+			if (ret < 0) {
+				dev_err(svsb->dev, "mtcmos on fail: %d\n",
+					ret);
+				goto init01_finish;
+			}
+		}
+
+		/*
+		 * Find the fastest freq that can be run at vboot and
+		 * fix to that freq until svs_init01 is done.
+		 */
+		opp_vboot = svs_bank_volt_to_opp_volt(svsb->vboot,
+						      svsb->volt_step,
+						      svsb->volt_base);
+
+		for (i = 0; i < svsb->opp_count; i++) {
+			opp_freqs = svsb->opp_freqs[i];
+			if (!search_done && svsb->opp_volts[i] <= opp_vboot) {
+				ret = dev_pm_opp_adjust_voltage(svsb->dev,
+								opp_freqs,
+								opp_vboot,
+								opp_vboot,
+								opp_vboot);
+				if (ret) {
+					dev_err(svsb->dev,
+						"set voltage fail: %d\n", ret);
+					goto init01_finish;
+				}
+
+				search_done = true;
+			} else {
+				dev_pm_opp_disable(svsb->dev,
+						   svsb->opp_freqs[i]);
+			}
+		}
+	}
+
+	/* svs bank init01 begins */
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+		svs->pbank = svsb;
+
+		if (!(svsb->mode_support & SVSB_MODE_INIT01))
+			continue;
+
+		opp_vboot = svs_bank_volt_to_opp_volt(svsb->vboot,
+						      svsb->volt_step,
+						      svsb->volt_base);
+
+		buck_volt = regulator_get_voltage(svsb->buck);
+		if (buck_volt != opp_vboot) {
+			dev_err(svsb->dev,
+				"buck voltage: %u, expected vboot: %u\n",
+				buck_volt, opp_vboot);
+			ret = -EPERM;
+			goto init01_finish;
+		}
+
+		init_completion(&svsb->init_completion);
+		flags = claim_mtk_svs_lock();
+		svs_set_bank_phase(svs, SVSB_PHASE_INIT01);
+		release_mtk_svs_lock(flags);
+		time_left =
+			wait_for_completion_timeout(&svsb->init_completion,
+						    msecs_to_jiffies(2000));
+		if (!time_left) {
+			dev_err(svsb->dev, "init01 completion timeout\n");
+			ret = -EBUSY;
+			goto init01_finish;
+		}
+	}
+
+init01_finish:
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+
+		for (i = 0; i < svsb->opp_count; i++)
+			dev_pm_opp_enable(svsb->dev, svsb->opp_freqs[i]);
+
+		if (regulator_set_mode(svsb->buck, REGULATOR_MODE_NORMAL))
+			dev_notice(svsb->dev, "fail to set normal mode: %d\n",
+				   ret);
+
+		if (svsb->mtcmos_request) {
+			if (pm_runtime_put_sync(svsb->dev))
+				dev_err(svsb->dev, "mtcmos off fail: %d\n",
+					ret);
+			pm_runtime_disable(svsb->dev);
+			dev_pm_domain_detach(svsb->dev, 0);
+			if (regulator_disable(svsb->buck))
+				dev_err(svsb->dev,
+					"disable \"%s\" power fail: %d\n",
+					svsb->buck_name, ret);
+		}
+	}
+
+	cpu_latency_qos_remove_request(qos_request);
+	kfree(qos_request);
+
+	return ret;
+}
+
+static int svs_start(struct mtk_svs *svs)
+{
+	int ret;
+
+	ret = svs_init01(svs);
+	if (ret)
+		return ret;
+
+	ret = svs_init02(svs);
+	if (ret)
+		return ret;
+
+	svs_mon_mode(svs);
+
+	return ret;
+}
+
+static bool svs_mt8183_efuse_parsing(struct mtk_svs *svs)
+{
+	const struct svs_platform *svsp = svs->platform;
+	struct thermal_parameter tp;
+	struct svs_bank *svsb;
+	bool mon_mode_support = true;
+	int format[6], x_roomt[6], tb_roomt = 0;
+	struct nvmem_cell *cell;
+	u32 idx, i, ft_pgm, mts, temp0, temp1, temp2;
+
+	if (svsp->fake_efuse) {
+		pr_notice("fake efuse\n");
+		svs->efuse[0] = 0x00310080;
+		svs->efuse[1] = 0xabfbf757;
+		svs->efuse[2] = 0x47c747c7;
+		svs->efuse[3] = 0xabfbf757;
+		svs->efuse[4] = 0xe7fca0ec;
+		svs->efuse[5] = 0x47bf4b88;
+		svs->efuse[6] = 0xabfb8fa5;
+		svs->efuse[7] = 0xabfb217b;
+		svs->efuse[8] = 0x4bf34be1;
+		svs->efuse[9] = 0xabfb670d;
+		svs->efuse[16] = 0xabfbc653;
+		svs->efuse[17] = 0x47f347e1;
+		svs->efuse[18] = 0xabfbd848;
+	}
+
+	for (i = 0; i < svs->efuse_num; i++)
+		if (svs->efuse[i])
+			dev_notice(svs->dev, "M_HW_RES%d: 0x%08x\n",
+				   i, svs->efuse[i]);
+
+	/* svs efuse parsing */
+	ft_pgm = (svs->efuse[0] >> 4) & GENMASK(3, 0);
+
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+		if (ft_pgm <= 1)
+			svsb->init01_volt_flag = SVSB_INIT01_VOLT_IGNORE;
+
+		switch (svsb->sw_id) {
+		case SVSB_CPU_LITTLE:
+			svsb->bdes = svs->efuse[16] & GENMASK(7, 0);
+			svsb->mdes = (svs->efuse[16] >> 8) & GENMASK(7, 0);
+			svsb->dcbdet = (svs->efuse[16] >> 16) & GENMASK(7, 0);
+			svsb->dcmdet = (svs->efuse[16] >> 24) & GENMASK(7, 0);
+			svsb->mtdes  = (svs->efuse[17] >> 16) & GENMASK(7, 0);
+
+			if (ft_pgm <= 3)
+				svsb->volt_offset += 10;
+			else
+				svsb->volt_offset += 2;
+			break;
+		case SVSB_CPU_BIG:
+			svsb->bdes = svs->efuse[18] & GENMASK(7, 0);
+			svsb->mdes = (svs->efuse[18] >> 8) & GENMASK(7, 0);
+			svsb->dcbdet = (svs->efuse[18] >> 16) & GENMASK(7, 0);
+			svsb->dcmdet = (svs->efuse[18] >> 24) & GENMASK(7, 0);
+			svsb->mtdes  = svs->efuse[17] & GENMASK(7, 0);
+
+			if (ft_pgm <= 3)
+				svsb->volt_offset += 15;
+			else
+				svsb->volt_offset += 12;
+			break;
+		case SVSB_CCI:
+			svsb->bdes = svs->efuse[4] & GENMASK(7, 0);
+			svsb->mdes = (svs->efuse[4] >> 8) & GENMASK(7, 0);
+			svsb->dcbdet = (svs->efuse[4] >> 16) & GENMASK(7, 0);
+			svsb->dcmdet = (svs->efuse[4] >> 24) & GENMASK(7, 0);
+			svsb->mtdes  = (svs->efuse[5] >> 16) & GENMASK(7, 0);
+
+			if (ft_pgm <= 3)
+				svsb->volt_offset += 10;
+			else
+				svsb->volt_offset += 2;
+			break;
+		case SVSB_GPU:
+			svsb->bdes = svs->efuse[6] & GENMASK(7, 0);
+			svsb->mdes = (svs->efuse[6] >> 8) & GENMASK(7, 0);
+			svsb->dcbdet = (svs->efuse[6] >> 16) & GENMASK(7, 0);
+			svsb->dcmdet = (svs->efuse[6] >> 24) & GENMASK(7, 0);
+			svsb->mtdes  = svs->efuse[5] & GENMASK(7, 0);
+
+			if (ft_pgm >= 2) {
+				svsb->freq_base = 800000000; /* 800MHz */
+				svsb->dvt_fixed = 2;
+			}
+			break;
+		default:
+			break;
+		}
+	}
+
+	/* Get thermal efuse by nvmem */
+	cell = nvmem_cell_get(svs->dev, "calibration-data");
+	if (IS_ERR(cell)) {
+		dev_err(svs->dev, "no thermal cell, no mon mode\n");
+		for (idx = 0; idx < svsp->bank_num; idx++) {
+			svsb = &svsp->banks[idx];
+			svsb->mode_support &= ~SVSB_MODE_MON;
+		}
+			return true;
+	}
+
+	svs->thermal_efuse = (u32 *)nvmem_cell_read(cell,
+						    &svs->thermal_efuse_num);
+	svs->thermal_efuse_num /= sizeof(u32);
+	nvmem_cell_put(cell);
+
+	if (svsp->fake_efuse) {
+		svs->thermal_efuse[0] = 0x02873f69;
+		svs->thermal_efuse[1] = 0xa11d9142;
+		svs->thermal_efuse[2] = 0xa2526900;
+	}
+
+	/* Thermal efuse parsing */
+	tp.adc_ge_t = (svs->thermal_efuse[1] >> 22) & GENMASK(9, 0);
+	tp.adc_oe_t = (svs->thermal_efuse[1] >> 12) & GENMASK(9, 0);
+
+	tp.o_vtsmcu1 = (svs->thermal_efuse[0] >> 17) & GENMASK(8, 0);
+	tp.o_vtsmcu2 = (svs->thermal_efuse[0] >> 8) & GENMASK(8, 0);
+	tp.o_vtsmcu3 = svs->thermal_efuse[1] & GENMASK(8, 0);
+	tp.o_vtsmcu4 = (svs->thermal_efuse[2] >> 23) & GENMASK(8, 0);
+	tp.o_vtsmcu5 = (svs->thermal_efuse[2] >> 5) & GENMASK(8, 0);
+	tp.o_vtsabb = (svs->thermal_efuse[2] >> 14) & GENMASK(8, 0);
+
+	tp.degc_cali = (svs->thermal_efuse[0] >> 1) & GENMASK(5, 0);
+	tp.adc_cali_en_t = svs->thermal_efuse[0] & BIT(0);
+	tp.o_slope_sign = (svs->thermal_efuse[0] >> 7) & BIT(0);
+
+	tp.ts_id = (svs->thermal_efuse[1] >> 9) & BIT(0);
+	tp.o_slope = (svs->thermal_efuse[0] >> 26) & GENMASK(5, 0);
+
+	if (tp.adc_cali_en_t == 1) {
+		if (!tp.ts_id)
+			tp.o_slope = 0;
+
+		if ((tp.adc_ge_t < 265 || tp.adc_ge_t > 758) ||
+		    (tp.adc_oe_t < 265 || tp.adc_oe_t > 758) ||
+		    (tp.o_vtsmcu1 < -8 || tp.o_vtsmcu1 > 484) ||
+		    (tp.o_vtsmcu2 < -8 || tp.o_vtsmcu2 > 484) ||
+		    (tp.o_vtsmcu3 < -8 || tp.o_vtsmcu3 > 484) ||
+		    (tp.o_vtsmcu4 < -8 || tp.o_vtsmcu4 > 484) ||
+		    (tp.o_vtsmcu5 < -8 || tp.o_vtsmcu5 > 484) ||
+		    (tp.o_vtsabb < -8 || tp.o_vtsabb > 484) ||
+		    (tp.degc_cali < 1 || tp.degc_cali > 63)) {
+			dev_err(svs->dev, "bad thermal efuse, no mon mode\n");
+			mon_mode_support = false;
+		}
+	} else {
+		dev_err(svs->dev, "no thermal efuse, no mon mode\n");
+		mon_mode_support = false;
+	}
+
+	if (!mon_mode_support) {
+		for (idx = 0; idx < svsp->bank_num; idx++) {
+			svsb = &svsp->banks[idx];
+			svsb->mode_support &= ~SVSB_MODE_MON;
+		}
+
+		return true;
+	}
+
+	tp.ge = ((tp.adc_ge_t - 512) * 10000) / 4096;
+	tp.oe = (tp.adc_oe_t - 512);
+	tp.gain = (10000 + tp.ge);
+
+	format[0] = (tp.o_vtsmcu1 + 3350 - tp.oe);
+	format[1] = (tp.o_vtsmcu2 + 3350 - tp.oe);
+	format[2] = (tp.o_vtsmcu3 + 3350 - tp.oe);
+	format[3] = (tp.o_vtsmcu4 + 3350 - tp.oe);
+	format[4] = (tp.o_vtsmcu5 + 3350 - tp.oe);
+	format[5] = (tp.o_vtsabb + 3350 - tp.oe);
+
+	for (i = 0; i < 6; i++)
+		x_roomt[i] = (((format[i] * 10000) / 4096) * 10000) / tp.gain;
+
+	temp0 = (10000 * 100000 / tp.gain) * 15 / 18;
+
+	if (!tp.o_slope_sign)
+		mts = (temp0 * 10) / (1534 + tp.o_slope * 10);
+	else
+		mts = (temp0 * 10) / (1534 - tp.o_slope * 10);
+
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+		svsb->mts = mts;
+
+		switch (svsb->sw_id) {
+		case SVSB_CPU_LITTLE:
+			tb_roomt = x_roomt[3];
+			break;
+		case SVSB_CPU_BIG:
+			tb_roomt = x_roomt[4];
+			break;
+		case SVSB_CCI:
+			tb_roomt = x_roomt[3];
+			break;
+		case SVSB_GPU:
+			tb_roomt = x_roomt[1];
+			break;
+		default:
+			break;
+		}
+
+		temp0 = (tp.degc_cali * 10 / 2);
+		temp1 = ((10000 * 100000 / 4096 / tp.gain) *
+			 tp.oe + tb_roomt * 10) * 15 / 18;
+
+		if (!tp.o_slope_sign)
+			temp2 = temp1 * 100 / (1534 + tp.o_slope * 10);
+		else
+			temp2 = temp1 * 100 / (1534 - tp.o_slope * 10);
+
+		svsb->bts = (temp0 + temp2 - 250) * 4 / 10;
+	}
+
+	return true;
+}
+
+static bool svs_is_supported(struct mtk_svs *svs)
+{
+	const struct svs_platform *svsp = svs->platform;
+	struct nvmem_cell *cell;
+
+	/* Get svs efuse by nvmem */
+	cell = nvmem_cell_get(svs->dev, "svs-calibration-data");
+	if (IS_ERR(cell)) {
+		dev_err(svs->dev,
+			"no \"svs-calibration-data\" from dts? disable svs\n");
+		return false;
+	}
+
+	svs->efuse = (u32 *)nvmem_cell_read(cell, &svs->efuse_num);
+	svs->efuse_num /= sizeof(u32);
+	nvmem_cell_put(cell);
+
+	if (!svsp->fake_efuse && !svs->efuse[svsp->efuse_check]) {
+		dev_err(svs->dev, "svs_efuse[%u] = 0x%x?\n",
+			svsp->efuse_check, svs->efuse[svsp->efuse_check]);
+		return false;
+	}
+
+	return svsp->efuse_parsing(svs);
+}
+
+static int svs_resource_setup(struct mtk_svs *svs)
+{
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb;
+	struct platform_device *pdev;
+	struct device_node *np = NULL;
+	struct dev_pm_opp *opp;
+	unsigned long freq;
+	int count, ret;
+	u32 idx, i;
+
+	dev_set_drvdata(svs->dev, svs);
+
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+
+		switch (svsb->sw_id) {
+		case SVSB_CPU_LITTLE:
+			svsb->name = "SVSB_CPU_LITTLE";
+			break;
+		case SVSB_CPU_BIG:
+			svsb->name = "SVSB_CPU_BIG";
+			break;
+		case SVSB_CCI:
+			svsb->name = "SVSB_CCI";
+			break;
+		case SVSB_GPU:
+			svsb->name = "SVSB_GPU";
+			break;
+		default:
+			WARN_ON(1);
+			return -EINVAL;
+		}
+
+		/* Add svs bank device for opp-table/mtcmos/buck control */
+		pdev = platform_device_alloc(svsb->name, 0);
+		if (!pdev) {
+			dev_err(svs->dev, "%s: alloc pdev fail\n", svsb->name);
+			return -ENOMEM;
+		}
+
+		for_each_child_of_node(svs->dev->of_node, np) {
+			if (of_device_is_compatible(np, svsb->of_compatible)) {
+				pdev->dev.of_node = np;
+				break;
+			}
+		}
+
+		ret = platform_device_add(pdev);
+		if (ret) {
+			dev_err(svs->dev, "%s: add device fail: %d\n",
+				svsb->name, ret);
+			return ret;
+		}
+
+		svsb->dev = &pdev->dev;
+		dev_set_drvdata(svsb->dev, svs);
+		ret = dev_pm_opp_of_add_table(svsb->dev);
+		if (ret) {
+			dev_err(svsb->dev, "add opp table fail: %d\n", ret);
+			return ret;
+		}
+
+		mutex_init(&svsb->lock);
+
+		svsb->buck = devm_regulator_get_optional(svsb->dev,
+							 svsb->buck_name);
+		if (IS_ERR(svsb->buck)) {
+			dev_err(svsb->dev, "cannot get \"%s-supply\"\n",
+				svsb->buck_name);
+			return PTR_ERR(svsb->buck);
+		}
+
+		count = dev_pm_opp_get_opp_count(svsb->dev);
+		if (svsb->opp_count != count) {
+			dev_err(svsb->dev,
+				"opp_count not \"%u\" but get \"%d\"?\n",
+				svsb->opp_count, count);
+			return count;
+		}
+
+		for (i = 0, freq = U32_MAX; i < svsb->opp_count; i++, freq--) {
+			opp = dev_pm_opp_find_freq_floor(svsb->dev, &freq);
+			if (IS_ERR(opp)) {
+				dev_err(svsb->dev, "cannot find freq = %ld\n",
+					PTR_ERR(opp));
+				return PTR_ERR(opp);
+			}
+
+			svsb->opp_freqs[i] = freq;
+			svsb->opp_volts[i] = dev_pm_opp_get_voltage(opp);
+			svsb->freqs_pct[i] = percent(svsb->opp_freqs[i],
+						     svsb->freq_base);
+			dev_pm_opp_put(opp);
+		}
+	}
+
+	return 0;
+}
+
+static int svs_suspend(struct device *dev)
+{
+	struct mtk_svs *svs = dev_get_drvdata(dev);
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb;
+	unsigned long flags;
+	int ret;
+	u32 idx;
+
+	/* Wait if svs_isr() is still in proecess. Suspend all banks. */
+	flags = claim_mtk_svs_lock();
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+		svs->pbank = svsb;
+		svs_switch_bank(svs);
+		svs_writel(svs, SVSB_EN_OFF, SVSEN);
+		svs_writel(svs, SVSB_INTSTS_CLEAN, INTSTS);
+		svsb->suspended = true;
+	}
+	release_mtk_svs_lock(flags);
+
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+		if (svsb->phase != SVSB_PHASE_INIT01) {
+			svsb->phase = SVSB_PHASE_ERROR;
+			svs_adjust_pm_opp_volts(svsb, true);
+		}
+	}
+
+	if (svsp->need_hw_reset) {
+		ret = device_reset(svs->dev);
+		if (ret) {
+			dev_err(svs->dev, "device reset fail = %d\n", ret);
+			return ret;
+		}
+	}
+
+	clk_disable_unprepare(svs->main_clk);
+
+	return 0;
+}
+
+static int svs_resume(struct device *dev)
+{
+	struct mtk_svs *svs = dev_get_drvdata(dev);
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb;
+	int ret;
+	u32 idx;
+
+	ret = clk_prepare_enable(svs->main_clk);
+	if (ret) {
+		dev_err(svs->dev, "cannot enable main_clk, disable svs\n");
+		return ret;
+	}
+
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+		svsb->suspended = false;
+	}
+
+	ret = svs_init02(svs);
+	if (ret)
+		return ret;
+
+	svs_mon_mode(svs);
+
+	return 0;
+}
+
+static struct svs_bank svs_mt8183_banks[4] = {
+	{
+		.of_compatible		= "mediatek,mt8183-svs-cpu-little",
+		.sw_id			= SVSB_CPU_LITTLE,
+		.tzone_name		= "tzts4",
+		.buck_name		= "vcpu-little",
+		.mtcmos_request		= false,
+		.init01_volt_flag	= SVSB_INIT01_VOLT_INC_ONLY,
+		.mode_support		= SVSB_MODE_INIT01 | SVSB_MODE_INIT02,
+		.opp_count		= 16,
+		.freq_base		= 1989000000,
+		.vboot			= 0x30,
+		.volt_step		= 6250,
+		.volt_base		= 500000,
+		.volt_offset		= 0,
+		.vmax			= 0x64,
+		.vmin			= 0x18,
+		.dthi			= 0x1,
+		.dtlo			= 0xfe,
+		.det_window		= 0xa28,
+		.det_max		= 0xffff,
+		.age_config		= 0x555555,
+		.agem			= 0,
+		.dc_config		= 0x555555,
+		.dvt_fixed		= 0x7,
+		.vco			= 0x10,
+		.chk_shift		= 0x77,
+		.temp_upper_bound	= 0x64,
+		.temp_lower_bound	= 0xb2,
+		.tzone_high_temp	= SVSB_TZONE_HIGH_TEMP_MAX,
+		.tzone_low_temp		= 25000,
+		.tzone_low_temp_offset	= 0,
+		.core_sel		= 0x8fff0000,
+		.int_st			= BIT(0),
+		.ctl0			= 0x00010001,
+	},
+	{
+		.of_compatible		= "mediatek,mt8183-svs-cpu-big",
+		.sw_id			= SVSB_CPU_BIG,
+		.tzone_name		= "tzts5",
+		.buck_name		= "vcpu-big",
+		.mtcmos_request		= false,
+		.init01_volt_flag	= SVSB_INIT01_VOLT_INC_ONLY,
+		.mode_support		= SVSB_MODE_INIT01 | SVSB_MODE_INIT02,
+		.opp_count		= 16,
+		.freq_base		= 1989000000,
+		.vboot			= 0x30,
+		.volt_step		= 6250,
+		.volt_base		= 500000,
+		.volt_offset		= 0,
+		.vmax			= 0x58,
+		.vmin			= 0x10,
+		.dthi			= 0x1,
+		.dtlo			= 0xfe,
+		.det_window		= 0xa28,
+		.det_max		= 0xffff,
+		.age_config		= 0x555555,
+		.agem			= 0,
+		.dc_config		= 0x555555,
+		.dvt_fixed		= 0x7,
+		.vco			= 0x10,
+		.chk_shift		= 0x77,
+		.temp_upper_bound	= 0x64,
+		.temp_lower_bound	= 0xb2,
+		.tzone_high_temp	= SVSB_TZONE_HIGH_TEMP_MAX,
+		.tzone_low_temp		= 25000,
+		.tzone_low_temp_offset	= 0,
+		.core_sel		= 0x8fff0001,
+		.int_st			= BIT(1),
+		.ctl0			= 0x00000001,
+	},
+	{
+		.of_compatible		= "mediatek,mt8183-svs-cci",
+		.sw_id			= SVSB_CCI,
+		.tzone_name		= "tzts4",
+		.buck_name		= "vcci",
+		.mtcmos_request		= false,
+		.init01_volt_flag	= SVSB_INIT01_VOLT_INC_ONLY,
+		.mode_support		= SVSB_MODE_INIT01 | SVSB_MODE_INIT02,
+		.opp_count		= 16,
+		.freq_base		= 1196000000,
+		.vboot			= 0x30,
+		.volt_step		= 6250,
+		.volt_base		= 500000,
+		.volt_offset		= 0,
+		.vmax			= 0x64,
+		.vmin			= 0x18,
+		.dthi			= 0x1,
+		.dtlo			= 0xfe,
+		.det_window		= 0xa28,
+		.det_max		= 0xffff,
+		.age_config		= 0x555555,
+		.agem			= 0,
+		.dc_config		= 0x555555,
+		.dvt_fixed		= 0x7,
+		.vco			= 0x10,
+		.chk_shift		= 0x77,
+		.temp_upper_bound	= 0x64,
+		.temp_lower_bound	= 0xb2,
+		.tzone_high_temp	= SVSB_TZONE_HIGH_TEMP_MAX,
+		.tzone_low_temp		= 25000,
+		.tzone_low_temp_offset	= 0,
+		.core_sel		= 0x8fff0002,
+		.int_st			= BIT(2),
+		.ctl0			= 0x00100003,
+	},
+	{
+		.of_compatible		= "mediatek,mt8183-svs-gpu",
+		.sw_id			= SVSB_GPU,
+		.tzone_name		= "tzts2",
+		.buck_name		= "vgpu",
+		.mtcmos_request		= true,
+		.init01_volt_flag	= SVSB_INIT01_VOLT_INC_ONLY,
+		.mode_support		= SVSB_MODE_INIT01 | SVSB_MODE_INIT02 |
+					  SVSB_MODE_MON,
+		.opp_count		= 16,
+		.freq_base		= 900000000,
+		.vboot			= 0x30,
+		.volt_step		= 6250,
+		.volt_base		= 500000,
+		.volt_offset		= 0,
+		.vmax			= 0x40,
+		.vmin			= 0x14,
+		.dthi			= 0x1,
+		.dtlo			= 0xfe,
+		.det_window		= 0xa28,
+		.det_max		= 0xffff,
+		.age_config		= 0x555555,
+		.agem			= 0,
+		.dc_config		= 0x555555,
+		.dvt_fixed		= 0x3,
+		.vco			= 0x10,
+		.chk_shift		= 0x77,
+		.temp_upper_bound	= 0x64,
+		.temp_lower_bound	= 0xb2,
+		.tzone_high_temp	= SVSB_TZONE_HIGH_TEMP_MAX,
+		.tzone_low_temp		= 25000,
+		.tzone_low_temp_offset	= 3,
+		.core_sel		= 0x8fff0003,
+		.int_st			= BIT(3),
+		.ctl0			= 0x00050001,
+	},
+};
+
+static const struct svs_platform svs_mt8183_platform = {
+	.name			= "mt8183-svs",
+	.suppliers		= {"thermal", "mali"},
+	.banks			= svs_mt8183_banks,
+	.efuse_parsing		= svs_mt8183_efuse_parsing,
+	.set_freqs_pct		= svs_set_freqs_pct_v2,
+	.get_vops		= svs_get_vops_v2,
+	.regs			= svs_regs_v2,
+	.irqflags		= IRQF_TRIGGER_LOW | IRQF_ONESHOT,
+	.need_hw_reset		= false,
+	.fake_efuse		= false,
+	.bank_num		= 4,
+	.efuse_check		= 2,
+};
+
+static const struct of_device_id mtk_svs_of_match[] = {
+	{
+		.compatible = "mediatek,mt8183-svs",
+		.data = &svs_mt8183_platform,
+	}, {
+		/* Sentinel */
+	},
+};
+
+static int svs_add_supplier_device_link(struct mtk_svs *svs)
+{
+	const struct svs_platform *svsp = svs->platform;
+	struct device_node *sup_node;
+	struct platform_device *sup_pdev;
+	struct device_link *sup_link;
+	u32 i;
+
+	for (i = 0; i < ARRAY_SIZE(svsp->suppliers); i++) {
+		if (!svsp->suppliers[i])
+			continue;
+
+		sup_node = of_find_node_by_name(NULL, svsp->suppliers[i]);
+		if (!sup_node) {
+			dev_notice(svs->dev, "no %s node? pass dev-link\n",
+				   svsp->suppliers[i]);
+			continue;
+		}
+
+		sup_pdev = of_find_device_by_node(sup_node);
+		if (!sup_pdev) {
+			dev_notice(svs->dev, "no %pOF pdev? pass dev-link\n",
+				   sup_node);
+			of_node_put(sup_node);
+			continue;
+		}
+
+		of_node_put(sup_node);
+
+		sup_link = device_link_add(svs->dev, &sup_pdev->dev,
+					   DL_FLAG_AUTOREMOVE_CONSUMER);
+
+		if (sup_link->status == DL_STATE_DORMANT)
+			return -EPROBE_DEFER;
+	}
+
+	return 0;
+}
+
+static int svs_probe(struct platform_device *pdev)
+{
+	struct mtk_svs *svs;
+	unsigned int svs_irq;
+	int ret;
+
+	svs = devm_kzalloc(&pdev->dev, sizeof(*svs), GFP_KERNEL);
+	if (!svs)
+		return -ENOMEM;
+
+	svs->dev = &pdev->dev;
+	svs->platform = of_device_get_match_data(svs->dev);
+	if (!svs->platform) {
+		dev_err(svs->dev, "svs platform data isn't set yet\n");
+		return -EPERM;
+	}
+
+	ret = svs_add_supplier_device_link(svs);
+	if (ret)
+		return ret;
+
+	svs->base = of_iomap(svs->dev->of_node, 0);
+	if (IS_ERR(svs->base)) {
+		dev_err(svs->dev, "cannot find svs register base\n");
+		return PTR_ERR(svs->base);
+	}
+
+	svs_irq = irq_of_parse_and_map(svs->dev->of_node, 0);
+	ret = devm_request_threaded_irq(svs->dev, svs_irq, NULL, svs_isr,
+					svs->platform->irqflags, "mtk-svs",
+					svs);
+	if (ret) {
+		dev_err(svs->dev, "register irq(%d) failed: %d\n",
+			svs_irq, ret);
+		return ret;
+	}
+
+	svs->main_clk = devm_clk_get(svs->dev, "main");
+	if (IS_ERR(svs->main_clk)) {
+		dev_err(svs->dev, "failed to get clock: %ld\n",
+			PTR_ERR(svs->main_clk));
+		return PTR_ERR(svs->main_clk);
+	}
+
+	ret = clk_prepare_enable(svs->main_clk);
+	if (ret) {
+		dev_err(svs->dev, "cannot enable main clk: %d\n", ret);
+		return ret;
+	}
+
+	if (!svs_is_supported(svs)) {
+		dev_notice(svs->dev, "svs is not supported\n");
+		ret = -EPERM;
+		goto svs_probe_clk_disable;
+	}
+
+	ret = svs_resource_setup(svs);
+	if (ret)
+		goto svs_probe_clk_disable;
+
+	ret = svs_start(svs);
+	if (ret)
+		goto svs_probe_clk_disable;
+
+	return 0;
+
+svs_probe_clk_disable:
+	clk_disable_unprepare(svs->main_clk);
+
+	return ret;
+}
+
+static SIMPLE_DEV_PM_OPS(svs_pm_ops, svs_suspend, svs_resume);
+
+static struct platform_driver svs_driver = {
+	.probe	= svs_probe,
+	.driver	= {
+		.name		= "mtk-svs",
+		.pm		= &svs_pm_ops,
+		.of_match_table	= of_match_ptr(mtk_svs_of_match),
+	},
+};
+
+module_platform_driver(svs_driver);
+
+MODULE_AUTHOR("Roger Lu <roger.lu@mediatek.com>");
+MODULE_DESCRIPTION("MediaTek SVS driver");
+MODULE_LICENSE("GPL v2");
diff --git a/include/linux/power/mtk_svs.h b/include/linux/power/mtk_svs.h
new file mode 100644
index 000000000000..5c03982e3576
--- /dev/null
+++ b/include/linux/power/mtk_svs.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0
+ *
+ * Copyright (C) 2020 MediaTek Inc.
+ */
+
+#ifndef __MTK_SVS_H__
+#define __MTK_SVS_H__
+
+#if IS_ENABLED(CONFIG_MTK_SVS)
+unsigned long claim_mtk_svs_lock(void);
+void release_mtk_svs_lock(unsigned long flags);
+#else
+static inline unsigned long claim_mtk_svs_lock(void)
+{
+	return 0;
+}
+
+static inline void release_mtk_svs_lock(unsigned long flags)
+{
+}
+#endif /* CONFIG_MTK_SVS */
+
+#endif /* __MTK_SVS_H__ */
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
