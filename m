Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2401E1801A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 16:22:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=muYoO/eeJodE21pnzWfsyCgGT9J85wcwMofZDKqv688=; b=KqXf1a3xyG/13k
	/lCqoc5NIf9fJGIFGcmMbufo0XKYg7DOa4R5qP50NyuLuXX4YsCGRII/GN6mbFO/glCMkbyCXD4Vp
	7hHVlSHGnwyLNZhUAkCV3o1CwtLrzAT7MpIIC7UenA0zfmT+CtcNznKdCmyk/a8TLWWg/3CPmvOlA
	rd8nWvJ+Lc9MnpZ43bS+K9HuVkqG6J4tjHT86MZQOiWcmkHt+COR3mehDpN1j80HdoHeXXS+A4EhS
	jTgWnzu9DjwErIPpDZDDPNuB6qWwuuBOn+PHux9KrIxFUDPwrKRWElwcAzmMAoTwHUE6vfZm5iCi9
	Aq8j62ukgtLitPzXe89A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBghc-0003VK-J9; Tue, 10 Mar 2020 15:21:52 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBgg7-00022c-OS
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 15:20:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id t11so16412612wrw.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 08:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QwENgQCrbdtzWEqXCsJfBerr8q7ubNstw+yo2U/aY1M=;
 b=ohDGyV7vhg1s6VLyDKmDIjqEbdqA/hubKtwc/jD44iLMapqcmaHyPB8xki5Pi6tYeZ
 ZDAypD0E5EKeaRcCh1O2pEAyAziIrqH6LSwtatiuUFEGvVc5kJOmvRzh9YD2d4+GVXBn
 A5Tw+kZAGrLdXDYKf9pBrRdVvJMoKiqBwIHklDQsOVu2MIYwMTK/iPHcYgix5mZdD7pP
 TTtEHupL5G+o0QvPvC/gVdnpNF7A93UgaqI9yrp8MYOmDacIgZKPG8JmMZIsn9LIOIxs
 3XUk52HqMQ596ZxdEwZ0cYIkFSbOWp2cIp6aPMUe69aDiQzd6ffWT1rLCBdKPf6byEFD
 lSzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QwENgQCrbdtzWEqXCsJfBerr8q7ubNstw+yo2U/aY1M=;
 b=KBN6xAW0MRaD+NULns2rxw2Y92TuztVLuN/noJ/MfWQXTf0fqzu+0wLS6Qp77fGCcx
 hBV/SCKYM0TQylo90eFqW4rTOY3JMsXRWD64dIFWfaODw1p0s2noSk+X225YZCzcFLpv
 Dtn29PHxQmj5Cd3GNTBlr/+RAyGVERcjgF8t4W/DI+24KgxNcnYV3O4JKGC2Gmllwm93
 bXFJE3E9W1wqt83kFHC3JEfLVkcC6RWxXyCgVonh0vrq5Tbld7l7/4qRLtK+iLd9pPNj
 fR/plQGKCa69lsPdDA/+wNphuLV5LmUEqcFqdg2LRemv5tCy7IHOZEPZAC3FEGKBUw37
 NgnA==
X-Gm-Message-State: ANhLgQ1sqL5ggW2JX+JahxUALX+QiYNlHY4+m1J/pQ2yEMk2tnYyhNV9
 oVwUIL7UWBXuMeG4kpawPeI=
X-Google-Smtp-Source: ADFU+vsjIR1U4N7DQb89EUm0tpfhOF5ELvjBWzWgXFAcbO8uOaIsTdl8J5UkbrV8s7E5vxjwUqHCUQ==
X-Received: by 2002:adf:ef45:: with SMTP id c5mr28446976wrp.302.1583853617246; 
 Tue, 10 Mar 2020 08:20:17 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id l64sm4569704wmf.30.2020.03.10.08.20.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 08:20:16 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v5 3/8] clk: tegra: Implement Tegra210 EMC clock
Date: Tue, 10 Mar 2020 16:19:58 +0100
Message-Id: <20200310152003.2945170-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200310152003.2945170-1-thierry.reding@gmail.com>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_082019_846576_DB2F89B5 
X-CRM114-Status: GOOD (  25.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Joseph Lo <josephl@nvidia.com>

The EMC clock needs to carefully coordinate with the EMC controller
programming to make sure external memory can be properly clocked. Do so
by hooking up the EMC clock with an EMC provider that will specify which
rates are supported by the EMC and provide a callback to use for setting
the clock rate at the EMC.

Based on work by Peter De Schrijver <pdeschrijver@nvidia.com>.

Signed-off-by: Joseph Lo <josephl@nvidia.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
Changes in v5:
- major rework and cleanup

 drivers/clk/tegra/Makefile           |   1 +
 drivers/clk/tegra/clk-tegra210-emc.c | 352 ++++++++++++++
 drivers/clk/tegra/clk.h              |   3 +
 drivers/memory/tegra/Kconfig         |  10 +
 drivers/memory/tegra/Makefile        |   1 +
 drivers/memory/tegra/tegra210-emc.c  | 671 +++++++++++++++++++++++++++
 drivers/memory/tegra/tegra210-emc.h  | 156 +++++++
 include/linux/clk/tegra.h            |  23 +
 8 files changed, 1217 insertions(+)
 create mode 100644 drivers/clk/tegra/clk-tegra210-emc.c
 create mode 100644 drivers/memory/tegra/tegra210-emc.c
 create mode 100644 drivers/memory/tegra/tegra210-emc.h

diff --git a/drivers/clk/tegra/Makefile b/drivers/clk/tegra/Makefile
index 6f6bc2f0aa43..6df344331bf1 100644
--- a/drivers/clk/tegra/Makefile
+++ b/drivers/clk/tegra/Makefile
@@ -26,5 +26,6 @@ obj-$(CONFIG_TEGRA_CLK_EMC)		+= clk-tegra124-emc.o
 obj-$(CONFIG_ARCH_TEGRA_132_SOC)	+= clk-tegra124.o
 obj-y					+= cvb.o
 obj-$(CONFIG_ARCH_TEGRA_210_SOC)	+= clk-tegra210.o
+obj-$(CONFIG_ARCH_TEGRA_210_SOC)	+= clk-tegra210-emc.o
 obj-$(CONFIG_CLK_TEGRA_BPMP)		+= clk-bpmp.o
 obj-y					+= clk-utils.o
diff --git a/drivers/clk/tegra/clk-tegra210-emc.c b/drivers/clk/tegra/clk-tegra210-emc.c
new file mode 100644
index 000000000000..3eb58c37d6c0
--- /dev/null
+++ b/drivers/clk/tegra/clk-tegra210-emc.c
@@ -0,0 +1,352 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2015-2020, NVIDIA CORPORATION.  All rights reserved.
+ */
+
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/clk/tegra.h>
+#include <linux/device.h>
+#include <linux/io.h>
+#include <linux/slab.h>
+
+#define CLK_SOURCE_EMC 0x19c
+#define  CLK_SOURCE_EMC_2X_CLK_SRC_SHIFT 29
+#define  CLK_SOURCE_EMC_2X_CLK_SRC_MASK 0x7
+#define  CLK_SOURCE_EMC_MC_EMC_SAME_FREQ BIT(16)
+#define  CLK_SOURCE_EMC_2X_CLK_DIVISOR_SHIFT 0
+#define  CLK_SOURCE_EMC_2X_CLK_DIVISOR_MASK 0xff
+
+#define CLK_SRC_PLLM 0
+#define CLK_SRC_PLLC 1
+#define CLK_SRC_PLLP 2
+#define CLK_SRC_CLK_M 3
+#define CLK_SRC_PLLM_UD 4
+#define CLK_SRC_PLLMB_UD 5
+#define CLK_SRC_PLLMB 6
+#define CLK_SRC_PLLP_UD 7
+
+struct tegra210_clk_emc {
+	struct clk_hw hw;
+	void __iomem *regs;
+
+	struct tegra210_clk_emc_provider *provider;
+
+	struct clk *parents[8];
+};
+
+static inline struct tegra210_clk_emc *
+to_tegra210_clk_emc(struct clk_hw *hw)
+{
+	return container_of(hw, struct tegra210_clk_emc, hw);
+}
+
+static const char *tegra210_clk_emc_parents[] = {
+	"pll_m", "pll_c", "pll_p", "clk_m", "pll_m_ud", "pll_mb_ud",
+	"pll_mb", "pll_p_ud",
+};
+
+static u8 tegra210_clk_emc_get_parent(struct clk_hw *hw)
+{
+	struct tegra210_clk_emc *emc = to_tegra210_clk_emc(hw);
+	u32 value;
+	u8 src;
+
+	value = readl_relaxed(emc->regs + CLK_SOURCE_EMC);
+	src = (value >> CLK_SOURCE_EMC_2X_CLK_SRC_SHIFT) &
+			CLK_SOURCE_EMC_2X_CLK_SRC_MASK;
+
+	return src;
+}
+
+static unsigned long tegra210_clk_emc_recalc_rate(struct clk_hw *hw,
+						  unsigned long parent_rate)
+{
+	struct tegra210_clk_emc *emc = to_tegra210_clk_emc(hw);
+	u32 value, div;
+
+	value = readl_relaxed(emc->regs + CLK_SOURCE_EMC);
+
+	div = (value >> CLK_SOURCE_EMC_2X_CLK_DIVISOR_SHIFT) &
+			CLK_SOURCE_EMC_2X_CLK_DIVISOR_MASK;
+	div += 2;
+
+	return DIV_ROUND_UP(parent_rate * 2, div);
+}
+
+static long tegra210_clk_emc_round_rate(struct clk_hw *hw, unsigned long rate,
+					unsigned long *prate)
+{
+	struct tegra210_clk_emc *emc = to_tegra210_clk_emc(hw);
+	struct tegra210_clk_emc_provider *provider = emc->provider;
+	unsigned int i;
+
+	if (!provider || !provider->configs || provider->num_configs == 0)
+		return clk_hw_get_rate(hw);
+
+	for (i = 0; i < provider->num_configs; i++) {
+		if (provider->configs[i].rate >= rate)
+			return provider->configs[i].rate;
+	}
+
+	return provider->configs[i - 1].rate;
+}
+
+static struct clk *tegra210_clk_emc_find_parent(struct tegra210_clk_emc *emc,
+						u8 index)
+{
+	struct clk_hw *parent = clk_hw_get_parent_by_index(&emc->hw, index);
+	const char *name = clk_hw_get_name(parent);
+
+	/* XXX implement cache? */
+
+	return __clk_lookup(name);
+}
+
+static int tegra210_clk_emc_set_rate(struct clk_hw *hw, unsigned long rate,
+				     unsigned long parent_rate)
+{
+	struct tegra210_clk_emc *emc = to_tegra210_clk_emc(hw);
+	struct tegra210_clk_emc_provider *provider = emc->provider;
+	struct tegra210_clk_emc_config *config;
+	struct device *dev = provider->dev;
+	struct clk_hw *old, *new, *parent;
+	u8 old_idx, new_idx, index;
+	struct clk *clk;
+	unsigned int i;
+	int err;
+
+	if (!provider || !provider->configs || provider->num_configs == 0)
+		return -EINVAL;
+
+	for (i = 0; i < provider->num_configs; i++) {
+		if (provider->configs[i].rate >= rate) {
+			config = &provider->configs[i];
+			break;
+		}
+	}
+
+	if (i == provider->num_configs)
+		config = &provider->configs[i - 1];
+
+	old_idx = tegra210_clk_emc_get_parent(hw);
+	new_idx = (config->value >> CLK_SOURCE_EMC_2X_CLK_SRC_SHIFT) &
+				    CLK_SOURCE_EMC_2X_CLK_SRC_MASK;
+
+	old = clk_hw_get_parent_by_index(hw, old_idx);
+	new = clk_hw_get_parent_by_index(hw, new_idx);
+
+	/* if the rate has changed... */
+	if (config->parent_rate != clk_hw_get_rate(old)) {
+		/* ... but the clock source remains the same ... */
+		if (new_idx == old_idx) {
+			/* ... switch to the alternative clock source. */
+			switch (new_idx) {
+			case CLK_SRC_PLLM:
+				new_idx = CLK_SRC_PLLMB;
+				break;
+
+			case CLK_SRC_PLLM_UD:
+				new_idx = CLK_SRC_PLLMB_UD;
+				break;
+
+			case CLK_SRC_PLLMB_UD:
+				new_idx = CLK_SRC_PLLM_UD;
+				break;
+
+			case CLK_SRC_PLLMB:
+				new_idx = CLK_SRC_PLLM;
+				break;
+			}
+
+			/*
+			 * This should never happen because we can't deal with
+			 * it.
+			 */
+			if (WARN_ON(new_idx == old_idx))
+				return -EINVAL;
+
+			new = clk_hw_get_parent_by_index(hw, new_idx);
+		}
+
+		index = new_idx;
+		parent = new;
+	} else {
+		index = old_idx;
+		parent = old;
+	}
+
+	clk = tegra210_clk_emc_find_parent(emc, index);
+	if (IS_ERR(clk)) {
+		err = PTR_ERR(clk);
+		dev_err(dev, "failed to get parent clock for index %u: %d\n",
+			index, err);
+		return err;
+	}
+
+	/* set the new parent clock to the required rate */
+	if (clk_get_rate(clk) != config->parent_rate) {
+		err = clk_set_rate(clk, config->parent_rate);
+		if (err < 0) {
+			dev_err(dev, "failed to set rate %lu Hz for %pC: %d\n",
+				config->parent_rate, clk, err);
+			return err;
+		}
+	}
+
+	/* enable the new parent clock */
+	if (parent != old) {
+		err = clk_prepare_enable(clk);
+		if (err < 0) {
+			dev_err(dev, "failed to enable parent clock %pC: %d\n",
+				clk, err);
+			return err;
+		}
+	}
+
+	/* update the EMC source configuration to reflect the new parent */
+	config->value &= ~(CLK_SOURCE_EMC_2X_CLK_SRC_MASK <<
+			   CLK_SOURCE_EMC_2X_CLK_SRC_SHIFT);
+	config->value |= (index & CLK_SOURCE_EMC_2X_CLK_SRC_MASK) <<
+				  CLK_SOURCE_EMC_2X_CLK_SRC_SHIFT;
+
+	/*
+	 * Finally, switch the EMC programming with both old and new parent
+	 * clocks enabled.
+	 */
+	err = provider->set_rate(dev, config);
+	if (err < 0) {
+		dev_err(dev, "failed to set EMC rate to %lu Hz: %d\n", rate,
+			err);
+
+		/*
+		 * If we're unable to switch to the new EMC frequency, we no
+		 * longer need the new parent to be enabled.
+		 */
+		if (parent != old)
+			clk_disable_unprepare(clk);
+
+		return err;
+	}
+
+	/* reparent to new parent clock and disable the old parent clock */
+	if (parent != old) {
+		clk = tegra210_clk_emc_find_parent(emc, old_idx);
+		if (IS_ERR(clk)) {
+			err = PTR_ERR(clk);
+			dev_err(dev,
+				"failed to get parent clock for index %u: %d\n",
+				old_idx, err);
+			return err;
+		}
+
+		clk_hw_reparent(hw, parent);
+		clk_disable_unprepare(clk);
+	}
+
+	return err;
+}
+
+static const struct clk_ops tegra210_clk_emc_ops = {
+	.get_parent = tegra210_clk_emc_get_parent,
+	.recalc_rate = tegra210_clk_emc_recalc_rate,
+	.round_rate = tegra210_clk_emc_round_rate,
+	.set_rate = tegra210_clk_emc_set_rate,
+};
+
+struct clk *tegra210_clk_register_emc(struct device_node *np,
+				      void __iomem *regs)
+{
+	struct tegra210_clk_emc *emc;
+	struct clk_init_data init;
+	struct clk *clk;
+
+	emc = kzalloc(sizeof(*emc), GFP_KERNEL);
+	if (!emc)
+		return ERR_PTR(-ENOMEM);
+
+	emc->regs = regs;
+
+	init.name = "emc";
+	init.ops = &tegra210_clk_emc_ops;
+	init.flags = CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE;
+	init.parent_names = tegra210_clk_emc_parents;
+	init.num_parents = ARRAY_SIZE(tegra210_clk_emc_parents);
+	emc->hw.init = &init;
+
+	clk = clk_register(NULL, &emc->hw);
+	if (IS_ERR(clk)) {
+		kfree(emc);
+		return clk;
+	}
+
+	return clk;
+}
+
+int tegra210_clk_emc_attach(struct clk *clk,
+			    struct tegra210_clk_emc_provider *provider)
+{
+	struct clk_hw *hw = __clk_get_hw(clk);
+	struct tegra210_clk_emc *emc = to_tegra210_clk_emc(hw);
+	struct device *dev = provider->dev;
+	unsigned int i;
+
+	for (i = 0; i < provider->num_configs; i++) {
+		struct tegra210_clk_emc_config *config = &provider->configs[i];
+		struct clk_hw *parent;
+		bool same_freq;
+		u8 src, div;
+
+		src = (config->value >> CLK_SOURCE_EMC_2X_CLK_SRC_SHIFT) &
+					CLK_SOURCE_EMC_2X_CLK_SRC_MASK;
+		div = (config->value >> CLK_SOURCE_EMC_2X_CLK_DIVISOR_SHIFT) &
+					CLK_SOURCE_EMC_2X_CLK_DIVISOR_MASK;
+
+		/* do basic sanity checking on the EMC timings */
+		if (div & 0x1) {
+			dev_err(dev, "invalid odd divider %u for rate %lu Hz\n",
+				div, config->rate);
+			return -EINVAL;
+		}
+
+		same_freq = config->value & CLK_SOURCE_EMC_MC_EMC_SAME_FREQ;
+
+		if (same_freq != config->same_freq) {
+			dev_err(dev,
+				"ambiguous EMC to MC ratio for rate %lu Hz\n",
+				config->rate);
+			return -EINVAL;
+		}
+
+		parent = clk_hw_get_parent_by_index(hw, src);
+		config->parent = src;
+
+		if (src == CLK_SRC_PLLM || src == CLK_SRC_PLLM_UD) {
+			config->parent_rate = config->rate * (1 + div / 2);
+		} else {
+			unsigned long rate = config->rate * (1 + div / 2);
+
+			config->parent_rate = clk_hw_get_rate(parent);
+
+			if (config->parent_rate != rate) {
+				dev_err(dev,
+					"rate %lu Hz does not match input\n",
+					config->rate);
+				return -EINVAL;
+			}
+		}
+	}
+
+	emc->provider = provider;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(tegra210_clk_emc_attach);
+
+void tegra210_clk_emc_detach(struct clk *clk)
+{
+	struct tegra210_clk_emc *emc = to_tegra210_clk_emc(__clk_get_hw(clk));
+
+	emc->provider = NULL;
+}
+EXPORT_SYMBOL_GPL(tegra210_clk_emc_detach);
diff --git a/drivers/clk/tegra/clk.h b/drivers/clk/tegra/clk.h
index 416a6b09f6a3..d196427d2cc0 100644
--- a/drivers/clk/tegra/clk.h
+++ b/drivers/clk/tegra/clk.h
@@ -908,4 +908,7 @@ void tegra_clk_periph_resume(void);
 bool tegra20_clk_emc_driver_available(struct clk_hw *emc_hw);
 struct clk *tegra20_clk_register_emc(void __iomem *ioaddr, bool low_jitter);
 
+struct clk *tegra210_clk_register_emc(struct device_node *np,
+				      void __iomem *regs);
+
 #endif /* TEGRA_CLK_H */
diff --git a/drivers/memory/tegra/Kconfig b/drivers/memory/tegra/Kconfig
index fbfbaada61a2..a319f4df6126 100644
--- a/drivers/memory/tegra/Kconfig
+++ b/drivers/memory/tegra/Kconfig
@@ -36,3 +36,13 @@ config TEGRA124_EMC
 	  Tegra124 chips. The EMC controls the external DRAM on the board.
 	  This driver is required to change memory timings / clock rate for
 	  external memory.
+
+config TEGRA210_EMC
+	bool "NVIDIA Tegra210 External Memory Controller driver"
+	default y
+	depends on TEGRA_MC && ARCH_TEGRA_210_SOC
+	help
+	  This driver is for the External Memory Controller (EMC) found on
+	  Tegra210 chips. The EMC controls the external DRAM on the board.
+	  This driver is required to change memory timings / clock rate for
+	  external memory.
diff --git a/drivers/memory/tegra/Makefile b/drivers/memory/tegra/Makefile
index 529d10bc5650..1c59150ccf58 100644
--- a/drivers/memory/tegra/Makefile
+++ b/drivers/memory/tegra/Makefile
@@ -13,5 +13,6 @@ obj-$(CONFIG_TEGRA_MC) += tegra-mc.o
 obj-$(CONFIG_TEGRA20_EMC)  += tegra20-emc.o
 obj-$(CONFIG_TEGRA30_EMC)  += tegra30-emc.o
 obj-$(CONFIG_TEGRA124_EMC) += tegra124-emc.o
+obj-$(CONFIG_TEGRA210_EMC) += tegra210-emc.o
 obj-$(CONFIG_ARCH_TEGRA_186_SOC) += tegra186.o tegra186-emc.o
 obj-$(CONFIG_ARCH_TEGRA_194_SOC) += tegra186.o tegra186-emc.o
diff --git a/drivers/memory/tegra/tegra210-emc.c b/drivers/memory/tegra/tegra210-emc.c
new file mode 100644
index 000000000000..80ea14d1e6ce
--- /dev/null
+++ b/drivers/memory/tegra/tegra210-emc.c
@@ -0,0 +1,671 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2015-2019, NVIDIA CORPORATION.  All rights reserved.
+ */
+
+#include <linux/clk.h>
+#include <linux/clk/tegra.h>
+#include <linux/clk-provider.h>
+#include <linux/debugfs.h>
+#include <linux/delay.h>
+#include <linux/kernel.h>
+#include <linux/of_address.h>
+#include <linux/of_platform.h>
+#include <linux/slab.h>
+#include <soc/tegra/fuse.h>
+#include <soc/tegra/mc.h>
+
+#include "mc.h"
+#include "tegra210-emc.h"
+
+#define CLK_RST_CONTROLLER_CLK_SOURCE_EMC		0x19c
+#define EMC_CLK_EMC_2X_CLK_SRC_SHIFT			29
+#define EMC_CLK_EMC_2X_CLK_SRC_MASK			\
+	(0x7 << EMC_CLK_EMC_2X_CLK_SRC_SHIFT)
+#define EMC_CLK_MC_EMC_SAME_FREQ			BIT(16)
+#define EMC_CLK_EMC_2X_CLK_DIVISOR_SHIFT		0
+#define EMC_CLK_EMC_2X_CLK_DIVISOR_MASK			\
+	(0xff << EMC_CLK_EMC_2X_CLK_DIVISOR_SHIFT)
+
+#define MC_EMEM_ARB_MISC0_EMC_SAME_FREQ			BIT(27)
+
+#define TEGRA_EMC_MAX_FREQS		16
+#define TEGRA210_EMC_SUSPEND_RATE	204000000
+
+#define CLK_CHANGE_DELAY 100
+#define TRAINING_TIME 100
+
+enum {
+	TEGRA_EMC_SRC_PLLM,
+	TEGRA_EMC_SRC_PLLC,
+	TEGRA_EMC_SRC_PLLP,
+	TEGRA_EMC_SRC_CLKM,
+	TEGRA_EMC_SRC_PLLM_UD,
+	TEGRA_EMC_SRC_PLLMB_UD,
+	TEGRA_EMC_SRC_PLLMB,
+	TEGRA_EMC_SRC_PLLP_UD,
+	TEGRA_EMC_SRC_COUNT,
+};
+
+struct emc_sel {
+	struct clk *input;
+	u32 value;
+	unsigned long input_rate;
+
+	struct clk *input_b;		// second source of PLLM: PLLMB
+	u32 value_b;
+	unsigned long input_rate_b;
+};
+
+static struct emc_sel *emc_clk_sel;
+static struct clk *emc_src[TEGRA_EMC_SRC_COUNT];
+static const char *emc_src_names[TEGRA_EMC_SRC_COUNT] = {
+	[TEGRA_EMC_SRC_PLLM] = "pll_m",
+	[TEGRA_EMC_SRC_PLLC] = "pll_c",
+	[TEGRA_EMC_SRC_PLLP] = "pll_p",
+	[TEGRA_EMC_SRC_CLKM] = "clk_m",
+	[TEGRA_EMC_SRC_PLLM_UD] = "pll_m_ud",
+	[TEGRA_EMC_SRC_PLLMB_UD] = "pll_mb_ud",
+	[TEGRA_EMC_SRC_PLLMB] = "pll_mb",
+	[TEGRA_EMC_SRC_PLLP_UD] = "pll_p_ud",
+};
+
+static const struct supported_sequence supported_seqs[] = {
+	{
+		0,
+		NULL,
+		NULL,
+		NULL
+	}
+};
+static const struct supported_sequence *seq = supported_seqs;
+static DEFINE_SPINLOCK(emc_access_lock);
+
+static inline struct tegra_emc *clk_hw_to_emc(struct clk_hw *hw)
+{
+	return container_of(hw, struct tegra_emc, hw);
+}
+
+u32 emc_readl(struct tegra_emc *emc, unsigned long offset)
+{
+	return readl_relaxed(emc->emc_base[REG_EMC] + offset);
+}
+
+u32 emc_readl_per_ch(struct tegra_emc *emc, int type,
+			    unsigned long offset)
+{
+	u32 val = 0;
+
+	switch (type) {
+	case REG_EMC:
+	case REG_EMC0:
+		val = readl_relaxed(emc->emc_base[REG_EMC] + offset);
+		break;
+	case REG_EMC1:
+		val = readl_relaxed(emc->emc_base[REG_EMC1] + offset);
+		break;
+	}
+
+	return val;
+}
+
+static inline u32 emc_src_val(u32 val)
+{
+	return (val & EMC_CLK_EMC_2X_CLK_SRC_MASK) >>
+		EMC_CLK_EMC_2X_CLK_SRC_SHIFT;
+}
+
+static inline u32 emc_div_val(u32 val)
+{
+	return (val & EMC_CLK_EMC_2X_CLK_DIVISOR_MASK) >>
+		EMC_CLK_EMC_2X_CLK_DIVISOR_SHIFT;
+}
+
+static void emc_train_func(struct timer_list *tmr)
+{
+	unsigned long flags;
+	struct tegra_emc *emc = from_timer(emc, tmr, training_timer);
+
+	if (!emc->current_timing)
+		return;
+
+	spin_lock_irqsave(&emc_access_lock, flags);
+	if (seq->periodic_compensation)
+		seq->periodic_compensation(emc);
+	spin_unlock_irqrestore(&emc_access_lock, flags);
+
+	mod_timer(&emc->training_timer,
+		  jiffies + msecs_to_jiffies(emc->timer_period_training));
+}
+
+static void emc_training_timer_start(struct tegra_emc *emc)
+{
+	mod_timer(&emc->training_timer,
+		  jiffies + msecs_to_jiffies(emc->timer_period_training));
+}
+
+static void emc_training_timer_stop(struct tegra_emc *emc)
+{
+	del_timer(&emc->training_timer);
+}
+
+static void emc_set_clock(struct tegra_emc *emc, u32 clksrc)
+{
+	seq->set_clock(emc, clksrc);
+
+	if (emc->next_timing->periodic_training)
+		emc_training_timer_start(emc);
+	else
+		emc_training_timer_stop(emc);
+}
+
+static inline unsigned long emc_get_src_clk_rate(void)
+{
+	int div;
+	u32 val;
+	unsigned long rate;
+
+	val = tegra210_clk_emc_get_setting();
+	rate = clk_get_rate(emc_src[emc_src_val(val)]);
+	div = emc_div_val(val);
+	div += 2;
+	rate *= 2;
+	rate += div - 1;
+	do_div(rate, div);
+
+	return rate;
+}
+
+static int emc_table_lookup(struct tegra_emc *emc, unsigned long rate)
+{
+	int i;
+
+	for (i = 0; i < emc->emc_table_size; i++) {
+		if (emc_clk_sel[i].input == NULL)
+			continue;
+
+		if (emc->emc_table[i].rate == rate)
+			return i;
+	}
+
+	return -EINVAL;
+}
+
+static struct clk *emc_predict_parent(struct tegra_emc *emc,
+				      unsigned long rate)
+{
+	struct clk *old_parent, *new_parent;
+	unsigned long parent_rate;
+	int idx;
+
+	idx = emc_table_lookup(emc, rate / 1000);
+	if (idx < 0)
+		return ERR_PTR(-EINVAL);
+
+	parent_rate = emc_clk_sel[idx].input_rate * 1000;
+	new_parent = emc_clk_sel[idx].input;
+	old_parent = clk_get_parent(emc->emc_clk);
+
+	if (parent_rate == clk_get_rate(old_parent))
+		return old_parent;
+
+	if (clk_is_match(new_parent, old_parent))
+		new_parent = emc_clk_sel[idx].input_b;
+
+	if (parent_rate != clk_get_rate(new_parent))
+		clk_set_rate(new_parent, parent_rate);
+
+	return new_parent;
+}
+
+static int emc_set_rate(struct tegra_emc *emc, unsigned long rate)
+{
+	int i;
+	unsigned long flags;
+	s64 last_change_delay;
+	struct clk *parent;
+
+	if (emc->emc_suspend)
+		rate = TEGRA210_EMC_SUSPEND_RATE;
+
+	if (rate == emc->current_timing->rate)
+		return 0;
+
+	i = emc_table_lookup(emc, rate / 1000);
+
+	if (i < 0)
+		return i;
+
+	if (rate > 204000000 && !emc->emc_table[i].trained)
+		return -EINVAL;
+
+	parent = emc_predict_parent(emc, rate);
+	if (clk_is_match(parent, emc_clk_sel[i].input))
+		emc->clk_setting = emc_clk_sel[i].value;
+	else
+		emc->clk_setting = emc_clk_sel[i].value_b;
+
+	emc->next_timing = &emc->emc_table[i];
+	last_change_delay = ktime_us_delta(ktime_get(), emc->clkchange_time);
+	if ((last_change_delay >= 0) &&
+	    (last_change_delay < emc->clkchange_delay))
+		udelay(emc->clkchange_delay - (int)last_change_delay);
+
+	spin_lock_irqsave(&emc_access_lock, flags);
+	emc_set_clock(emc, emc->clk_setting);
+	emc->clkchange_time = ktime_get();
+	emc->current_timing = &emc->emc_table[i];
+	spin_unlock_irqrestore(&emc_access_lock, flags);
+
+	return 0;
+}
+
+#ifdef CONFIG_DEBUG_FS
+static int debug_emc_get_rate(void *data, u64 *val)
+{
+	struct clk *c = data;
+
+	*val = clk_get_rate(c);
+
+	return 0;
+}
+
+static int debug_emc_set_rate(void *data, u64 val)
+{
+	struct clk *c = data;
+
+	return clk_set_rate(c, val);
+}
+DEFINE_SIMPLE_ATTRIBUTE(emc_rate_fops, debug_emc_get_rate,
+			debug_emc_set_rate, "%llu\n");
+
+static int tegra_emc_debug_init(struct tegra_emc *emc)
+{
+	struct dentry *emc_debugfs_root;
+
+	emc_debugfs_root = debugfs_create_dir("tegra_emc", NULL);
+	if (!emc_debugfs_root)
+		return -ENOMEM;
+
+	if (!debugfs_create_file("rate", 0644, emc_debugfs_root, emc->emc_clk,
+				 &emc_rate_fops))
+		goto err_out;
+
+	return 0;
+
+err_out:
+	debugfs_remove_recursive(emc_debugfs_root);
+	return -ENOMEM;
+}
+#endif /* CONFIG_DEBUG_FS */
+
+static u8 clk_emc_get_parent(struct clk_hw *hw)
+{
+	struct tegra_emc *emc = clk_hw_to_emc(hw);
+
+	if (!emc->clk_setting)
+		emc->clk_setting = tegra210_clk_emc_get_setting();
+
+	return emc_src_val(emc->clk_setting);
+}
+
+static unsigned long clk_emc_recalc_rate(struct clk_hw *hw,
+					 unsigned long parent_rate)
+{
+	struct tegra_emc *emc = clk_hw_to_emc(hw);
+
+	if (!emc->emc_table_size || !seq) {
+		u32 emc_setting = tegra210_clk_emc_get_setting();
+
+		return clk_get_rate(emc_src[emc_src_val(emc_setting)]);
+	}
+
+	return emc->current_timing->rate * 1000;
+}
+
+static long clk_emc_round_rate(struct clk_hw *hw, unsigned long rate,
+			       unsigned long *prate)
+{
+	struct tegra_emc *emc = clk_hw_to_emc(hw);
+	int i;
+
+	if (!emc->emc_table_size || !seq) {
+		u32 emc_setting = tegra210_clk_emc_get_setting();
+		return clk_get_rate(emc_src[emc_src_val(emc_setting)]);
+	}
+
+	if (emc->emc_suspend)
+		return TEGRA210_EMC_SUSPEND_RATE;
+
+	rate /= 1000;
+
+	for (i = 0; i < emc->emc_table_size; i++) {
+		if (emc->emc_table[i].rate >= rate)
+			return emc->emc_table[i].rate * 1000;
+	}
+
+	return emc->emc_table[i - 1].rate * 1000;
+}
+
+static int clk_emc_set_rate(struct clk_hw *hw, unsigned long rate,
+			    unsigned long parent_rate)
+{
+	struct tegra_emc *emc = clk_hw_to_emc(hw);
+	struct clk *old_parent, *new_parent;
+	int ret = -EINVAL;
+
+	if (!emc->emc_table_size || !seq)
+		return ret;
+
+	if (emc->emc_suspend)
+		rate = TEGRA210_EMC_SUSPEND_RATE;
+
+	old_parent = clk_get_parent(hw->clk);
+	new_parent = emc_predict_parent(emc, rate);
+	if (IS_ERR(new_parent))
+		goto out;
+
+	if (!clk_is_match(new_parent, old_parent))
+		clk_prepare_enable(new_parent);
+
+	ret = emc_set_rate(emc, rate);
+	if (ret) {
+		if (new_parent != old_parent)
+			clk_disable_unprepare(new_parent);
+		goto out;
+	}
+
+	if (!clk_is_match(new_parent, old_parent)) {
+		clk_hw_reparent(hw, __clk_get_hw(new_parent));
+		clk_disable_unprepare(old_parent);
+	}
+
+out:
+	return ret;
+}
+
+static const struct clk_ops tegra_clk_emc_ops = {
+	.get_parent = clk_emc_get_parent,
+	.recalc_rate = clk_emc_recalc_rate,
+	.round_rate = clk_emc_round_rate,
+	.set_rate = clk_emc_set_rate,
+};
+
+static int find_matching_input(struct emc_table *table, struct emc_sel *sel)
+{
+	u32 div_value;
+	u32 src_value;
+	unsigned long input_rate = 0;
+	struct clk *input_clk;
+
+	div_value = emc_div_val(table->clk_src_emc);
+	src_value = emc_src_val(table->clk_src_emc);
+
+	if (div_value & 0x1) {
+		pr_warn("Tegra EMC: invalid odd divider for EMC rate %u\n",
+			table->rate);
+		return -EINVAL;
+	}
+
+	if (!(table->clk_src_emc & EMC_CLK_MC_EMC_SAME_FREQ) !=
+	    !(MC_EMEM_ARB_MISC0_EMC_SAME_FREQ &
+	    table->burst_mc_regs[MC_EMEM_ARB_MISC0_INDEX])) {
+		pr_warn("Tegra EMC: ambiguous EMC to MC ratio for rate %u\n",
+			table->rate);
+		return -EINVAL;
+	}
+
+	input_clk = emc_src[src_value];
+	if (input_clk == emc_src[TEGRA_EMC_SRC_PLLM]
+		|| input_clk == emc_src[TEGRA_EMC_SRC_PLLM_UD]) {
+		input_rate = table->rate * (1 + div_value / 2);
+	} else {
+		input_rate = clk_get_rate(input_clk) / 1000;
+		if (input_rate != (table->rate * (1 + div_value / 2))) {
+			pr_warn("Tegra EMC: rate %u doesn't match input\n",
+				table->rate);
+			return -EINVAL;
+		}
+	}
+
+	sel->input = input_clk;
+	sel->input_rate = input_rate;
+	sel->value = table->clk_src_emc;
+	sel->input_b = input_clk;
+	sel->input_rate_b = input_rate;
+	sel->value_b = table->clk_src_emc;
+
+	if (input_clk == emc_src[TEGRA_EMC_SRC_PLLM]) {
+		sel->input_b = emc_src[TEGRA_EMC_SRC_PLLMB];
+		sel->value_b = table->clk_src_emc &
+			       ~EMC_CLK_EMC_2X_CLK_SRC_MASK;
+		sel->value_b |= TEGRA_EMC_SRC_PLLMB <<
+				EMC_CLK_EMC_2X_CLK_SRC_SHIFT;
+	}
+
+	if (input_clk == emc_src[TEGRA_EMC_SRC_PLLM_UD]) {
+		sel->input_b = emc_src[TEGRA_EMC_SRC_PLLMB_UD];
+		sel->value_b = table->clk_src_emc &
+			       ~EMC_CLK_EMC_2X_CLK_SRC_MASK;
+		sel->value_b |= TEGRA_EMC_SRC_PLLMB_UD <<
+				EMC_CLK_EMC_2X_CLK_SRC_SHIFT;
+	}
+
+	return 0;
+}
+
+static int tegra210_emc_probe(struct platform_device *pdev)
+{
+	int i;
+	unsigned long table_rate;
+	unsigned long current_rate;
+	struct clk *emc_clk;
+	struct device_node *np;
+	struct platform_device *mc;
+	struct resource res;
+	struct tegra_emc *emc;
+	void *table_addr;
+
+	emc_clk = devm_clk_get(&pdev->dev, "emc");
+	if (IS_ERR(emc_clk))
+		return PTR_ERR(emc_clk);
+	emc = clk_hw_to_emc(__clk_get_hw(emc_clk));
+
+	np = of_parse_phandle(pdev->dev.of_node, "nvidia,memory-controller", 0);
+	if (!np) {
+		dev_err(&pdev->dev, "could not get memory controller\n");
+		return -ENOENT;
+	}
+
+	mc = of_find_device_by_node(np);
+	of_node_put(np);
+	if (!mc)
+		return -ENOENT;
+
+	emc->mc = platform_get_drvdata(mc);
+	if (!emc->mc)
+		return -EPROBE_DEFER;
+
+	emc->emc_base[REG_EMC] = devm_platform_ioremap_resource(pdev, 0);
+	emc->emc_base[REG_EMC0] = devm_platform_ioremap_resource(pdev, 1);
+	emc->emc_base[REG_EMC1] = devm_platform_ioremap_resource(pdev, 2);
+
+	for (i = 0; i < TEGRA_EMC_SRC_COUNT; i++) {
+		if (!IS_ERR(emc_src[i]))
+			clk_put(emc_src[i]);
+
+		emc_src[i] = devm_clk_get(&pdev->dev, emc_src_names[i]);
+		if (IS_ERR(emc_src[i])) {
+			dev_err(&pdev->dev, "Can not find EMC source clock\n");
+			return -ENODATA;
+		}
+	}
+
+	np = of_parse_phandle(pdev->dev.of_node, "memory-region", 0);
+	if (!np) {
+		dev_err(&pdev->dev, "could not find EMC table\n");
+		return -ENODATA;
+	}
+
+	if (!of_device_is_compatible(np, "nvidia,tegra210-emc-table") ||
+	    !of_device_is_available(np)) {
+		dev_err(&pdev->dev, "EMC table is invalid\n");
+		return -ENODATA;
+	}
+
+	of_address_to_resource(np, 0, &res);
+	table_addr = memremap(res.start, resource_size(&res), MEMREMAP_WB);
+	of_node_put(np);
+	if (!table_addr) {
+		dev_err(&pdev->dev, "could not map EMC table\n");
+		return -ENOMEM;
+	}
+	emc->emc_table = (struct emc_table *)table_addr;
+
+	for (i = 0; i < TEGRA_EMC_MAX_FREQS; i++)
+		if (emc->emc_table[i].rev != 0)
+			emc->emc_table_size++;
+		else
+			break;
+
+	/* check the supported sequence */
+	while (seq->table_rev) {
+		if (seq->table_rev == emc->emc_table[0].rev)
+			break;
+		seq++;
+	}
+	if (!seq->set_clock) {
+		seq = NULL;
+		dev_err(&pdev->dev, "Invalid EMC sequence for table Rev. %d\n",
+			emc->emc_table[0].rev);
+		return -ENODATA;
+	}
+
+	emc_clk_sel = devm_kcalloc(&pdev->dev,
+				   emc->emc_table_size,
+				   sizeof(struct emc_sel),
+				   GFP_KERNEL);
+
+	/* calculate the rate from source clock */
+	current_rate = emc_get_src_clk_rate() / 1000;
+
+	/* validate the table */
+	for (i = 0; i < emc->emc_table_size; i++) {
+		table_rate = emc->emc_table[i].rate;
+		if (!table_rate)
+			continue;
+
+		if (i && ((table_rate <= emc->emc_table[i-1].rate) ||
+		   (emc->emc_table[i].min_volt <
+		    emc->emc_table[i-1].min_volt)))
+			continue;
+
+		if (emc->emc_table[i].rev != emc->emc_table[0].rev)
+			continue;
+
+		if (find_matching_input(&emc->emc_table[i], &emc_clk_sel[i]))
+			continue;
+
+		if (table_rate == current_rate)
+			emc->current_timing = &emc->emc_table[i];
+	}
+
+	emc->clk_setting = tegra210_clk_emc_get_setting();
+	emc->clkchange_delay = CLK_CHANGE_DELAY;
+	emc->timer_period_training = TRAINING_TIME;
+	emc->dev = &pdev->dev;
+	dev_set_drvdata(emc->dev, emc);
+
+	/* EMC training timer */
+	timer_setup(&emc->training_timer, emc_train_func, 0);
+
+#ifdef CONFIG_DEBUG_FS
+	tegra_emc_debug_init(emc);
+#endif
+
+	return 0;
+}
+
+struct clk *tegra210_clk_register_emc(void)
+{
+	struct clk_init_data init;
+	struct clk *clk;
+	struct tegra_emc *emc;
+	int i;
+
+	emc = kzalloc(sizeof(*emc), GFP_KERNEL);
+	if (!emc)
+		return ERR_PTR(-ENOMEM);
+
+	for (i = 0; i < TEGRA_EMC_SRC_COUNT; i++)
+		emc_src[i] = clk_get_sys(NULL, emc_src_names[i]);
+
+	init.name = "emc";
+	init.ops = &tegra_clk_emc_ops;
+	init.flags = CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE;
+	init.parent_names = emc_src_names;
+	init.num_parents = ARRAY_SIZE(emc_src_names);
+	emc->hw.init = &init;
+
+	clk = clk_register(NULL, &emc->hw);
+	if (IS_ERR(clk)) {
+		kfree(emc);
+		return clk;
+	}
+	emc->emc_clk = clk;
+
+	return clk;
+}
+EXPORT_SYMBOL_GPL(tegra210_clk_register_emc);
+
+#ifdef CONFIG_PM_SLEEP
+static int tegra210_emc_suspend(struct device *dev)
+{
+	struct tegra_emc *emc = dev_get_drvdata(dev);
+
+	emc->emc_suspend = true;
+	emc->emc_resume_rate = clk_get_rate(emc->emc_clk);
+	clk_set_rate(emc->emc_clk, TEGRA210_EMC_SUSPEND_RATE);
+
+	pr_debug("%s at rate %lu\n", __func__, clk_get_rate(emc->emc_clk));
+
+	return 0;
+}
+
+static int tegra210_emc_resume(struct device *dev)
+{
+	struct tegra_emc *emc = dev_get_drvdata(dev);
+
+	emc->emc_suspend = false;
+	clk_set_rate(emc->emc_clk, emc->emc_resume_rate);
+
+	pr_debug("%s at rate %lu\n", __func__, clk_get_rate(emc->emc_clk));
+
+	return 0;
+}
+#endif
+
+static const struct dev_pm_ops tegra210_emc_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(tegra210_emc_suspend, tegra210_emc_resume)
+};
+
+static const struct of_device_id tegra210_emc_of_match[] = {
+	{ .compatible = "nvidia,tegra210-emc", },
+	{ },
+};
+
+static struct platform_driver tegra210_emc_driver = {
+	.driver	= {
+		.name = "tegra210-emc",
+		.of_match_table = tegra210_emc_of_match,
+		.pm = &tegra210_emc_pm_ops,
+		.suppress_bind_attrs = true,
+	},
+	.probe = tegra210_emc_probe,
+};
+
+static int __init tegra210_emc_init(void)
+{
+	return platform_driver_register(&tegra210_emc_driver);
+}
+subsys_initcall(tegra210_emc_init);
diff --git a/drivers/memory/tegra/tegra210-emc.h b/drivers/memory/tegra/tegra210-emc.h
new file mode 100644
index 000000000000..029f8afb2d66
--- /dev/null
+++ b/drivers/memory/tegra/tegra210-emc.h
@@ -0,0 +1,156 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2015-2019, NVIDIA CORPORATION.  All rights reserved.
+ */
+
+#ifndef _TEGRA210_EMC_REG_H
+#define _TEGRA210_EMC_REG_H
+
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/platform_device.h>
+
+#include "mc.h"
+
+enum burst_mc_regs_list {
+	MC_EMEM_ARB_MISC0_INDEX = 20,
+};
+
+enum {
+	REG_EMC,
+	REG_EMC0,
+	REG_EMC1,
+	REG_TYPE_NUM,
+};
+
+enum {
+	C0D0U0,
+	C0D0U1,
+	C0D1U0,
+	C0D1U1,
+	C1D0U0,
+	C1D0U1,
+	C1D1U0,
+	C1D1U1,
+	DRAM_CLKTREE_NUM,
+};
+
+enum {
+	VREF_REGS_PER_CH_SIZE = 4,
+	DRAM_TIMINGS_NUM = 5,
+	BURST_REGS_PER_CH_SIZE = 8,
+	TRIM_REGS_PER_CH_SIZE = 10,
+	PTFV_ARRAY_SIZE = 12,
+	SAVE_RESTORE_MOD_REGS_SIZE = 12,
+	TRAINING_MOD_REGS_SIZE = 20,
+	BURST_UP_DOWN_REGS_SIZE = 24,
+	BURST_MC_REGS_SIZE = 33,
+	TRIM_REGS_SIZE = 138,
+	BURST_REGS_SIZE = 221,
+};
+
+struct emc_table {
+	u32 rev;
+	const char dvfs_ver[60];
+	u32 rate;
+	u32 min_volt;
+	u32 gpu_min_volt;
+	const char clock_src[32];
+	u32 clk_src_emc;
+	u32 needs_training;
+	u32 training_pattern;
+	u32 trained;
+
+	u32 periodic_training;
+	u32 trained_dram_clktree[DRAM_CLKTREE_NUM];
+	u32 current_dram_clktree[DRAM_CLKTREE_NUM];
+	u32 run_clocks;
+	u32 tree_margin;
+
+	u32 num_burst;
+	u32 num_burst_per_ch;
+	u32 num_trim;
+	u32 num_trim_per_ch;
+	u32 num_mc_regs;
+	u32 num_up_down;
+	u32 vref_num;
+	u32 training_mod_num;
+	u32 dram_timing_num;
+
+	u32 ptfv_list[PTFV_ARRAY_SIZE];
+
+	u32 burst_regs[BURST_REGS_SIZE];
+	u32 burst_reg_per_ch[BURST_REGS_PER_CH_SIZE];
+	u32 shadow_regs_ca_train[BURST_REGS_SIZE];
+	u32 shadow_regs_quse_train[BURST_REGS_SIZE];
+	u32 shadow_regs_rdwr_train[BURST_REGS_SIZE];
+
+	u32 trim_regs[TRIM_REGS_SIZE];
+	u32 trim_perch_regs[TRIM_REGS_PER_CH_SIZE];
+
+	u32 vref_perch_regs[VREF_REGS_PER_CH_SIZE];
+
+	u32 dram_timings[DRAM_TIMINGS_NUM];
+	u32 training_mod_regs[TRAINING_MOD_REGS_SIZE];
+	u32 save_restore_mod_regs[SAVE_RESTORE_MOD_REGS_SIZE];
+	u32 burst_mc_regs[BURST_MC_REGS_SIZE];
+	u32 la_scale_regs[BURST_UP_DOWN_REGS_SIZE];
+
+	u32 min_mrs_wait;
+	u32 emc_mrw;
+	u32 emc_mrw2;
+	u32 emc_mrw3;
+	u32 emc_mrw4;
+	u32 emc_mrw9;
+	u32 emc_mrs;
+	u32 emc_emrs;
+	u32 emc_emrs2;
+	u32 emc_auto_cal_config;
+	u32 emc_auto_cal_config2;
+	u32 emc_auto_cal_config3;
+	u32 emc_auto_cal_config4;
+	u32 emc_auto_cal_config5;
+	u32 emc_auto_cal_config6;
+	u32 emc_auto_cal_config7;
+	u32 emc_auto_cal_config8;
+	u32 emc_cfg_2;
+	u32 emc_sel_dpd_ctrl;
+	u32 emc_fdpd_ctrl_cmd_no_ramp;
+	u32 dll_clk_src;
+	u32 clk_out_enb_x_0_clk_enb_emc_dll;
+	u32 latency;
+};
+
+struct tegra_emc {
+	struct clk_hw hw;
+	struct clk *emc_clk;
+	struct device *dev;
+	struct timer_list training_timer;
+
+	struct tegra_mc *mc;
+
+	void __iomem *emc_base[REG_TYPE_NUM];
+
+	struct emc_table *current_timing;
+	struct emc_table *next_timing;
+
+	struct emc_table *emc_table;
+	unsigned int emc_table_size;
+
+	u32 clk_setting;
+	ktime_t clkchange_time;
+	int clkchange_delay;
+	u32 timer_period_training;
+
+	bool emc_suspend;
+	unsigned long emc_resume_rate;
+};
+
+struct supported_sequence {
+	u8 table_rev;
+	void (*set_clock)(struct tegra_emc *emc, u32 clksrc);
+	u32 (*periodic_compensation)(struct tegra_emc *emc);
+	char *seq_rev;
+};
+
+#endif
diff --git a/include/linux/clk/tegra.h b/include/linux/clk/tegra.h
index 5b0bdb413460..2ccb10eab4a8 100644
--- a/include/linux/clk/tegra.h
+++ b/include/linux/clk/tegra.h
@@ -146,4 +146,27 @@ void tegra20_clk_set_emc_round_callback(tegra20_clk_emc_round_cb *round_cb,
 					void *cb_arg);
 int tegra20_clk_prepare_emc_mc_same_freq(struct clk *emc_clk, bool same);
 
+struct tegra210_clk_emc_config {
+	unsigned long rate;
+	bool same_freq;
+	u32 value;
+
+	unsigned long parent_rate;
+	u8 parent;
+};
+
+struct tegra210_clk_emc_provider {
+	struct device *dev;
+
+	struct tegra210_clk_emc_config *configs;
+	unsigned int num_configs;
+
+	int (*set_rate)(struct device *dev,
+			const struct tegra210_clk_emc_config *config);
+};
+
+int tegra210_clk_emc_attach(struct clk *clk,
+			    struct tegra210_clk_emc_provider *provider);
+void tegra210_clk_emc_detach(struct clk *clk);
+
 #endif /* __LINUX_CLK_TEGRA_H_ */
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
