Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF93128E73
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 15:13:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8WfI/T5k88IPKS/r28zxVYzvLhIjoBy8EVxl8cgZBs=; b=ftsfQZMBEm5e1Q
	HDUz/glKusZiqoN4rVRo4OwkUfLs68e4G/23l6NQptS1BGOP4JnbmzFt3NcnehBK3U6ZlqGqxmbDi
	WfEibC8d+sMgO/kD7RwNvXJ7ZD6/SOsoelnaO2mQY/e7fTre+7SP6W6WLbSxKstiZkmUzJayLCOOb
	7o1CZSVEeedxZVN+tUm3r+7zr6N4sGVe8LzkQOj0DZADU/I1EfhSvI2VVFv3wujqRqwg3ZTinMwn7
	l8izEpM75Do+SgkTq00+srvSGM6+vh+vGNksnBX2CIvyykfAz2ra1TOPvVapGETEMTqgPNjeM/0BQ
	hnEkp9fNuPi2KZNcmAKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij1yo-0003QR-AW; Sun, 22 Dec 2019 14:13:10 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij1wa-0001eq-Ce
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 14:10:54 +0000
Received: by mail-wm1-x343.google.com with SMTP id 20so13565832wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 06:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JLC9lrfgfa+2fElLPLarspKF7TQ1WkQucfGmNyEr9Uk=;
 b=kKqQD1zOEreP5iquZSfmgcIFiBhPielW5AH6uYfDjnIG7eYduLjCL6pGSReVyXQa8a
 nw5IWl0HyBfVC6jweaFYqE+pL+kltVdjd6bTi7pvAEv8UCImL5Op/8yZvm4L4kSU0A4l
 HBoYZ7B3vYhn76pNj+fXICXKY0jn3HJtnoA7stRI6JZJeCbbswSeUgWqodTHZji9fCpU
 2JCVLb6lRCq5tD6f3p+LSWNPuR3jl6w5svw4txOIZ9wsL3FPFLryR5bZUSQlkEluPmvU
 LXWKsfktvwqHpIRd9Y4AOwIldBq6zTOf9bnUEmqDV5KOaq4M9tRfC8VXAupTCLz9pDd+
 rZBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JLC9lrfgfa+2fElLPLarspKF7TQ1WkQucfGmNyEr9Uk=;
 b=LNpXQrUpGYgz+OMhtOhcu5sNn8ERwUjB33r1eTmuf4O48MdZhkYdLAimkU+ZiTxQIu
 kTILi5EzjuHWv/baSAAuSINXXhIqtik82wXRidZ9PQy3VcJgVQoItEQ3tS10Lvf4+dld
 ZIKnIo01Ry8aszt9mqcWjha3/eR7sUiykAck+9YNivAlpysH+hzloD9GBmPdFph4KAzV
 87NOBNflw+gdYaOJPOPutkd5aN+mOhVu5yNH4Q2mRa2ZT4rOjsaxcNjjf29WgMMKB2eO
 6LYQNrE/0gjHHYLyE521206uzaAhjS4d0auOjA/fRhg7KRuj2qpuPAy0Kb+/K80UKRq9
 ikLw==
X-Gm-Message-State: APjAAAW4C68L9TB+LILrSlwjiLIxMXayXFdtm8MF2YtrWDZVkO11RVxS
 LQTeIrdrnbaLsbw3HEIkioE=
X-Google-Smtp-Source: APXvYqwBRmwTbjUnDp5jtx10uNYp9R4cN72PPj6UG0lyFTQkx+UpBscLGA+TYgYRqdeEVHFaI31wxQ==
X-Received: by 2002:a1c:f210:: with SMTP id s16mr3482950wmc.57.1577023850885; 
 Sun, 22 Dec 2019 06:10:50 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id p7sm16356242wmp.31.2019.12.22.06.10.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 06:10:50 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 08/13] memory: tegra: Support DVFS on Tegra186 and later
Date: Sun, 22 Dec 2019 15:10:30 +0100
Message-Id: <20191222141035.1649937-9-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191222141035.1649937-1-thierry.reding@gmail.com>
References: <20191222141035.1649937-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_061052_496336_4FC6D85F 
X-CRM114-Status: GOOD (  25.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Add a Tegra186 (and later) EMC driver that reads the EMC DVFS tables
from BPMP and uses the EMC clock to change the external memory clock.

This currently only provides a debugfs interface to show the available
frequencies and set lower and upper limits of the allowed range. This
can be used for testing the various frequencies. The goal is to
eventually integrate this with the interconnect framework so that the
EMC frequency can be scaled based on demand from memory clients.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/memory/tegra/Makefile       |   2 +-
 drivers/memory/tegra/tegra186-emc.c | 288 ++++++++++++++++++++++++++++
 drivers/memory/tegra/tegra186.c     |  20 +-
 3 files changed, 308 insertions(+), 2 deletions(-)
 create mode 100644 drivers/memory/tegra/tegra186-emc.c

diff --git a/drivers/memory/tegra/Makefile b/drivers/memory/tegra/Makefile
index 3d23c4261104..1a5e112f6196 100644
--- a/drivers/memory/tegra/Makefile
+++ b/drivers/memory/tegra/Makefile
@@ -13,4 +13,4 @@ obj-$(CONFIG_TEGRA_MC) += tegra-mc.o
 obj-$(CONFIG_TEGRA20_EMC)  += tegra20-emc.o
 obj-$(CONFIG_TEGRA30_EMC)  += tegra30-emc.o
 obj-$(CONFIG_TEGRA124_EMC) += tegra124-emc.o
-obj-$(CONFIG_ARCH_TEGRA_186_SOC) += tegra186.o
+obj-$(CONFIG_ARCH_TEGRA_186_SOC) += tegra186.o tegra186-emc.o
diff --git a/drivers/memory/tegra/tegra186-emc.c b/drivers/memory/tegra/tegra186-emc.c
new file mode 100644
index 000000000000..a3f275a7b4d6
--- /dev/null
+++ b/drivers/memory/tegra/tegra186-emc.c
@@ -0,0 +1,288 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2019 NVIDIA CORPORATION.  All rights reserved.
+ */
+
+#include <linux/clk.h>
+#include <linux/debugfs.h>
+#include <linux/module.h>
+#include <linux/mod_devicetable.h>
+#include <linux/platform_device.h>
+
+#include <soc/tegra/bpmp.h>
+
+struct tegra186_emc_dvfs {
+	unsigned long latency;
+	unsigned long rate;
+};
+
+struct tegra186_emc {
+	struct tegra_bpmp *bpmp;
+	struct device *dev;
+	struct clk *clk;
+
+	struct tegra186_emc_dvfs *dvfs;
+	unsigned int num_dvfs;
+
+	struct {
+		struct dentry *root;
+		unsigned long min_rate;
+		unsigned long max_rate;
+	} debugfs;
+};
+
+/*
+ * debugfs interface
+ *
+ * The memory controller driver exposes some files in debugfs that can be used
+ * to control the EMC frequency. The top-level directory can be found here:
+ *
+ *   /sys/kernel/debug/emc
+ *
+ * It contains the following files:
+ *
+ *   - available_rates: This file contains a list of valid, space-separated
+ *     EMC frequencies.
+ *
+ *   - min_rate: Writing a value to this file sets the given frequency as the
+ *       floor of the permitted range. If this is higher than the currently
+ *       configured EMC frequency, this will cause the frequency to be
+ *       increased so that it stays within the valid range.
+ *
+ *   - max_rate: Similarily to the min_rate file, writing a value to this file
+ *       sets the given frequency as the ceiling of the permitted range. If
+ *       the value is lower than the currently configured EMC frequency, this
+ *       will cause the frequency to be decreased so that it stays within the
+ *       valid range.
+ */
+
+static bool tegra186_emc_validate_rate(struct tegra186_emc *emc,
+				       unsigned long rate)
+{
+	unsigned int i;
+
+	for (i = 0; i < emc->num_dvfs; i++)
+		if (rate == emc->dvfs[i].rate)
+			return true;
+
+	return false;
+}
+
+static int tegra186_emc_debug_available_rates_show(struct seq_file *s,
+						   void *data)
+{
+	struct tegra186_emc *emc = s->private;
+	const char *prefix = "";
+	unsigned int i;
+
+	for (i = 0; i < emc->num_dvfs; i++) {
+		seq_printf(s, "%s%lu", prefix, emc->dvfs[i].rate);
+		prefix = " ";
+	}
+
+	seq_puts(s, "\n");
+
+	return 0;
+}
+
+static int tegra186_emc_debug_available_rates_open(struct inode *inode,
+						   struct file *file)
+{
+	return single_open(file, tegra186_emc_debug_available_rates_show,
+			   inode->i_private);
+}
+
+static const struct file_operations tegra186_emc_debug_available_rates_fops = {
+	.open = tegra186_emc_debug_available_rates_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+};
+
+static int tegra186_emc_debug_min_rate_get(void *data, u64 *rate)
+{
+	struct tegra186_emc *emc = data;
+
+	*rate = emc->debugfs.min_rate;
+
+	return 0;
+}
+
+static int tegra186_emc_debug_min_rate_set(void *data, u64 rate)
+{
+	struct tegra186_emc *emc = data;
+	int err;
+
+	if (!tegra186_emc_validate_rate(emc, rate))
+		return -EINVAL;
+
+	err = clk_set_min_rate(emc->clk, rate);
+	if (err < 0)
+		return err;
+
+	emc->debugfs.min_rate = rate;
+
+	return 0;
+}
+
+DEFINE_SIMPLE_ATTRIBUTE(tegra186_emc_debug_min_rate_fops,
+			tegra186_emc_debug_min_rate_get,
+			tegra186_emc_debug_min_rate_set, "%llu\n");
+
+static int tegra186_emc_debug_max_rate_get(void *data, u64 *rate)
+{
+	struct tegra186_emc *emc = data;
+
+	*rate = emc->debugfs.max_rate;
+
+	return 0;
+}
+
+static int tegra186_emc_debug_max_rate_set(void *data, u64 rate)
+{
+	struct tegra186_emc *emc = data;
+	int err;
+
+	if (!tegra186_emc_validate_rate(emc, rate))
+		return -EINVAL;
+
+	err = clk_set_max_rate(emc->clk, rate);
+	if (err < 0)
+		return err;
+
+	emc->debugfs.max_rate = rate;
+
+	return 0;
+}
+
+DEFINE_SIMPLE_ATTRIBUTE(tegra186_emc_debug_max_rate_fops,
+			tegra186_emc_debug_max_rate_get,
+			tegra186_emc_debug_max_rate_set, "%llu\n");
+
+static int tegra186_emc_probe(struct platform_device *pdev)
+{
+	struct mrq_emc_dvfs_latency_response response;
+	struct tegra_bpmp_message msg;
+	struct tegra186_emc *emc;
+	unsigned int i;
+	int err;
+
+	emc = devm_kzalloc(&pdev->dev, sizeof(*emc), GFP_KERNEL);
+	if (!emc)
+		return -ENOMEM;
+
+	emc->bpmp = tegra_bpmp_get(&pdev->dev);
+	if (IS_ERR(emc->bpmp)) {
+		err = PTR_ERR(emc->bpmp);
+
+		if (err != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "failed to get BPMP: %d\n", err);
+
+		return err;
+	}
+
+	emc->clk = devm_clk_get(&pdev->dev, "emc");
+	if (IS_ERR(emc->clk)) {
+		err = PTR_ERR(emc->clk);
+		dev_err(&pdev->dev, "failed to get EMC clock: %d\n", err);
+		return err;
+	}
+
+	platform_set_drvdata(pdev, emc);
+	emc->dev = &pdev->dev;
+
+	memset(&msg, 0, sizeof(msg));
+	msg.mrq = MRQ_EMC_DVFS_LATENCY;
+	msg.tx.data = NULL;
+	msg.tx.size = 0;
+	msg.rx.data = &response;
+	msg.rx.size = sizeof(response);
+
+	err = tegra_bpmp_transfer(emc->bpmp, &msg);
+	if (err < 0) {
+		dev_err(&pdev->dev, "failed to EMC DVFS pairs: %d\n", err);
+		return err;
+	}
+
+	emc->debugfs.min_rate = ULONG_MAX;
+	emc->debugfs.max_rate = 0;
+
+	emc->num_dvfs = response.num_pairs;
+
+	emc->dvfs = devm_kmalloc_array(&pdev->dev, emc->num_dvfs,
+				       sizeof(*emc->dvfs), GFP_KERNEL);
+	if (!emc->dvfs)
+		return -ENOMEM;
+
+	dev_dbg(&pdev->dev, "%u DVFS pairs:\n", emc->num_dvfs);
+
+	for (i = 0; i < emc->num_dvfs; i++) {
+		emc->dvfs[i].rate = response.pairs[i].freq * 1000;
+		emc->dvfs[i].latency = response.pairs[i].latency;
+
+		if (emc->dvfs[i].rate < emc->debugfs.min_rate)
+			emc->debugfs.min_rate = emc->dvfs[i].rate;
+
+		if (emc->dvfs[i].rate > emc->debugfs.max_rate)
+			emc->debugfs.max_rate = emc->dvfs[i].rate;
+
+		dev_dbg(&pdev->dev, "  %2u: %lu Hz -> %lu us\n", i,
+			emc->dvfs[i].rate, emc->dvfs[i].latency);
+	}
+
+	err = clk_set_rate_range(emc->clk, emc->debugfs.min_rate,
+				 emc->debugfs.max_rate);
+	if (err < 0) {
+		dev_err(&pdev->dev,
+			"failed to set rate range [%lu-%lu] for %pC\n",
+			emc->debugfs.min_rate, emc->debugfs.max_rate,
+			emc->clk);
+		return err;
+	}
+
+	emc->debugfs.root = debugfs_create_dir("emc", NULL);
+	if (!emc->debugfs.root) {
+		dev_err(&pdev->dev, "failed to create debugfs directory\n");
+		return 0;
+	}
+
+	debugfs_create_file("available_rates", S_IRUGO, emc->debugfs.root,
+			    emc, &tegra186_emc_debug_available_rates_fops);
+	debugfs_create_file("min_rate", S_IRUGO | S_IWUSR, emc->debugfs.root,
+			    emc, &tegra186_emc_debug_min_rate_fops);
+	debugfs_create_file("max_rate", S_IRUGO | S_IWUSR, emc->debugfs.root,
+			    emc, &tegra186_emc_debug_max_rate_fops);
+
+	return 0;
+}
+
+static int tegra186_emc_remove(struct platform_device *pdev)
+{
+	struct tegra186_emc *emc = platform_get_drvdata(pdev);
+
+	debugfs_remove_recursive(emc->debugfs.root);
+	tegra_bpmp_put(emc->bpmp);
+
+	return 0;
+}
+
+static const struct of_device_id tegra186_emc_of_match[] = {
+	{ .compatible = "nvidia,tegra186-emc" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, tegra186_emc_of_match);
+
+static struct platform_driver tegra186_emc_driver = {
+	.driver = {
+		.name = "tegra186-emc",
+		.of_match_table = tegra186_emc_of_match,
+		.suppress_bind_attrs = true,
+	},
+	.probe = tegra186_emc_probe,
+	.remove = tegra186_emc_remove,
+};
+module_platform_driver(tegra186_emc_driver);
+
+MODULE_AUTHOR("Thierry Reding <treding@nvidia.com>");
+MODULE_DESCRIPTION("NVIDIA Tegra186 External Memory Controller driver");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/memory/tegra/tegra186.c b/drivers/memory/tegra/tegra186.c
index 77a313f1bf0e..a727f0925276 100644
--- a/drivers/memory/tegra/tegra186.c
+++ b/drivers/memory/tegra/tegra186.c
@@ -590,12 +590,30 @@ static int tegra186_mc_probe(struct platform_device *pdev)
 
 	mc->dev = &pdev->dev;
 
+	err = of_platform_populate(pdev->dev.of_node, NULL, NULL, &pdev->dev);
+	if (err < 0)
+		goto unregister;
+
 	platform_set_drvdata(pdev, mc);
 	tegra186_mc_program_sid(mc);
 
+	return 0;
+
+unregister:
+	memory_controller_unregister(&mc->base);
 	return err;
 }
 
+static int tegra186_mc_remove(struct platform_device *pdev)
+{
+	struct tegra186_mc *mc = platform_get_drvdata(pdev);
+
+	of_platform_depopulate(mc->dev);
+	memory_controller_unregister(&mc->base);
+
+	return 0;
+}
+
 static const struct of_device_id tegra186_mc_of_match[] = {
 	{ .compatible = "nvidia,tegra186-mc", .data = &tegra186_mc_soc },
 	{ /* sentinel */ }
@@ -627,8 +645,8 @@ static struct platform_driver tegra186_mc_driver = {
 		.pm = &tegra186_mc_pm_ops,
 		.suppress_bind_attrs = true,
 	},
-	.prevent_deferred_probe = true,
 	.probe = tegra186_mc_probe,
+	.remove = tegra186_mc_remove,
 };
 module_platform_driver(tegra186_mc_driver);
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
