Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55633B3EB6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 18:17:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9Rgh4hsD8IB+W00jYCtGypmLYMXMZyAgkGxh3R4OlCw=; b=t39XuEbxLMfdnn/kt8F+/ootqN
	b0QAHAr5H47mdrWrnBp6FnKiE0ByEyIyA5697+IexhT15ktDBsxwoXIWshGyl+7wX3OOO3IeGS7x2
	EMlpxrnssCwXcrjOxK0Y0Z3+at11oFpiaBNAXsrd0hfjtwgAEitZncBI6PB0d28Jd2nzVSP02nUIb
	bmWyr0zobW3qiUEeCrujlofdU+j2BWex1Lf2W7n3spTkq7mwS3VervuZYmYWXxx48W6N87LnDRKhw
	OGelvD9MoCyrei8BOBG/VgpIEojHLQ9NWTetgAMagnB9q36h1olTTimzd0wf4U1cVthtdmZGBZw22
	qheQRr5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tgy-0005P7-Bn; Mon, 16 Sep 2019 16:17:32 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tf7-0003ua-QY
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 16:15:41 +0000
Received: by mail-pg1-x541.google.com with SMTP id u17so272996pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 09:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lboL97D/P6HZgcHCuu2vBBEzRYzbsf7VFPPieikeDh0=;
 b=dzjJAAoBqxfiDznz7JSOQGdC+sk+/6l9VhIf7Pbsz71gm8wa5EBGW3rCe5i52pdqt7
 xl+glI+ZhmzahYs1+DlzSbEVaxg/NT11Amdb7D8yYijI+4ZmhIJe41ZRKvebDYMzXDWL
 3BGHcubilYyW/NoF2z7J3GCAtjxHgAYeriSTGdAFe1TSKe2r0we0RRxFYnVyg2HtsB5Y
 7vjHCd7mhAZHmMh77JDVih5b7Nzpvr62FHgMEkkE+zPvpVr7a83PVLJp+b+vHVKccXPq
 zplp9RFw74W4qbn2OfUfb+inFPn9GabUWsLugnX0KL+yZcCEcnQgLusuKPFCnXxyeFYT
 ThLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lboL97D/P6HZgcHCuu2vBBEzRYzbsf7VFPPieikeDh0=;
 b=ao7Ew0Cbf6yikuewPYuzwdxssIbhBsNfSDoNNJ/AirBgn0z1TLbIbWeUk2hlWEgeXU
 1BX9GT5PefxyEtej7LAQtXkO8mVvQQoRvzkel1VJw3wzpRdk7Q3OpXhlsnr14gUcNacU
 HOzRKj8NW2zGre/frs/7pCLa4LS8wvQYbh1ZTv9KcVnUc4dWr9StPwI+4m4Vt/bAnxzZ
 UF5O8s0an2jwRc29wnW1/ZxqdRvOx5PF20toKJppoOc1/weg4qNYONNq4TDstkVTIRDl
 lD7Z+GWZBiYmZJLPqDpJSkfrKYCWGdQLchhAL8tZ04JE9A7V3DGsh3OZ2fk4EWW+dWAB
 LnwA==
X-Gm-Message-State: APjAAAV38Df/hOqSwXCPTX4iELKxUId2otzIT0JVhowhUnBHZCSnAdGO
 BpqWXmXkigV3DhL1bA0YtxQw
X-Google-Smtp-Source: APXvYqyyTOT9QPOhVKvm0wJ1UE76sIX90cIycIHy/zN5pFeCv6fCPdWApT6YIU1j4D7+KVUzaymQhw==
X-Received: by 2002:aa7:998f:: with SMTP id k15mr47801pfh.203.1568650535244;
 Mon, 16 Sep 2019 09:15:35 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:90b:91ce:94c2:ef93:5bd:cfe8])
 by smtp.gmail.com with ESMTPSA id
 h66sm614134pjb.0.2019.09.16.09.15.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 09:15:34 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v5 7/8] clk: Add common clock driver for BM1880 SoC
Date: Mon, 16 Sep 2019 21:44:46 +0530
Message-Id: <20190916161447.32715-8-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
References: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_091538_477470_8DEF6B19 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add common clock driver for Bitmain BM1880 SoC. The clock controller on
BM1880 has supplies clocks to all peripherals in the form of gate clocks
and composite clocks (fixed factor + gate).

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/clk/Kconfig      |   7 +
 drivers/clk/Makefile     |   1 +
 drivers/clk/clk-bm1880.c | 966 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 974 insertions(+)
 create mode 100644 drivers/clk/clk-bm1880.c

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index 801fa1cd0321..e70c64e43ff9 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -139,6 +139,13 @@ config COMMON_CLK_SI570
 	  This driver supports Silicon Labs 570/571/598/599 programmable
 	  clock generators.
 
+config COMMON_CLK_BM1880
+	bool "Clock driver for Bitmain BM1880 SoC"
+	depends on ARCH_BITMAIN || COMPILE_TEST
+	default ARCH_BITMAIN
+	help
+	  This driver supports the clocks on Bitmain BM1880 SoC.
+
 config COMMON_CLK_CDCE706
 	tristate "Clock driver for TI CDCE706 clock synthesizer"
 	depends on I2C
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 0cad76021297..2c1ae6289a78 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -22,6 +22,7 @@ obj-$(CONFIG_MACH_ASM9260)		+= clk-asm9260.o
 obj-$(CONFIG_COMMON_CLK_AXI_CLKGEN)	+= clk-axi-clkgen.o
 obj-$(CONFIG_ARCH_AXXIA)		+= clk-axm5516.o
 obj-$(CONFIG_COMMON_CLK_BD718XX)	+= clk-bd718x7.o
+obj-$(CONFIG_COMMON_CLK_BM1880)		+= clk-bm1880.o
 obj-$(CONFIG_COMMON_CLK_CDCE706)	+= clk-cdce706.o
 obj-$(CONFIG_COMMON_CLK_CDCE925)	+= clk-cdce925.o
 obj-$(CONFIG_ARCH_CLPS711X)		+= clk-clps711x.o
diff --git a/drivers/clk/clk-bm1880.c b/drivers/clk/clk-bm1880.c
new file mode 100644
index 000000000000..3b10de929fd4
--- /dev/null
+++ b/drivers/clk/clk-bm1880.c
@@ -0,0 +1,966 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Bitmain BM1880 SoC clock driver
+ *
+ * Copyright (c) 2019 Linaro Ltd.
+ * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+
+#include <dt-bindings/clock/bm1880-clock.h>
+
+#define BM1880_CLK_MPLL_CTL	0x00
+#define BM1880_CLK_SPLL_CTL	0x04
+#define BM1880_CLK_FPLL_CTL	0x08
+#define BM1880_CLK_DDRPLL_CTL	0x0c
+
+#define BM1880_CLK_ENABLE0	0x00
+#define BM1880_CLK_ENABLE1	0x04
+#define BM1880_CLK_SELECT	0x20
+#define BM1880_CLK_DIV0		0x40
+#define BM1880_CLK_DIV1		0x44
+#define BM1880_CLK_DIV2		0x48
+#define BM1880_CLK_DIV3		0x4c
+#define BM1880_CLK_DIV4		0x50
+#define BM1880_CLK_DIV5		0x54
+#define BM1880_CLK_DIV6		0x58
+#define BM1880_CLK_DIV7		0x5c
+#define BM1880_CLK_DIV8		0x60
+#define BM1880_CLK_DIV9		0x64
+#define BM1880_CLK_DIV10	0x68
+#define BM1880_CLK_DIV11	0x6c
+#define BM1880_CLK_DIV12	0x70
+#define BM1880_CLK_DIV13	0x74
+#define BM1880_CLK_DIV14	0x78
+#define BM1880_CLK_DIV15	0x7c
+#define BM1880_CLK_DIV16	0x80
+#define BM1880_CLK_DIV17	0x84
+#define BM1880_CLK_DIV18	0x88
+#define BM1880_CLK_DIV19	0x8c
+#define BM1880_CLK_DIV20	0x90
+#define BM1880_CLK_DIV21	0x94
+#define BM1880_CLK_DIV22	0x98
+#define BM1880_CLK_DIV23	0x9c
+#define BM1880_CLK_DIV24	0xa0
+#define BM1880_CLK_DIV25	0xa4
+#define BM1880_CLK_DIV26	0xa8
+#define BM1880_CLK_DIV27	0xac
+#define BM1880_CLK_DIV28	0xb0
+
+#define to_bm1880_pll_clk(_hw) container_of(_hw, struct bm1880_pll_hw_clock, hw)
+#define to_bm1880_div_clk(_hw) container_of(_hw, struct bm1880_div_hw_clock, hw)
+
+static DEFINE_SPINLOCK(bm1880_clk_lock);
+
+struct bm1880_clock_data {
+	void __iomem *pll_base;
+	void __iomem *sys_base;
+	struct clk_hw_onecell_data *clk_data;
+};
+
+struct bm1880_gate_clock {
+	unsigned int	id;
+	const char	*name;
+	const char      *parent;
+	u32		gate_reg;
+	s8		gate_shift;
+	unsigned long	flags;
+};
+
+struct bm1880_mux_clock {
+	unsigned int	id;
+	const char	*name;
+	const char      * const *parents;
+	s8		num_parents;
+	u32		reg;
+	s8		shift;
+	unsigned long	flags;
+};
+
+struct bm1880_div_clock {
+	unsigned int	id;
+	const char	*name;
+	u32		reg;
+	u8		shift;
+	u8		width;
+	u32		initval;
+	const struct clk_div_table *table;
+	unsigned long flags;
+};
+
+struct bm1880_div_hw_clock {
+	struct bm1880_div_clock div;
+	void __iomem *base;
+	spinlock_t *lock;
+	struct clk_hw hw;
+	struct clk_init_data init;
+};
+
+struct bm1880_composite_clock {
+	unsigned int	id;
+	const char	*name;
+	const char	*parent;
+	const char      * const *parents;
+	unsigned int	num_parents;
+	unsigned long	flags;
+
+	u32		gate_reg;
+	u32		mux_reg;
+	u32		div_reg;
+
+	s8		gate_shift;
+	s8		mux_shift;
+	s8		div_shift;
+	s8		div_width;
+	s16		div_initval;
+	const struct clk_div_table *table;
+};
+
+struct bm1880_pll_clock {
+	unsigned int	id;
+	const char	*name;
+	u32		reg;
+	unsigned long	flags;
+};
+
+struct bm1880_pll_hw_clock {
+	struct bm1880_pll_clock pll;
+	void __iomem *base;
+	struct clk_hw hw;
+	struct clk_init_data init;
+};
+
+static const struct clk_ops bm1880_pll_ops;
+static const struct clk_ops bm1880_clk_div_ops;
+
+#define GATE_DIV(_id, _name, _parent, _gate_reg, _gate_shift, _div_reg,	\
+			_div_shift, _div_width, _div_initval, _table,	\
+			_flags) {					\
+		.id = _id,						\
+		.parent = _parent,					\
+		.name = _name,						\
+		.gate_reg = _gate_reg,					\
+		.gate_shift = _gate_shift,				\
+		.div_reg = _div_reg,					\
+		.div_shift = _div_shift,				\
+		.div_width = _div_width,				\
+		.div_initval = _div_initval,				\
+		.table = _table,					\
+		.mux_shift = -1,					\
+		.flags = _flags,					\
+	}
+
+#define GATE_MUX(_id, _name, _parents, _gate_reg, _gate_shift,		\
+			_mux_reg, _mux_shift, _flags) {			\
+		.id = _id,						\
+		.parents = _parents,					\
+		.num_parents = ARRAY_SIZE(_parents),			\
+		.name = _name,						\
+		.gate_reg = _gate_reg,					\
+		.gate_shift = _gate_shift,				\
+		.div_shift = -1,					\
+		.mux_reg = _mux_reg,					\
+		.mux_shift = _mux_shift,				\
+		.flags = _flags,					\
+	}
+
+#define CLK_PLL(_id, _name, _parent, _reg, _flags) {			\
+		.pll.id = _id,						\
+		.pll.name = _name,					\
+		.pll.reg = _reg,					\
+		.hw.init = CLK_HW_INIT_PARENTS_DATA(_name, _parent,	\
+						    &bm1880_pll_ops,	\
+						    _flags),		\
+	}
+
+#define CLK_DIV(_id, _name, _parent, _reg, _shift, _width, _initval,	\
+				_table,	_flags) {			\
+		.div.id = _id,						\
+		.div.name = _name,					\
+		.div.reg = _reg,					\
+		.div.shift = _shift,					\
+		.div.width = _width,					\
+		.div.initval = _initval,				\
+		.div.table = _table,					\
+		.hw.init = CLK_HW_INIT_HW(_name, _parent,		\
+					  &bm1880_clk_div_ops,		\
+					  _flags),			\
+	}
+
+static struct clk_parent_data bm1880_pll_parent[] = {
+	{ .fw_name = "osc", .name = "osc" },
+};
+
+/*
+ * All PLL clocks are marked as CRITICAL, hence they are very crucial
+ * for the functioning of the SoC
+ */
+static struct bm1880_pll_hw_clock bm1880_pll_clks[] = {
+	CLK_PLL(BM1880_CLK_MPLL, "clk_mpll", bm1880_pll_parent,
+		BM1880_CLK_MPLL_CTL, CLK_IS_CRITICAL),
+	CLK_PLL(BM1880_CLK_SPLL, "clk_spll", bm1880_pll_parent,
+		BM1880_CLK_SPLL_CTL, CLK_IS_CRITICAL),
+	CLK_PLL(BM1880_CLK_FPLL, "clk_fpll", bm1880_pll_parent,
+		BM1880_CLK_FPLL_CTL, CLK_IS_CRITICAL),
+	CLK_PLL(BM1880_CLK_DDRPLL, "clk_ddrpll", bm1880_pll_parent,
+		BM1880_CLK_DDRPLL_CTL, CLK_IS_CRITICAL),
+};
+
+/*
+ * Clocks marked as CRITICAL are needed for the proper functioning
+ * of the SoC.
+ */
+static const struct bm1880_gate_clock bm1880_gate_clks[] = {
+	{ BM1880_CLK_AHB_ROM, "clk_ahb_rom", "clk_mux_axi6",
+	  BM1880_CLK_ENABLE0, 2, CLK_IS_CRITICAL },
+	{ BM1880_CLK_AXI_SRAM, "clk_axi_sram", "clk_axi1",
+	  BM1880_CLK_ENABLE0, 3, CLK_IS_CRITICAL },
+	{ BM1880_CLK_DDR_AXI, "clk_ddr_axi", "clk_mux_axi6",
+	  BM1880_CLK_ENABLE0, 4, CLK_IS_CRITICAL },
+	{ BM1880_CLK_APB_EFUSE, "clk_apb_efuse", "clk_mux_axi6",
+	  BM1880_CLK_ENABLE0, 6, CLK_IS_CRITICAL },
+	{ BM1880_CLK_AXI5_EMMC, "clk_axi5_emmc", "clk_axi5",
+	  BM1880_CLK_ENABLE0, 7, 0 },
+	{ BM1880_CLK_AXI5_SD, "clk_axi5_sd", "clk_axi5",
+	  BM1880_CLK_ENABLE0, 10, 0 },
+	{ BM1880_CLK_AXI4_ETH0, "clk_axi4_eth0", "clk_axi4",
+	  BM1880_CLK_ENABLE0, 14, 0 },
+	{ BM1880_CLK_AXI4_ETH1, "clk_axi4_eth1", "clk_axi4",
+	  BM1880_CLK_ENABLE0, 16, 0 },
+	{ BM1880_CLK_AXI1_GDMA, "clk_axi1_gdma", "clk_axi1",
+	  BM1880_CLK_ENABLE0, 17, 0 },
+	/* Don't gate GPIO clocks as it is not owned by the GPIO driver */
+	{ BM1880_CLK_APB_GPIO, "clk_apb_gpio", "clk_mux_axi6",
+	  BM1880_CLK_ENABLE0, 18, CLK_IGNORE_UNUSED },
+	{ BM1880_CLK_APB_GPIO_INTR, "clk_apb_gpio_intr", "clk_mux_axi6",
+	  BM1880_CLK_ENABLE0, 19, CLK_IGNORE_UNUSED },
+	{ BM1880_CLK_AXI1_MINER, "clk_axi1_miner", "clk_axi1",
+	  BM1880_CLK_ENABLE0, 21, 0 },
+	{ BM1880_CLK_AHB_SF, "clk_ahb_sf", "clk_mux_axi6",
+	  BM1880_CLK_ENABLE0, 22, 0 },
+	{ BM1880_CLK_SDMA_AXI, "clk_sdma_axi", "clk_axi5",
+	  BM1880_CLK_ENABLE0, 23, 0 },
+	{ BM1880_CLK_APB_I2C, "clk_apb_i2c", "clk_mux_axi6",
+	  BM1880_CLK_ENABLE0, 25, 0 },
+	{ BM1880_CLK_APB_WDT, "clk_apb_wdt", "clk_mux_axi6",
+	  BM1880_CLK_ENABLE0, 26, 0 },
+	{ BM1880_CLK_APB_JPEG, "clk_apb_jpeg", "clk_axi6",
+	  BM1880_CLK_ENABLE0, 27, 0 },
+	{ BM1880_CLK_AXI5_NF, "clk_axi5_nf", "clk_axi5",
+	  BM1880_CLK_ENABLE0, 29, 0 },
+	{ BM1880_CLK_APB_NF, "clk_apb_nf", "clk_axi6",
+	  BM1880_CLK_ENABLE0, 30, 0 },
+	{ BM1880_CLK_APB_PWM, "clk_apb_pwm", "clk_mux_axi6",
+	  BM1880_CLK_ENABLE1, 0, 0 },
+	{ BM1880_CLK_RV, "clk_rv", "clk_mux_rv",
+	  BM1880_CLK_ENABLE1, 1, 0 },
+	{ BM1880_CLK_APB_SPI, "clk_apb_spi", "clk_mux_axi6",
+	  BM1880_CLK_ENABLE1, 2, 0 },
+	{ BM1880_CLK_UART_500M, "clk_uart_500m", "clk_div_uart_500m",
+	  BM1880_CLK_ENABLE1, 4, 0 },
+	{ BM1880_CLK_APB_UART, "clk_apb_uart", "clk_axi6",
+	  BM1880_CLK_ENABLE1, 5, 0 },
+	{ BM1880_CLK_APB_I2S, "clk_apb_i2s", "clk_axi6",
+	  BM1880_CLK_ENABLE1, 6, 0 },
+	{ BM1880_CLK_AXI4_USB, "clk_axi4_usb", "clk_axi4",
+	  BM1880_CLK_ENABLE1, 7, 0 },
+	{ BM1880_CLK_APB_USB, "clk_apb_usb", "clk_axi6",
+	  BM1880_CLK_ENABLE1, 8, 0 },
+	{ BM1880_CLK_12M_USB, "clk_12m_usb", "clk_div_12m_usb",
+	  BM1880_CLK_ENABLE1, 11, 0 },
+	{ BM1880_CLK_APB_VIDEO, "clk_apb_video", "clk_axi6",
+	  BM1880_CLK_ENABLE1, 12, 0 },
+	{ BM1880_CLK_APB_VPP, "clk_apb_vpp", "clk_axi6",
+	  BM1880_CLK_ENABLE1, 15, 0 },
+	{ BM1880_CLK_AXI6, "clk_axi6", "clk_mux_axi6",
+	  BM1880_CLK_ENABLE1, 21, CLK_IS_CRITICAL },
+};
+
+static const char * const clk_a53_parents[] = { "clk_spll", "clk_mpll" };
+static const char * const clk_rv_parents[] = { "clk_div_1_rv", "clk_div_0_rv" };
+static const char * const clk_axi1_parents[] = { "clk_div_1_axi1", "clk_div_0_axi1" };
+static const char * const clk_axi6_parents[] = { "clk_div_1_axi6", "clk_div_0_axi6" };
+
+static const struct bm1880_mux_clock bm1880_mux_clks[] = {
+	{ BM1880_CLK_MUX_RV, "clk_mux_rv", clk_rv_parents, 2,
+	  BM1880_CLK_SELECT, 1, 0 },
+	{ BM1880_CLK_MUX_AXI6, "clk_mux_axi6", clk_axi6_parents, 2,
+	  BM1880_CLK_SELECT, 3, 0 },
+};
+
+static const struct clk_div_table bm1880_div_table_0[] = {
+	{ 0, 1 }, { 1, 2 }, { 2, 3 }, { 3, 4 },
+	{ 4, 5 }, { 5, 6 }, { 6, 7 }, { 7, 8 },
+	{ 8, 9 }, { 9, 10 }, { 10, 11 }, { 11, 12 },
+	{ 12, 13 }, { 13, 14 }, { 14, 15 }, { 15, 16 },
+	{ 16, 17 }, { 17, 18 }, { 18, 19 }, { 19, 20 },
+	{ 20, 21 }, { 21, 22 }, { 22, 23 }, { 23, 24 },
+	{ 24, 25 }, { 25, 26 }, { 26, 27 }, { 27, 28 },
+	{ 28, 29 }, { 29, 30 }, { 30, 31 }, { 31, 32 },
+	{ 0, 0 }
+};
+
+static const struct clk_div_table bm1880_div_table_1[] = {
+	{ 0, 1 }, { 1, 2 }, { 2, 3 }, { 3, 4 },
+	{ 4, 5 }, { 5, 6 }, { 6, 7 }, { 7, 8 },
+	{ 8, 9 }, { 9, 10 }, { 10, 11 }, { 11, 12 },
+	{ 12, 13 }, { 13, 14 }, { 14, 15 }, { 15, 16 },
+	{ 16, 17 }, { 17, 18 }, { 18, 19 }, { 19, 20 },
+	{ 20, 21 }, { 21, 22 }, { 22, 23 }, { 23, 24 },
+	{ 24, 25 }, { 25, 26 }, { 26, 27 }, { 27, 28 },
+	{ 28, 29 }, { 29, 30 }, { 30, 31 }, { 31, 32 },
+	{ 127, 128 }, { 0, 0 }
+};
+
+static const struct clk_div_table bm1880_div_table_2[] = {
+	{ 0, 1 }, { 1, 2 }, { 2, 3 }, { 3, 4 },
+	{ 4, 5 }, { 5, 6 }, { 6, 7 }, { 7, 8 },
+	{ 8, 9 }, { 9, 10 }, { 10, 11 }, { 11, 12 },
+	{ 12, 13 }, { 13, 14 }, { 14, 15 }, { 15, 16 },
+	{ 16, 17 }, { 17, 18 }, { 18, 19 }, { 19, 20 },
+	{ 20, 21 }, { 21, 22 }, { 22, 23 }, { 23, 24 },
+	{ 24, 25 }, { 25, 26 }, { 26, 27 }, { 27, 28 },
+	{ 28, 29 }, { 29, 30 }, { 30, 31 }, { 31, 32 },
+	{ 127, 128 }, { 255, 256 }, { 0, 0 }
+};
+
+static const struct clk_div_table bm1880_div_table_3[] = {
+	{ 0, 1 }, { 1, 2 }, { 2, 3 }, { 3, 4 },
+	{ 4, 5 }, { 5, 6 }, { 6, 7 }, { 7, 8 },
+	{ 8, 9 }, { 9, 10 }, { 10, 11 }, { 11, 12 },
+	{ 12, 13 }, { 13, 14 }, { 14, 15 }, { 15, 16 },
+	{ 16, 17 }, { 17, 18 }, { 18, 19 }, { 19, 20 },
+	{ 20, 21 }, { 21, 22 }, { 22, 23 }, { 23, 24 },
+	{ 24, 25 }, { 25, 26 }, { 26, 27 }, { 27, 28 },
+	{ 28, 29 }, { 29, 30 }, { 30, 31 }, { 31, 32 },
+	{ 127, 128 }, { 255, 256 }, { 511, 512 }, { 0, 0 }
+};
+
+static const struct clk_div_table bm1880_div_table_4[] = {
+	{ 0, 1 }, { 1, 2 }, { 2, 3 }, { 3, 4 },
+	{ 4, 5 }, { 5, 6 }, { 6, 7 }, { 7, 8 },
+	{ 8, 9 }, { 9, 10 }, { 10, 11 }, { 11, 12 },
+	{ 12, 13 }, { 13, 14 }, { 14, 15 }, { 15, 16 },
+	{ 16, 17 }, { 17, 18 }, { 18, 19 }, { 19, 20 },
+	{ 20, 21 }, { 21, 22 }, { 22, 23 }, { 23, 24 },
+	{ 24, 25 }, { 25, 26 }, { 26, 27 }, { 27, 28 },
+	{ 28, 29 }, { 29, 30 }, { 30, 31 }, { 31, 32 },
+	{ 127, 128 }, { 255, 256 }, { 511, 512 }, { 65535, 65536 },
+	{ 0, 0 }
+};
+
+/*
+ * Clocks marked as CRITICAL are needed for the proper functioning
+ * of the SoC.
+ */
+static struct bm1880_div_hw_clock bm1880_div_clks[] = {
+	CLK_DIV(BM1880_CLK_DIV_0_RV, "clk_div_0_rv", &bm1880_pll_clks[1].hw,
+		BM1880_CLK_DIV12, 16, 5, 1, bm1880_div_table_0, 0),
+	CLK_DIV(BM1880_CLK_DIV_1_RV, "clk_div_1_rv", &bm1880_pll_clks[2].hw,
+		BM1880_CLK_DIV13, 16, 5, 1, bm1880_div_table_0, 0),
+	CLK_DIV(BM1880_CLK_DIV_UART_500M, "clk_div_uart_500m", &bm1880_pll_clks[2].hw,
+		BM1880_CLK_DIV15, 16, 7, 3, bm1880_div_table_1, 0),
+	CLK_DIV(BM1880_CLK_DIV_0_AXI1, "clk_div_0_axi1", &bm1880_pll_clks[0].hw,
+		BM1880_CLK_DIV21, 16, 5, 2, bm1880_div_table_0,
+		CLK_IS_CRITICAL),
+	CLK_DIV(BM1880_CLK_DIV_1_AXI1, "clk_div_1_axi1", &bm1880_pll_clks[2].hw,
+		BM1880_CLK_DIV22, 16, 5, 3, bm1880_div_table_0,
+		CLK_IS_CRITICAL),
+	CLK_DIV(BM1880_CLK_DIV_0_AXI6, "clk_div_0_axi6", &bm1880_pll_clks[2].hw,
+		BM1880_CLK_DIV27, 16, 5, 15, bm1880_div_table_0,
+		CLK_IS_CRITICAL),
+	CLK_DIV(BM1880_CLK_DIV_1_AXI6, "clk_div_1_axi6", &bm1880_pll_clks[0].hw,
+		BM1880_CLK_DIV28, 16, 5, 11, bm1880_div_table_0,
+		CLK_IS_CRITICAL),
+	CLK_DIV(BM1880_CLK_DIV_12M_USB, "clk_div_12m_usb", &bm1880_pll_clks[2].hw,
+		BM1880_CLK_DIV18, 16, 7, 125, bm1880_div_table_1, 0),
+};
+
+/*
+ * Clocks marked as CRITICAL are all needed for the proper functioning
+ * of the SoC.
+ */
+static struct bm1880_composite_clock bm1880_composite_clks[] = {
+	GATE_MUX(BM1880_CLK_A53, "clk_a53", clk_a53_parents,
+		 BM1880_CLK_ENABLE0, 0, BM1880_CLK_SELECT, 0,
+		 CLK_IS_CRITICAL),
+	GATE_DIV(BM1880_CLK_50M_A53, "clk_50m_a53", "clk_fpll",
+		 BM1880_CLK_ENABLE0, 1, BM1880_CLK_DIV0, 16, 5, 30,
+		 bm1880_div_table_0, CLK_IS_CRITICAL),
+	GATE_DIV(BM1880_CLK_EFUSE, "clk_efuse", "clk_fpll",
+		 BM1880_CLK_ENABLE0, 5, BM1880_CLK_DIV1, 16, 7, 60,
+		 bm1880_div_table_1, 0),
+	GATE_DIV(BM1880_CLK_EMMC, "clk_emmc", "clk_fpll",
+		 BM1880_CLK_ENABLE0, 8, BM1880_CLK_DIV2, 16, 5, 15,
+		 bm1880_div_table_0, 0),
+	GATE_DIV(BM1880_CLK_100K_EMMC, "clk_100k_emmc", "clk_div_12m_usb",
+		 BM1880_CLK_ENABLE0, 9, BM1880_CLK_DIV3, 16, 8, 120,
+		 bm1880_div_table_2, 0),
+	GATE_DIV(BM1880_CLK_SD, "clk_sd", "clk_fpll",
+		 BM1880_CLK_ENABLE0, 11, BM1880_CLK_DIV4, 16, 5, 15,
+		 bm1880_div_table_0, 0),
+	GATE_DIV(BM1880_CLK_100K_SD, "clk_100k_sd", "clk_div_12m_usb",
+		 BM1880_CLK_ENABLE0, 12, BM1880_CLK_DIV5, 16, 8, 120,
+		 bm1880_div_table_2, 0),
+	GATE_DIV(BM1880_CLK_500M_ETH0, "clk_500m_eth0", "clk_fpll",
+		 BM1880_CLK_ENABLE0, 13, BM1880_CLK_DIV6, 16, 5, 3,
+		 bm1880_div_table_0, 0),
+	GATE_DIV(BM1880_CLK_500M_ETH1, "clk_500m_eth1", "clk_fpll",
+		 BM1880_CLK_ENABLE0, 15, BM1880_CLK_DIV7, 16, 5, 3,
+		 bm1880_div_table_0, 0),
+	/* Don't gate GPIO clocks as it is not owned by the GPIO driver */
+	GATE_DIV(BM1880_CLK_GPIO_DB, "clk_gpio_db", "clk_div_12m_usb",
+		 BM1880_CLK_ENABLE0, 20, BM1880_CLK_DIV8, 16, 16, 120,
+		 bm1880_div_table_4, CLK_IGNORE_UNUSED),
+	GATE_DIV(BM1880_CLK_SDMA_AUD, "clk_sdma_aud", "clk_fpll",
+		 BM1880_CLK_ENABLE0, 24, BM1880_CLK_DIV9, 16, 7, 61,
+		 bm1880_div_table_1, 0),
+	GATE_DIV(BM1880_CLK_JPEG_AXI, "clk_jpeg_axi", "clk_fpll",
+		 BM1880_CLK_ENABLE0, 28, BM1880_CLK_DIV10, 16, 5, 4,
+		 bm1880_div_table_0, 0),
+	GATE_DIV(BM1880_CLK_NF, "clk_nf", "clk_fpll",
+		 BM1880_CLK_ENABLE0, 31, BM1880_CLK_DIV11, 16, 5, 30,
+		 bm1880_div_table_0, 0),
+	GATE_DIV(BM1880_CLK_TPU_AXI, "clk_tpu_axi", "clk_spll",
+		 BM1880_CLK_ENABLE1, 3, BM1880_CLK_DIV14, 16, 5, 1,
+		 bm1880_div_table_0, 0),
+	GATE_DIV(BM1880_CLK_125M_USB, "clk_125m_usb", "clk_fpll",
+		 BM1880_CLK_ENABLE1, 9, BM1880_CLK_DIV16, 16, 5, 12,
+		 bm1880_div_table_0, 0),
+	GATE_DIV(BM1880_CLK_33K_USB, "clk_33k_usb", "clk_div_12m_usb",
+		 BM1880_CLK_ENABLE1, 10, BM1880_CLK_DIV17, 16, 9, 363,
+		 bm1880_div_table_3, 0),
+	GATE_DIV(BM1880_CLK_VIDEO_AXI, "clk_video_axi", "clk_fpll",
+		 BM1880_CLK_ENABLE1, 13, BM1880_CLK_DIV19, 16, 5, 4,
+		 bm1880_div_table_0, 0),
+	GATE_DIV(BM1880_CLK_VPP_AXI, "clk_vpp_axi", "clk_fpll",
+		 BM1880_CLK_ENABLE1, 14, BM1880_CLK_DIV20, 16, 5, 4,
+		 bm1880_div_table_0, 0),
+	GATE_MUX(BM1880_CLK_AXI1, "clk_axi1", clk_axi1_parents,
+		 BM1880_CLK_ENABLE1, 15, BM1880_CLK_SELECT, 2,
+		 CLK_IS_CRITICAL),
+	GATE_DIV(BM1880_CLK_AXI2, "clk_axi2", "clk_fpll",
+		 BM1880_CLK_ENABLE1, 17, BM1880_CLK_DIV23, 16, 5, 3,
+		 bm1880_div_table_0, CLK_IS_CRITICAL),
+	GATE_DIV(BM1880_CLK_AXI3, "clk_axi3", "clk_mux_rv",
+		 BM1880_CLK_ENABLE1, 18, BM1880_CLK_DIV24, 16, 5, 2,
+		 bm1880_div_table_0, CLK_IS_CRITICAL),
+	GATE_DIV(BM1880_CLK_AXI4, "clk_axi4", "clk_fpll",
+		 BM1880_CLK_ENABLE1, 19, BM1880_CLK_DIV25, 16, 5, 6,
+		 bm1880_div_table_0, CLK_IS_CRITICAL),
+	GATE_DIV(BM1880_CLK_AXI5, "clk_axi5", "clk_fpll",
+		 BM1880_CLK_ENABLE1, 20, BM1880_CLK_DIV26, 16, 5, 15,
+		 bm1880_div_table_0, CLK_IS_CRITICAL),
+};
+
+static unsigned long bm1880_pll_rate_calc(u32 regval, unsigned long parent_rate)
+{
+	u32 fbdiv, fref, refdiv;
+	u32 postdiv1, postdiv2;
+	unsigned long rate, numerator, denominator;
+
+	fbdiv = (regval >> 16) & 0xfff;
+	fref = parent_rate;
+	refdiv = regval & 0x1f;
+	postdiv1 = (regval >> 8) & 0x7;
+	postdiv2 = (regval >> 12) & 0x7;
+
+	numerator = parent_rate * fbdiv;
+	denominator = refdiv * postdiv1 * postdiv2;
+	do_div(numerator, denominator);
+	rate = numerator;
+
+	return rate;
+}
+
+static unsigned long bm1880_pll_recalc_rate(struct clk_hw *hw,
+					    unsigned long parent_rate)
+{
+	struct bm1880_pll_hw_clock *pll_hw = to_bm1880_pll_clk(hw);
+	unsigned long rate;
+	u32 regval;
+
+	regval = readl(pll_hw->base + pll_hw->pll.reg);
+	rate = bm1880_pll_rate_calc(regval, parent_rate);
+
+	return rate;
+}
+
+static const struct clk_ops bm1880_pll_ops = {
+	.recalc_rate	= bm1880_pll_recalc_rate,
+};
+
+static struct clk_hw *bm1880_clk_register_pll(struct bm1880_pll_hw_clock *pll_clk,
+					      void __iomem *sys_base)
+{
+	struct clk_hw *hw;
+	int err;
+
+	pll_clk->base = sys_base;
+	hw = &pll_clk->hw;
+
+	err = clk_hw_register(NULL, hw);
+	if (err)
+		return ERR_PTR(err);
+
+	return hw;
+}
+
+static void bm1880_clk_unregister_pll(struct clk_hw *hw)
+{
+	struct bm1880_pll_hw_clock *pll_hw = to_bm1880_pll_clk(hw);
+
+	clk_hw_unregister(hw);
+	kfree(pll_hw);
+}
+
+static int bm1880_clk_register_plls(struct bm1880_pll_hw_clock *clks,
+			     int num_clks, struct bm1880_clock_data *data)
+{
+	struct clk_hw *hw;
+	void __iomem *pll_base = data->pll_base;
+	int i;
+
+	for (i = 0; i < num_clks; i++) {
+		struct bm1880_pll_hw_clock *bm1880_clk = &clks[i];
+
+		hw = bm1880_clk_register_pll(bm1880_clk, pll_base);
+		if (IS_ERR(hw)) {
+			pr_err("%s: failed to register clock %s\n",
+			       __func__, bm1880_clk->pll.name);
+			goto err_clk;
+		}
+
+		data->clk_data->hws[clks[i].pll.id] = hw;
+	}
+
+	return 0;
+
+err_clk:
+	while (i--)
+		bm1880_clk_unregister_pll(data->clk_data->hws[clks[i].pll.id]);
+
+	return PTR_ERR(hw);
+}
+
+static int bm1880_clk_register_mux(const struct bm1880_mux_clock *clks,
+			    int num_clks, struct bm1880_clock_data *data)
+{
+	struct clk_hw *hw;
+	void __iomem *sys_base = data->sys_base;
+	int i;
+
+	for (i = 0; i < num_clks; i++) {
+		hw = clk_hw_register_mux(NULL, clks[i].name,
+					 clks[i].parents,
+					 clks[i].num_parents,
+					 clks[i].flags,
+					 sys_base + clks[i].reg,
+					 clks[i].shift, 1, 0,
+					 &bm1880_clk_lock);
+		if (IS_ERR(hw)) {
+			pr_err("%s: failed to register clock %s\n",
+			       __func__, clks[i].name);
+			goto err_clk;
+		}
+
+		data->clk_data->hws[clks[i].id] = hw;
+	}
+
+	return 0;
+
+err_clk:
+	while (i--)
+		clk_hw_unregister_mux(data->clk_data->hws[clks[i].id]);
+
+	return PTR_ERR(hw);
+}
+
+static unsigned long bm1880_clk_div_recalc_rate(struct clk_hw *hw,
+						unsigned long parent_rate)
+{
+	struct bm1880_div_hw_clock *div_hw = to_bm1880_div_clk(hw);
+	struct bm1880_div_clock *div = &div_hw->div;
+	void __iomem *reg_addr = div_hw->base + div->reg;
+	unsigned int val;
+	unsigned long rate;
+
+	if (!(readl(reg_addr) & BIT(3))) {
+		val = div->initval;
+	} else {
+		val = readl(reg_addr) >> div->shift;
+		val &= clk_div_mask(div->width);
+	}
+
+	rate = divider_recalc_rate(hw, parent_rate, val, div->table,
+				   div->flags, div->width);
+
+	return rate;
+}
+
+static long bm1880_clk_div_round_rate(struct clk_hw *hw, unsigned long rate,
+				      unsigned long *prate)
+{
+	struct bm1880_div_hw_clock *div_hw = to_bm1880_div_clk(hw);
+	struct bm1880_div_clock *div = &div_hw->div;
+	void __iomem *reg_addr = div_hw->base + div->reg;
+
+	if (div->flags & CLK_DIVIDER_READ_ONLY) {
+		u32 val;
+
+		val = readl(reg_addr) >> div->shift;
+		val &= clk_div_mask(div->width);
+
+		return divider_ro_round_rate(hw, rate, prate, div->table,
+					     div->width, div->flags,
+					     val);
+	}
+
+	return divider_round_rate(hw, rate, prate, div->table,
+				  div->width, div->flags);
+}
+
+static int bm1880_clk_div_set_rate(struct clk_hw *hw, unsigned long rate,
+				   unsigned long parent_rate)
+{
+	struct bm1880_div_hw_clock *div_hw = to_bm1880_div_clk(hw);
+	struct bm1880_div_clock *div = &div_hw->div;
+	void __iomem *reg_addr = div_hw->base + div->reg;
+	unsigned long flags = 0;
+	int value;
+	u32 val;
+
+	value = divider_get_val(rate, parent_rate, div->table,
+				div->width, div_hw->div.flags);
+	if (value < 0)
+		return value;
+
+	if (div_hw->lock)
+		spin_lock_irqsave(div_hw->lock, flags);
+	else
+		__acquire(div_hw->lock);
+
+	if (div->flags & CLK_DIVIDER_HIWORD_MASK) {
+		val = clk_div_mask(div->width) << (div_hw->div.shift + 16);
+	} else {
+		val = readl(reg_addr);
+		val &= ~(clk_div_mask(div->width) << div_hw->div.shift);
+	}
+	val |= (u32)value << div->shift;
+	writel(val, reg_addr);
+
+	if (div_hw->lock)
+		spin_unlock_irqrestore(div_hw->lock, flags);
+	else
+		__release(div_hw->lock);
+
+	return 0;
+}
+
+static const struct clk_ops bm1880_clk_div_ops = {
+	.recalc_rate = bm1880_clk_div_recalc_rate,
+	.round_rate = bm1880_clk_div_round_rate,
+	.set_rate = bm1880_clk_div_set_rate,
+};
+
+static struct clk_hw *bm1880_clk_register_div(struct bm1880_div_hw_clock *div_clk,
+				    void __iomem *sys_base)
+{
+	struct clk_hw *hw;
+	int err;
+
+	div_clk->div.flags = CLK_DIVIDER_ONE_BASED | CLK_DIVIDER_ALLOW_ZERO;
+	div_clk->base = sys_base;
+	div_clk->lock = &bm1880_clk_lock;
+
+	hw = &div_clk->hw;
+	err = clk_hw_register(NULL, hw);
+	if (err)
+		return ERR_PTR(err);
+
+	return hw;
+}
+
+static void bm1880_clk_unregister_div(struct clk_hw *hw)
+{
+	struct bm1880_div_hw_clock *div_hw = to_bm1880_div_clk(hw);
+
+	clk_hw_unregister(hw);
+	kfree(div_hw);
+}
+
+static int bm1880_clk_register_divs(struct bm1880_div_hw_clock *clks,
+			     int num_clks, struct bm1880_clock_data *data)
+{
+	struct clk_hw *hw;
+	void __iomem *sys_base = data->sys_base;
+	int i;
+
+	for (i = 0; i < num_clks; i++) {
+		struct bm1880_div_hw_clock *bm1880_clk = &clks[i];
+
+		hw = bm1880_clk_register_div(bm1880_clk, sys_base);
+		if (IS_ERR(hw)) {
+			pr_err("%s: failed to register clock %s\n",
+			       __func__, bm1880_clk->div.name);
+			goto err_clk;
+		}
+
+		data->clk_data->hws[clks[i].div.id] = hw;
+	}
+
+	return 0;
+
+err_clk:
+	while (i--)
+		bm1880_clk_unregister_div(data->clk_data->hws[clks[i].div.id]);
+
+	return PTR_ERR(hw);
+}
+
+static int bm1880_clk_register_gate(const struct bm1880_gate_clock *clks,
+			     int num_clks, struct bm1880_clock_data *data)
+{
+	struct clk_hw *hw;
+	void __iomem *sys_base = data->sys_base;
+	int i;
+
+	for (i = 0; i < num_clks; i++) {
+		hw = clk_hw_register_gate(NULL, clks[i].name,
+					  clks[i].parent,
+					  clks[i].flags,
+					  sys_base + clks[i].gate_reg,
+					  clks[i].gate_shift,
+					0,
+					&bm1880_clk_lock);
+		if (IS_ERR(hw)) {
+			pr_err("%s: failed to register clock %s\n",
+			       __func__, clks[i].name);
+			goto err_clk;
+		}
+
+		data->clk_data->hws[clks[i].id] = hw;
+	}
+
+	return 0;
+
+err_clk:
+	while (i--)
+		clk_hw_unregister_gate(data->clk_data->hws[clks[i].id]);
+
+	return PTR_ERR(hw);
+}
+
+static struct clk_hw *bm1880_clk_register_composite(struct bm1880_composite_clock *clks,
+					  void __iomem *sys_base)
+{
+	struct clk_hw *hw;
+	struct clk_mux *mux = NULL;
+	struct clk_gate *gate = NULL;
+	struct bm1880_div_hw_clock *div_hws = NULL;
+	struct clk_hw *mux_hw = NULL, *gate_hw = NULL, *div_hw = NULL;
+	const struct clk_ops *mux_ops = NULL, *gate_ops = NULL, *div_ops = NULL;
+	const char * const *parent_names;
+	const char *parent;
+	int num_parents;
+	int ret;
+
+	if (clks->mux_shift >= 0) {
+		mux = kzalloc(sizeof(*mux), GFP_KERNEL);
+		if (!mux)
+			return ERR_PTR(-ENOMEM);
+
+		mux->reg = sys_base + clks->mux_reg;
+		mux->mask = 1;
+		mux->shift = clks->mux_shift;
+		mux_hw = &mux->hw;
+		mux_ops = &clk_mux_ops;
+		mux->lock = &bm1880_clk_lock;
+
+		parent_names = clks->parents;
+		num_parents = clks->num_parents;
+	} else {
+		parent = clks->parent;
+		parent_names = &parent;
+		num_parents = 1;
+	}
+
+	if (clks->gate_shift >= 0) {
+		gate = kzalloc(sizeof(*gate), GFP_KERNEL);
+		if (!gate) {
+			ret = -ENOMEM;
+			goto err_out;
+		}
+
+		gate->reg = sys_base + clks->gate_reg;
+		gate->bit_idx = clks->gate_shift;
+		gate->lock = &bm1880_clk_lock;
+
+		gate_hw = &gate->hw;
+		gate_ops = &clk_gate_ops;
+	}
+
+	if (clks->div_shift >= 0) {
+		div_hws = kzalloc(sizeof(*div_hws), GFP_KERNEL);
+		if (!div_hws) {
+			ret = -ENOMEM;
+			goto err_out;
+		}
+
+		div_hws->base = sys_base;
+		div_hws->div.reg = clks->div_reg;
+		div_hws->div.shift = clks->div_shift;
+		div_hws->div.width = clks->div_width;
+		div_hws->div.table = clks->table;
+		div_hws->div.initval = clks->div_initval;
+		div_hws->lock = &bm1880_clk_lock;
+		div_hws->div.flags = CLK_DIVIDER_ONE_BASED |
+				     CLK_DIVIDER_ALLOW_ZERO;
+
+		div_hw = &div_hws->hw;
+		div_ops = &bm1880_clk_div_ops;
+	}
+
+	hw = clk_hw_register_composite(NULL, clks->name, parent_names,
+				       num_parents, mux_hw, mux_ops, div_hw,
+				       div_ops, gate_hw, gate_ops,
+				       clks->flags);
+
+	if (IS_ERR(hw)) {
+		ret = PTR_ERR(hw);
+		goto err_out;
+	}
+
+	return hw;
+
+err_out:
+	kfree(div_hws);
+	kfree(gate);
+	kfree(mux);
+
+	return ERR_PTR(ret);
+}
+
+static int bm1880_clk_register_composites(struct bm1880_composite_clock *clks,
+				   int num_clks, struct bm1880_clock_data *data)
+{
+	struct clk_hw *hw;
+	void __iomem *sys_base = data->sys_base;
+	int i;
+
+	for (i = 0; i < num_clks; i++) {
+		struct bm1880_composite_clock *bm1880_clk = &clks[i];
+
+		hw = bm1880_clk_register_composite(bm1880_clk, sys_base);
+		if (IS_ERR(hw)) {
+			pr_err("%s: failed to register clock %s\n",
+			       __func__, bm1880_clk->name);
+			goto err_clk;
+		}
+
+		data->clk_data->hws[clks[i].id] = hw;
+	}
+
+	return 0;
+
+err_clk:
+	while (i--)
+		clk_hw_unregister_composite(data->clk_data->hws[clks[i].id]);
+
+	return PTR_ERR(hw);
+}
+
+static int bm1880_clk_probe(struct platform_device *pdev)
+{
+	struct bm1880_clock_data *clk_data;
+	void __iomem *pll_base, *sys_base;
+	struct device_node *np = pdev->dev.of_node;
+	struct device *dev = &pdev->dev;
+	struct resource *res;
+	struct clk_hw_onecell_data *clk_hw_data;
+	int num_clks, i;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	pll_base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(pll_base))
+		return PTR_ERR(pll_base);
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
+	sys_base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(sys_base))
+		return PTR_ERR(sys_base);
+
+	clk_data = devm_kzalloc(dev, sizeof(*clk_data), GFP_KERNEL);
+	if (!clk_data)
+		return -ENOMEM;
+
+	clk_data->pll_base = pll_base;
+	clk_data->sys_base = sys_base;
+
+	num_clks = ARRAY_SIZE(bm1880_pll_clks) +
+		   ARRAY_SIZE(bm1880_div_clks) +
+		   ARRAY_SIZE(bm1880_mux_clks) +
+		   ARRAY_SIZE(bm1880_composite_clks) +
+		   ARRAY_SIZE(bm1880_gate_clks);
+
+	clk_hw_data = devm_kzalloc(&pdev->dev, struct_size(clk_hw_data, hws,
+					  num_clks), GFP_KERNEL);
+	if (!clk_hw_data)
+		return -ENOMEM;
+
+	clk_data->clk_data = clk_hw_data;
+
+	for (i = 0; i < num_clks; i++)
+		clk_data->clk_data->hws[i] = ERR_PTR(-ENOENT);
+
+	clk_data->clk_data->num = num_clks;
+
+	bm1880_clk_register_plls(bm1880_pll_clks,
+				 ARRAY_SIZE(bm1880_pll_clks),
+				 clk_data);
+
+	bm1880_clk_register_divs(bm1880_div_clks,
+				 ARRAY_SIZE(bm1880_div_clks),
+				 clk_data);
+
+	bm1880_clk_register_mux(bm1880_mux_clks,
+				ARRAY_SIZE(bm1880_mux_clks),
+				clk_data);
+
+	bm1880_clk_register_composites(bm1880_composite_clks,
+				       ARRAY_SIZE(bm1880_composite_clks),
+				       clk_data);
+
+	bm1880_clk_register_gate(bm1880_gate_clks,
+				 ARRAY_SIZE(bm1880_gate_clks),
+				 clk_data);
+
+	return of_clk_add_hw_provider(np, of_clk_hw_onecell_get,
+				      clk_data->clk_data);
+}
+
+static const struct of_device_id bm1880_of_match[] = {
+	{ .compatible = "bitmain,bm1880-clk", },
+	{}
+};
+MODULE_DEVICE_TABLE(of, bm1880_of_match);
+
+static struct platform_driver bm1880_clk_driver = {
+	.driver = {
+		.name = "bm1880-clk",
+		.of_match_table = bm1880_of_match,
+	},
+	.probe = bm1880_clk_probe,
+};
+module_platform_driver(bm1880_clk_driver);
+
+MODULE_AUTHOR("Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>");
+MODULE_DESCRIPTION("Clock driver for Bitmain BM1880 SoC");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
