Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD02A128E77
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 15:13:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxBSw2vjAo4ygNMwvG8L9tIKeOzP2svUa8OFOpcfP48=; b=NEm1LqQ4OYH1mj
	87CnG4Etb9UmgZb1YPTQjwcxtswxrp6GIg/VihJN/2B7A7AdI2PSEBrBVDnZTZc3t+ErjfXqZwjFL
	PD9+YORi8xbXqxQJ059aqlxbSDR8Q497MvCH8CxU/8+vfmdBQwldKVxQqLX2cwhJQYvyi/PGTKfcZ
	b76L1CXkdt4/35/zkupBtyVmPw04B8BbTpuigCyfbfYWCoOZRZGDRqPeg1e/HzOuSiWE5LdquhkJw
	MQCXQXbx/Xf4Zh/iLQxbH04ZiF3y1/Z7fKA3GIyWDZjGLnodPPlRxi5J+9K7swQY8cMWZeddGyVUS
	AC32C+UODrdENxdD6gfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij1zO-0003wG-SA; Sun, 22 Dec 2019 14:13:46 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij1wf-0001iR-8j
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 14:11:01 +0000
Received: by mail-wr1-x441.google.com with SMTP id c9so13944544wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 06:10:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QsHmATglC+CsY8GxIs0+y5YwYExVek8iDDm6BClbEA8=;
 b=el3gY7htjRq3cf6LrN/Oq/0Vribt57alob1/UlIki9EPc0sjYdqDGKd8O/0YZdCR1G
 mo1/Cv7EqSWL7SBzO7h/2CB8lDbr0oI3iI32Wj+kRbNHO/EjpskZBbj3xMZC+HIdI/iu
 PPLe+DRnaqFQaE/T67jF9Ssl5z9v2NVuOVQBK+EvdfbHHAUR+a25nXuN8eWXetTOMV/r
 H2v/PJZMxvXS3J/FhTi17oLyXquHn3XZVvQP8Rny2tuvEH16yjnR7SlCIsAm3Fv2Gmt3
 cjYKNoZvjY29R2pe+xTASHsFtMfS1dsxMDmJhIpqBr5NTTrk+MSiPXT/uJgJ0ipP1CHV
 51jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QsHmATglC+CsY8GxIs0+y5YwYExVek8iDDm6BClbEA8=;
 b=B7rdGTLAafG+9AJwxRisuyB8E+YDQ1JcI1XHt2UgDl1b+WRy+0Vdm+xX+FaZgq3728
 83CQrdW/d291DG8x7cb8S9Pjy1OsrPCTh0lwl/WFgAxGx9HOvo221JIQU/l7F0YXMYdf
 qJX9+1M0zxcizPMW3ncIRdoK6wOSYBrVmsYMcQ0QsE/i/3ogB+zkUo+2MBW2rU1q29oH
 VQMG0ER1t4bPhunPuXgxBWz5oKEx3uTDPcP38beipGrPtEE95Qm1w/B67N8lFeFjjeOh
 5YdWCYQtzZEc79b1ZxaQj95IUm+EF/Qcj4EiGtC4dEFbcObi4qcEOgWCIHnNbGxbp1Ci
 s74A==
X-Gm-Message-State: APjAAAW3efyEQSQiYl2BpzSWo4SSbaauGDLJsfCSsDtaH+MatA9XXx9V
 uo7q07HUxRt4KNCw8D34bmU=
X-Google-Smtp-Source: APXvYqzwQ+tlxPrFejM68zbOHLrKEKY7xk0X055GDBFpHDmC4+sSv3EQ/0bPe4nZr6MLlSMhqJ1AgA==
X-Received: by 2002:a5d:6802:: with SMTP id w2mr25052941wru.353.1577023854205; 
 Sun, 22 Dec 2019 06:10:54 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id z11sm16993394wrt.82.2019.12.22.06.10.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 06:10:53 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 10/13] memory: tegra: Add support for the Tegra194 memory
 controller
Date: Sun, 22 Dec 2019 15:10:32 +0100
Message-Id: <20191222141035.1649937-11-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191222141035.1649937-1-thierry.reding@gmail.com>
References: <20191222141035.1649937-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_061057_382877_12443D58 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

The memory and external memory controllers on Tegra194 are very similar
to their predecessors from Tegra186. Add the necessary SoC-specific data
to support the newer versions.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/memory/tegra/Makefile       |    1 +
 drivers/memory/tegra/tegra186-emc.c |    3 +
 drivers/memory/tegra/tegra186.c     | 1041 +++++++++++++++++++++++++--
 3 files changed, 999 insertions(+), 46 deletions(-)

diff --git a/drivers/memory/tegra/Makefile b/drivers/memory/tegra/Makefile
index 1a5e112f6196..529d10bc5650 100644
--- a/drivers/memory/tegra/Makefile
+++ b/drivers/memory/tegra/Makefile
@@ -14,3 +14,4 @@ obj-$(CONFIG_TEGRA20_EMC)  += tegra20-emc.o
 obj-$(CONFIG_TEGRA30_EMC)  += tegra30-emc.o
 obj-$(CONFIG_TEGRA124_EMC) += tegra124-emc.o
 obj-$(CONFIG_ARCH_TEGRA_186_SOC) += tegra186.o tegra186-emc.o
+obj-$(CONFIG_ARCH_TEGRA_194_SOC) += tegra186.o tegra186-emc.o
diff --git a/drivers/memory/tegra/tegra186-emc.c b/drivers/memory/tegra/tegra186-emc.c
index 812a4e152dcb..97f26bc77ad4 100644
--- a/drivers/memory/tegra/tegra186-emc.c
+++ b/drivers/memory/tegra/tegra186-emc.c
@@ -269,6 +269,9 @@ static int tegra186_emc_remove(struct platform_device *pdev)
 static const struct of_device_id tegra186_emc_of_match[] = {
 #if defined(CONFIG_ARCH_TEGRA186_SOC)
 	{ .compatible = "nvidia,tegra186-emc" },
+#endif
+#if defined(CONFIG_ARCH_TEGRA194_SOC)
+	{ .compatible = "nvidia,tegra194-emc" },
 #endif
 	{ /* sentinel */ }
 };
diff --git a/drivers/memory/tegra/tegra186.c b/drivers/memory/tegra/tegra186.c
index 9c9a2f54b6fc..8b4dcc3d02ae 100644
--- a/drivers/memory/tegra/tegra186.c
+++ b/drivers/memory/tegra/tegra186.c
@@ -13,6 +13,10 @@
 #include <dt-bindings/memory/tegra186-mc.h>
 #endif
 
+#if defined(CONFIG_ARCH_TEGRA_194_SOC)
+#include <dt-bindings/memory/tegra194-mc.h>
+#endif
+
 struct tegra186_mc_client {
 	const char *name;
 	unsigned int sid;
@@ -575,52 +579,997 @@ static const struct tegra186_mc_soc tegra186_mc_soc = {
 };
 #endif
 
-static int tegra186_mc_probe(struct platform_device *pdev)
-{
-	struct tegra186_mc *mc;
-	struct resource *res;
-	int err;
-
-	mc = devm_kzalloc(&pdev->dev, sizeof(*mc), GFP_KERNEL);
-	if (!mc)
-		return -ENOMEM;
-
-	mc->soc = of_device_get_match_data(&pdev->dev);
-
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mc->regs = devm_ioremap_resource(&pdev->dev, res);
-	if (IS_ERR(mc->regs))
-		return PTR_ERR(mc->regs);
-
-	mc->dev = &pdev->dev;
-
-	err = of_platform_populate(pdev->dev.of_node, NULL, NULL, &pdev->dev);
-	if (err < 0)
-		goto unregister;
-
-	platform_set_drvdata(pdev, mc);
-	tegra186_mc_program_sid(mc);
-
-	return 0;
-
-unregister:
-	memory_controller_unregister(&mc->base);
-	return err;
-}
-
-static int tegra186_mc_remove(struct platform_device *pdev)
-{
-	struct tegra186_mc *mc = platform_get_drvdata(pdev);
-
-	of_platform_depopulate(mc->dev);
-	memory_controller_unregister(&mc->base);
-
-	return 0;
-}
-
-static const struct of_device_id tegra186_mc_of_match[] = {
-#if defined(CONFIG_ARCH_TEGRA_186_SOC)
-	{ .compatible = "nvidia,tegra186-mc", .data = &tegra186_mc_soc },
+#if defined(CONFIG_ARCH_TEGRA_194_SOC)
+static const struct tegra186_mc_client tegra194_mc_clients[] = {
+	{
+		.name = "ptcr",
+		.sid = TEGRA194_SID_PASSTHROUGH,
+		.regs = {
+			.override = 0x000,
+			.security = 0x004,
+		},
+	}, {
+		.name = "miu7r",
+		.sid = TEGRA194_SID_MIU,
+		.regs = {
+			.override = 0x008,
+			.security = 0x00c,
+		},
+	}, {
+		.name = "miu7w",
+		.sid = TEGRA194_SID_MIU,
+		.regs = {
+			.override = 0x010,
+			.security = 0x014,
+		},
+	}, {
+		.name = "hdar",
+		.sid = TEGRA194_SID_HDA,
+		.regs = {
+			.override = 0x0a8,
+			.security = 0x0ac,
+		},
+	}, {
+		.name = "host1xdmar",
+		.sid = TEGRA194_SID_HOST1X,
+		.regs = {
+			.override = 0x0b0,
+			.security = 0x0b4,
+		},
+	}, {
+		.name = "nvencsrd",
+		.sid = TEGRA194_SID_NVENC,
+		.regs = {
+			.override = 0x0e0,
+			.security = 0x0e4,
+		},
+	}, {
+		.name = "satar",
+		.sid = TEGRA194_SID_SATA,
+		.regs = {
+			.override = 0x0f8,
+			.security = 0x0fc,
+		},
+	}, {
+		.name = "mpcorer",
+		.sid = TEGRA194_SID_PASSTHROUGH,
+		.regs = {
+			.override = 0x138,
+			.security = 0x13c,
+		},
+	}, {
+		.name = "nvencswr",
+		.sid = TEGRA194_SID_NVENC,
+		.regs = {
+			.override = 0x158,
+			.security = 0x15c,
+		},
+	}, {
+		.name = "hdaw",
+		.sid = TEGRA194_SID_HDA,
+		.regs = {
+			.override = 0x1a8,
+			.security = 0x1ac,
+		},
+	}, {
+		.name = "mpcorew",
+		.sid = TEGRA194_SID_PASSTHROUGH,
+		.regs = {
+			.override = 0x1c8,
+			.security = 0x1cc,
+		},
+	}, {
+		.name = "sataw",
+		.sid = TEGRA194_SID_SATA,
+		.regs = {
+			.override = 0x1e8,
+			.security = 0x1ec,
+		},
+	}, {
+		.name = "ispra",
+		.sid = TEGRA194_SID_ISP,
+		.regs = {
+			.override = 0x220,
+			.security = 0x224,
+		},
+	}, {
+		.name = "ispfalr",
+		.sid = TEGRA194_SID_ISP_FALCON,
+		.regs = {
+			.override = 0x228,
+			.security = 0x22c,
+		},
+	}, {
+		.name = "ispwa",
+		.sid = TEGRA194_SID_ISP,
+		.regs = {
+			.override = 0x230,
+			.security = 0x234,
+		},
+	}, {
+		.name = "ispwb",
+		.sid = TEGRA194_SID_ISP,
+		.regs = {
+			.override = 0x238,
+			.security = 0x23c,
+		},
+	}, {
+		.name = "xusb_hostr",
+		.sid = TEGRA194_SID_XUSB_HOST,
+		.regs = {
+			.override = 0x250,
+			.security = 0x254,
+		},
+	}, {
+		.name = "xusb_hostw",
+		.sid = TEGRA194_SID_XUSB_HOST,
+		.regs = {
+			.override = 0x258,
+			.security = 0x25c,
+		},
+	}, {
+		.name = "xusb_devr",
+		.sid = TEGRA194_SID_XUSB_DEV,
+		.regs = {
+			.override = 0x260,
+			.security = 0x264,
+		},
+	}, {
+		.name = "xusb_devw",
+		.sid = TEGRA194_SID_XUSB_DEV,
+		.regs = {
+			.override = 0x268,
+			.security = 0x26c,
+		},
+	}, {
+		.name = "sdmmcra",
+		.sid = TEGRA194_SID_SDMMC1,
+		.regs = {
+			.override = 0x300,
+			.security = 0x304,
+		},
+	}, {
+		.name = "sdmmcr",
+		.sid = TEGRA194_SID_SDMMC3,
+		.regs = {
+			.override = 0x310,
+			.security = 0x314,
+		},
+	}, {
+		.name = "sdmmcrab",
+		.sid = TEGRA194_SID_SDMMC4,
+		.regs = {
+			.override = 0x318,
+			.security = 0x31c,
+		},
+	}, {
+		.name = "sdmmcwa",
+		.sid = TEGRA194_SID_SDMMC1,
+		.regs = {
+			.override = 0x320,
+			.security = 0x324,
+		},
+	}, {
+		.name = "sdmmcw",
+		.sid = TEGRA194_SID_SDMMC3,
+		.regs = {
+			.override = 0x330,
+			.security = 0x334,
+		},
+	}, {
+		.name = "sdmmcwab",
+		.sid = TEGRA194_SID_SDMMC4,
+		.regs = {
+			.override = 0x338,
+			.security = 0x33c,
+		},
+	}, {
+		.name = "vicsrd",
+		.sid = TEGRA194_SID_VIC,
+		.regs = {
+			.override = 0x360,
+			.security = 0x364,
+		},
+	}, {
+		.name = "vicswr",
+		.sid = TEGRA194_SID_VIC,
+		.regs = {
+			.override = 0x368,
+			.security = 0x36c,
+		},
+	}, {
+		.name = "viw",
+		.sid = TEGRA194_SID_VI,
+		.regs = {
+			.override = 0x390,
+			.security = 0x394,
+		},
+	}, {
+		.name = "nvdecsrd",
+		.sid = TEGRA194_SID_NVDEC,
+		.regs = {
+			.override = 0x3c0,
+			.security = 0x3c4,
+		},
+	}, {
+		.name = "nvdecswr",
+		.sid = TEGRA194_SID_NVDEC,
+		.regs = {
+			.override = 0x3c8,
+			.security = 0x3cc,
+		},
+	}, {
+		.name = "aper",
+		.sid = TEGRA194_SID_APE,
+		.regs = {
+			.override = 0x3c0,
+			.security = 0x3c4,
+		},
+	}, {
+		.name = "apew",
+		.sid = TEGRA194_SID_APE,
+		.regs = {
+			.override = 0x3d0,
+			.security = 0x3d4,
+		},
+	}, {
+		.name = "nvjpgsrd",
+		.sid = TEGRA194_SID_NVJPG,
+		.regs = {
+			.override = 0x3f0,
+			.security = 0x3f4,
+		},
+	}, {
+		.name = "nvjpgswr",
+		.sid = TEGRA194_SID_NVJPG,
+		.regs = {
+			.override = 0x3f0,
+			.security = 0x3f4,
+		},
+	}, {
+		.name = "axiapr",
+		.sid = TEGRA194_SID_PASSTHROUGH,
+		.regs = {
+			.override = 0x410,
+			.security = 0x414,
+		},
+	}, {
+		.name = "axiapw",
+		.sid = TEGRA194_SID_PASSTHROUGH,
+		.regs = {
+			.override = 0x418,
+			.security = 0x41c,
+		},
+	}, {
+		.name = "etrr",
+		.sid = TEGRA194_SID_ETR,
+		.regs = {
+			.override = 0x420,
+			.security = 0x424,
+		},
+	}, {
+		.name = "etrw",
+		.sid = TEGRA194_SID_ETR,
+		.regs = {
+			.override = 0x428,
+			.security = 0x42c,
+		},
+	}, {
+		.name = "axisr",
+		.sid = TEGRA194_SID_PASSTHROUGH,
+		.regs = {
+			.override = 0x460,
+			.security = 0x464,
+		},
+	}, {
+		.name = "axisw",
+		.sid = TEGRA194_SID_PASSTHROUGH,
+		.regs = {
+			.override = 0x468,
+			.security = 0x46c,
+		},
+	}, {
+		.name = "eqosr",
+		.sid = TEGRA194_SID_EQOS,
+		.regs = {
+			.override = 0x470,
+			.security = 0x474,
+		},
+	}, {
+		.name = "eqosw",
+		.sid = TEGRA194_SID_EQOS,
+		.regs = {
+			.override = 0x478,
+			.security = 0x47c,
+		},
+	}, {
+		.name = "ufshcr",
+		.sid = TEGRA194_SID_UFSHC,
+		.regs = {
+			.override = 0x480,
+			.security = 0x484,
+		},
+	}, {
+		.name = "ufshcw",
+		.sid = TEGRA194_SID_UFSHC,
+		.regs = {
+			.override = 0x488,
+			.security = 0x48c,
+		},
+	}, {
+		.name = "nvdisplayr",
+		.sid = TEGRA194_SID_NVDISPLAY,
+		.regs = {
+			.override = 0x490,
+			.security = 0x494,
+		},
+	}, {
+		.name = "bpmpr",
+		.sid = TEGRA194_SID_BPMP,
+		.regs = {
+			.override = 0x498,
+			.security = 0x49c,
+		},
+	}, {
+		.name = "bpmpw",
+		.sid = TEGRA194_SID_BPMP,
+		.regs = {
+			.override = 0x4a0,
+			.security = 0x4a4,
+		},
+	}, {
+		.name = "bpmpdmar",
+		.sid = TEGRA194_SID_BPMP,
+		.regs = {
+			.override = 0x4a8,
+			.security = 0x4ac,
+		},
+	}, {
+		.name = "bpmpdmaw",
+		.sid = TEGRA194_SID_BPMP,
+		.regs = {
+			.override = 0x4b0,
+			.security = 0x4b4,
+		},
+	}, {
+		.name = "aonr",
+		.sid = TEGRA194_SID_AON,
+		.regs = {
+			.override = 0x4b8,
+			.security = 0x4bc,
+		},
+	}, {
+		.name = "aonw",
+		.sid = TEGRA194_SID_AON,
+		.regs = {
+			.override = 0x4c0,
+			.security = 0x4c4,
+		},
+	}, {
+		.name = "aondmar",
+		.sid = TEGRA194_SID_AON,
+		.regs = {
+			.override = 0x4c8,
+			.security = 0x4cc,
+		},
+	}, {
+		.name = "aondmaw",
+		.sid = TEGRA194_SID_AON,
+		.regs = {
+			.override = 0x4d0,
+			.security = 0x4d4,
+		},
+	}, {
+		.name = "scer",
+		.sid = TEGRA194_SID_SCE,
+		.regs = {
+			.override = 0x4d8,
+			.security = 0x4dc,
+		},
+	}, {
+		.name = "scew",
+		.sid = TEGRA194_SID_SCE,
+		.regs = {
+			.override = 0x4e0,
+			.security = 0x4e4,
+		},
+	}, {
+		.name = "scedmar",
+		.sid = TEGRA194_SID_SCE,
+		.regs = {
+			.override = 0x4e8,
+			.security = 0x4ec,
+		},
+	}, {
+		.name = "scedmaw",
+		.sid = TEGRA194_SID_SCE,
+		.regs = {
+			.override = 0x4f0,
+			.security = 0x4f4,
+		},
+	}, {
+		.name = "apedmar",
+		.sid = TEGRA194_SID_APE,
+		.regs = {
+			.override = 0x4f8,
+			.security = 0x4fc,
+		},
+	}, {
+		.name = "apedmaw",
+		.sid = TEGRA194_SID_APE,
+		.regs = {
+			.override = 0x500,
+			.security = 0x504,
+		},
+	}, {
+		.name = "nvdisplayr1",
+		.sid = TEGRA194_SID_NVDISPLAY,
+		.regs = {
+			.override = 0x508,
+			.security = 0x50c,
+		},
+	}, {
+		.name = "vicsrd1",
+		.sid = TEGRA194_SID_VIC,
+		.regs = {
+			.override = 0x510,
+			.security = 0x514,
+		},
+	}, {
+		.name = "nvdecsrd1",
+		.sid = TEGRA194_SID_NVDEC,
+		.regs = {
+			.override = 0x518,
+			.security = 0x51c,
+		},
+	}, {
+		.name = "miu0r",
+		.sid = TEGRA194_SID_MIU,
+		.regs = {
+			.override = 0x530,
+			.security = 0x534,
+		},
+	}, {
+		.name = "miu0w",
+		.sid = TEGRA194_SID_MIU,
+		.regs = {
+			.override = 0x538,
+			.security = 0x53c,
+		},
+	}, {
+		.name = "miu1r",
+		.sid = TEGRA194_SID_MIU,
+		.regs = {
+			.override = 0x540,
+			.security = 0x544,
+		},
+	}, {
+		.name = "miu1w",
+		.sid = TEGRA194_SID_MIU,
+		.regs = {
+			.override = 0x548,
+			.security = 0x54c,
+		},
+	}, {
+		.name = "miu2r",
+		.sid = TEGRA194_SID_MIU,
+		.regs = {
+			.override = 0x570,
+			.security = 0x574,
+		},
+	}, {
+		.name = "miu2w",
+		.sid = TEGRA194_SID_MIU,
+		.regs = {
+			.override = 0x578,
+			.security = 0x57c,
+		},
+	}, {
+		.name = "miu3r",
+		.sid = TEGRA194_SID_MIU,
+		.regs = {
+			.override = 0x580,
+			.security = 0x584,
+		},
+	}, {
+		.name = "miu3w",
+		.sid = TEGRA194_SID_MIU,
+		.regs = {
+			.override = 0x588,
+			.security = 0x58c,
+		},
+	}, {
+		.name = "miu4r",
+		.sid = TEGRA194_SID_MIU,
+		.regs = {
+			.override = 0x590,
+			.security = 0x594,
+		},
+	}, {
+		.name = "miu4w",
+		.sid = TEGRA194_SID_MIU,
+		.regs = {
+			.override = 0x598,
+			.security = 0x59c,
+		},
+	}, {
+		.name = "dpmur",
+		.sid = TEGRA194_SID_PASSTHROUGH,
+		.regs = {
+			.override = 0x598,
+			.security = 0x59c,
+		},
+	}, {
+		.name = "vifalr",
+		.sid = TEGRA194_SID_VI_FALCON,
+		.regs = {
+			.override = 0x5e0,
+			.security = 0x5e4,
+		},
+	}, {
+		.name = "vifalw",
+		.sid = TEGRA194_SID_VI_FALCON,
+		.regs = {
+			.override = 0x5e8,
+			.security = 0x5ec,
+		},
+	}, {
+		.name = "dla0rda",
+		.sid = TEGRA194_SID_NVDLA0,
+		.regs = {
+			.override = 0x5f0,
+			.security = 0x5f4,
+		},
+	}, {
+		.name = "dla0falrdb",
+		.sid = TEGRA194_SID_NVDLA0,
+		.regs = {
+			.override = 0x5f8,
+			.security = 0x5fc,
+		},
+	}, {
+		.name = "dla0wra",
+		.sid = TEGRA194_SID_NVDLA0,
+		.regs = {
+			.override = 0x600,
+			.security = 0x604,
+		},
+	}, {
+		.name = "dla0falwrb",
+		.sid = TEGRA194_SID_NVDLA0,
+		.regs = {
+			.override = 0x608,
+			.security = 0x60c,
+		},
+	}, {
+		.name = "dla1rda",
+		.sid = TEGRA194_SID_NVDLA1,
+		.regs = {
+			.override = 0x610,
+			.security = 0x614,
+		},
+	}, {
+		.name = "dla1falrdb",
+		.sid = TEGRA194_SID_NVDLA1,
+		.regs = {
+			.override = 0x618,
+			.security = 0x61c,
+		},
+	}, {
+		.name = "dla1wra",
+		.sid = TEGRA194_SID_NVDLA1,
+		.regs = {
+			.override = 0x620,
+			.security = 0x624,
+		},
+	}, {
+		.name = "dla1falwrb",
+		.sid = TEGRA194_SID_NVDLA1,
+		.regs = {
+			.override = 0x628,
+			.security = 0x62c,
+		},
+	}, {
+		.name = "pva0rda",
+		.sid = TEGRA194_SID_PVA0,
+		.regs = {
+			.override = 0x630,
+			.security = 0x634,
+		},
+	}, {
+		.name = "pva0rdb",
+		.sid = TEGRA194_SID_PVA0,
+		.regs = {
+			.override = 0x638,
+			.security = 0x63c,
+		},
+	}, {
+		.name = "pva0rdc",
+		.sid = TEGRA194_SID_PVA0,
+		.regs = {
+			.override = 0x640,
+			.security = 0x644,
+		},
+	}, {
+		.name = "pva0wra",
+		.sid = TEGRA194_SID_PVA0,
+		.regs = {
+			.override = 0x648,
+			.security = 0x64c,
+		},
+	}, {
+		.name = "pva0wrb",
+		.sid = TEGRA194_SID_PVA0,
+		.regs = {
+			.override = 0x650,
+			.security = 0x654,
+		},
+	}, {
+		.name = "pva0wrc",
+		.sid = TEGRA194_SID_PVA0,
+		.regs = {
+			.override = 0x658,
+			.security = 0x65c,
+		},
+	}, {
+		.name = "pva1rda",
+		.sid = TEGRA194_SID_PVA1,
+		.regs = {
+			.override = 0x660,
+			.security = 0x664,
+		},
+	}, {
+		.name = "pva1rdb",
+		.sid = TEGRA194_SID_PVA1,
+		.regs = {
+			.override = 0x668,
+			.security = 0x66c,
+		},
+	}, {
+		.name = "pva1rdc",
+		.sid = TEGRA194_SID_PVA1,
+		.regs = {
+			.override = 0x670,
+			.security = 0x674,
+		},
+	}, {
+		.name = "pva1wra",
+		.sid = TEGRA194_SID_PVA1,
+		.regs = {
+			.override = 0x678,
+			.security = 0x67c,
+		},
+	}, {
+		.name = "pva1wrb",
+		.sid = TEGRA194_SID_PVA1,
+		.regs = {
+			.override = 0x680,
+			.security = 0x684,
+		},
+	}, {
+		.name = "pva1wrc",
+		.sid = TEGRA194_SID_PVA1,
+		.regs = {
+			.override = 0x688,
+			.security = 0x68c,
+		},
+	}, {
+		.name = "rcer",
+		.sid = TEGRA194_SID_RCE,
+		.regs = {
+			.override = 0x690,
+			.security = 0x694,
+		},
+	}, {
+		.name = "rcew",
+		.sid = TEGRA194_SID_RCE,
+		.regs = {
+			.override = 0x698,
+			.security = 0x69c,
+		},
+	}, {
+		.name = "rcedmar",
+		.sid = TEGRA194_SID_RCE,
+		.regs = {
+			.override = 0x6a0,
+			.security = 0x6a4,
+		},
+	}, {
+		.name = "rcedmaw",
+		.sid = TEGRA194_SID_RCE,
+		.regs = {
+			.override = 0x6a8,
+			.security = 0x6ac,
+		},
+	}, {
+		.name = "nvenc1srd",
+		.sid = TEGRA194_SID_NVENC1,
+		.regs = {
+			.override = 0x6b0,
+			.security = 0x6b4,
+		},
+	}, {
+		.name = "nvenc1swr",
+		.sid = TEGRA194_SID_NVENC1,
+		.regs = {
+			.override = 0x6b8,
+			.security = 0x6bc,
+		},
+	}, {
+		.name = "pcie0r",
+		.sid = TEGRA194_SID_PCIE0,
+		.regs = {
+			.override = 0x6c0,
+			.security = 0x6c4,
+		},
+	}, {
+		.name = "pcie0w",
+		.sid = TEGRA194_SID_PCIE0,
+		.regs = {
+			.override = 0x6c8,
+			.security = 0x6cc,
+		},
+	}, {
+		.name = "pcie1r",
+		.sid = TEGRA194_SID_PCIE1,
+		.regs = {
+			.override = 0x6d0,
+			.security = 0x6d4,
+		},
+	}, {
+		.name = "pcie1w",
+		.sid = TEGRA194_SID_PCIE1,
+		.regs = {
+			.override = 0x6d8,
+			.security = 0x6dc,
+		},
+	}, {
+		.name = "pcie2ar",
+		.sid = TEGRA194_SID_PCIE2,
+		.regs = {
+			.override = 0x6e0,
+			.security = 0x6e4,
+		},
+	}, {
+		.name = "pcie2aw",
+		.sid = TEGRA194_SID_PCIE2,
+		.regs = {
+			.override = 0x6e8,
+			.security = 0x6ec,
+		},
+	}, {
+		.name = "pcie3r",
+		.sid = TEGRA194_SID_PCIE3,
+		.regs = {
+			.override = 0x6f0,
+			.security = 0x6f4,
+		},
+	}, {
+		.name = "pcie3w",
+		.sid = TEGRA194_SID_PCIE3,
+		.regs = {
+			.override = 0x6f8,
+			.security = 0x6fc,
+		},
+	}, {
+		.name = "pcie4r",
+		.sid = TEGRA194_SID_PCIE4,
+		.regs = {
+			.override = 0x700,
+			.security = 0x704,
+		},
+	}, {
+		.name = "pcie4w",
+		.sid = TEGRA194_SID_PCIE4,
+		.regs = {
+			.override = 0x708,
+			.security = 0x70c,
+		},
+	}, {
+		.name = "pcie5r",
+		.sid = TEGRA194_SID_PCIE5,
+		.regs = {
+			.override = 0x710,
+			.security = 0x714,
+		},
+	}, {
+		.name = "pcie5w",
+		.sid = TEGRA194_SID_PCIE5,
+		.regs = {
+			.override = 0x718,
+			.security = 0x71c,
+		},
+	}, {
+		.name = "ispfalw",
+		.sid = TEGRA194_SID_ISP_FALCON,
+		.regs = {
+			.override = 0x720,
+			.security = 0x724,
+		},
+	}, {
+		.name = "dla0rda1",
+		.sid = TEGRA194_SID_NVDLA0,
+		.regs = {
+			.override = 0x748,
+			.security = 0x74c,
+		},
+	}, {
+		.name = "dla1rda1",
+		.sid = TEGRA194_SID_NVDLA1,
+		.regs = {
+			.override = 0x750,
+			.security = 0x754,
+		},
+	}, {
+		.name = "pva0rda1",
+		.sid = TEGRA194_SID_PVA0,
+		.regs = {
+			.override = 0x758,
+			.security = 0x75c,
+		},
+	}, {
+		.name = "pva0rdb1",
+		.sid = TEGRA194_SID_PVA0,
+		.regs = {
+			.override = 0x760,
+			.security = 0x764,
+		},
+	}, {
+		.name = "pva1rda1",
+		.sid = TEGRA194_SID_PVA1,
+		.regs = {
+			.override = 0x768,
+			.security = 0x76c,
+		},
+	}, {
+		.name = "pva1rdb1",
+		.sid = TEGRA194_SID_PVA1,
+		.regs = {
+			.override = 0x770,
+			.security = 0x774,
+		},
+	}, {
+		.name = "pcie5r1",
+		.sid = TEGRA194_SID_PCIE5,
+		.regs = {
+			.override = 0x778,
+			.security = 0x77c,
+		},
+	}, {
+		.name = "nvencsrd1",
+		.sid = TEGRA194_SID_NVENC,
+		.regs = {
+			.override = 0x780,
+			.security = 0x784,
+		},
+	}, {
+		.name = "nvenc1srd1",
+		.sid = TEGRA194_SID_NVENC1,
+		.regs = {
+			.override = 0x788,
+			.security = 0x78c,
+		},
+	}, {
+		.name = "ispra1",
+		.sid = TEGRA194_SID_ISP,
+		.regs = {
+			.override = 0x790,
+			.security = 0x794,
+		},
+	}, {
+		.name = "pcie0r1",
+		.sid = TEGRA194_SID_PCIE0,
+		.regs = {
+			.override = 0x798,
+			.security = 0x79c,
+		},
+	}, {
+		.name = "nvdec1srd",
+		.sid = TEGRA194_SID_NVDEC1,
+		.regs = {
+			.override = 0x7c8,
+			.security = 0x7cc,
+		},
+	}, {
+		.name = "nvdec1srd1",
+		.sid = TEGRA194_SID_NVDEC1,
+		.regs = {
+			.override = 0x7d0,
+			.security = 0x7d4,
+		},
+	}, {
+		.name = "nvdec1swr",
+		.sid = TEGRA194_SID_NVDEC1,
+		.regs = {
+			.override = 0x7d8,
+			.security = 0x7dc,
+		},
+	}, {
+		.name = "miu5r",
+		.sid = TEGRA194_SID_MIU,
+		.regs = {
+			.override = 0x7e0,
+			.security = 0x7e4,
+		},
+	}, {
+		.name = "miu5w",
+		.sid = TEGRA194_SID_MIU,
+		.regs = {
+			.override = 0x7e8,
+			.security = 0x7ec,
+		},
+	}, {
+		.name = "miu6r",
+		.sid = TEGRA194_SID_MIU,
+		.regs = {
+			.override = 0x7f0,
+			.security = 0x7f4,
+		},
+	}, {
+		.name = "miu6w",
+		.sid = TEGRA194_SID_MIU,
+		.regs = {
+			.override = 0x7f8,
+			.security = 0x7fc,
+		},
+	},
+};
+
+static const struct tegra186_mc_soc tegra194_mc_soc = {
+	.num_clients = ARRAY_SIZE(tegra194_mc_clients),
+	.clients = tegra194_mc_clients,
+};
+#endif
+
+static int tegra186_mc_probe(struct platform_device *pdev)
+{
+	struct tegra186_mc *mc;
+	struct resource *res;
+	int err;
+
+	mc = devm_kzalloc(&pdev->dev, sizeof(*mc), GFP_KERNEL);
+	if (!mc)
+		return -ENOMEM;
+
+	mc->soc = of_device_get_match_data(&pdev->dev);
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	mc->regs = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(mc->regs))
+		return PTR_ERR(mc->regs);
+
+	mc->dev = &pdev->dev;
+
+	err = of_platform_populate(pdev->dev.of_node, NULL, NULL, &pdev->dev);
+	if (err < 0)
+		goto unregister;
+
+	platform_set_drvdata(pdev, mc);
+	tegra186_mc_program_sid(mc);
+
+	return 0;
+
+unregister:
+	memory_controller_unregister(&mc->base);
+	return err;
+}
+
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
+static const struct of_device_id tegra186_mc_of_match[] = {
+#if defined(CONFIG_ARCH_TEGRA_186_SOC)
+	{ .compatible = "nvidia,tegra186-mc", .data = &tegra186_mc_soc },
+#endif
+#if defined(CONFIG_ARCH_TEGRA_194_SOC)
+	{ .compatible = "nvidia,tegra194-mc", .data = &tegra194_mc_soc },
 #endif
 	{ /* sentinel */ }
 };
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
