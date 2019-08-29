Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC540A29A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:20:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AYIkqHQvyM2I9bxvbPS/5dMwMtn/5zJ2ErYodkfqfGc=; b=tijUu65jQNkjlH
	XXfSRUzaXsneu3EiJeVAEli7xw7uxaXRyIPgYdp9ouXXHU6CVxw15EGQnlQ7+v+/Sfg0ZDhnG3X5V
	wcoWcMdcY71utFlsPVVEW9BKbwV2ND33FtdLGsQP9iXoUx+nJVhiVkNyXMQOGHz44g8L59jHhZH7P
	UtyDcYdRLQndiJZTC6jDMiAzS0t1BBwwp4IQ3vSp7lIDj0l97WNO2Yu+ii0VHufYG0E02QJlr5kVq
	TiwlDZf3iVr3cPGJQ58Pb1WMRm/03HcSgX0HkW82LI4gHlqnlNGgSIW0TrjDQ7YHcfE3Z+mswHlOS
	vfubVL/n43EtlgR+YQwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3SmN-0007PE-Or; Thu, 29 Aug 2019 22:20:31 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3SlI-0005Ml-Dh
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:19:26 +0000
Received: by mail-ed1-x543.google.com with SMTP id g24so5771958edu.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 15:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3MgsHRomQXTKk/AP9VNGxemv52H6Uuxug0JsN0CWanU=;
 b=NZQCdEFsOtdLIKxeK4iSEMS+9uWsq6jPAysC5wKYj585MndErb6CPBKQ03HuRM1CxP
 MlpUXmppMLORkTP8cO3ZvAD4wSoKwkCVdqsAeTY0idayQ9FcK8eCrdMZUOi0sMwhVGsp
 yfWGg3pNnqVTqW3n1riyn2m5n1ThHenEPKzXza0PITJT+7EMQjbnXXMsaoeR2Q2AB+ut
 TMywDSJEIsnvgA+uf4IsqvkrWj6wW1jcXMEf7SU04UkkYXEeE2ZlSOyhep7yxGmpd+n7
 wEA10dAwCiZf9+iwCTolmcfLMABy5neRcy0evAzWN6Z4i0uBJAZA4nBDU8e/Ruy8DlZl
 gBFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3MgsHRomQXTKk/AP9VNGxemv52H6Uuxug0JsN0CWanU=;
 b=G7oo+iXf4Qt2a3wN7Qg8595wTTTM0bLvI5vNh0oVQMBGJlhuJxMibC+bIopYt3DzEM
 EuvtQmrUnNdMSTsr0f+JuMR8w+jVNQ8U21vucazrpL3RBymtAOcK0TNckxi1JgHSGJ8F
 3ltRTqx7j6a49iccV0NfCYy8P1UfxkouAgw9LWmYGHi6xQQzjWZXSf9b0WoOXdpmzx17
 uqCWTepqA735wCn3LYpuqOOAwuwbBQwoaJc6+b8PQHo388F+Lq50eORR1JI6fVHU/Xbm
 YpQi4hZZK2ZgcfNBeyCxMqTZEpMqRs536FEF5lrSgMl8yc95kxHT633nHc6aduXvraFE
 HuGQ==
X-Gm-Message-State: APjAAAVaaWpT/2TLq6cvm88M3PmBFy4/1Hvoap4I5gx9QukJnVBrfyv4
 8O7GuqFG994aFfaPdL+7zak=
X-Google-Smtp-Source: APXvYqy3n3+60HHXGNdciOB0090u/NCNWDnulDa+SB6PEheSbhgmjcky3cXjAYdsQiM3B8ukFE0sTA==
X-Received: by 2002:a05:6402:295:: with SMTP id
 l21mr12398251edv.13.1567117163188; 
 Thu, 29 Aug 2019 15:19:23 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id r10sm665632edp.25.2019.08.29.15.19.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 15:19:22 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 4/7] soc/tegra: fuse: Register cell lookups for compatibility
Date: Fri, 30 Aug 2019 00:19:08 +0200
Message-Id: <20190829221911.24876-5-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190829221911.24876-1-thierry.reding@gmail.com>
References: <20190829221911.24876-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_151924_758503_53BA86F4 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, Nagarjuna Kristam <nkristam@nvidia.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Typically nvmem cells would be stored in device tree. However, for
compatibility with device trees that don't contain nvmem cell
definitions, register lookups for cells currently used by consumers.
This allows the consumers to use the same API to query cells from the
device tree or using the legacy mechanism.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/soc/tegra/fuse/fuse-tegra.c   |   9 ++
 drivers/soc/tegra/fuse/fuse-tegra30.c | 154 ++++++++++++++++++++++++++
 drivers/soc/tegra/fuse/fuse.h         |   5 +
 3 files changed, 168 insertions(+)

diff --git a/drivers/soc/tegra/fuse/fuse-tegra.c b/drivers/soc/tegra/fuse/fuse-tegra.c
index c6c6a7746046..6a0e25103e1c 100644
--- a/drivers/soc/tegra/fuse/fuse-tegra.c
+++ b/drivers/soc/tegra/fuse/fuse-tegra.c
@@ -420,6 +420,15 @@ static int __init tegra_init_fuse(void)
 	pr_debug("Tegra CPU Speedo ID %d, SoC Speedo ID %d\n",
 		 tegra_sku_info.cpu_speedo_id, tegra_sku_info.soc_speedo_id);
 
+	if (fuse->soc->lookups) {
+		size_t size = sizeof(*fuse->lookups) * fuse->soc->num_lookups;
+
+		fuse->lookups = kmemdup(fuse->soc->lookups, size, GFP_KERNEL);
+		if (!fuse->lookups)
+			return -ENOMEM;
+
+		nvmem_add_cell_lookups(fuse->lookups, fuse->soc->num_lookups);
+	}
 
 	return 0;
 }
diff --git a/drivers/soc/tegra/fuse/fuse-tegra30.c b/drivers/soc/tegra/fuse/fuse-tegra30.c
index be9424a87173..b8daaf5b7291 100644
--- a/drivers/soc/tegra/fuse/fuse-tegra30.c
+++ b/drivers/soc/tegra/fuse/fuse-tegra30.c
@@ -8,6 +8,7 @@
 #include <linux/err.h>
 #include <linux/io.h>
 #include <linux/kernel.h>
+#include <linux/nvmem-consumer.h>
 #include <linux/of_device.h>
 #include <linux/of_address.h>
 #include <linux/platform_device.h>
@@ -127,6 +128,70 @@ const struct tegra_fuse_soc tegra114_fuse_soc = {
 #endif
 
 #if defined(CONFIG_ARCH_TEGRA_124_SOC) || defined(CONFIG_ARCH_TEGRA_132_SOC)
+static const struct nvmem_cell_lookup tegra124_fuse_lookups[] = {
+	{
+		.nvmem_name = "fuse",
+		.cell_name = "xusb-pad-calibration",
+		.dev_id = "7009f000.padctl",
+		.con_id = "calibration",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "sata-calibration",
+		.dev_id = "70020000.sata",
+		.con_id = "calibration",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "tsensor-common",
+		.dev_id = "700e2000.thermal-sensor",
+		.con_id = "common",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "tsensor-realignment",
+		.dev_id = "700e2000.thermal-sensor",
+		.con_id = "realignment",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "tsensor-cpu0",
+		.dev_id = "700e2000.thermal-sensor",
+		.con_id = "cpu0",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "tsensor-cpu1",
+		.dev_id = "700e2000.thermal-sensor",
+		.con_id = "cpu1",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "tsensor-cpu2",
+		.dev_id = "700e2000.thermal-sensor",
+		.con_id = "cpu2",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "tsensor-cpu3",
+		.dev_id = "700e2000.thermal-sensor",
+		.con_id = "cpu3",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "tsensor-mem0",
+		.dev_id = "700e2000.thermal-sensor",
+		.con_id = "mem0",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "tsensor-mem1",
+		.dev_id = "700e2000.thermal-sensor",
+		.con_id = "mem1",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "tsensor-gpu",
+		.dev_id = "700e2000.thermal-sensor",
+		.con_id = "gpu",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "tsensor-pllx",
+		.dev_id = "700e2000.thermal-sensor",
+		.con_id = "pllx",
+	},
+};
+
 static const struct tegra_fuse_info tegra124_fuse_info = {
 	.read = tegra30_fuse_read,
 	.size = 0x300,
@@ -137,10 +202,81 @@ const struct tegra_fuse_soc tegra124_fuse_soc = {
 	.init = tegra30_fuse_init,
 	.speedo_init = tegra124_init_speedo_data,
 	.info = &tegra124_fuse_info,
+	.lookups = tegra124_fuse_lookups,
+	.num_lookups = ARRAY_SIZE(tegra124_fuse_lookups),
 };
 #endif
 
 #if defined(CONFIG_ARCH_TEGRA_210_SOC)
+static const struct nvmem_cell_lookup tegra210_fuse_lookups[] = {
+	{
+		.nvmem_name = "fuse",
+		.cell_name = "tsensor-cpu1",
+		.dev_id = "700e2000.thermal-sensor",
+		.con_id = "cpu1",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "tsensor-cpu2",
+		.dev_id = "700e2000.thermal-sensor",
+		.con_id = "cpu2",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "tsensor-cpu0",
+		.dev_id = "700e2000.thermal-sensor",
+		.con_id = "cpu0",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "xusb-pad-calibration",
+		.dev_id = "7009f000.padctl",
+		.con_id = "calibration",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "tsensor-cpu3",
+		.dev_id = "700e2000.thermal-sensor",
+		.con_id = "cpu3",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "sata-calibration",
+		.dev_id = "70020000.sata",
+		.con_id = "calibration",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "tsensor-gpu",
+		.dev_id = "700e2000.thermal-sensor",
+		.con_id = "gpu",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "tsensor-mem0",
+		.dev_id = "700e2000.thermal-sensor",
+		.con_id = "mem0",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "tsensor-mem1",
+		.dev_id = "700e2000.thermal-sensor",
+		.con_id = "mem1",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "tsensor-pllx",
+		.dev_id = "700e2000.thermal-sensor",
+		.con_id = "pllx",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "tsensor-common",
+		.dev_id = "700e2000.thermal-sensor",
+		.con_id = "common",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "gpu-calibration",
+		.dev_id = "57000000.gpu",
+		.con_id = "calibration",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "xusb-pad-calibration-ext",
+		.dev_id = "7009f000.padctl",
+		.con_id = "calibration-ext",
+	},
+};
+
 static const struct tegra_fuse_info tegra210_fuse_info = {
 	.read = tegra30_fuse_read,
 	.size = 0x300,
@@ -151,10 +287,26 @@ const struct tegra_fuse_soc tegra210_fuse_soc = {
 	.init = tegra30_fuse_init,
 	.speedo_init = tegra210_init_speedo_data,
 	.info = &tegra210_fuse_info,
+	.lookups = tegra210_fuse_lookups,
+	.num_lookups = ARRAY_SIZE(tegra210_fuse_lookups),
 };
 #endif
 
 #if defined(CONFIG_ARCH_TEGRA_186_SOC)
+static const struct nvmem_cell_lookup tegra186_fuse_lookups[] = {
+	{
+		.nvmem_name = "fuse",
+		.cell_name = "xusb-pad-calibration",
+		.dev_id = "3520000.padctl",
+		.con_id = "calibration",
+	}, {
+		.nvmem_name = "fuse",
+		.cell_name = "xusb-pad-calibration-ext",
+		.dev_id = "3520000.padctl",
+		.con_id = "calibration-ext",
+	},
+};
+
 static const struct tegra_fuse_info tegra186_fuse_info = {
 	.read = tegra30_fuse_read,
 	.size = 0x300,
@@ -164,5 +316,7 @@ static const struct tegra_fuse_info tegra186_fuse_info = {
 const struct tegra_fuse_soc tegra186_fuse_soc = {
 	.init = tegra30_fuse_init,
 	.info = &tegra186_fuse_info,
+	.lookups = tegra186_fuse_lookups,
+	.num_lookups = ARRAY_SIZE(tegra186_fuse_lookups),
 };
 #endif
diff --git a/drivers/soc/tegra/fuse/fuse.h b/drivers/soc/tegra/fuse/fuse.h
index 32bf6c070ae7..0f74c2c34af0 100644
--- a/drivers/soc/tegra/fuse/fuse.h
+++ b/drivers/soc/tegra/fuse/fuse.h
@@ -13,6 +13,7 @@
 #include <linux/dmaengine.h>
 #include <linux/types.h>
 
+struct nvmem_cell_lookup;
 struct nvmem_device;
 struct tegra_fuse;
 
@@ -28,6 +29,9 @@ struct tegra_fuse_soc {
 	int (*probe)(struct tegra_fuse *fuse);
 
 	const struct tegra_fuse_info *info;
+
+	const struct nvmem_cell_lookup *lookups;
+	unsigned int num_lookups;
 };
 
 struct tegra_fuse {
@@ -51,6 +55,7 @@ struct tegra_fuse {
 	} apbdma;
 
 	struct nvmem_device *nvmem;
+	struct nvmem_cell_lookup *lookups;
 };
 
 void tegra_init_revision(void);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
