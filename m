Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 723391A396A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 19:56:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fdmGMKUIn6LxUl6O9PCLrYl7BsJPYF/bU4pI4vwUAok=; b=PZsQ5zCnG8GeEp
	58XCQdSY6XQnYru/xl/14TFKMwPfXylxojpiMYI6pX3QD3pvgsHUVlSY4KdXrxS5ZTbtABptXZW9R
	LCsTMl6ndEkPKrmnU9DdAqsek0KaZi8Hb5Pu5OHkDujS03wg0STsB0uOI49CmBD7hokduiq33Uexu
	KCHALCQSw5NyMk5Wd3YeNTHUJfhXE9XkknQ2Az1MB6ZszjmQ9MCJs+p3Bkn2oPI/FH6+TSyxC1A5/
	FEM4EeASkl3RsgyUK+3m+sp6ouCbdTv1Xn/I7d4QmEnaoMlpSuTl+I7ixqE2pdRI/h4nZYYm4LXup
	OHF4e/e6sUMweSH5zM+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMbPy-0003Cm-LK; Thu, 09 Apr 2020 17:56:46 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMbMS-00065f-3e
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 17:53:21 +0000
Received: by mail-wr1-x442.google.com with SMTP id 65so12938339wrl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 10:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=njPgBFTCkXb6WQj7qErIxaYjc1EBQmVZcPMoVXEmBM8=;
 b=najI6Xn81nW280ZDfmUdXpouR7hWdvNrz76K5w0ASaa3gUEjKPynaR6SmIm8PR34VD
 c6J9d4WwkOb2xLipCSP9dj9eHEOuY4/Nd1jIhox23vZwdkETdDsdngbcqBs28fhppQhU
 SeTGj8NXRljUznbHFEsrAWVG/frGc81RefGcYZdY4vAWY/DC2CzQRJZonQr5UxTJWvIR
 qRYYVB0TokLfzWcLq6NUtMcUUyEU/S1Z0xxLDA50JkA17D7U0VBAv+DqkFnObyiG8RGE
 kDK+EZH59dpvyEP8R4E0w1Vn598Ll8klnuTvxhDqj3Q8Gj3oc9pj3h4BCdTqYVjKqN+Z
 OpyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=njPgBFTCkXb6WQj7qErIxaYjc1EBQmVZcPMoVXEmBM8=;
 b=t+Pz6XZ4EzBwOJh5XEbylvqXUeMkMh2uq0kzJLnFTiwEzjWnMeU+M31lH/4DSrCzlq
 P8NX10fSSkH3mC5V7m6FJMmA+BgNL0+TmCyafoHMLcVwY0LvuicnfXmzzTMg0laHV+5X
 Z4K7ItVSqUedtK9an3oujmQeWV5QRKnKDilJrY0vDRBFx0vUYvNPtumjyh4J4e3/b735
 wDiZHDsTLImd407vRjT4bfzWvKQtNlePAV88MDpqAU9qcWi/VAa3UOijwsgdo747kQ3+
 +1mc4WH7ir21qSNBtZQmxCUkdcZoNE97OG7omtY9D+d5P2z1xeFfTFEUIPoWecNIg8Nr
 8HFQ==
X-Gm-Message-State: AGi0Pub6jHVQEhpzNBKMVOpkhNc/aj90R97FTcq8D8i6eBuec+XIJ7If
 kYYHd/wev/Ho/v6BqmNtTCE=
X-Google-Smtp-Source: APiQypLlwX603UDgLFyXjh48mG/iunFNq7cKf4h7SF0TeJWCL7gbnpR5IK2Tgsm7i6HQ8WXKkvegWA==
X-Received: by 2002:adf:fa85:: with SMTP id h5mr297909wrr.63.1586454784979;
 Thu, 09 Apr 2020 10:53:04 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id d24sm1652722wra.75.2020.04.09.10.53.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 10:53:03 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 10/14] memory: tegra: Add EMC scaling sequence code for
 Tegra210
Date: Thu,  9 Apr 2020 19:52:34 +0200
Message-Id: <20200409175238.3586487-11-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409175238.3586487-1-thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_105308_908624_ADE2B854 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

This patch includes the sequence for clock tuning and the dynamic
training mechanism for the clock above 800MHz.

And historically there have been different sequences to change the EMC
clock. The sequence to be used is specified in the EMC table.
However, for the currently supported upstreaming platform, only the most
recent sequence is used. So only support that in this patch.

Based on the work of Peter De Schrijver <pdeschrijver@nvidia.com>.

Signed-off-by: Joseph Lo <josephl@nvidia.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
Changes in v6:
- factor some code out into the core driver

Changes in v5:
- major rework and cleanup

 drivers/memory/tegra/Makefile                 |    2 +-
 drivers/memory/tegra/tegra210-emc-cc-r21021.c | 1744 +++++++++++++++++
 drivers/memory/tegra/tegra210-emc-core.c      |    1 +
 drivers/memory/tegra/tegra210-emc.h           |  102 +
 4 files changed, 1848 insertions(+), 1 deletion(-)
 create mode 100644 drivers/memory/tegra/tegra210-emc-cc-r21021.c

diff --git a/drivers/memory/tegra/Makefile b/drivers/memory/tegra/Makefile
index ad9406c0829b..6c1a2ecc6628 100644
--- a/drivers/memory/tegra/Makefile
+++ b/drivers/memory/tegra/Makefile
@@ -18,4 +18,4 @@ obj-$(CONFIG_TEGRA210_EMC) += tegra210-emc.o
 obj-$(CONFIG_ARCH_TEGRA_186_SOC) += tegra186.o tegra186-emc.o
 obj-$(CONFIG_ARCH_TEGRA_194_SOC) += tegra186.o tegra186-emc.o
 
-tegra210-emc-y := tegra210-emc-core.o
+tegra210-emc-y := tegra210-emc-core.o tegra210-emc-cc-r21021.o
diff --git a/drivers/memory/tegra/tegra210-emc-cc-r21021.c b/drivers/memory/tegra/tegra210-emc-cc-r21021.c
new file mode 100644
index 000000000000..048cf2102eaa
--- /dev/null
+++ b/drivers/memory/tegra/tegra210-emc-cc-r21021.c
@@ -0,0 +1,1744 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2014-2020, NVIDIA CORPORATION.  All rights reserved.
+ */
+
+#include <linux/kernel.h>
+#include <linux/io.h>
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/of.h>
+
+#include <soc/tegra/mc.h>
+
+#include "tegra210-emc.h"
+#include "tegra210-mc.h"
+
+/*
+ * Enable flags for specifying verbosity.
+ */
+#define INFO            (1 << 0)
+#define STEPS           (1 << 1)
+#define SUB_STEPS       (1 << 2)
+#define PRELOCK         (1 << 3)
+#define PRELOCK_STEPS   (1 << 4)
+#define ACTIVE_EN       (1 << 5)
+#define PRAMP_UP        (1 << 6)
+#define PRAMP_DN        (1 << 7)
+#define EMA_WRITES      (1 << 10)
+#define EMA_UPDATES     (1 << 11)
+#define PER_TRAIN       (1 << 16)
+#define CC_PRINT        (1 << 17)
+#define CCFIFO          (1 << 29)
+#define REGS            (1 << 30)
+#define REG_LISTS       (1 << 31)
+
+#define emc_dbg(emc, flags, ...) dev_dbg(emc->dev, __VA_ARGS__)
+
+#define DVFS_CLOCK_CHANGE_VERSION	21021
+#define EMC_PRELOCK_VERSION		2101
+
+enum {
+	DVFS_SEQUENCE = 1,
+	WRITE_TRAINING_SEQUENCE = 2,
+	PERIODIC_TRAINING_SEQUENCE = 3,
+	DVFS_PT1 = 10,
+	DVFS_UPDATE = 11,
+	TRAINING_PT1 = 12,
+	TRAINING_UPDATE = 13,
+	PERIODIC_TRAINING_UPDATE = 14
+};
+
+/*
+ * PTFV defines - basically just indexes into the per table PTFV array.
+ */
+#define PTFV_DQSOSC_MOVAVG_C0D0U0_INDEX		0
+#define PTFV_DQSOSC_MOVAVG_C0D0U1_INDEX		1
+#define PTFV_DQSOSC_MOVAVG_C0D1U0_INDEX		2
+#define PTFV_DQSOSC_MOVAVG_C0D1U1_INDEX		3
+#define PTFV_DQSOSC_MOVAVG_C1D0U0_INDEX		4
+#define PTFV_DQSOSC_MOVAVG_C1D0U1_INDEX		5
+#define PTFV_DQSOSC_MOVAVG_C1D1U0_INDEX		6
+#define PTFV_DQSOSC_MOVAVG_C1D1U1_INDEX		7
+#define PTFV_DVFS_SAMPLES_INDEX			9
+#define PTFV_MOVAVG_WEIGHT_INDEX		10
+#define PTFV_CONFIG_CTRL_INDEX			11
+
+#define PTFV_CONFIG_CTRL_USE_PREVIOUS_EMA	(1 << 0)
+
+/*
+ * Do arithmetic in fixed point.
+ */
+#define MOVAVG_PRECISION_FACTOR		100
+
+/*
+ * The division portion of the average operation.
+ */
+#define __AVERAGE_PTFV(dev)						\
+	({ next->ptfv_list[PTFV_DQSOSC_MOVAVG_ ## dev ## _INDEX] =	\
+	   next->ptfv_list[PTFV_DQSOSC_MOVAVG_ ## dev ## _INDEX] /	\
+	   next->ptfv_list[PTFV_DVFS_SAMPLES_INDEX]; })
+
+/*
+ * Convert val to fixed point and add it to the temporary average.
+ */
+#define __INCREMENT_PTFV(dev, val)					\
+	({ next->ptfv_list[PTFV_DQSOSC_MOVAVG_ ## dev ## _INDEX] +=	\
+	   ((val) * MOVAVG_PRECISION_FACTOR); })
+
+/*
+ * Convert a moving average back to integral form and return the value.
+ */
+#define __MOVAVG_AC(timing, dev)					\
+	((timing)->ptfv_list[PTFV_DQSOSC_MOVAVG_ ## dev ## _INDEX] /	\
+	 MOVAVG_PRECISION_FACTOR)
+
+/* Weighted update. */
+#define __WEIGHTED_UPDATE_PTFV(dev, nval)				\
+	do {								\
+		int w = PTFV_MOVAVG_WEIGHT_INDEX;			\
+		int dqs = PTFV_DQSOSC_MOVAVG_ ## dev ## _INDEX;		\
+									\
+		next->ptfv_list[dqs] =					\
+			((nval * MOVAVG_PRECISION_FACTOR) +		\
+			 (next->ptfv_list[dqs] *			\
+			  next->ptfv_list[w])) /			\
+			(next->ptfv_list[w] + 1);			\
+									\
+		emc_dbg(emc, EMA_UPDATES, "%s: (s=%lu) EMA: %u\n",	\
+			__stringify(dev), nval, next->ptfv_list[dqs]);	\
+	} while (0)
+
+/* Access a particular average. */
+#define __MOVAVG(timing, dev)                      \
+	((timing)->ptfv_list[PTFV_DQSOSC_MOVAVG_ ## dev ## _INDEX])
+
+static u32 update_clock_tree_delay(struct tegra210_emc *emc, int type)
+{
+	bool periodic_training_update = type == PERIODIC_TRAINING_UPDATE;
+	struct tegra210_emc_timing *last = emc->last;
+	struct tegra210_emc_timing *next = emc->next;
+	u32 last_timing_rate_mhz = last->rate / 1000;
+	u32 next_timing_rate_mhz = next->rate / 1000;
+	bool dvfs_update = type == DVFS_UPDATE;
+	s32 tdel = 0, tmdel = 0, adel = 0;
+	bool dvfs_pt1 = type == DVFS_PT1;
+	unsigned long cval = 0;
+	u32 temp[2][2], value;
+	unsigned int i;
+
+	/*
+	 * Dev0 MSB.
+	 */
+	if (dvfs_pt1 || periodic_training_update) {
+		value = tegra210_emc_mrr_read(emc, 2, 19);
+
+		for (i = 0; i < emc->num_channels; i++) {
+			temp[i][0] = (value & 0x00ff) << 8;
+			temp[i][1] = (value & 0xff00) << 0;
+			value >>= 16;
+		}
+
+		/*
+		 * Dev0 LSB.
+		 */
+		value = tegra210_emc_mrr_read(emc, 2, 18);
+
+		for (i = 0; i < emc->num_channels; i++) {
+			temp[i][0] |= (value & 0x00ff) >> 0;
+			temp[i][1] |= (value & 0xff00) >> 8;
+			value >>= 16;
+		}
+	}
+
+	if (dvfs_pt1 || periodic_training_update) {
+		cval = tegra210_emc_actual_osc_clocks(last->run_clocks);
+		cval *= 1000000;
+		cval /= last_timing_rate_mhz * 2 * temp[0][0];
+	}
+
+	if (dvfs_pt1)
+		__INCREMENT_PTFV(C0D0U0, cval);
+	else if (dvfs_update)
+		__AVERAGE_PTFV(C0D0U0);
+	else if (periodic_training_update)
+		__WEIGHTED_UPDATE_PTFV(C0D0U0, cval);
+
+	if (dvfs_update || periodic_training_update) {
+		tdel = next->current_dram_clktree[C0D0U0] -
+				__MOVAVG_AC(next, C0D0U0);
+		tmdel = (tdel < 0) ? -1 * tdel : tdel;
+		adel = tmdel;
+
+		if (tmdel * 128 * next_timing_rate_mhz / 1000000 >
+		    next->tree_margin)
+			next->current_dram_clktree[C0D0U0] =
+				__MOVAVG_AC(next, C0D0U0);
+	}
+
+	if (dvfs_pt1 || periodic_training_update) {
+		cval = tegra210_emc_actual_osc_clocks(last->run_clocks);
+		cval *= 1000000;
+		cval /= last_timing_rate_mhz * 2 * temp[0][1];
+	}
+
+	if (dvfs_pt1)
+		__INCREMENT_PTFV(C0D0U1, cval);
+	else if (dvfs_update)
+		__AVERAGE_PTFV(C0D0U1);
+	else if (periodic_training_update)
+		__WEIGHTED_UPDATE_PTFV(C0D0U1, cval);
+
+	if (dvfs_update || periodic_training_update) {
+		tdel = next->current_dram_clktree[C0D0U1] -
+				__MOVAVG_AC(next, C0D0U1);
+		tmdel = (tdel < 0) ? -1 * tdel : tdel;
+
+		if (tmdel > adel)
+			adel = tmdel;
+
+		if (tmdel * 128 * next_timing_rate_mhz / 1000000 >
+		    next->tree_margin)
+			next->current_dram_clktree[C0D0U1] =
+				__MOVAVG_AC(next, C0D0U1);
+	}
+
+	if (emc->num_channels > 1) {
+		if (dvfs_pt1 || periodic_training_update) {
+			cval = tegra210_emc_actual_osc_clocks(last->run_clocks);
+			cval *= 1000000;
+			cval /= last_timing_rate_mhz * 2 * temp[1][0];
+		}
+
+		if (dvfs_pt1)
+			__INCREMENT_PTFV(C1D0U0, cval);
+		else if (dvfs_update)
+			__AVERAGE_PTFV(C1D0U0);
+		else if (periodic_training_update)
+			__WEIGHTED_UPDATE_PTFV(C1D0U0, cval);
+
+		if (dvfs_update || periodic_training_update) {
+			tdel = next->current_dram_clktree[C1D0U0] -
+					__MOVAVG_AC(next, C1D0U0);
+			tmdel = (tdel < 0) ? -1 * tdel : tdel;
+
+			if (tmdel > adel)
+				adel = tmdel;
+
+			if (tmdel * 128 * next_timing_rate_mhz / 1000000 >
+			    next->tree_margin)
+				next->current_dram_clktree[C1D0U0] =
+					__MOVAVG_AC(next, C1D0U0);
+		}
+
+		if (dvfs_pt1 || periodic_training_update) {
+			cval = tegra210_emc_actual_osc_clocks(last->run_clocks);
+			cval *= 1000000;
+			cval /= last_timing_rate_mhz * 2 * temp[1][1];
+		}
+
+		if (dvfs_pt1)
+			__INCREMENT_PTFV(C1D0U1, cval);
+		else if (dvfs_update)
+			__AVERAGE_PTFV(C1D0U1);
+		else if (periodic_training_update)
+			__WEIGHTED_UPDATE_PTFV(C1D0U1, cval);
+
+		if (dvfs_update || periodic_training_update) {
+			tdel = next->current_dram_clktree[C1D0U1] -
+					__MOVAVG_AC(next, C1D0U1);
+			tmdel = (tdel < 0) ? -1 * tdel : tdel;
+
+			if (tmdel > adel)
+				adel = tmdel;
+
+			if (tmdel * 128 * next_timing_rate_mhz / 1000000 >
+			    next->tree_margin)
+				next->current_dram_clktree[C1D0U1] =
+					__MOVAVG_AC(next, C1D0U1);
+		}
+	}
+
+	if (emc->num_devices < 2)
+		goto done;
+
+	/*
+	 * Dev1 MSB.
+	 */
+	if (dvfs_pt1 || periodic_training_update) {
+		value = tegra210_emc_mrr_read(emc, 1, 19);
+
+		for (i = 0; i < emc->num_channels; i++) {
+			temp[i][0] = (value & 0x00ff) << 8;
+			temp[i][1] = (value & 0xff00) << 0;
+			value >>= 16;
+		}
+
+		/*
+		 * Dev1 LSB.
+		 */
+		value = tegra210_emc_mrr_read(emc, 2, 18);
+
+		for (i = 0; i < emc->num_channels; i++) {
+			temp[i][0] |= (value & 0x00ff) >> 0;
+			temp[i][1] |= (value & 0xff00) >> 8;
+			value >>= 16;
+		}
+	}
+
+	if (dvfs_pt1 || periodic_training_update) {
+		cval = tegra210_emc_actual_osc_clocks(last->run_clocks);
+		cval *= 1000000;
+		cval /= last_timing_rate_mhz * 2 * temp[0][0];
+	}
+
+	if (dvfs_pt1)
+		__INCREMENT_PTFV(C0D1U0, cval);
+	else if (dvfs_update)
+		__AVERAGE_PTFV(C0D1U0);
+	else if (periodic_training_update)
+		__WEIGHTED_UPDATE_PTFV(C0D1U0, cval);
+
+	if (dvfs_update || periodic_training_update) {
+		tdel = next->current_dram_clktree[C0D1U0] -
+				__MOVAVG_AC(next, C0D1U0);
+		tmdel = (tdel < 0) ? -1 * tdel : tdel;
+
+		if (tmdel > adel)
+			adel = tmdel;
+
+		if (tmdel * 128 * next_timing_rate_mhz / 1000000 >
+		    next->tree_margin)
+			next->current_dram_clktree[C0D1U0] =
+				__MOVAVG_AC(next, C0D1U0);
+	}
+
+	if (dvfs_pt1 || periodic_training_update) {
+		cval = tegra210_emc_actual_osc_clocks(last->run_clocks);
+		cval *= 1000000;
+		cval /= last_timing_rate_mhz * 2 * temp[0][1];
+	}
+
+	if (dvfs_pt1)
+		__INCREMENT_PTFV(C0D1U1, cval);
+	else if (dvfs_update)
+		__AVERAGE_PTFV(C0D1U1);
+	else if (periodic_training_update)
+		__WEIGHTED_UPDATE_PTFV(C0D1U1, cval);
+
+	if (dvfs_update || periodic_training_update) {
+		tdel = next->current_dram_clktree[C0D1U1] -
+				__MOVAVG_AC(next, C0D1U1);
+		tmdel = (tdel < 0) ? -1 * tdel : tdel;
+
+		if (tmdel > adel)
+			adel = tmdel;
+
+		if (tmdel * 128 * next_timing_rate_mhz / 1000000 >
+		    next->tree_margin)
+			next->current_dram_clktree[C0D1U1] =
+				__MOVAVG_AC(next, C0D1U1);
+	}
+
+	if (emc->num_channels > 1) {
+		if (dvfs_pt1 || periodic_training_update) {
+			cval = tegra210_emc_actual_osc_clocks(last->run_clocks);
+			cval *= 1000000;
+			cval /= last_timing_rate_mhz * 2 * temp[1][0];
+		}
+
+		if (dvfs_pt1)
+			__INCREMENT_PTFV(C1D1U0, cval);
+		else if (dvfs_update)
+			__AVERAGE_PTFV(C1D1U0);
+		else if (periodic_training_update)
+			__WEIGHTED_UPDATE_PTFV(C1D1U0, cval);
+
+		if (dvfs_update || periodic_training_update) {
+			tdel = next->current_dram_clktree[C1D1U0] -
+					__MOVAVG_AC(next, C1D1U0);
+			tmdel = (tdel < 0) ? -1 * tdel : tdel;
+
+			if (tmdel > adel)
+				adel = tmdel;
+
+			if (tmdel * 128 * next_timing_rate_mhz / 1000000 >
+			    next->tree_margin)
+				next->current_dram_clktree[C1D1U0] =
+					__MOVAVG_AC(next, C1D1U0);
+		}
+
+		if (dvfs_pt1 || periodic_training_update) {
+			cval = tegra210_emc_actual_osc_clocks(last->run_clocks);
+			cval *= 1000000;
+			cval /= last_timing_rate_mhz * 2 * temp[1][1];
+		}
+
+		if (dvfs_pt1)
+			__INCREMENT_PTFV(C1D1U1, cval);
+		else if (dvfs_update)
+			__AVERAGE_PTFV(C1D1U1);
+		else if (periodic_training_update)
+			__WEIGHTED_UPDATE_PTFV(C1D1U1, cval);
+
+		if (dvfs_update || periodic_training_update) {
+			tdel = next->current_dram_clktree[C1D1U1] -
+					__MOVAVG_AC(next, C1D1U1);
+			tmdel = (tdel < 0) ? -1 * tdel : tdel;
+
+			if (tmdel > adel)
+				adel = tmdel;
+
+			if (tmdel * 128 * next_timing_rate_mhz / 1000000 >
+			    next->tree_margin)
+				next->current_dram_clktree[C1D1U1] =
+					__MOVAVG_AC(next, C1D1U1);
+		}
+	}
+
+done:
+	return adel;
+}
+
+static u32 periodic_compensation_handler(struct tegra210_emc *emc, u32 type,
+					 struct tegra210_emc_timing *last,
+					 struct tegra210_emc_timing *next)
+{
+#define __COPY_EMA(nt, lt, dev)						\
+	({ __MOVAVG(nt, dev) = __MOVAVG(lt, dev) *			\
+	   (nt)->ptfv_list[PTFV_DVFS_SAMPLES_INDEX]; })
+
+	u32 i, adel = 0, samples = next->ptfv_list[PTFV_DVFS_SAMPLES_INDEX];
+	u32 delay;
+
+	delay = tegra210_emc_actual_osc_clocks(last->run_clocks);
+	delay *= 1000;
+	delay = 2 + (delay / last->rate);
+
+	if (!next->periodic_training)
+		return 0;
+
+	if (type == DVFS_SEQUENCE) {
+		if (last->periodic_training &&
+		    (next->ptfv_list[PTFV_CONFIG_CTRL_INDEX] &
+		     PTFV_CONFIG_CTRL_USE_PREVIOUS_EMA)) {
+			/*
+			 * If the previous frequency was using periodic
+			 * calibration then we can reuse the previous
+			 * frequencies EMA data.
+			 */
+			__COPY_EMA(next, last, C0D0U0);
+			__COPY_EMA(next, last, C0D0U1);
+			__COPY_EMA(next, last, C1D0U0);
+			__COPY_EMA(next, last, C1D0U1);
+			__COPY_EMA(next, last, C0D1U0);
+			__COPY_EMA(next, last, C0D1U1);
+			__COPY_EMA(next, last, C1D1U0);
+			__COPY_EMA(next, last, C1D1U1);
+		} else {
+			/* Reset the EMA.*/
+			__MOVAVG(next, C0D0U0) = 0;
+			__MOVAVG(next, C0D0U1) = 0;
+			__MOVAVG(next, C1D0U0) = 0;
+			__MOVAVG(next, C1D0U1) = 0;
+			__MOVAVG(next, C0D1U0) = 0;
+			__MOVAVG(next, C0D1U1) = 0;
+			__MOVAVG(next, C1D1U0) = 0;
+			__MOVAVG(next, C1D1U1) = 0;
+
+			for (i = 0; i < samples; i++) {
+				tegra210_emc_start_periodic_compensation(emc);
+				udelay(delay);
+
+				/*
+				 * Generate next sample of data.
+				 */
+				adel = update_clock_tree_delay(emc, DVFS_PT1);
+			}
+		}
+
+		/*
+		 * Seems like it should be part of the
+		 * 'if (last_timing->periodic_training)' conditional
+		 * since is already done for the else clause.
+		 */
+		adel = update_clock_tree_delay(emc, DVFS_UPDATE);
+	}
+
+	if (type == PERIODIC_TRAINING_SEQUENCE) {
+		tegra210_emc_start_periodic_compensation(emc);
+		udelay(delay);
+
+		adel = update_clock_tree_delay(emc, PERIODIC_TRAINING_UPDATE);
+	}
+
+	return adel;
+}
+
+static u32 tegra210_emc_r21021_periodic_compensation(struct tegra210_emc *emc)
+{
+	u32 emc_cfg, emc_cfg_o, emc_cfg_update, del, value;
+	u32 list[] = {
+		EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_0,
+		EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_1,
+		EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_2,
+		EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_3,
+		EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_0,
+		EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_1,
+		EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_2,
+		EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_3,
+		EMC_DATA_BRLSHFT_0,
+		EMC_DATA_BRLSHFT_1
+	};
+	struct tegra210_emc_timing *last = emc->last;
+	unsigned int items = ARRAY_SIZE(list), i;
+	unsigned long delay;
+
+	if (last->periodic_training) {
+		emc_dbg(emc, PER_TRAIN, "Periodic training starting\n");
+
+		value = emc_readl(emc, EMC_DBG);
+		emc_cfg_o = emc_readl(emc, EMC_CFG);
+		emc_cfg = emc_cfg_o & ~(EMC_CFG_DYN_SELF_REF |
+					EMC_CFG_DRAM_ACPD |
+					EMC_CFG_DRAM_CLKSTOP_PD |
+					EMC_CFG_DRAM_CLKSTOP_PD);
+
+
+		/*
+		 * 1. Power optimizations should be off.
+		 */
+		emc_writel(emc, emc_cfg, EMC_CFG);
+
+		/* Does emc_timing_update() for above changes. */
+		tegra210_emc_dll_disable(emc);
+
+		for (i = 0; i < emc->num_channels; i++)
+			tegra210_emc_wait_for_update(emc, i, EMC_EMC_STATUS,
+						     EMC_EMC_STATUS_DRAM_IN_POWERDOWN_MASK,
+						     0);
+
+		for (i = 0; i < emc->num_channels; i++)
+			tegra210_emc_wait_for_update(emc, i, EMC_EMC_STATUS,
+						     EMC_EMC_STATUS_DRAM_IN_SELF_REFRESH_MASK,
+						     0);
+
+		emc_cfg_update = value = emc_readl(emc, EMC_CFG_UPDATE);
+		value &= ~EMC_CFG_UPDATE_UPDATE_DLL_IN_UPDATE_MASK;
+		value |= (2 << EMC_CFG_UPDATE_UPDATE_DLL_IN_UPDATE_SHIFT);
+		emc_writel(emc, value, EMC_CFG_UPDATE);
+
+		/*
+		 * 2. osc kick off - this assumes training and dvfs have set
+		 *    correct MR23.
+		 */
+		tegra210_emc_start_periodic_compensation(emc);
+
+		/*
+		 * 3. Let dram capture its clock tree delays.
+		 */
+		delay = tegra210_emc_actual_osc_clocks(last->run_clocks);
+		delay *= 1000;
+		delay /= last->rate + 1;
+		udelay(delay);
+
+		/*
+		 * 4. Check delta wrt previous values (save value if margin
+		 *    exceeds what is set in table).
+		 */
+		del = periodic_compensation_handler(emc,
+						    PERIODIC_TRAINING_SEQUENCE,
+						    last, last);
+
+		/*
+		 * 5. Apply compensation w.r.t. trained values (if clock tree
+		 *    has drifted more than the set margin).
+		 */
+		if (last->tree_margin < ((del * 128 * (last->rate / 1000)) / 1000000)) {
+			for (i = 0; i < items; i++) {
+				value = tegra210_emc_compensate(last, list[i]);
+				emc_dbg(emc, EMA_WRITES, "0x%08x <= 0x%08x\n",
+					list[i], value);
+				emc_writel(emc, value, list[i]);
+			}
+		}
+
+		emc_writel(emc, emc_cfg_o, EMC_CFG);
+
+		/*
+		 * 6. Timing update actally applies the new trimmers.
+		 */
+		tegra210_emc_timing_update(emc);
+
+		/* 6.1. Restore the UPDATE_DLL_IN_UPDATE field. */
+		emc_writel(emc, emc_cfg_update, EMC_CFG_UPDATE);
+
+		/* 6.2. Restore the DLL. */
+		tegra210_emc_dll_enable(emc);
+	}
+
+	return 0;
+}
+
+/*
+ * Do the clock change sequence.
+ */
+static void tegra210_emc_r21021_set_clock(struct tegra210_emc *emc, u32 clksrc)
+{
+	/*
+	 * This is the timing table for the source frequency. It does _not_
+	 * necessarily correspond to the actual timing values in the EMC at the
+	 * moment. If the boot BCT differs from the table then this can happen.
+	 * However, we need it for accessing the dram_timings (which are not
+	 * really registers) array for the current frequency.
+	 */
+	u32 tmp, cya_allow_ref_cc = 0, ref_b4_sref_en = 0, cya_issue_pc_ref = 0;
+	struct tegra210_emc_timing *fake, *last = emc->last, *next = emc->next;
+	u32 bg_regulator_switch_complete_wait_clks, bg_regulator_mode_change;
+	u32 opt_zcal_en_cc, opt_do_sw_qrst = 1, opt_dvfs_mode, opt_dll_mode;
+	u32 emc_zcal_wait_cnt_old, emc_zcal_wait_cnt_new, emc_dbg_active;
+	u32 opt_cc_short_zcal = 1, opt_short_zcal = 1, opt_war_200024907;
+	u32 tRTM, RP_war, R2P_war, TRPab_war, deltaTWATM, W2P_war, tRPST;
+	u32 adel = 0, compensate_trimmer_applicable = 0, mrw_req, value;
+	unsigned long next_timing_rate_mhz = next->rate / 1000, delay;
+	u32 tZQCAL_lpddr4 = 1000000, zq_wait_long, shared_zq_resistor;
+	s32 zq_latch_dvfs_wait_time, tZQCAL_lpddr4_fc_adj, nRTP;
+	u32 tFC_lpddr4 = 1000 * next->dram_timings[T_FC_LPDDR4];
+	u32 emc_auto_cal_config, auto_cal_en, mr13_catr_enable;
+	u32 zq_op, zcal_wait_time_clocks, zcal_wait_time_ps;
+	u32 emc_cfg, emc_sel_dpd_ctrl, emc_zcal_interval;
+	int next_push, next_dq_e_ivref, next_dqs_e_ivref;
+	u32 mr13_flip_fspwr, mr13_flip_fspop, is_lpddr3;
+	u32 enable_bglp_regulator, enable_bg_regulator;
+	u32 emc_dbg_o, emc_cfg_pipe_clk_o, emc_pin_o;
+	u32 ramp_up_wait = 0, ramp_down_wait = 0;
+	u32 save_restore_clkstop_pd = 1, dll_out;
+	u32 ref_delay_mult, ref_delay, dram_type;
+	static u32 fsp_for_next_freq;
+	/* In picoseconds. */
+	u32 source_clock_period, destination_clock_period;
+	u32 zqcal_before_cc_cutoff = 2400;
+	unsigned int i;
+
+	emc_dbg(emc, INFO, "Running clock change.\n");
+
+	/* XXX fake == last */
+	fake = tegra210_emc_find_timing(emc, last->rate * 1000UL);
+	fsp_for_next_freq = !fsp_for_next_freq;
+
+	dram_type = emc_readl(emc, EMC_FBIO_CFG5) &
+		    EMC_FBIO_CFG5_DRAM_TYPE_MASK >>
+		    EMC_FBIO_CFG5_DRAM_TYPE_SHIFT;
+	shared_zq_resistor = last->burst_regs[EMC_ZCAL_WAIT_CNT_INDEX] &
+			     1 << 31;
+	opt_zcal_en_cc = (next->burst_regs[EMC_ZCAL_INTERVAL_INDEX] &&
+			  !last->burst_regs[EMC_ZCAL_INTERVAL_INDEX]) ||
+			  dram_type == DRAM_TYPE_LPDDR4;
+	opt_dll_mode = (dram_type == DRAM_TYPE_DDR3) ?
+		       tegra210_emc_get_dll_state(next) : 0;
+	is_lpddr3 = (dram_type == DRAM_TYPE_LPDDR2) &&
+		    next->burst_regs[EMC_FBIO_CFG5_INDEX] &
+		    1 << 25;
+	opt_war_200024907 = (dram_type == DRAM_TYPE_LPDDR4);
+	opt_dvfs_mode = MAN_SR;
+
+	emc_readl(emc, EMC_CFG);
+	emc_auto_cal_config = emc_readl(emc, EMC_AUTO_CAL_CONFIG);
+
+	source_clock_period = 1000000000 / last->rate;
+	destination_clock_period = 1000000000 / next->rate;
+
+	tZQCAL_lpddr4_fc_adj = (destination_clock_period >
+				zqcal_before_cc_cutoff) ?
+		tZQCAL_lpddr4 / destination_clock_period :
+		(tZQCAL_lpddr4 - tFC_lpddr4) / destination_clock_period;
+	emc_dbg_o = emc_readl(emc, EMC_DBG);
+	emc_pin_o = emc_readl(emc, EMC_PIN);
+	emc_cfg_pipe_clk_o = emc_readl(emc, EMC_CFG_PIPE_CLK);
+
+	emc_cfg = next->burst_regs[EMC_CFG_INDEX];
+	emc_cfg &= ~(EMC_CFG_DYN_SELF_REF | EMC_CFG_DRAM_ACPD |
+		     EMC_CFG_DRAM_CLKSTOP_SR | EMC_CFG_DRAM_CLKSTOP_PD);
+	emc_sel_dpd_ctrl = next->emc_sel_dpd_ctrl;
+	emc_sel_dpd_ctrl &= ~(EMC_SEL_DPD_CTRL_CLK_SEL_DPD_EN |
+			      EMC_SEL_DPD_CTRL_CA_SEL_DPD_EN |
+			      EMC_SEL_DPD_CTRL_RESET_SEL_DPD_EN |
+			      EMC_SEL_DPD_CTRL_ODT_SEL_DPD_EN |
+			      EMC_SEL_DPD_CTRL_DATA_SEL_DPD_EN);
+
+	emc_dbg(emc, INFO, "Clock change version: %d\n",
+		DVFS_CLOCK_CHANGE_VERSION);
+	emc_dbg(emc, INFO, "DRAM type = %d\n", dram_type);
+	emc_dbg(emc, INFO, "DRAM dev #: %u\n", emc->num_devices);
+	emc_dbg(emc, INFO, "Next EMC clksrc: 0x%08x\n", clksrc);
+	emc_dbg(emc, INFO, "DLL clksrc:      0x%08x\n", next->dll_clk_src);
+	emc_dbg(emc, INFO, "last rate: %u, next rate %u\n", last->rate,
+		next->rate);
+	emc_dbg(emc, INFO, "last period: %u, next period: %u\n",
+		source_clock_period, destination_clock_period);
+	emc_dbg(emc, INFO, "  shared_zq_resistor: %d\n", !!shared_zq_resistor);
+	emc_dbg(emc, INFO, "  num_channels: %u\n", emc->num_channels);
+	emc_dbg(emc, INFO, "  opt_dll_mode: %d\n", opt_dll_mode);
+
+	/*
+	 * Step 1:
+	 *   Pre DVFS SW sequence.
+	 */
+	emc_dbg(emc, STEPS, "Step 1\n");
+	emc_dbg(emc, STEPS, "Step 1.1: Disable DLL temporarily.\n");
+	tmp = emc_readl(emc, EMC_CFG_DIG_DLL);
+	tmp &= ~EMC_CFG_DIG_DLL_CFG_DLL_EN;
+	emc_writel(emc, tmp, EMC_CFG_DIG_DLL);
+
+	tegra210_emc_timing_update(emc);
+
+	for (i = 0; i < emc->num_channels; i++)
+		tegra210_emc_wait_for_update(emc, i, EMC_CFG_DIG_DLL,
+					     EMC_CFG_DIG_DLL_CFG_DLL_EN, 0);
+
+	emc_dbg(emc, STEPS, "Step 1.2: Disable AUTOCAL temporarily.\n");
+	emc_auto_cal_config = next->emc_auto_cal_config;
+	auto_cal_en = emc_auto_cal_config & EMC_AUTO_CAL_CONFIG_AUTO_CAL_ENABLE;
+	emc_auto_cal_config &= ~EMC_AUTO_CAL_CONFIG_AUTO_CAL_START;
+	emc_auto_cal_config |=  EMC_AUTO_CAL_CONFIG_AUTO_CAL_MEASURE_STALL;
+	emc_auto_cal_config |=  EMC_AUTO_CAL_CONFIG_AUTO_CAL_UPDATE_STALL;
+	emc_auto_cal_config |=  auto_cal_en;
+	emc_writel(emc, emc_auto_cal_config, EMC_AUTO_CAL_CONFIG);
+	emc_readl(emc, EMC_AUTO_CAL_CONFIG); /* Flush write. */
+
+	emc_dbg(emc, STEPS, "Step 1.3: Disable other power features.\n");
+	tegra210_emc_set_shadow_bypass(emc, ACTIVE);
+	emc_writel(emc, emc_cfg, EMC_CFG);
+	emc_writel(emc, emc_sel_dpd_ctrl, EMC_SEL_DPD_CTRL);
+	tegra210_emc_set_shadow_bypass(emc, ASSEMBLY);
+
+	if (next->periodic_training) {
+		tegra210_emc_reset_dram_clktree_values(next);
+
+		for (i = 0; i < emc->num_channels; i++)
+			tegra210_emc_wait_for_update(emc, i, EMC_EMC_STATUS,
+						     EMC_EMC_STATUS_DRAM_IN_POWERDOWN_MASK,
+						     0);
+
+		for (i = 0; i < emc->num_channels; i++)
+			tegra210_emc_wait_for_update(emc, i, EMC_EMC_STATUS,
+						     EMC_EMC_STATUS_DRAM_IN_SELF_REFRESH_MASK,
+						     0);
+
+		tegra210_emc_start_periodic_compensation(emc);
+
+		delay = 1000 * tegra210_emc_actual_osc_clocks(last->run_clocks);
+		udelay((delay / last->rate) + 2);
+
+		adel = periodic_compensation_handler(emc, DVFS_SEQUENCE, fake,
+						     next);
+		compensate_trimmer_applicable =
+			next->periodic_training &&
+			((adel * 128 * next_timing_rate_mhz) / 1000000) >
+			next->tree_margin;
+	}
+
+	emc_writel(emc, EMC_INTSTATUS_CLKCHANGE_COMPLETE, EMC_INTSTATUS);
+	tegra210_emc_set_shadow_bypass(emc, ACTIVE);
+	emc_writel(emc, emc_cfg, EMC_CFG);
+	emc_writel(emc, emc_sel_dpd_ctrl, EMC_SEL_DPD_CTRL);
+	emc_writel(emc, emc_cfg_pipe_clk_o | EMC_CFG_PIPE_CLK_CLK_ALWAYS_ON,
+		   EMC_CFG_PIPE_CLK);
+	emc_writel(emc, next->emc_fdpd_ctrl_cmd_no_ramp &
+			~EMC_FDPD_CTRL_CMD_NO_RAMP_CMD_DPD_NO_RAMP_ENABLE,
+		   EMC_FDPD_CTRL_CMD_NO_RAMP);
+
+	bg_regulator_mode_change =
+		((next->burst_regs[EMC_PMACRO_BG_BIAS_CTRL_0_INDEX] &
+		  EMC_PMACRO_BG_BIAS_CTRL_0_BGLP_E_PWRD) ^
+		 (last->burst_regs[EMC_PMACRO_BG_BIAS_CTRL_0_INDEX] &
+		  EMC_PMACRO_BG_BIAS_CTRL_0_BGLP_E_PWRD)) ||
+		((next->burst_regs[EMC_PMACRO_BG_BIAS_CTRL_0_INDEX] &
+		  EMC_PMACRO_BG_BIAS_CTRL_0_BG_E_PWRD) ^
+		 (last->burst_regs[EMC_PMACRO_BG_BIAS_CTRL_0_INDEX] &
+		  EMC_PMACRO_BG_BIAS_CTRL_0_BG_E_PWRD));
+	enable_bglp_regulator =
+		(next->burst_regs[EMC_PMACRO_BG_BIAS_CTRL_0_INDEX] &
+		 EMC_PMACRO_BG_BIAS_CTRL_0_BGLP_E_PWRD) == 0;
+	enable_bg_regulator =
+		(next->burst_regs[EMC_PMACRO_BG_BIAS_CTRL_0_INDEX] &
+		 EMC_PMACRO_BG_BIAS_CTRL_0_BG_E_PWRD) == 0;
+
+	if (bg_regulator_mode_change) {
+		if (enable_bg_regulator)
+			emc_writel(emc, last->burst_regs
+				   [EMC_PMACRO_BG_BIAS_CTRL_0_INDEX] &
+				   ~EMC_PMACRO_BG_BIAS_CTRL_0_BG_E_PWRD,
+				   EMC_PMACRO_BG_BIAS_CTRL_0);
+
+		if (enable_bglp_regulator)
+			emc_writel(emc, last->burst_regs
+				   [EMC_PMACRO_BG_BIAS_CTRL_0_INDEX] &
+				   ~EMC_PMACRO_BG_BIAS_CTRL_0_BGLP_E_PWRD,
+				   EMC_PMACRO_BG_BIAS_CTRL_0);
+	}
+
+	/* Check if we need to turn on VREF generator. */
+	if ((((last->burst_regs[EMC_PMACRO_DATA_PAD_TX_CTRL_INDEX] &
+	       EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQ_E_IVREF) == 0) &&
+	     ((next->burst_regs[EMC_PMACRO_DATA_PAD_TX_CTRL_INDEX] &
+	       EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQ_E_IVREF) == 1)) ||
+	    (((last->burst_regs[EMC_PMACRO_DATA_PAD_TX_CTRL_INDEX] &
+	       EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQS_E_IVREF) == 0) &&
+	     ((next->burst_regs[EMC_PMACRO_DATA_PAD_TX_CTRL_INDEX] &
+	       EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQS_E_IVREF) != 0))) {
+		u32 pad_tx_ctrl =
+		    next->burst_regs[EMC_PMACRO_DATA_PAD_TX_CTRL_INDEX];
+		u32 last_pad_tx_ctrl =
+		    last->burst_regs[EMC_PMACRO_DATA_PAD_TX_CTRL_INDEX];
+
+		next_dqs_e_ivref = pad_tx_ctrl &
+				   EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQS_E_IVREF;
+		next_dq_e_ivref = pad_tx_ctrl &
+				  EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQ_E_IVREF;
+		next_push = (last_pad_tx_ctrl &
+			     ~EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQ_E_IVREF &
+			     ~EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQS_E_IVREF) |
+			    next_dq_e_ivref | next_dqs_e_ivref;
+		emc_writel(emc, next_push, EMC_PMACRO_DATA_PAD_TX_CTRL);
+		udelay(1);
+	} else if (bg_regulator_mode_change) {
+		udelay(1);
+	}
+
+	tegra210_emc_set_shadow_bypass(emc, ASSEMBLY);
+
+	/*
+	 * Step 2:
+	 *   Prelock the DLL.
+	 */
+	emc_dbg(emc, STEPS, "Step 2\n");
+	if (next->burst_regs[EMC_CFG_DIG_DLL_INDEX] &
+	    EMC_CFG_DIG_DLL_CFG_DLL_EN) {
+		emc_dbg(emc, INFO, "Prelock enabled for target frequency.\n");
+		dll_out = tegra210_emc_dll_prelock(emc, clksrc);
+		emc_dbg(emc, INFO, "DLL out: 0x%03x\n", dll_out);
+	} else {
+		emc_dbg(emc, INFO, "Disabling DLL for target frequency.\n");
+		tegra210_emc_dll_disable(emc);
+	}
+
+	/*
+	 * Step 3:
+	 *   Prepare autocal for the clock change.
+	 */
+	emc_dbg(emc, STEPS, "Step 3\n");
+	tegra210_emc_set_shadow_bypass(emc, ACTIVE);
+	emc_writel(emc, next->emc_auto_cal_config2, EMC_AUTO_CAL_CONFIG2);
+	emc_writel(emc, next->emc_auto_cal_config3, EMC_AUTO_CAL_CONFIG3);
+	emc_writel(emc, next->emc_auto_cal_config4, EMC_AUTO_CAL_CONFIG4);
+	emc_writel(emc, next->emc_auto_cal_config5, EMC_AUTO_CAL_CONFIG5);
+	emc_writel(emc, next->emc_auto_cal_config6, EMC_AUTO_CAL_CONFIG6);
+	emc_writel(emc, next->emc_auto_cal_config7, EMC_AUTO_CAL_CONFIG7);
+	emc_writel(emc, next->emc_auto_cal_config8, EMC_AUTO_CAL_CONFIG8);
+	tegra210_emc_set_shadow_bypass(emc, ASSEMBLY);
+
+	emc_auto_cal_config |= (EMC_AUTO_CAL_CONFIG_AUTO_CAL_COMPUTE_START |
+				auto_cal_en);
+	emc_writel(emc, emc_auto_cal_config, EMC_AUTO_CAL_CONFIG);
+
+	/*
+	 * Step 4:
+	 *   Update EMC_CFG. (??)
+	 */
+	emc_dbg(emc, STEPS, "Step 4\n");
+	if (source_clock_period > 50000 && dram_type == DRAM_TYPE_LPDDR4)
+		ccfifo_writel(emc, 1, EMC_SELF_REF, 0);
+	else
+		emc_writel(emc, next->emc_cfg_2, EMC_CFG_2);
+
+	/*
+	 * Step 5:
+	 *   Prepare reference variables for ZQCAL regs.
+	 */
+	emc_dbg(emc, STEPS, "Step 5\n");
+	emc_zcal_interval = 0;
+	emc_zcal_wait_cnt_old = last->burst_regs[EMC_ZCAL_WAIT_CNT_INDEX];
+	emc_zcal_wait_cnt_new = next->burst_regs[EMC_ZCAL_WAIT_CNT_INDEX];
+	emc_zcal_wait_cnt_old &= ~EMC_ZCAL_WAIT_CNT_ZCAL_WAIT_CNT_MASK;
+	emc_zcal_wait_cnt_new &= ~EMC_ZCAL_WAIT_CNT_ZCAL_WAIT_CNT_MASK;
+
+	if (dram_type == DRAM_TYPE_LPDDR4)
+		zq_wait_long = max((u32)1,
+				   div_o3(1000000, destination_clock_period));
+	else if (dram_type == DRAM_TYPE_LPDDR2 || is_lpddr3)
+		zq_wait_long = max(next->min_mrs_wait,
+				   div_o3(360000, destination_clock_period)) +
+			       4;
+	else if (dram_type == DRAM_TYPE_DDR3)
+		zq_wait_long = max((u32)256,
+				   div_o3(320000, destination_clock_period) +
+				   2);
+	else
+		zq_wait_long = 0;
+
+	/*
+	 * Step 6:
+	 *   Training code - removed.
+	 */
+	emc_dbg(emc, STEPS, "Step 6\n");
+
+	/*
+	 * Step 7:
+	 *   Program FSP reference registers and send MRWs to new FSPWR.
+	 */
+	emc_dbg(emc, STEPS, "Step 7\n");
+	emc_dbg(emc, SUB_STEPS, "Step 7.1: Bug 200024907 - Patch RP R2P");
+	if (opt_war_200024907) {
+		nRTP = 16;
+		if (source_clock_period >= 1000000/1866) /* 535.91 ps */
+			nRTP = 14;
+		if (source_clock_period >= 1000000/1600) /* 625.00 ps */
+			nRTP = 12;
+		if (source_clock_period >= 1000000/1333) /* 750.19 ps */
+			nRTP = 10;
+		if (source_clock_period >= 1000000/1066) /* 938.09 ps */
+			nRTP = 8;
+
+		deltaTWATM = max_t(u32, div_o3(7500, source_clock_period), 8);
+
+		/*
+		 * Originally there was a + .5 in the tRPST calculation.
+		 * However since we can't do FP in the kernel and the tRTM
+		 * computation was in a floating point ceiling function, adding
+		 * one to tRTP should be ok. There is no other source of non
+		 * integer values, so the result was always going to be
+		 * something for the form: f_ceil(N + .5) = N + 1;
+		 */
+		tRPST = ((last->emc_mrw & 0x80) >> 7);
+		tRTM = fake->dram_timings[RL] +
+		       div_o3(3600, source_clock_period) +
+		       max_t(u32, div_o3(7500, source_clock_period), 8) +
+		       tRPST + 1 + nRTP;
+
+		emc_dbg(emc, INFO, "tRTM = %u, EMC_RP = %u\n", tRTM,
+			next->burst_regs[EMC_RP_INDEX]);
+
+		if (last->burst_regs[EMC_RP_INDEX] < tRTM) {
+			if (tRTM > (last->burst_regs[EMC_R2P_INDEX] +
+				    last->burst_regs[EMC_RP_INDEX])) {
+				R2P_war = tRTM -
+					  last->burst_regs[EMC_RP_INDEX];
+				RP_war = last->burst_regs[EMC_RP_INDEX];
+				TRPab_war = last->burst_regs[EMC_TRPAB_INDEX];
+				if (R2P_war > 63) {
+					RP_war = R2P_war +
+						 last->burst_regs[EMC_RP_INDEX] - 63;
+					if (TRPab_war < RP_war)
+						TRPab_war = RP_war;
+					R2P_war = 63;
+				}
+			} else {
+				R2P_war = last->burst_regs[EMC_R2P_INDEX];
+				RP_war = last->burst_regs[EMC_RP_INDEX];
+				TRPab_war = last->burst_regs[EMC_TRPAB_INDEX];
+			}
+
+			if (RP_war < deltaTWATM) {
+				W2P_war = last->burst_regs[EMC_W2P_INDEX]
+					  + deltaTWATM - RP_war;
+				if (W2P_war > 63) {
+					RP_war = RP_war + W2P_war - 63;
+					if (TRPab_war < RP_war)
+						TRPab_war = RP_war;
+					W2P_war = 63;
+				}
+			} else {
+				W2P_war = last->burst_regs[
+					  EMC_W2P_INDEX];
+			}
+
+			if ((last->burst_regs[EMC_W2P_INDEX] ^ W2P_war) ||
+			    (last->burst_regs[EMC_R2P_INDEX] ^ R2P_war) ||
+			    (last->burst_regs[EMC_RP_INDEX] ^ RP_war) ||
+			    (last->burst_regs[EMC_TRPAB_INDEX] ^ TRPab_war)) {
+				emc_writel(emc, RP_war, EMC_RP);
+				emc_writel(emc, R2P_war, EMC_R2P);
+				emc_writel(emc, W2P_war, EMC_W2P);
+				emc_writel(emc, TRPab_war, EMC_TRPAB);
+			}
+
+			tegra210_emc_timing_update(emc);
+		} else {
+			emc_dbg(emc, INFO, "Skipped WAR\n");
+		}
+	}
+
+	if (!fsp_for_next_freq) {
+		mr13_flip_fspwr = (next->emc_mrw3 & 0xffffff3f) | 0x80;
+		mr13_flip_fspop = (next->emc_mrw3 & 0xffffff3f) | 0x00;
+	} else {
+		mr13_flip_fspwr = (next->emc_mrw3 & 0xffffff3f) | 0x40;
+		mr13_flip_fspop = (next->emc_mrw3 & 0xffffff3f) | 0xc0;
+	}
+
+	mr13_catr_enable = (mr13_flip_fspwr & 0xFFFFFFFE) | 0x01;
+	if (emc->num_devices > 1)
+		mr13_catr_enable = (mr13_catr_enable & 0x3fffffff) | 0x80000000;
+
+	if (dram_type == DRAM_TYPE_LPDDR4) {
+		emc_writel(emc, mr13_flip_fspwr, EMC_MRW3);
+		emc_writel(emc, next->emc_mrw, EMC_MRW);
+		emc_writel(emc, next->emc_mrw2, EMC_MRW2);
+	}
+
+	/*
+	 * Step 8:
+	 *   Program the shadow registers.
+	 */
+	emc_dbg(emc, STEPS, "Step 8\n");
+	emc_dbg(emc, SUB_STEPS, "Writing burst_regs\n");
+
+	for (i = 0; i < next->num_burst; i++) {
+		const u16 *offsets = emc->offsets->burst;
+		u16 offset;
+
+		if (!offsets[i])
+			continue;
+
+		value = next->burst_regs[i];
+		offset = offsets[i];
+
+		if (dram_type != DRAM_TYPE_LPDDR4 &&
+		    (offset == EMC_MRW6 || offset == EMC_MRW7 ||
+		     offset == EMC_MRW8 || offset == EMC_MRW9 ||
+		     offset == EMC_MRW10 || offset == EMC_MRW11 ||
+		     offset == EMC_MRW12 || offset == EMC_MRW13 ||
+		     offset == EMC_MRW14 || offset == EMC_MRW15 ||
+		     offset == EMC_TRAINING_CTRL))
+			continue;
+
+		/* Pain... And suffering. */
+		if (offset == EMC_CFG) {
+			value &= ~EMC_CFG_DRAM_ACPD;
+			value &= ~EMC_CFG_DYN_SELF_REF;
+			if (dram_type == DRAM_TYPE_LPDDR4) {
+				value &= ~EMC_CFG_DRAM_CLKSTOP_SR;
+				value &= ~EMC_CFG_DRAM_CLKSTOP_PD;
+			}
+		} else if (offset == EMC_MRS_WAIT_CNT &&
+			   dram_type == DRAM_TYPE_LPDDR2 &&
+			   opt_zcal_en_cc && !opt_cc_short_zcal &&
+			   opt_short_zcal) {
+			value = (value & ~(EMC_MRS_WAIT_CNT_SHORT_WAIT_MASK <<
+					   EMC_MRS_WAIT_CNT_SHORT_WAIT_SHIFT)) |
+				((zq_wait_long & EMC_MRS_WAIT_CNT_SHORT_WAIT_MASK) <<
+						 EMC_MRS_WAIT_CNT_SHORT_WAIT_SHIFT);
+		} else if (offset == EMC_ZCAL_WAIT_CNT &&
+			   dram_type == DRAM_TYPE_DDR3 && opt_zcal_en_cc &&
+			   !opt_cc_short_zcal && opt_short_zcal) {
+			value = (value & ~(EMC_ZCAL_WAIT_CNT_ZCAL_WAIT_CNT_MASK <<
+					   EMC_ZCAL_WAIT_CNT_ZCAL_WAIT_CNT_SHIFT)) |
+			        ((zq_wait_long & EMC_ZCAL_WAIT_CNT_ZCAL_WAIT_CNT_MASK) <<
+						 EMC_MRS_WAIT_CNT_SHORT_WAIT_SHIFT);
+		} else if (offset == EMC_ZCAL_INTERVAL && opt_zcal_en_cc) {
+			value = 0; /* EMC_ZCAL_INTERVAL reset value. */
+		} else if (offset == EMC_PMACRO_AUTOCAL_CFG_COMMON) {
+			value |= EMC_PMACRO_AUTOCAL_CFG_COMMON_E_CAL_BYPASS_DVFS;
+		} else if (offset == EMC_PMACRO_DATA_PAD_TX_CTRL) {
+			value &= ~(EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQSP_TX_E_DCC |
+				   EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQSN_TX_E_DCC |
+				   EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQ_TX_E_DCC |
+				   EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_CMD_TX_E_DCC);
+		} else if (offset == EMC_PMACRO_CMD_PAD_TX_CTRL) {
+			value |= EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQ_TX_DRVFORCEON;
+			value &= ~(EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQSP_TX_E_DCC |
+				   EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQSN_TX_E_DCC |
+				   EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQ_TX_E_DCC |
+				   EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_CMD_TX_E_DCC);
+		} else if (offset == EMC_PMACRO_BRICK_CTRL_RFU1) {
+			value &= 0xf800f800;
+		} else if (offset == EMC_PMACRO_COMMON_PAD_TX_CTRL) {
+			value &= 0xfffffff0;
+		}
+
+		emc_writel(emc, value, offset);
+	}
+
+	/* SW addition: do EMC refresh adjustment here. */
+	tegra210_emc_set_over_temp_timing(emc, next);
+
+	if (dram_type == DRAM_TYPE_LPDDR4) {
+		mrw_req = (23 << EMC_MRW_MRW_MA_SHIFT) |
+			  (next->run_clocks & EMC_MRW_MRW_OP_MASK);
+		emc_writel(emc, mrw_req, EMC_MRW);
+	}
+
+	/* Per channel burst registers. */
+	emc_dbg(emc, SUB_STEPS, "Writing burst_regs_per_ch\n");
+	for (i = 0; i < next->num_burst_per_ch; i++) {
+		const struct tegra210_emc_per_channel_regs *burst =
+				emc->offsets->burst_per_channel;
+
+		if (!burst[i].offset)
+			continue;
+
+		if (dram_type != DRAM_TYPE_LPDDR4 &&
+		    (burst[i].offset == EMC_MRW6 ||
+		     burst[i].offset == EMC_MRW7 ||
+		     burst[i].offset == EMC_MRW8 ||
+		     burst[i].offset == EMC_MRW9 ||
+		     burst[i].offset == EMC_MRW10 ||
+		     burst[i].offset == EMC_MRW11 ||
+		     burst[i].offset == EMC_MRW12 ||
+		     burst[i].offset == EMC_MRW13 ||
+		     burst[i].offset == EMC_MRW14 ||
+		     burst[i].offset == EMC_MRW15))
+			continue;
+
+		/* Filter out second channel if not in DUAL_CHANNEL mode. */
+		if (emc->num_channels < 2 && burst[i].bank >= 1)
+			continue;
+
+		emc_dbg(emc, REG_LISTS, "(%u) 0x%08x => 0x%08x\n", i,
+			next->burst_reg_per_ch[i], burst[i].offset);
+		emc_channel_writel(emc, burst[i].bank,
+				   next->burst_reg_per_ch[i],
+				   burst[i].offset);
+	}
+
+	/* Vref regs. */
+	emc_dbg(emc, SUB_STEPS, "Writing vref_regs\n");
+	for (i = 0; i < next->vref_num; i++) {
+		const struct tegra210_emc_per_channel_regs *vref =
+					emc->offsets->vref_per_channel;
+
+		if (!vref[i].offset)
+			continue;
+
+		if (emc->num_channels < 2 && vref[i].bank >= 1)
+			continue;
+
+		emc_dbg(emc, REG_LISTS, "(%u) 0x%08x => 0x%08x\n", i,
+			next->vref_perch_regs[i], vref[i].offset);
+		emc_channel_writel(emc, vref[i].bank, next->vref_perch_regs[i],
+				   vref[i].offset);
+	}
+
+	/* Trimmers. */
+	emc_dbg(emc, SUB_STEPS, "Writing trim_regs\n");
+	for (i = 0; i < next->num_trim; i++) {
+		const u16 *offsets = emc->offsets->trim;
+
+		if (!offsets[i])
+			continue;
+
+		if (compensate_trimmer_applicable &&
+		    (offsets[i] == EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_0 ||
+		     offsets[i] == EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_1 ||
+		     offsets[i] == EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_2 ||
+		     offsets[i] == EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_3 ||
+		     offsets[i] == EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_0 ||
+		     offsets[i] == EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_1 ||
+		     offsets[i] == EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_2 ||
+		     offsets[i] == EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_3 ||
+		     offsets[i] == EMC_DATA_BRLSHFT_0 ||
+		     offsets[i] == EMC_DATA_BRLSHFT_1)) {
+			value = tegra210_emc_compensate(next, offsets[i]);
+			emc_dbg(emc, REG_LISTS, "(%u) 0x%08x => 0x%08x\n", i,
+				value, offsets[i]);
+			emc_dbg(emc, EMA_WRITES, "0x%08x <= 0x%08x\n",
+				(u32)(u64)offsets[i], value);
+			emc_writel(emc, value, offsets[i]);
+		} else {
+			emc_dbg(emc, REG_LISTS, "(%u) 0x%08x => 0x%08x\n", i,
+				next->trim_regs[i], offsets[i]);
+			emc_writel(emc, next->trim_regs[i], offsets[i]);
+		}
+	}
+
+	/* Per channel trimmers. */
+	emc_dbg(emc, SUB_STEPS, "Writing trim_regs_per_ch\n");
+	for (i = 0; i < next->num_trim_per_ch; i++) {
+		const struct tegra210_emc_per_channel_regs *trim =
+				&emc->offsets->trim_per_channel[0];
+		unsigned int offset;
+
+		if (!trim[i].offset)
+			continue;
+
+		if (emc->num_channels < 2 && trim[i].bank >= 1)
+			continue;
+
+		offset = trim[i].offset;
+
+		if (compensate_trimmer_applicable &&
+		    (offset == EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_0 ||
+		     offset == EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_1 ||
+		     offset == EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_2 ||
+		     offset == EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_3 ||
+		     offset == EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_0 ||
+		     offset == EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_1 ||
+		     offset == EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_2 ||
+		     offset == EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_3 ||
+		     offset == EMC_DATA_BRLSHFT_0 ||
+		     offset == EMC_DATA_BRLSHFT_1)) {
+			value = tegra210_emc_compensate(next, offset);
+			emc_dbg(emc, REG_LISTS, "(%u) 0x%08x => 0x%08x\n", i,
+				value, offset);
+			emc_dbg(emc, EMA_WRITES, "0x%08x <= 0x%08x\n", offset,
+				value);
+			emc_channel_writel(emc, trim[i].bank, value, offset);
+		} else {
+			emc_dbg(emc, REG_LISTS, "(%u) 0x%08x => 0x%08x\n", i,
+				next->trim_perch_regs[i], offset);
+			emc_channel_writel(emc, trim[i].bank,
+					   next->trim_perch_regs[i], offset);
+		}
+	}
+
+	emc_dbg(emc, SUB_STEPS, "Writing burst_mc_regs\n");
+	for (i = 0; i < next->num_mc_regs; i++) {
+		const u16 *offsets = emc->offsets->burst_mc;
+		u32 *values = next->burst_mc_regs;
+
+		emc_dbg(emc, REG_LISTS, "(%u) 0x%08x => 0x%08x\n", i,
+			values[i], offsets[i]);
+		mc_writel(emc->mc, values[i], offsets[i]);
+	}
+
+	/* Registers to be programmed on the faster clock. */
+	if (next->rate < last->rate) {
+		const u16 *la = emc->offsets->la_scale;
+
+		emc_dbg(emc, SUB_STEPS, "Writing la_scale_regs\n");
+		for (i = 0; i < next->num_up_down; i++) {
+			emc_dbg(emc, REG_LISTS, "(%u) 0x%08x => 0x%08x\n", i,
+				next->la_scale_regs[i], la[i]);
+			mc_writel(emc->mc, next->la_scale_regs[i], la[i]);
+		}
+	}
+
+	/* Flush all the burst register writes. */
+	mc_readl(emc->mc, MC_EMEM_ADR_CFG);
+
+	/*
+	 * Step 9:
+	 *   LPDDR4 section A.
+	 */
+	emc_dbg(emc, STEPS, "Step 9\n");
+	if (dram_type == DRAM_TYPE_LPDDR4) {
+		emc_writel(emc, emc_zcal_interval, EMC_ZCAL_INTERVAL);
+		emc_writel(emc, emc_zcal_wait_cnt_new, EMC_ZCAL_WAIT_CNT);
+
+		value = emc_dbg_o | (EMC_DBG_WRITE_MUX_ACTIVE |
+				     EMC_DBG_WRITE_ACTIVE_ONLY);
+
+		emc_writel(emc, value, EMC_DBG);
+		emc_writel(emc, emc_zcal_interval, EMC_ZCAL_INTERVAL);
+		emc_writel(emc, emc_dbg_o, EMC_DBG);
+	}
+
+	/*
+	 * Step 10:
+	 *   LPDDR4 and DDR3 common section.
+	 */
+	emc_dbg(emc, STEPS, "Step 10\n");
+	if (opt_dvfs_mode == MAN_SR || dram_type == DRAM_TYPE_LPDDR4) {
+		if (dram_type == DRAM_TYPE_LPDDR4)
+			ccfifo_writel(emc, 0x101, EMC_SELF_REF, 0);
+		else
+			ccfifo_writel(emc, 0x1, EMC_SELF_REF, 0);
+
+		if (dram_type == DRAM_TYPE_LPDDR4 &&
+		    destination_clock_period <= zqcal_before_cc_cutoff) {
+			ccfifo_writel(emc, mr13_flip_fspwr ^ 0x40, EMC_MRW3, 0);
+			ccfifo_writel(emc, (next->burst_regs[EMC_MRW6_INDEX] &
+						0xFFFF3F3F) |
+					   (last->burst_regs[EMC_MRW6_INDEX] &
+						0x0000C0C0), EMC_MRW6, 0);
+			ccfifo_writel(emc, (next->burst_regs[EMC_MRW14_INDEX] &
+						0xFFFF0707) |
+					   (last->burst_regs[EMC_MRW14_INDEX] &
+						0x00003838), EMC_MRW14, 0);
+
+			if (emc->num_devices > 1) {
+				ccfifo_writel(emc,
+				      (next->burst_regs[EMC_MRW7_INDEX] &
+				       0xFFFF3F3F) |
+				      (last->burst_regs[EMC_MRW7_INDEX] &
+				       0x0000C0C0), EMC_MRW7, 0);
+				ccfifo_writel(emc,
+				     (next->burst_regs[EMC_MRW15_INDEX] &
+				      0xFFFF0707) |
+				     (last->burst_regs[EMC_MRW15_INDEX] &
+				      0x00003838), EMC_MRW15, 0);
+			}
+
+			if (opt_zcal_en_cc) {
+				if (emc->num_devices < 2)
+					ccfifo_writel(emc,
+						2UL << EMC_ZQ_CAL_DEV_SEL_SHIFT
+						| EMC_ZQ_CAL_ZQ_CAL_CMD,
+						EMC_ZQ_CAL, 0);
+				else if (shared_zq_resistor)
+					ccfifo_writel(emc,
+						2UL << EMC_ZQ_CAL_DEV_SEL_SHIFT
+						| EMC_ZQ_CAL_ZQ_CAL_CMD,
+						EMC_ZQ_CAL, 0);
+				else
+					ccfifo_writel(emc,
+						      EMC_ZQ_CAL_ZQ_CAL_CMD,
+						      EMC_ZQ_CAL, 0);
+			}
+		}
+	}
+
+	if (dram_type == DRAM_TYPE_LPDDR4) {
+		ccfifo_writel(emc, mr13_flip_fspop | 0x8, EMC_MRW3,
+			      (1000 * fake->dram_timings[T_RP]) /
+			      source_clock_period);
+		ccfifo_writel(emc, 0, 0, tFC_lpddr4 / source_clock_period);
+	}
+
+	if (dram_type == DRAM_TYPE_LPDDR4 || opt_dvfs_mode != MAN_SR) {
+		u32 t = 30 + (cya_allow_ref_cc ?
+			(4000 * fake->dram_timings[T_RFC]) +
+			((1000 * fake->dram_timings[T_RP]) /
+			 source_clock_period) : 0);
+
+		ccfifo_writel(emc, emc_pin_o & ~(EMC_PIN_PIN_CKE_PER_DEV |
+			      EMC_PIN_PIN_CKEB | EMC_PIN_PIN_CKE),
+			      EMC_PIN, t);
+	}
+
+	ref_delay_mult = 1;
+	ref_b4_sref_en = 0;
+	cya_issue_pc_ref = 0;
+
+	ref_delay_mult += ref_b4_sref_en   ? 1 : 0;
+	ref_delay_mult += cya_allow_ref_cc ? 1 : 0;
+	ref_delay_mult += cya_issue_pc_ref ? 1 : 0;
+	ref_delay = ref_delay_mult *
+		    ((1000 * fake->dram_timings[T_RP] /
+		      source_clock_period) +
+		     (1000 * fake->dram_timings[T_RFC] /
+		      source_clock_period)) + 20;
+
+	/*
+	 * Step 11:
+	 *   Ramp down.
+	 */
+	emc_dbg(emc, STEPS, "Step 11\n");
+	ccfifo_writel(emc, 0x0, EMC_CFG_SYNC,
+		      dram_type == DRAM_TYPE_LPDDR4 ? 0 : ref_delay);
+
+	emc_dbg_active = emc_dbg_o | (EMC_DBG_WRITE_MUX_ACTIVE |
+			 EMC_DBG_WRITE_ACTIVE_ONLY);
+	ccfifo_writel(emc, emc_dbg_active, EMC_DBG, 0);
+
+	ramp_down_wait = tegra210_emc_dvfs_power_ramp_down(emc,
+							   source_clock_period,
+							   0);
+
+	/*
+	 * Step 12:
+	 *   And finally - trigger the clock change.
+	 */
+	emc_dbg(emc, STEPS, "Step 12\n");
+	ccfifo_writel(emc, 1, EMC_STALL_THEN_EXE_AFTER_CLKCHANGE, 0);
+	emc_dbg_active &= ~EMC_DBG_WRITE_ACTIVE_ONLY;
+	ccfifo_writel(emc, emc_dbg_active, EMC_DBG, 0);
+
+	/*
+	 * Step 13:
+	 *   Ramp up.
+	 */
+	emc_dbg(emc, STEPS, "Step 13\n");
+	ramp_up_wait = tegra210_emc_dvfs_power_ramp_up(emc,
+						       destination_clock_period,
+						       0);
+	ccfifo_writel(emc, emc_dbg_o, EMC_DBG, 0);
+
+	/*
+	 * Step 14:
+	 *   Bringup CKE pins.
+	 */
+	emc_dbg(emc, STEPS, "Step 14\n");
+	if (dram_type == DRAM_TYPE_LPDDR4) {
+		u32 r = emc_pin_o | EMC_PIN_PIN_CKE;
+
+		if (emc->num_devices > 1)
+			ccfifo_writel(emc, r | EMC_PIN_PIN_CKEB |
+				      EMC_PIN_PIN_CKE_PER_DEV, EMC_PIN, 0);
+		else
+			ccfifo_writel(emc, r & ~(EMC_PIN_PIN_CKEB |
+				      EMC_PIN_PIN_CKE_PER_DEV), EMC_PIN, 0);
+	}
+
+	/*
+	 * Step 15: (two step 15s ??)
+	 *   Calculate zqlatch wait time; has dependency on ramping times.
+	 */
+	emc_dbg(emc, STEPS, "Step 15\n");
+
+	if (destination_clock_period <= zqcal_before_cc_cutoff) {
+		s32 t = (s32)(ramp_up_wait + ramp_down_wait) /
+			(s32)destination_clock_period;
+		zq_latch_dvfs_wait_time = (s32)tZQCAL_lpddr4_fc_adj - t;
+	} else {
+		zq_latch_dvfs_wait_time = tZQCAL_lpddr4_fc_adj -
+			div_o3(1000 * next->dram_timings[T_PDEX],
+			       destination_clock_period);
+	}
+
+	emc_dbg(emc, INFO, "tZQCAL_lpddr4_fc_adj = %u\n", tZQCAL_lpddr4_fc_adj);
+	emc_dbg(emc, INFO, "destination_clock_period = %u\n",
+		destination_clock_period);
+	emc_dbg(emc, INFO, "next->dram_timings[T_PDEX] = %u\n",
+		next->dram_timings[T_PDEX]);
+	emc_dbg(emc, INFO, "zq_latch_dvfs_wait_time = %d\n",
+		max_t(s32, 0, zq_latch_dvfs_wait_time));
+
+	if (dram_type == DRAM_TYPE_LPDDR4 && opt_zcal_en_cc) {
+		if (emc->num_devices < 2) {
+			if (destination_clock_period > zqcal_before_cc_cutoff)
+				ccfifo_writel(emc,
+					      2UL << EMC_ZQ_CAL_DEV_SEL_SHIFT |
+					      EMC_ZQ_CAL_ZQ_CAL_CMD, EMC_ZQ_CAL,
+					      div_o3(1000 *
+						     next->dram_timings[T_PDEX],
+						     destination_clock_period));
+
+			ccfifo_writel(emc, (mr13_flip_fspop & 0xFFFFFFF7) |
+				      0x0C000000, EMC_MRW3,
+				      div_o3(1000 *
+					     next->dram_timings[T_PDEX],
+					     destination_clock_period));
+			ccfifo_writel(emc, 0, EMC_SELF_REF, 0);
+			ccfifo_writel(emc, 0, EMC_REF, 0);
+			ccfifo_writel(emc, 2UL << EMC_ZQ_CAL_DEV_SEL_SHIFT |
+				      EMC_ZQ_CAL_ZQ_LATCH_CMD,
+				      EMC_ZQ_CAL,
+				      max_t(s32, 0, zq_latch_dvfs_wait_time));
+		} else if (shared_zq_resistor) {
+			if (destination_clock_period > zqcal_before_cc_cutoff)
+				ccfifo_writel(emc,
+					      2UL << EMC_ZQ_CAL_DEV_SEL_SHIFT |
+					      EMC_ZQ_CAL_ZQ_CAL_CMD, EMC_ZQ_CAL,
+					      div_o3(1000 *
+						     next->dram_timings[T_PDEX],
+						     destination_clock_period));
+
+			ccfifo_writel(emc, 2UL << EMC_ZQ_CAL_DEV_SEL_SHIFT |
+				      EMC_ZQ_CAL_ZQ_LATCH_CMD, EMC_ZQ_CAL,
+				      max_t(s32, 0, zq_latch_dvfs_wait_time) +
+				      div_o3(1000 *
+					     next->dram_timings[T_PDEX],
+					     destination_clock_period));
+			ccfifo_writel(emc, 1UL << EMC_ZQ_CAL_DEV_SEL_SHIFT |
+				      EMC_ZQ_CAL_ZQ_LATCH_CMD,
+				      EMC_ZQ_CAL, 0);
+
+			ccfifo_writel(emc, (mr13_flip_fspop & 0xfffffff7) |
+				      0x0c000000, EMC_MRW3, 0);
+			ccfifo_writel(emc, 0, EMC_SELF_REF, 0);
+			ccfifo_writel(emc, 0, EMC_REF, 0);
+
+			ccfifo_writel(emc, 1UL << EMC_ZQ_CAL_DEV_SEL_SHIFT |
+				      EMC_ZQ_CAL_ZQ_LATCH_CMD, EMC_ZQ_CAL,
+				      tZQCAL_lpddr4 / destination_clock_period);
+		} else {
+			if (destination_clock_period > zqcal_before_cc_cutoff)
+				ccfifo_writel(emc, EMC_ZQ_CAL_ZQ_CAL_CMD,
+					      EMC_ZQ_CAL,
+					      div_o3(1000 *
+						     next->dram_timings[T_PDEX],
+						     destination_clock_period));
+
+			ccfifo_writel(emc, (mr13_flip_fspop & 0xfffffff7) |
+				      0x0c000000, EMC_MRW3,
+				      div_o3(1000 *
+					     next->dram_timings[T_PDEX],
+					     destination_clock_period));
+			ccfifo_writel(emc, 0, EMC_SELF_REF, 0);
+			ccfifo_writel(emc, 0, EMC_REF, 0);
+
+			ccfifo_writel(emc, EMC_ZQ_CAL_ZQ_LATCH_CMD, EMC_ZQ_CAL,
+				      max_t(s32, 0, zq_latch_dvfs_wait_time));
+		}
+	}
+
+	/* WAR: delay for zqlatch */
+	ccfifo_writel(emc, 0, 0, 10);
+
+	/*
+	 * Step 16:
+	 *   LPDDR4 Conditional Training Kickoff. Removed.
+	 */
+
+	/*
+	 * Step 17:
+	 *   MANSR exit self refresh.
+	 */
+	emc_dbg(emc, STEPS, "Step 17\n");
+	if (opt_dvfs_mode == MAN_SR && dram_type != DRAM_TYPE_LPDDR4)
+		ccfifo_writel(emc, 0, EMC_SELF_REF, 0);
+
+	/*
+	 * Step 18:
+	 *   Send MRWs to LPDDR3/DDR3.
+	 */
+	emc_dbg(emc, STEPS, "Step 18\n");
+	if (dram_type == DRAM_TYPE_LPDDR2) {
+		ccfifo_writel(emc, next->emc_mrw2, EMC_MRW2, 0);
+		ccfifo_writel(emc, next->emc_mrw,  EMC_MRW,  0);
+		if (is_lpddr3)
+			ccfifo_writel(emc, next->emc_mrw4, EMC_MRW4, 0);
+	} else if (dram_type == DRAM_TYPE_DDR3) {
+		if (opt_dll_mode)
+			ccfifo_writel(emc, next->emc_emrs &
+				      ~EMC_EMRS_USE_EMRS_LONG_CNT, EMC_EMRS, 0);
+		ccfifo_writel(emc, next->emc_emrs2 &
+			      ~EMC_EMRS2_USE_EMRS2_LONG_CNT, EMC_EMRS2, 0);
+		ccfifo_writel(emc, next->emc_mrs |
+			      EMC_EMRS_USE_EMRS_LONG_CNT, EMC_MRS, 0);
+	}
+
+	/*
+	 * Step 19:
+	 *   ZQCAL for LPDDR3/DDR3
+	 */
+	emc_dbg(emc, STEPS, "Step 19\n");
+	if (opt_zcal_en_cc) {
+		if (dram_type == DRAM_TYPE_LPDDR2) {
+			u32 r;
+
+			zq_op = opt_cc_short_zcal  ? 0x56 : 0xAB;
+			zcal_wait_time_ps = opt_cc_short_zcal  ? 90000 : 360000;
+			zcal_wait_time_clocks = div_o3(zcal_wait_time_ps,
+						destination_clock_period);
+			r = zcal_wait_time_clocks <<
+			    EMC_MRS_WAIT_CNT2_MRS_EXT2_WAIT_CNT_SHIFT |
+			    zcal_wait_time_clocks <<
+			    EMC_MRS_WAIT_CNT2_MRS_EXT1_WAIT_CNT_SHIFT;
+			ccfifo_writel(emc, r, EMC_MRS_WAIT_CNT2, 0);
+			ccfifo_writel(emc, 2 << EMC_MRW_MRW_DEV_SELECTN_SHIFT |
+				      EMC_MRW_USE_MRW_EXT_CNT |
+				      10 << EMC_MRW_MRW_MA_SHIFT |
+				      zq_op << EMC_MRW_MRW_OP_SHIFT,
+				      EMC_MRW, 0);
+			if (emc->num_devices > 1) {
+				r = 1 << EMC_MRW_MRW_DEV_SELECTN_SHIFT |
+				    EMC_MRW_USE_MRW_EXT_CNT |
+				    10 << EMC_MRW_MRW_MA_SHIFT |
+				    zq_op << EMC_MRW_MRW_OP_SHIFT;
+				ccfifo_writel(emc, r, EMC_MRW, 0);
+			}
+		} else if (dram_type == DRAM_TYPE_DDR3) {
+			zq_op = opt_cc_short_zcal ? 0 : EMC_ZQ_CAL_LONG;
+			ccfifo_writel(emc, zq_op | 2 <<
+				      EMC_ZQ_CAL_DEV_SEL_SHIFT |
+				      EMC_ZQ_CAL_ZQ_CAL_CMD, EMC_ZQ_CAL, 0);
+			if (emc->num_devices > 1)
+				ccfifo_writel(emc, zq_op |
+					      1 << EMC_ZQ_CAL_DEV_SEL_SHIFT |
+					      EMC_ZQ_CAL_ZQ_CAL_CMD,
+					      EMC_ZQ_CAL, 0);
+		}
+	}
+
+	if (bg_regulator_mode_change) {
+		tegra210_emc_set_shadow_bypass(emc, ACTIVE);
+		bg_regulator_switch_complete_wait_clks =
+			ramp_up_wait > 1250000 ? 0 :
+			(1250000 - ramp_up_wait) / destination_clock_period;
+		ccfifo_writel(emc, next->burst_regs
+			      [EMC_PMACRO_BG_BIAS_CTRL_0_INDEX],
+			      EMC_PMACRO_BG_BIAS_CTRL_0,
+			      bg_regulator_switch_complete_wait_clks);
+		tegra210_emc_set_shadow_bypass(emc, ASSEMBLY);
+	}
+
+	/*
+	 * Step 20:
+	 *   Issue ref and optional QRST.
+	 */
+	emc_dbg(emc, STEPS, "Step 20\n");
+	if (dram_type != DRAM_TYPE_LPDDR4)
+		ccfifo_writel(emc, 0, EMC_REF, 0);
+
+	if (opt_do_sw_qrst) {
+		ccfifo_writel(emc, 1, EMC_ISSUE_QRST, 0);
+		ccfifo_writel(emc, 0, EMC_ISSUE_QRST, 2);
+	}
+
+	/*
+	 * Step 21:
+	 *   Restore ZCAL and ZCAL interval.
+	 */
+	emc_dbg(emc, STEPS, "Step 21\n");
+	if (save_restore_clkstop_pd || opt_zcal_en_cc) {
+		ccfifo_writel(emc, emc_dbg_o | EMC_DBG_WRITE_MUX_ACTIVE,
+			      EMC_DBG, 0);
+		if (opt_zcal_en_cc && dram_type != DRAM_TYPE_LPDDR4)
+			ccfifo_writel(emc, next->burst_regs[EMC_ZCAL_INTERVAL_INDEX],
+				      EMC_ZCAL_INTERVAL, 0);
+
+		if (save_restore_clkstop_pd)
+			ccfifo_writel(emc, next->burst_regs[EMC_CFG_INDEX] &
+						~EMC_CFG_DYN_SELF_REF,
+				      EMC_CFG, 0);
+		ccfifo_writel(emc, emc_dbg_o, EMC_DBG, 0);
+	}
+
+	/*
+	 * Step 22:
+	 *   Restore EMC_CFG_PIPE_CLK.
+	 */
+	emc_dbg(emc, STEPS, "Step 22\n");
+	ccfifo_writel(emc, emc_cfg_pipe_clk_o, EMC_CFG_PIPE_CLK, 0);
+
+	if (bg_regulator_mode_change) {
+		if (enable_bg_regulator)
+			emc_writel(emc,
+				   next->burst_regs[EMC_PMACRO_BG_BIAS_CTRL_0_INDEX] &
+					~EMC_PMACRO_BG_BIAS_CTRL_0_BGLP_E_PWRD,
+				   EMC_PMACRO_BG_BIAS_CTRL_0);
+		else
+			emc_writel(emc,
+				   next->burst_regs[EMC_PMACRO_BG_BIAS_CTRL_0_INDEX] &
+					~EMC_PMACRO_BG_BIAS_CTRL_0_BG_E_PWRD,
+				   EMC_PMACRO_BG_BIAS_CTRL_0);
+	}
+
+	/*
+	 * Step 23:
+	 */
+	emc_dbg(emc, STEPS, "Step 23\n");
+
+	tmp = emc_readl(emc, EMC_CFG_DIG_DLL);
+	tmp |= EMC_CFG_DIG_DLL_CFG_DLL_STALL_ALL_TRAFFIC;
+	tmp &= ~EMC_CFG_DIG_DLL_CFG_DLL_STALL_RW_UNTIL_LOCK;
+	tmp &= ~EMC_CFG_DIG_DLL_CFG_DLL_STALL_ALL_UNTIL_LOCK;
+	tmp &= ~EMC_CFG_DIG_DLL_CFG_DLL_EN;
+	tmp = (tmp & ~EMC_CFG_DIG_DLL_CFG_DLL_MODE_MASK) |
+		(2 << EMC_CFG_DIG_DLL_CFG_DLL_MODE_SHIFT);
+	emc_writel(emc, tmp, EMC_CFG_DIG_DLL);
+
+	tegra210_emc_do_clock_change(emc, clksrc);
+
+	/*
+	 * Step 24:
+	 *   Save training results. Removed.
+	 */
+
+	/*
+	 * Step 25:
+	 *   Program MC updown registers.
+	 */
+	emc_dbg(emc, STEPS, "Step 25\n");
+
+	if (next->rate > last->rate) {
+		for (i = 0; i < next->num_up_down; i++)
+			mc_writel(emc->mc, next->la_scale_regs[i],
+				  emc->offsets->la_scale[i]);
+
+		tegra210_emc_timing_update(emc);
+	}
+
+	/*
+	 * Step 26:
+	 *   Restore ZCAL registers.
+	 */
+	emc_dbg(emc, STEPS, "Step 26\n");
+	if (dram_type == DRAM_TYPE_LPDDR4) {
+		tegra210_emc_set_shadow_bypass(emc, ACTIVE);
+		emc_writel(emc, next->burst_regs[EMC_ZCAL_WAIT_CNT_INDEX],
+			   EMC_ZCAL_WAIT_CNT);
+		emc_writel(emc, next->burst_regs[EMC_ZCAL_INTERVAL_INDEX],
+			   EMC_ZCAL_INTERVAL);
+		tegra210_emc_set_shadow_bypass(emc, ASSEMBLY);
+	}
+
+	if (dram_type != DRAM_TYPE_LPDDR4 && opt_zcal_en_cc &&
+	    !opt_short_zcal && opt_cc_short_zcal) {
+		udelay(2);
+
+		tegra210_emc_set_shadow_bypass(emc, ACTIVE);
+		if (dram_type == DRAM_TYPE_LPDDR2)
+			emc_writel(emc, next->burst_regs[EMC_MRS_WAIT_CNT_INDEX],
+				   EMC_MRS_WAIT_CNT);
+		else if (dram_type == DRAM_TYPE_DDR3)
+			emc_writel(emc, next->burst_regs[EMC_ZCAL_WAIT_CNT_INDEX],
+				   EMC_ZCAL_WAIT_CNT);
+		tegra210_emc_set_shadow_bypass(emc, ASSEMBLY);
+	}
+
+	/*
+	 * Step 27:
+	 *   Restore EMC_CFG, FDPD registers.
+	 */
+	emc_dbg(emc, STEPS, "Step 27\n");
+	tegra210_emc_set_shadow_bypass(emc, ACTIVE);
+	emc_writel(emc, next->burst_regs[EMC_CFG_INDEX], EMC_CFG);
+	tegra210_emc_set_shadow_bypass(emc, ASSEMBLY);
+	emc_writel(emc, next->emc_fdpd_ctrl_cmd_no_ramp,
+		   EMC_FDPD_CTRL_CMD_NO_RAMP);
+	emc_writel(emc, next->emc_sel_dpd_ctrl, EMC_SEL_DPD_CTRL);
+
+	/*
+	 * Step 28:
+	 *   Training recover. Removed.
+	 */
+	emc_dbg(emc, STEPS, "Step 28\n");
+
+	tegra210_emc_set_shadow_bypass(emc, ACTIVE);
+	emc_writel(emc,
+		   next->burst_regs[EMC_PMACRO_AUTOCAL_CFG_COMMON_INDEX],
+		   EMC_PMACRO_AUTOCAL_CFG_COMMON);
+	tegra210_emc_set_shadow_bypass(emc, ASSEMBLY);
+
+	/*
+	 * Step 29:
+	 *   Power fix WAR.
+	 */
+	emc_dbg(emc, STEPS, "Step 29\n");
+	emc_writel(emc, EMC_PMACRO_CFG_PM_GLOBAL_0_DISABLE_CFG_BYTE0 |
+		   EMC_PMACRO_CFG_PM_GLOBAL_0_DISABLE_CFG_BYTE1 |
+		   EMC_PMACRO_CFG_PM_GLOBAL_0_DISABLE_CFG_BYTE2 |
+		   EMC_PMACRO_CFG_PM_GLOBAL_0_DISABLE_CFG_BYTE3 |
+		   EMC_PMACRO_CFG_PM_GLOBAL_0_DISABLE_CFG_BYTE4 |
+		   EMC_PMACRO_CFG_PM_GLOBAL_0_DISABLE_CFG_BYTE5 |
+		   EMC_PMACRO_CFG_PM_GLOBAL_0_DISABLE_CFG_BYTE6 |
+		   EMC_PMACRO_CFG_PM_GLOBAL_0_DISABLE_CFG_BYTE7,
+		   EMC_PMACRO_CFG_PM_GLOBAL_0);
+	emc_writel(emc, EMC_PMACRO_TRAINING_CTRL_0_CH0_TRAINING_E_WRPTR,
+		   EMC_PMACRO_TRAINING_CTRL_0);
+	emc_writel(emc, EMC_PMACRO_TRAINING_CTRL_1_CH1_TRAINING_E_WRPTR,
+		   EMC_PMACRO_TRAINING_CTRL_1);
+	emc_writel(emc, 0, EMC_PMACRO_CFG_PM_GLOBAL_0);
+
+	/*
+	 * Step 30:
+	 *   Re-enable autocal.
+	 */
+	emc_dbg(emc, STEPS, "Step 30: Re-enable DLL and AUTOCAL\n");
+	if (next->burst_regs[EMC_CFG_DIG_DLL_INDEX] & EMC_CFG_DIG_DLL_CFG_DLL_EN) {
+		tmp = emc_readl(emc, EMC_CFG_DIG_DLL);
+		tmp |=  EMC_CFG_DIG_DLL_CFG_DLL_STALL_ALL_TRAFFIC;
+		tmp |=  EMC_CFG_DIG_DLL_CFG_DLL_EN;
+		tmp &= ~EMC_CFG_DIG_DLL_CFG_DLL_STALL_RW_UNTIL_LOCK;
+		tmp &= ~EMC_CFG_DIG_DLL_CFG_DLL_STALL_ALL_UNTIL_LOCK;
+		tmp =  (tmp & ~EMC_CFG_DIG_DLL_CFG_DLL_MODE_MASK) |
+		       (2 << EMC_CFG_DIG_DLL_CFG_DLL_MODE_SHIFT);
+		emc_writel(emc, tmp, EMC_CFG_DIG_DLL);
+		tegra210_emc_timing_update(emc);
+	}
+
+	emc_auto_cal_config = next->emc_auto_cal_config;
+	emc_writel(emc, emc_auto_cal_config, EMC_AUTO_CAL_CONFIG);
+
+	/* Done! Yay. */
+}
+
+const struct tegra210_emc_sequence tegra210_emc_r21021 = {
+	.revision = 0x7,
+	.set_clock = tegra210_emc_r21021_set_clock,
+	.periodic_compensation = tegra210_emc_r21021_periodic_compensation,
+};
diff --git a/drivers/memory/tegra/tegra210-emc-core.c b/drivers/memory/tegra/tegra210-emc-core.c
index 5aa08ce4c11b..080209bffe64 100644
--- a/drivers/memory/tegra/tegra210-emc-core.c
+++ b/drivers/memory/tegra/tegra210-emc-core.c
@@ -82,6 +82,7 @@
 		(((value) & 0xffff0000) | ((value) & 0xffff) * (speedup))
 
 static const struct tegra210_emc_sequence *tegra210_emc_sequences[] = {
+	&tegra210_emc_r21021,
 };
 
 static const struct tegra210_emc_table_register_offsets
diff --git a/drivers/memory/tegra/tegra210-emc.h b/drivers/memory/tegra/tegra210-emc.h
index 5d86c7a80621..7e2fdee44c8d 100644
--- a/drivers/memory/tegra/tegra210-emc.h
+++ b/drivers/memory/tegra/tegra210-emc.h
@@ -22,7 +22,16 @@
 #define EMC_INTSTATUS_CLKCHANGE_COMPLETE			BIT(4)
 #define EMC_DBG							0x8
 #define EMC_DBG_WRITE_MUX_ACTIVE				BIT(1)
+#define EMC_DBG_WRITE_ACTIVE_ONLY				BIT(30)
 #define EMC_CFG							0xc
+#define EMC_CFG_DRAM_CLKSTOP_PD					BIT(31)
+#define EMC_CFG_DRAM_CLKSTOP_SR					BIT(30)
+#define EMC_CFG_DRAM_ACPD					BIT(29)
+#define EMC_CFG_DYN_SELF_REF					BIT(28)
+#define EMC_PIN							0x24
+#define EMC_PIN_PIN_CKE						BIT(0)
+#define EMC_PIN_PIN_CKEB					BIT(1)
+#define EMC_PIN_PIN_CKE_PER_DEV					BIT(2)
 #define EMC_TIMING_CONTROL					0x28
 #define EMC_RC							0x2c
 #define EMC_RFC							0x30
@@ -62,6 +71,8 @@
 #define EMC_WEXT						0xb8
 #define EMC_RFC_SLR						0xc0
 #define EMC_MRS_WAIT_CNT2					0xc4
+#define EMC_MRS_WAIT_CNT2_MRS_EXT2_WAIT_CNT_SHIFT		16
+#define EMC_MRS_WAIT_CNT2_MRS_EXT1_WAIT_CNT_SHIFT		0
 #define EMC_MRS_WAIT_CNT					0xc8
 #define EMC_MRS_WAIT_CNT_SHORT_WAIT_SHIFT			0
 #define EMC_MRS_WAIT_CNT_SHORT_WAIT_MASK			\
@@ -98,14 +109,34 @@
 #define EMC_PDEX2CKE						0x118
 #define EMC_CKE2PDEN						0x11c
 #define EMC_MPC							0x128
+#define EMC_EMRS2						0x12c
+#define EMC_EMRS2_USE_EMRS2_LONG_CNT				BIT(26)
+#define EMC_MRW2						0x134
+#define EMC_MRW3						0x138
+#define EMC_MRW4						0x13c
 #define EMC_R2R							0x144
 #define EMC_EINPUT						0x14c
 #define EMC_EINPUT_DURATION					0x150
 #define EMC_PUTERM_EXTRA					0x154
 #define EMC_TCKESR						0x158
 #define EMC_TPD							0x15c
+#define EMC_AUTO_CAL_CONFIG					0x2a4
+#define EMC_AUTO_CAL_CONFIG_AUTO_CAL_COMPUTE_START		BIT(0)
+#define EMC_AUTO_CAL_CONFIG_AUTO_CAL_MEASURE_STALL		BIT(9)
+#define EMC_AUTO_CAL_CONFIG_AUTO_CAL_UPDATE_STALL		BIT(10)
+#define EMC_AUTO_CAL_CONFIG_AUTO_CAL_ENABLE			BIT(29)
+#define EMC_AUTO_CAL_CONFIG_AUTO_CAL_START			BIT(31)
 #define EMC_EMC_STATUS						0x2b4
+#define EMC_EMC_STATUS_MRR_DIVLD				BIT(20)
 #define EMC_EMC_STATUS_TIMING_UPDATE_STALLED			BIT(23)
+#define EMC_EMC_STATUS_DRAM_IN_POWERDOWN_SHIFT			4
+#define EMC_EMC_STATUS_DRAM_IN_POWERDOWN_MASK			\
+	(0x3 << EMC_EMC_STATUS_DRAM_IN_POWERDOWN_SHIFT)
+#define EMC_EMC_STATUS_DRAM_IN_SELF_REFRESH_SHIFT		8
+#define EMC_EMC_STATUS_DRAM_IN_SELF_REFRESH_MASK		\
+	(0x3 << EMC_EMC_STATUS_DRAM_IN_SELF_REFRESH_SHIFT)
+
+#define EMC_CFG_2						0x2b8
 #define EMC_CFG_DIG_DLL						0x2bc
 #define EMC_CFG_DIG_DLL_CFG_DLL_EN				BIT(0)
 #define EMC_CFG_DIG_DLL_CFG_DLL_STALL_ALL_UNTIL_LOCK		BIT(1)
@@ -131,8 +162,17 @@
 #define EMC_WDV_MASK						0x2d0
 #define EMC_RDV_EARLY_MASK					0x2d4
 #define EMC_RDV_EARLY						0x2d8
+#define EMC_AUTO_CAL_CONFIG8					0x2dc
 #define EMC_ZCAL_INTERVAL					0x2e0
 #define EMC_ZCAL_WAIT_CNT					0x2e4
+#define EMC_ZCAL_WAIT_CNT_ZCAL_WAIT_CNT_MASK			0x7ff
+#define EMC_ZCAL_WAIT_CNT_ZCAL_WAIT_CNT_SHIFT			0
+
+#define EMC_ZQ_CAL						0x2ec
+#define EMC_ZQ_CAL_DEV_SEL_SHIFT				30
+#define EMC_ZQ_CAL_LONG						BIT(4)
+#define EMC_ZQ_CAL_ZQ_LATCH_CMD					BIT(1)
+#define EMC_ZQ_CAL_ZQ_CAL_CMD					BIT(0)
 #define EMC_FDPD_CTRL_DQ					0x310
 #define EMC_FDPD_CTRL_CMD					0x314
 #define EMC_PMACRO_CMD_BRICK_CTRL_FDPD				0x318
@@ -142,6 +182,13 @@
 #define EMC_TR_TIMING_0						0x3b4
 #define EMC_TR_CTRL_1						0x3bc
 #define EMC_TR_RDV						0x3c4
+#define EMC_STALL_THEN_EXE_AFTER_CLKCHANGE			0x3cc
+#define EMC_SEL_DPD_CTRL					0x3d8
+#define EMC_SEL_DPD_CTRL_DATA_SEL_DPD_EN			BIT(8)
+#define EMC_SEL_DPD_CTRL_ODT_SEL_DPD_EN				BIT(5)
+#define EMC_SEL_DPD_CTRL_RESET_SEL_DPD_EN			BIT(4)
+#define EMC_SEL_DPD_CTRL_CA_SEL_DPD_EN				BIT(3)
+#define EMC_SEL_DPD_CTRL_CLK_SEL_DPD_EN				BIT(2)
 #define EMC_PRE_REFRESH_REQ_CNT					0x3dc
 #define EMC_DYN_SELF_REF_CONTROL				0x3e0
 #define EMC_TXSRDLL						0x3e4
@@ -154,6 +201,9 @@
 #define EMC_TR_RDV_MASK						0x3f8
 #define EMC_TR_QSAFE						0x3fc
 #define EMC_TR_QRST						0x400
+#define EMC_ISSUE_QRST						0x428
+#define EMC_AUTO_CAL_CONFIG2					0x458
+#define EMC_AUTO_CAL_CONFIG3					0x45c
 #define EMC_TR_DVFS						0x460
 #define EMC_AUTO_CAL_CHANNEL					0x464
 #define EMC_IBDLY						0x468
@@ -167,19 +217,26 @@
 #define EMC_MRW6						0x4a4
 #define EMC_MRW7						0x4a8
 #define EMC_MRW8						0x4ac
+#define EMC_MRW9						0x4b0
 #define EMC_MRW10						0x4b4
 #define EMC_MRW11						0x4b8
 #define EMC_MRW12						0x4bc
 #define EMC_MRW13						0x4c0
 #define EMC_MRW14						0x4c4
 #define EMC_MRW15						0x4d0
+#define EMC_CFG_SYNC						0x4d4
+#define EMC_FDPD_CTRL_CMD_NO_RAMP				0x4d8
+#define EMC_FDPD_CTRL_CMD_NO_RAMP_CMD_DPD_NO_RAMP_ENABLE	BIT(0)
 #define EMC_WDV_CHK						0x4e0
 #define EMC_CFG_PIPE_2						0x554
+#define EMC_CFG_PIPE_CLK					0x558
+#define EMC_CFG_PIPE_CLK_CLK_ALWAYS_ON				BIT(0)
 #define EMC_CFG_PIPE_1						0x55c
 #define EMC_CFG_PIPE						0x560
 #define EMC_QPOP						0x564
 #define EMC_QUSE_WIDTH						0x568
 #define EMC_PUTERM_WIDTH					0x56c
+#define EMC_AUTO_CAL_CONFIG7					0x574
 #define EMC_REFCTRL2						0x580
 #define EMC_FBIO_CFG7						0x584
 #define EMC_FBIO_CFG7_CH0_ENABLE				BIT(1)
@@ -244,10 +301,13 @@
 #define EMC_CMD_BRLSHFT_2					0x5a4
 #define EMC_CMD_BRLSHFT_3					0x5a8
 #define EMC_QUSE_BRLSHFT_0					0x5ac
+#define EMC_AUTO_CAL_CONFIG4					0x5b0
+#define EMC_AUTO_CAL_CONFIG5					0x5b4
 #define EMC_QUSE_BRLSHFT_1					0x5b8
 #define EMC_QUSE_BRLSHFT_2					0x5bc
 #define EMC_CCDMW						0x5c0
 #define EMC_QUSE_BRLSHFT_3					0x5c4
+#define EMC_AUTO_CAL_CONFIG6					0x5cc
 #define EMC_DLL_CFG_0						0x5e4
 #define EMC_DLL_CFG_1						0x5e8
 #define EMC_DLL_CFG_1_DDLLCAL_CTRL_START_TRIM_SHIFT		10
@@ -255,6 +315,11 @@
 	(0x7ff << EMC_DLL_CFG_1_DDLLCAL_CTRL_START_TRIM_SHIFT)
 
 #define EMC_CONFIG_SAMPLE_DELAY					0x5f0
+#define EMC_CFG_UPDATE						0x5f4
+#define EMC_CFG_UPDATE_UPDATE_DLL_IN_UPDATE_SHIFT		9
+#define EMC_CFG_UPDATE_UPDATE_DLL_IN_UPDATE_MASK		\
+	(0x3 << EMC_CFG_UPDATE_UPDATE_DLL_IN_UPDATE_SHIFT)
+
 #define EMC_PMACRO_QUSE_DDLL_RANK0_0				0x600
 #define EMC_PMACRO_QUSE_DDLL_RANK0_1				0x604
 #define EMC_PMACRO_QUSE_DDLL_RANK0_2				0x608
@@ -563,9 +628,20 @@
 #define EMC_PMACRO_DDLL_SHORT_CMD_0				0xc20
 #define EMC_PMACRO_DDLL_SHORT_CMD_1				0xc24
 #define EMC_PMACRO_DDLL_SHORT_CMD_2				0xc28
+#define EMC_PMACRO_CFG_PM_GLOBAL_0				0xc30
+#define EMC_PMACRO_CFG_PM_GLOBAL_0_DISABLE_CFG_BYTE0		BIT(16)
+#define EMC_PMACRO_CFG_PM_GLOBAL_0_DISABLE_CFG_BYTE1		BIT(17)
+#define EMC_PMACRO_CFG_PM_GLOBAL_0_DISABLE_CFG_BYTE2		BIT(18)
+#define EMC_PMACRO_CFG_PM_GLOBAL_0_DISABLE_CFG_BYTE3		BIT(19)
+#define EMC_PMACRO_CFG_PM_GLOBAL_0_DISABLE_CFG_BYTE4		BIT(20)
+#define EMC_PMACRO_CFG_PM_GLOBAL_0_DISABLE_CFG_BYTE5		BIT(21)
+#define EMC_PMACRO_CFG_PM_GLOBAL_0_DISABLE_CFG_BYTE6		BIT(22)
+#define EMC_PMACRO_CFG_PM_GLOBAL_0_DISABLE_CFG_BYTE7		BIT(23)
 #define EMC_PMACRO_VTTGEN_CTRL_0				0xc34
 #define EMC_PMACRO_VTTGEN_CTRL_1				0xc38
 #define EMC_PMACRO_BG_BIAS_CTRL_0				0xc3c
+#define EMC_PMACRO_BG_BIAS_CTRL_0_BG_E_PWRD			BIT(0)
+#define EMC_PMACRO_BG_BIAS_CTRL_0_BGLP_E_PWRD			BIT(2)
 #define EMC_PMACRO_PAD_CFG_CTRL					0xc40
 #define EMC_PMACRO_ZCTRL					0xc44
 #define EMC_PMACRO_CMD_PAD_RX_CTRL				0xc50
@@ -580,15 +656,22 @@
 #define EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQ_TX_DRVFORCEON		BIT(26)
 
 #define EMC_PMACRO_DATA_PAD_TX_CTRL				0xc64
+#define EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQ_E_IVREF		BIT(0)
 #define EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQ_TX_E_DCC		BIT(1)
+#define EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQS_E_IVREF		BIT(8)
 #define EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQSP_TX_E_DCC		BIT(9)
 #define EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQSN_TX_E_DCC		BIT(16)
 #define EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_CMD_TX_E_DCC		BIT(24)
 
 #define EMC_PMACRO_COMMON_PAD_TX_CTRL				0xc68
 #define EMC_PMACRO_AUTOCAL_CFG_COMMON				0xc78
+#define EMC_PMACRO_AUTOCAL_CFG_COMMON_E_CAL_BYPASS_DVFS		BIT(16)
 #define EMC_PMACRO_VTTGEN_CTRL_2				0xcf0
 #define EMC_PMACRO_IB_RXRT					0xcf4
+#define EMC_PMACRO_TRAINING_CTRL_0				0xcf8
+#define EMC_PMACRO_TRAINING_CTRL_0_CH0_TRAINING_E_WRPTR		BIT(3)
+#define EMC_PMACRO_TRAINING_CTRL_1				0xcfc
+#define EMC_PMACRO_TRAINING_CTRL_1_CH1_TRAINING_E_WRPTR		BIT(3)
 #define EMC_TRAINING_CTRL					0xe04
 #define EMC_TRAINING_QUSE_CORS_CTRL				0xe0c
 #define EMC_TRAINING_QUSE_FINE_CTRL				0xe10
@@ -614,15 +697,31 @@
 #define EMC_COPY_TABLE_PARAM_TRIM_REGS				BIT(1)
 
 enum burst_regs_list {
+	EMC_RP_INDEX = 6,
+	EMC_R2P_INDEX = 9,
+	EMC_W2P_INDEX,
+	EMC_MRW6_INDEX = 31,
 	EMC_REFRESH_INDEX = 41,
 	EMC_PRE_REFRESH_REQ_CNT_INDEX = 43,
+	EMC_TRPAB_INDEX = 59,
+	EMC_MRW7_INDEX = 62,
 	EMC_FBIO_CFG5_INDEX = 65,
+	EMC_FBIO_CFG7_INDEX,
+	EMC_CFG_DIG_DLL_INDEX,
+	EMC_ZCAL_INTERVAL_INDEX = 139,
+	EMC_ZCAL_WAIT_CNT_INDEX,
+	EMC_MRS_WAIT_CNT_INDEX = 141,
 	EMC_DLL_CFG_0_INDEX = 144,
+	EMC_PMACRO_AUTOCAL_CFG_COMMON_INDEX = 146,
+	EMC_CFG_INDEX = 148,
 	EMC_DYN_SELF_REF_CONTROL_INDEX = 150,
 	EMC_PMACRO_CMD_PAD_TX_CTRL_INDEX = 161,
 	EMC_PMACRO_DATA_PAD_TX_CTRL_INDEX,
 	EMC_PMACRO_COMMON_PAD_TX_CTRL_INDEX,
 	EMC_PMACRO_BRICK_CTRL_RFU1_INDEX = 167,
+	EMC_PMACRO_BG_BIAS_CTRL_0_INDEX = 171,
+	EMC_MRW14_INDEX = 199,
+	EMC_MRW15_INDEX = 220,
 };
 
 enum trim_regs_list {
@@ -875,6 +974,9 @@ static inline u32 div_o3(u32 a, u32 b)
 	return result;
 }
 
+/* from tegra210-emc-r21021.c */
+extern const struct tegra210_emc_sequence tegra210_emc_r21021;
+
 u32 tegra210_emc_mrr_read(struct tegra210_emc *emc, unsigned int chip,
 			  unsigned int address);
 void tegra210_emc_do_clock_change(struct tegra210_emc *emc, u32 clksrc);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
