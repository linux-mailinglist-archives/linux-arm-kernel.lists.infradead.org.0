Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B45781A3964
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 19:56:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3cfyOXvH55iCTYM2JFcyWzZxLRDhWMbBZP01ivjwWAI=; b=kGpPa8NmnGhAO7
	9NB3AXVn0wadGE3yaB+O7TgbpjzhiWRPF7NcXVUZZUbgFoP7u5TEKi7Z+Nr9h0dh52muKfVYKWiOb
	w98JlkmR2px5pSf0y1hWdPzlrG0CkimL39ceJP1668ThisFwRg1geJ09AZg2XhVyUMVWsP5nu7+qQ
	xRYgjLEmyaeJjtgye/gFKkBiqkAuCo0ObdLGrbEnrR475SReHeBXXObXZZAyJCUGwOco7fneQd9tU
	pmKo3m1YBt+B5WRz3aMLSL2EAiQsQz4neLf6Zf5A7CYTDHKV+fJ0UCWuudeRZ/HN7Ak6vwcr3Qd8O
	oZhrOj+fP2HlAhfIB11g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMbP5-0002PU-1c; Thu, 09 Apr 2020 17:55:51 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMbMU-00066i-6u
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 17:53:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id x25so672975wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 10:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T5hgLied9FzP2bZTOf9sWs+N0Mn9oQez9MLOU6WspLk=;
 b=Yu+C1X8bQfem8T1AIXT/0Owf09pTknF8P5Q5LeYkXrsOtpGYMyg/NHhdJ5ACRQyZP3
 Cm4xt80kraJRtzNbeRHB/jxLQy903OBId75/DJdcjHy0Ri3tOF0xyq7VTO5HWF6OyY35
 /ojgbZbWxeh/yQesGDZeRBWYp7Uw7NozEkqLa9ulW3YjOuFc5Z6NLUHLg/ZHlyWnHAqQ
 T/Ece33c71bsYo1X3AMNSxqkKI2yGa1ZgjFAWs2aIAqzRmR56FI0vD4ZU8NIFyXC8XVD
 r67Mpqb+IZZS9oyKZEtML6n3z7U/K3pA4iw83cxYrGvyxX9f7sbDKEPId6kv0EVu3KKV
 HeQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T5hgLied9FzP2bZTOf9sWs+N0Mn9oQez9MLOU6WspLk=;
 b=omlLiEi1+Kb3zKhnTshdBFreFr0uvTRfD45CL0odmXFr11rHkY3FT/hNSrIWQ9ZMXU
 MkLwjtKqv62xvcPLD9Dk9i0QZNEKrI1dGujbobg13jC1ES16aLrx4bUqDT0QkX81lwNb
 8DZNjDgOwvUC3x/zBwuF+Sni6RV81rQXnErePzNOSDv9XjC6mOZxKUZQLuaDtll22lva
 ceu1YAuyE/IHcTzNtSE4o0XblqcH2PWjXRqfN20O2gqXzrDXlgZnBWyPHIqtHFG2fxeT
 BMDMgivfo7ZmfbrivFU8gz9MRd0RQ3xNPvoKaeBn9MbVpmwtPMdWqRhkyUUnmwQw0WD+
 bSAw==
X-Gm-Message-State: AGi0PuZmKyggulF8eyrUgYpwcfV5JZ6cT52dZiv32QDLrin9lT1ixyCX
 WUKDmwfGIIY8TW2o5CWOqk0=
X-Google-Smtp-Source: APiQypJraNOURKTzLYupkEnKuLwwZSpcMfxKl4BVWOrr++lETcxUGEWkeiw9N3Zl1mPbnfBKEwLETA==
X-Received: by 2002:a1c:4d18:: with SMTP id o24mr918957wmh.141.1586454787238; 
 Thu, 09 Apr 2020 10:53:07 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id k23sm3957829wmi.46.2020.04.09.10.53.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 10:53:06 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 11/14] memory: tegra: Support derated timings on Tegra210
Date: Thu,  9 Apr 2020 19:52:35 +0200
Message-Id: <20200409175238.3586487-12-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409175238.3586487-1-thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_105310_599514_B2B3F201 
X-CRM114-Status: GOOD (  21.86  )
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

From: Thierry Reding <treding@nvidia.com>

Derated timings are used to ensure that the memory chips keep operating
correctly at high temperatures. This adds code to support polling of the
chip operating state when high temperatures are measured on the chip and
change the refresh mode accordingly. Under very high temperatures, the
driver will switch to the derated tables to ensure proper operation of
the memory chips.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
Changes in v6:
- new patch

 drivers/memory/tegra/tegra210-emc-cc-r21021.c |   2 +-
 drivers/memory/tegra/tegra210-emc-core.c      | 283 ++++++++++++++++--
 drivers/memory/tegra/tegra210-emc-table.c     |  45 ++-
 drivers/memory/tegra/tegra210-emc.h           |  35 ++-
 4 files changed, 333 insertions(+), 32 deletions(-)

diff --git a/drivers/memory/tegra/tegra210-emc-cc-r21021.c b/drivers/memory/tegra/tegra210-emc-cc-r21021.c
index 048cf2102eaa..8487b402f8bf 100644
--- a/drivers/memory/tegra/tegra210-emc-cc-r21021.c
+++ b/drivers/memory/tegra/tegra210-emc-cc-r21021.c
@@ -1061,7 +1061,7 @@ static void tegra210_emc_r21021_set_clock(struct tegra210_emc *emc, u32 clksrc)
 	}
 
 	/* SW addition: do EMC refresh adjustment here. */
-	tegra210_emc_set_over_temp_timing(emc, next);
+	tegra210_emc_adjust_timing(emc, next);
 
 	if (dram_type == DRAM_TYPE_LPDDR4) {
 		mrw_req = (23 << EMC_MRW_MRW_MA_SHIFT) |
diff --git a/drivers/memory/tegra/tegra210-emc-core.c b/drivers/memory/tegra/tegra210-emc-core.c
index 080209bffe64..3490dec7ad5e 100644
--- a/drivers/memory/tegra/tegra210-emc-core.c
+++ b/drivers/memory/tegra/tegra210-emc-core.c
@@ -3,6 +3,7 @@
  * Copyright (c) 2015-2020, NVIDIA CORPORATION.  All rights reserved.
  */
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/clk/tegra.h>
 #include <linux/clk-provider.h>
@@ -14,6 +15,7 @@
 #include <linux/of_platform.h>
 #include <linux/of_reserved_mem.h>
 #include <linux/slab.h>
+#include <linux/thermal.h>
 #include <soc/tegra/fuse.h>
 #include <soc/tegra/mc.h>
 
@@ -26,6 +28,7 @@
 	(0x7 << EMC_CLK_EMC_2X_CLK_SRC_SHIFT)
 #define EMC_CLK_SOURCE_PLLM_LJ				0x4
 #define EMC_CLK_SOURCE_PLLMB_LJ				0x5
+#define EMC_CLK_FORCE_CC_TRIGGER			BIT(27)
 #define EMC_CLK_MC_EMC_SAME_FREQ			BIT(16)
 #define EMC_CLK_EMC_2X_CLK_DIVISOR_SHIFT		0
 #define EMC_CLK_EMC_2X_CLK_DIVISOR_MASK			\
@@ -81,6 +84,8 @@
 #define REFRESH_SPEEDUP(value, speedup) \
 		(((value) & 0xffff0000) | ((value) & 0xffff) * (speedup))
 
+#define LPDDR2_MR4_SRR GENMASK(2, 0)
+
 static const struct tegra210_emc_sequence *tegra210_emc_sequences[] = {
 	&tegra210_emc_r21021,
 };
@@ -580,6 +585,137 @@ static void tegra210_emc_training_stop(struct tegra210_emc *emc)
 	del_timer(&emc->training);
 }
 
+static unsigned int tegra210_emc_get_temperature(struct tegra210_emc *emc)
+{
+	unsigned long flags;
+	u32 value, max = 0;
+	unsigned int i;
+
+	spin_lock_irqsave(&emc->lock, flags);
+
+	for (i = 0; i < emc->num_devices; i++) {
+		value = tegra210_emc_mrr_read(emc, i, 4);
+
+		if (value & BIT(7))
+			dev_dbg(emc->dev,
+				"sensor reading changed for device %u: %08x\n",
+				i, value);
+
+		value = FIELD_GET(LPDDR2_MR4_SRR, value);
+		if (value > max)
+			max = value;
+	}
+
+	spin_unlock_irqrestore(&emc->lock, flags);
+
+	return max;
+}
+
+static void tegra210_emc_poll_refresh(struct timer_list *timer)
+{
+	struct tegra210_emc *emc = from_timer(emc, timer, refresh_timer);
+	unsigned int temperature;
+
+	if (!emc->debugfs.temperature)
+		temperature = tegra210_emc_get_temperature(emc);
+	else
+		temperature = emc->debugfs.temperature;
+
+	if (temperature == emc->temperature)
+		goto reset;
+
+	switch (temperature) {
+	case 0 ... 3:
+		/* temperature is fine, using regular refresh */
+		dev_dbg(emc->dev, "switching to nominal refresh...\n");
+		tegra210_emc_set_refresh(emc, TEGRA210_EMC_REFRESH_NOMINAL);
+		break;
+
+	case 4:
+		dev_dbg(emc->dev, "switching to 2x refresh...\n");
+		tegra210_emc_set_refresh(emc, TEGRA210_EMC_REFRESH_2X);
+		break;
+
+	case 5:
+		dev_dbg(emc->dev, "switching to 4x refresh...\n");
+		tegra210_emc_set_refresh(emc, TEGRA210_EMC_REFRESH_4X);
+		break;
+
+	case 6 ... 7:
+		dev_dbg(emc->dev, "switching to throttle refresh...\n");
+		tegra210_emc_set_refresh(emc, TEGRA210_EMC_REFRESH_THROTTLE);
+		break;
+
+	default:
+		WARN(1, "invalid DRAM temperature state %u\n", temperature);
+		return;
+	}
+
+	emc->temperature = temperature;
+
+reset:
+	if (atomic_read(&emc->refresh_poll) > 0) {
+		unsigned int interval = emc->refresh_poll_interval;
+		unsigned int timeout = msecs_to_jiffies(interval);
+
+		mod_timer(&emc->refresh_timer, jiffies + timeout);
+	}
+}
+
+static void tegra210_emc_poll_refresh_stop(struct tegra210_emc *emc)
+{
+	atomic_set(&emc->refresh_poll, 0);
+	del_timer_sync(&emc->refresh_timer);
+}
+
+static void tegra210_emc_poll_refresh_start(struct tegra210_emc *emc)
+{
+	atomic_set(&emc->refresh_poll, 1);
+
+	mod_timer(&emc->refresh_timer,
+		  jiffies + msecs_to_jiffies(emc->refresh_poll_interval));
+}
+
+static int tegra210_emc_cd_max_state(struct thermal_cooling_device *cd,
+				     unsigned long *state)
+{
+	*state = 1;
+
+	return 0;
+}
+
+static int tegra210_emc_cd_get_state(struct thermal_cooling_device *cd,
+				     unsigned long *state)
+{
+	struct tegra210_emc *emc = cd->devdata;
+
+	*state = atomic_read(&emc->refresh_poll);
+
+	return 0;
+}
+
+static int tegra210_emc_cd_set_state(struct thermal_cooling_device *cd,
+				     unsigned long state)
+{
+	struct tegra210_emc *emc = cd->devdata;
+
+	if (state == atomic_read(&emc->refresh_poll))
+		return 0;
+
+	if (state)
+		tegra210_emc_poll_refresh_start(emc);
+	else
+		tegra210_emc_poll_refresh_stop(emc);
+
+	return 0;
+}
+
+static struct thermal_cooling_device_ops tegra210_emc_cd_ops = {
+	.get_max_state = tegra210_emc_cd_max_state,
+	.get_cur_state = tegra210_emc_cd_get_state,
+	.set_cur_state = tegra210_emc_cd_set_state,
+};
+
 static void tegra210_emc_set_clock(struct tegra210_emc *emc, u32 clksrc)
 {
 	emc->sequence->set_clock(emc, clksrc);
@@ -626,6 +762,54 @@ static void tegra210_change_dll_src(struct tegra210_emc *emc,
 		tegra210_clk_emc_dll_enable(false);
 }
 
+int tegra210_emc_set_refresh(struct tegra210_emc *emc,
+			     enum tegra210_emc_refresh refresh)
+{
+	struct tegra210_emc_timing *timings;
+	unsigned long flags;
+
+	if ((emc->dram_type != DRAM_TYPE_LPDDR2 &&
+	     emc->dram_type != DRAM_TYPE_LPDDR4) ||
+	    !emc->last)
+		return -ENODEV;
+
+	if (refresh > TEGRA210_EMC_REFRESH_THROTTLE)
+		return -EINVAL;
+
+	if (refresh == emc->refresh)
+		return 0;
+
+	spin_lock_irqsave(&emc->lock, flags);
+
+	if (refresh == TEGRA210_EMC_REFRESH_THROTTLE && emc->derated)
+		timings = emc->derated;
+	else
+		timings = emc->nominal;
+
+	if (timings != emc->timings) {
+		unsigned int index = emc->last - emc->timings;
+		u32 clksrc;
+
+		clksrc = emc->provider.configs[index].value |
+			 EMC_CLK_FORCE_CC_TRIGGER;
+
+		emc->next = &timings[index];
+		emc->timings = timings;
+
+		tegra210_emc_set_clock(emc, clksrc);
+	} else {
+		tegra210_emc_adjust_timing(emc, emc->last);
+		tegra210_emc_timing_update(emc);
+
+		if (refresh != TEGRA210_EMC_REFRESH_NOMINAL)
+			emc_writel(emc, EMC_REF_REF_CMD, EMC_REF);
+	}
+
+	spin_unlock_irqrestore(&emc->lock, flags);
+
+	return 0;
+}
+
 u32 tegra210_emc_mrr_read(struct tegra210_emc *emc, unsigned int chip,
 			  unsigned int address)
 {
@@ -1304,33 +1488,32 @@ void tegra210_emc_dll_enable(struct tegra210_emc *emc)
 	update_dll_control(emc, value, true);
 }
 
-void tegra210_emc_set_over_temp_timing(struct tegra210_emc *emc,
-				       struct tegra210_emc_timing *timing)
+void tegra210_emc_adjust_timing(struct tegra210_emc *emc,
+				struct tegra210_emc_timing *timing)
 {
 	u32 dsr_cntrl = timing->burst_regs[EMC_DYN_SELF_REF_CONTROL_INDEX];
 	u32 pre_ref = timing->burst_regs[EMC_PRE_REFRESH_REQ_CNT_INDEX];
 	u32 ref = timing->burst_regs[EMC_REFRESH_INDEX];
 
-	switch (emc->state) {
-	case TEGRA210_EMC_DRAM_OVER_TEMP_NONE:
-	case TEGRA210_EMC_DRAM_OVER_TEMP_THROTTLE:
+	switch (emc->refresh) {
+	case TEGRA210_EMC_REFRESH_NOMINAL:
+	case TEGRA210_EMC_REFRESH_THROTTLE:
 		break;
 
-	case TEGRA210_EMC_DRAM_OVER_TEMP_REFRESH_X2:
+	case TEGRA210_EMC_REFRESH_2X:
 		ref = REFRESH_SPEEDUP(ref, 2);
 		pre_ref = REFRESH_SPEEDUP(pre_ref, 2);
 		dsr_cntrl = REFRESH_SPEEDUP(dsr_cntrl, 2);
 		break;
 
-	case TEGRA210_EMC_DRAM_OVER_TEMP_REFRESH_X4:
+	case TEGRA210_EMC_REFRESH_4X:
 		ref = REFRESH_SPEEDUP(ref, 4);
 		pre_ref = REFRESH_SPEEDUP(pre_ref, 4);
 		dsr_cntrl = REFRESH_SPEEDUP(dsr_cntrl, 4);
 		break;
 
 	default:
-		dev_warn(emc->dev, "failed to set over temperature state: %d\n",
-			 emc->state);
+		dev_warn(emc->dev, "failed to set refresh: %d\n", emc->refresh);
 		return;
 	}
 
@@ -1512,6 +1695,37 @@ DEFINE_SIMPLE_ATTRIBUTE(tegra210_emc_debug_max_rate_fops,
 			tegra210_emc_debug_max_rate_get,
 			tegra210_emc_debug_max_rate_set, "%llu\n");
 
+static int tegra210_emc_debug_temperature_get(void *data, u64 *temperature)
+{
+	struct tegra210_emc *emc = data;
+	unsigned int value;
+
+	if (!emc->debugfs.temperature)
+		value = tegra210_emc_get_temperature(emc);
+	else
+		value = emc->debugfs.temperature;
+
+	*temperature = value;
+
+	return 0;
+}
+
+static int tegra210_emc_debug_temperature_set(void *data, u64 temperature)
+{
+	struct tegra210_emc *emc = data;
+
+	if (temperature > 7)
+		return -EINVAL;
+
+	emc->debugfs.temperature = temperature;
+
+	return 0;
+}
+
+DEFINE_SIMPLE_ATTRIBUTE(tegra210_emc_debug_temperature_fops,
+			tegra210_emc_debug_temperature_get,
+			tegra210_emc_debug_temperature_set, "%llu\n");
+
 static void tegra210_emc_debugfs_init(struct tegra210_emc *emc)
 {
 	struct device *dev = emc->dev;
@@ -1555,6 +1769,8 @@ static void tegra210_emc_debugfs_init(struct tegra210_emc *emc)
 			    emc, &tegra210_emc_debug_min_rate_fops);
 	debugfs_create_file("max_rate", S_IRUGO | S_IWUSR, emc->debugfs.root,
 			    emc, &tegra210_emc_debug_max_rate_fops);
+	debugfs_create_file("temperature", 0644, emc->debugfs.root, emc,
+			    &tegra210_emc_debug_temperature_fops);
 }
 
 static void tegra210_emc_detect(struct tegra210_emc *emc)
@@ -1609,6 +1825,7 @@ static int tegra210_emc_validate_timings(struct tegra210_emc *emc,
 
 static int tegra210_emc_probe(struct platform_device *pdev)
 {
+	struct thermal_cooling_device *cd;
 	unsigned long current_rate;
 	struct platform_device *mc;
 	struct tegra210_emc *emc;
@@ -1662,17 +1879,36 @@ static int tegra210_emc_probe(struct platform_device *pdev)
 	tegra210_emc_detect(emc);
 	np = pdev->dev.of_node;
 
-	err = of_reserved_mem_device_init(emc->dev);
+	/* attach to the nominal and (optional) derated tables */
+	err = of_reserved_mem_device_init_by_name(emc->dev, np, "nominal");
 	if (err < 0) {
-		dev_err(&pdev->dev, "failed to get EMC table: %d\n", err);
+		dev_err(emc->dev, "failed to get nominal EMC table: %d\n", err);
 		goto put_mc;
 	}
 
-	/* validate the tables */
-	err = tegra210_emc_validate_timings(emc, emc->timings,
-					    emc->num_timings);
-	if (err < 0)
+	err = of_reserved_mem_device_init_by_name(emc->dev, np, "derated");
+	if (err < 0 && err != -ENODEV) {
+		dev_err(emc->dev, "failed to get derated EMC table: %d\n", err);
 		goto release;
+	}
+
+	/* validate the tables */
+	if (emc->nominal) {
+		err = tegra210_emc_validate_timings(emc, emc->nominal,
+						    emc->num_timings);
+		if (err < 0)
+			goto release;
+	}
+
+	if (emc->derated) {
+		err = tegra210_emc_validate_timings(emc, emc->derated,
+						    emc->num_timings);
+		if (err < 0)
+			goto release;
+	}
+
+	/* default to the nominal table */
+	emc->timings = emc->nominal;
 
 	/* pick the current timing based on the current EMC clock rate */
 	current_rate = clk_get_rate(emc->clk) / 1000;
@@ -1710,7 +1946,7 @@ static int tegra210_emc_probe(struct platform_device *pdev)
 	}
 
 	emc->offsets = &tegra210_emc_table_register_offsets;
-	emc->state = TEGRA210_EMC_DRAM_OVER_TEMP_NONE;
+	emc->refresh = TEGRA210_EMC_REFRESH_NOMINAL;
 
 	emc->provider.owner = THIS_MODULE;
 	emc->provider.dev = &pdev->dev;
@@ -1753,11 +1989,24 @@ static int tegra210_emc_probe(struct platform_device *pdev)
 	emc->training_interval = 100;
 	dev_set_drvdata(emc->dev, emc);
 
-	/* EMC training timer */
+	timer_setup(&emc->refresh_timer, tegra210_emc_poll_refresh,
+		    TIMER_DEFERRABLE);
+	atomic_set(&emc->refresh_poll, 0);
+	emc->refresh_poll_interval = 1000;
+
 	timer_setup(&emc->training, tegra210_emc_train, 0);
 
 	tegra210_emc_debugfs_init(emc);
 
+	cd = devm_thermal_of_cooling_device_register(emc->dev, np, "emc", emc,
+						     &tegra210_emc_cd_ops);
+	if (IS_ERR(cd)) {
+		err = PTR_ERR(cd);
+		dev_err(emc->dev, "failed to register cooling device: %d\n",
+			err);
+		goto detach;
+	}
+
 	return 0;
 
 detach:
diff --git a/drivers/memory/tegra/tegra210-emc-table.c b/drivers/memory/tegra/tegra210-emc-table.c
index 5e545d26207c..124d7d1d8818 100644
--- a/drivers/memory/tegra/tegra210-emc-table.c
+++ b/drivers/memory/tegra/tegra210-emc-table.c
@@ -13,7 +13,8 @@ static int tegra210_emc_table_device_init(struct reserved_mem *rmem,
 					  struct device *dev)
 {
 	struct tegra210_emc *emc = dev_get_drvdata(dev);
-	unsigned int i;
+	struct tegra210_emc_timing *timings;
+	unsigned int i, count = 0;
 	void *table;
 
 	table = memremap(rmem->base, rmem->size, MEMREMAP_WB);
@@ -22,16 +23,40 @@ static int tegra210_emc_table_device_init(struct reserved_mem *rmem,
 		return -ENOMEM;
 	}
 
-	emc->timings = (struct tegra210_emc_timing *)table;
-	emc->num_timings = 0;
+	timings = (struct tegra210_emc_timing *)table;
+	count = 0;
 
 	for (i = 0; i < TEGRA_EMC_MAX_FREQS; i++) {
-		if (emc->timings[i].revision == 0)
+		if (timings[i].revision == 0)
 			break;
 
-		emc->num_timings++;
+		count++;
 	}
 
+	/* only the nominal and derated tables are expected */
+	if (emc->derated) {
+		dev_warn(dev, "excess EMC table '%s'\n", rmem->name);
+		goto out;
+	}
+
+	if (emc->nominal) {
+		if (count != emc->num_timings) {
+			dev_warn(dev, "%u derated vs. %u nominal entries\n",
+				 count, emc->num_timings);
+			memunmap(timings);
+			return -EINVAL;
+		}
+
+		emc->derated = timings;
+	} else {
+		emc->num_timings = count;
+		emc->nominal = timings;
+	}
+
+out:
+	/* keep track of which table this is */
+	rmem->priv = timings;
+
 	return 0;
 }
 
@@ -39,8 +64,16 @@ static void tegra210_emc_table_device_release(struct reserved_mem *rmem,
 					      struct device *dev)
 {
 	struct tegra210_emc *emc = dev_get_drvdata(dev);
+	struct tegra210_emc_timing *timings;
+
+	timings = rmem->priv;
+
+	if ((emc->nominal && timings != emc->nominal) &&
+	    (emc->derated && timings != emc->derated))
+		dev_warn(dev, "trying to release unassigned EMC table '%s'\n",
+			 rmem->name);
 
-	memunmap(emc->timings);
+	memunmap(timings);
 }
 
 static const struct reserved_mem_ops tegra210_emc_table_ops = {
diff --git a/drivers/memory/tegra/tegra210-emc.h b/drivers/memory/tegra/tegra210-emc.h
index 7e2fdee44c8d..59fba3085f62 100644
--- a/drivers/memory/tegra/tegra210-emc.h
+++ b/drivers/memory/tegra/tegra210-emc.h
@@ -82,6 +82,7 @@
 #define EMC_EMRS						0xd0
 #define EMC_EMRS_USE_EMRS_LONG_CNT				BIT(26)
 #define EMC_REF							0xd4
+#define  EMC_REF_REF_CMD					BIT(0)
 #define EMC_SELF_REF						0xe0
 #define EMC_MRW							0xe8
 #define EMC_MRW_MRW_OP_SHIFT					0
@@ -877,18 +878,29 @@ struct tegra210_emc_timing {
 	u32 latency;
 };
 
-enum tegra210_emc_dram_over_temp_state {
-	TEGRA210_EMC_DRAM_OVER_TEMP_NONE = 0,
-	TEGRA210_EMC_DRAM_OVER_TEMP_REFRESH_X2,
-	TEGRA210_EMC_DRAM_OVER_TEMP_REFRESH_X4,
-	TEGRA210_EMC_DRAM_OVER_TEMP_THROTTLE, /* 4x Refresh + derating. */
+enum tegra210_emc_refresh {
+	TEGRA210_EMC_REFRESH_NOMINAL = 0,
+	TEGRA210_EMC_REFRESH_2X,
+	TEGRA210_EMC_REFRESH_4X,
+	TEGRA210_EMC_REFRESH_THROTTLE, /* 4x Refresh + derating. */
 };
 
+#define DRAM_TYPE_DDR3		0
+#define DRAM_TYPE_LPDDR4	1
+#define DRAM_TYPE_LPDDR2	2
+#define DRAM_TYPE_DDR2		3
+
 struct tegra210_emc {
 	struct tegra_mc *mc;
 	struct device *dev;
 	struct clk *clk;
 
+	/* nominal EMC frequency table */
+	struct tegra210_emc_timing *nominal;
+	/* derated EMC frequency table */
+	struct tegra210_emc_timing *derated;
+
+	/* currently selected table (nominal or derated) */
 	struct tegra210_emc_timing *timings;
 	unsigned int num_timings;
 
@@ -908,7 +920,11 @@ struct tegra210_emc {
 	unsigned int training_interval;
 	struct timer_list training;
 
-	enum tegra210_emc_dram_over_temp_state state;
+	enum tegra210_emc_refresh refresh;
+	unsigned int refresh_poll_interval;
+	struct timer_list refresh_timer;
+	unsigned int temperature;
+	atomic_t refresh_poll;
 
 	ktime_t clkchange_time;
 	int clkchange_delay;
@@ -919,6 +935,7 @@ struct tegra210_emc {
 		struct dentry *root;
 		unsigned long min_rate;
 		unsigned long max_rate;
+		unsigned int temperature;
 	} debugfs;
 
 	struct tegra210_clk_emc_provider provider;
@@ -977,6 +994,8 @@ static inline u32 div_o3(u32 a, u32 b)
 /* from tegra210-emc-r21021.c */
 extern const struct tegra210_emc_sequence tegra210_emc_r21021;
 
+int tegra210_emc_set_refresh(struct tegra210_emc *emc,
+			     enum tegra210_emc_refresh refresh);
 u32 tegra210_emc_mrr_read(struct tegra210_emc *emc, unsigned int chip,
 			  unsigned int address);
 void tegra210_emc_do_clock_change(struct tegra210_emc *emc, u32 clksrc);
@@ -985,8 +1004,8 @@ void tegra210_emc_timing_update(struct tegra210_emc *emc);
 u32 tegra210_emc_get_dll_state(struct tegra210_emc_timing *next);
 struct tegra210_emc_timing *tegra210_emc_find_timing(struct tegra210_emc *emc,
 						     unsigned long rate);
-void tegra210_emc_set_over_temp_timing(struct tegra210_emc *emc,
-			      struct tegra210_emc_timing *timing);
+void tegra210_emc_adjust_timing(struct tegra210_emc *emc,
+				struct tegra210_emc_timing *timing);
 int tegra210_emc_wait_for_update(struct tegra210_emc *emc, unsigned int channel,
 				 unsigned int offset, u32 bit_mask, bool state);
 unsigned long tegra210_emc_actual_osc_clocks(u32 in);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
