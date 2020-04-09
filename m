Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 508111A3961
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 19:55:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AML4bSA9ZGk6Pf3r2aSTkcmvM4NJgLkzG5CrFLezzM0=; b=amsDYBSZr3UjSg
	p/G8hgqJoHaRT4XVBolB90pD4GIqHE7IkX48f5JBXi31XdWBrd/qJqT+tdu3ZxpyPChiLnBqiRPZA
	FJ1Y1OgYhtIp6hvleQcswiuDOGjZq/de2N/4FUwGVy1zy57+QpDJnHufND95vHqI7l+NWMFnlWbuP
	6ZdKNb0BVmVnnUlvLtndRaLqt+wCzR+5po07coY/8NGrDOGTRWwE3eO/UKqZ3UY1HemhqSwl4R5iT
	RsdqgE21DYOVSFosSigRsKu+g7b3Qckx4RQIZQz3DxRP86WSSfzw43LUcQifLsRk4MwaVsh1T20cZ
	yV4HRCowN6HzBzpOU3tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMbO4-0007ZW-FC; Thu, 09 Apr 2020 17:54:48 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMbMJ-0005xr-Mf
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 17:53:02 +0000
Received: by mail-wm1-x344.google.com with SMTP id e26so636818wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 10:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NEDwbsckrrOPe3AnBuyakAL8Hh4mylutNFt9/NM5Vbo=;
 b=jLD/f13Sagqm+zAsegj4FEfOljkm9G1VyRpyWdOfcULyPrMoEDULr/DP87dM2piueW
 TfrpLA55yfUoCEkl64mA/X2ZL628dgx1iRwfVIsuV2ZI+rz4oD8WdraInRp9Vy9CY/uV
 e+fD8DO5tpOuTIPyH6bnAiB6tOxsw6LOZcql85mBySfGTPB8vierjYr1BJabT0h0jgz0
 CIb42r/l/oZowa84hdEP0uCG4tBEWQu55KnAbJL70QqzyP3xCKI5bRe3NnwMuqNg9AMh
 PvPcsQ/RAfO4X0lCu+aMpZaj2fBYIKNyXLtzfG7bdymqkw/e12Ap4QOMVVj0zR8u151r
 G1WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NEDwbsckrrOPe3AnBuyakAL8Hh4mylutNFt9/NM5Vbo=;
 b=szDNxVAyP5caBbICN+Pp49/yN44yoXdZJ8gDvPfKa30MXSqdAGIyuuvotcTMOgG1Tz
 UQ5Pd9xvi1uah0WFo74jgvvdkZ1QhK8VvYKT9jxLT3F1pK05lgtKb1Lwaj7qk3fNblqe
 2f/wQ8PJfz8N33+2BWPbxd7DkgLoaU2yPIL3EaVhPoCC9s67kg6wi/tbGtIx++ZhYuKx
 Q8mSRyX6xiZH0Ot4TQ0pPWyIZxlm7mFUGZ2W9lmKC33YwIImSzCxpQzKWW61Oo0JMGhb
 6yK/H0c3nwYWT8sPNGYvkeYoMbOd1T8m4Y1iZE1b3WYhbt3QmEqSGvceee/6R2Ss9dNJ
 yz4g==
X-Gm-Message-State: AGi0PuYk9RHlGMEiq1LQibWS7vcxZXl7v5XK8+/y70MpyoHnY+q+s+7K
 dEANK9He68EX4cBbm0jOphY=
X-Google-Smtp-Source: APiQypIjRr1SjXP2hm6oKBfLZNPmBxt6TCP/12rplqWdSUJRi94xMt54abiAoWTTEnMjV+evp9Lbzg==
X-Received: by 2002:a1c:9dd1:: with SMTP id g200mr1106704wme.82.1586454778133; 
 Thu, 09 Apr 2020 10:52:58 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id w5sm4148477wrp.30.2020.04.09.10.52.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 10:52:57 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 07/14] clk: tegra: Implement Tegra210 EMC clock
Date: Thu,  9 Apr 2020 19:52:31 +0200
Message-Id: <20200409175238.3586487-8-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409175238.3586487-1-thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_105259_791400_067E2283 
X-CRM114-Status: GOOD (  25.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
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
Changes in v6:
- work around CCF assumptions on parent clock and rate in driver rather
  than rely on core to handle it
- maintain reference to EMC provider's module
- move EMC driver hunks to later patch
- use macros from linux/bitfield.h

Changes in v5:
- major rework and cleanup

 drivers/clk/tegra/Makefile           |   1 +
 drivers/clk/tegra/clk-tegra210-emc.c | 369 +++++++++++++++++++++++++++
 drivers/clk/tegra/clk.h              |   3 +
 include/linux/clk/tegra.h            |  24 ++
 4 files changed, 397 insertions(+)
 create mode 100644 drivers/clk/tegra/clk-tegra210-emc.c

diff --git a/drivers/clk/tegra/Makefile b/drivers/clk/tegra/Makefile
index dec508ef2ada..fc369a5d21dc 100644
--- a/drivers/clk/tegra/Makefile
+++ b/drivers/clk/tegra/Makefile
@@ -25,5 +25,6 @@ obj-$(CONFIG_TEGRA_CLK_EMC)		+= clk-tegra124-emc.o
 obj-$(CONFIG_ARCH_TEGRA_132_SOC)	+= clk-tegra124.o
 obj-y					+= cvb.o
 obj-$(CONFIG_ARCH_TEGRA_210_SOC)	+= clk-tegra210.o
+obj-$(CONFIG_ARCH_TEGRA_210_SOC)	+= clk-tegra210-emc.o
 obj-$(CONFIG_CLK_TEGRA_BPMP)		+= clk-bpmp.o
 obj-y					+= clk-utils.o
diff --git a/drivers/clk/tegra/clk-tegra210-emc.c b/drivers/clk/tegra/clk-tegra210-emc.c
new file mode 100644
index 000000000000..352a2c3fc374
--- /dev/null
+++ b/drivers/clk/tegra/clk-tegra210-emc.c
@@ -0,0 +1,369 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2015-2020, NVIDIA CORPORATION.  All rights reserved.
+ */
+
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/clk/tegra.h>
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/io.h>
+#include <linux/slab.h>
+
+#define CLK_SOURCE_EMC 0x19c
+#define  CLK_SOURCE_EMC_2X_CLK_SRC GENMASK(31, 29)
+#define  CLK_SOURCE_EMC_MC_EMC_SAME_FREQ BIT(16)
+#define  CLK_SOURCE_EMC_2X_CLK_DIVISOR GENMASK(7, 0)
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
+	src = FIELD_GET(CLK_SOURCE_EMC_2X_CLK_SRC, value);
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
+	/*
+	 * CCF assumes that neither the parent nor its rate will change during
+	 * ->set_rate(), so the parent rate passed in here was cached from the
+	 * parent before the ->set_rate() call.
+	 *
+	 * This can lead to wrong results being reported for the EMC clock if
+	 * the parent and/or parent rate have changed as part of the EMC rate
+	 * change sequence. Fix this by overriding the parent clock with what
+	 * we know to be the correct value after the rate change.
+	 */
+	parent_rate = clk_hw_get_rate(clk_hw_get_parent(hw));
+
+	value = readl_relaxed(emc->regs + CLK_SOURCE_EMC);
+
+	div = FIELD_GET(CLK_SOURCE_EMC_2X_CLK_DIVISOR, value);
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
+	new_idx = FIELD_GET(CLK_SOURCE_EMC_2X_CLK_SRC, config->value);
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
+	config->value &= ~CLK_SOURCE_EMC_2X_CLK_SRC;
+	config->value |= FIELD_PREP(CLK_SOURCE_EMC_2X_CLK_SRC, index);
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
+	int err;
+
+	if (!try_module_get(provider->owner))
+		return -ENODEV;
+
+	for (i = 0; i < provider->num_configs; i++) {
+		struct tegra210_clk_emc_config *config = &provider->configs[i];
+		struct clk_hw *parent;
+		bool same_freq;
+		u8 div, src;
+
+		div = FIELD_GET(CLK_SOURCE_EMC_2X_CLK_DIVISOR, config->value);
+		src = FIELD_GET(CLK_SOURCE_EMC_2X_CLK_SRC, config->value);
+
+		/* do basic sanity checking on the EMC timings */
+		if (div & 0x1) {
+			dev_err(dev, "invalid odd divider %u for rate %lu Hz\n",
+				div, config->rate);
+			err = -EINVAL;
+			goto put;
+		}
+
+		same_freq = config->value & CLK_SOURCE_EMC_MC_EMC_SAME_FREQ;
+
+		if (same_freq != config->same_freq) {
+			dev_err(dev,
+				"ambiguous EMC to MC ratio for rate %lu Hz\n",
+				config->rate);
+			err = -EINVAL;
+			goto put;
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
+				err = -EINVAL;
+				goto put;
+			}
+		}
+	}
+
+	emc->provider = provider;
+
+	return 0;
+
+put:
+	module_put(provider->owner);
+	return err;
+}
+EXPORT_SYMBOL_GPL(tegra210_clk_emc_attach);
+
+void tegra210_clk_emc_detach(struct clk *clk)
+{
+	struct tegra210_clk_emc *emc = to_tegra210_clk_emc(__clk_get_hw(clk));
+
+	module_put(emc->provider->owner);
+	emc->provider = NULL;
+}
+EXPORT_SYMBOL_GPL(tegra210_clk_emc_detach);
diff --git a/drivers/clk/tegra/clk.h b/drivers/clk/tegra/clk.h
index 2c9a68302e02..b87e90569314 100644
--- a/drivers/clk/tegra/clk.h
+++ b/drivers/clk/tegra/clk.h
@@ -907,4 +907,7 @@ void tegra_clk_periph_resume(void);
 bool tegra20_clk_emc_driver_available(struct clk_hw *emc_hw);
 struct clk *tegra20_clk_register_emc(void __iomem *ioaddr, bool low_jitter);
 
+struct clk *tegra210_clk_register_emc(struct device_node *np,
+				      void __iomem *regs);
+
 #endif /* TEGRA_CLK_H */
diff --git a/include/linux/clk/tegra.h b/include/linux/clk/tegra.h
index 5b0bdb413460..3f01d43f0598 100644
--- a/include/linux/clk/tegra.h
+++ b/include/linux/clk/tegra.h
@@ -146,4 +146,28 @@ void tegra20_clk_set_emc_round_callback(tegra20_clk_emc_round_cb *round_cb,
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
+	struct module *owner;
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
