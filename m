Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B271945B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 18:43:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vj+HKwTWe7XAVIyhnnmvW3ggRK+1Rv0qayUNW4sUHIk=; b=mAtWP2M2w0KV6I
	/i75eL/geD3TNh5SrQ8Ak2QSdo2Nv0rWz1GNwnLtIqzV8UqcEC5L1+Wi5tUPxP8FCUlka43mgbHJV
	c3zHrpHw1rn4ywljv4w4zKZ/46ZgFaD2samERKJW4usFAOZdxODtqReRY6czIlIskQIc6N+XWn0M2
	obZVLYQ7ezyz3FfkL/YhKCBIdv0m+/XRYojn/Zlu1Z1ifx4nRgR/KM0EHSeEtXHyil9/QGnK9uQB/
	K4iqVgmzPlNGYiLShBBQ6/4obHolEQouJTRqWrkhZEWsqOvtN/WJLGbhnifq66sigs4rpqo/mNerD
	BcnpgbLMX4nz7KiUvcfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHWWl-0005iD-FM; Thu, 26 Mar 2020 17:42:47 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHWWc-0005hi-N8
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 17:42:40 +0000
Received: by mail-pj1-x1042.google.com with SMTP id kx8so2696760pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 10:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Pi3s+hsQEc9m8KDmVv9mSsGP5/0IqLYBx14WB1G7v7g=;
 b=hBGaI3ZAbh8EF/9Pw5vh4P3kwXvhPvbRNmKo0T6S0GXuLkO1Y259C8aA3uyZE7Vguf
 VY4bD5uL+dTsvcLdr3Dzx2hW4RC/RXLml7ZVCQ3jTdIi/Jjr94Ynun+DXRwv7w1WPyqd
 AYShLYfxNHfUO4lXIp+J//7CWi+MZiiMthPcZ5J4a/DfIpVGViwjP6UUqI305A1G4KxQ
 AASwLj49vY46ZYwf7o58g8Yf9sYrvmqTEwppr+qSQOMIUoQ7dQ4F9/vwmBTaC6hm8B4o
 eqptE6iNyB8uOyO0gVt9ukW6Xnz7uQNQGxa9oD5RYbLdhGyAhib1Y1FpuZFcW5IqcWcl
 +NeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Pi3s+hsQEc9m8KDmVv9mSsGP5/0IqLYBx14WB1G7v7g=;
 b=t/JSSPCmMKMRyACyDQkS/oM9jmrxHlY91aJSFnOi8oSQUOVY0Hx+KP1SkEvHc2IXjz
 9fR1RLV86TSn+NfAFeKk52njQV7eeKuXAnahL5Y0uS1/luf7QAoByLWqlRW31PF65SON
 fw0VOXbqYnmqT7eiUzc2ThFcx2zXz0l3sDewI78Nw1QhwAlpJLg7ZepfzNX7HCP875Wz
 Y6Cd3sxL5grG74n8rPjanLPjc9jbAIw3DT2mfqxYRHBm97a+/DIvLpYziYPGEPsR1jwR
 7/R5UHiOC9lxKY18cZh/NU7lgoJPGiBm+4BvyWn4IHywGnHwYQh/UuS7y/H0DGx6+j/p
 Z8WQ==
X-Gm-Message-State: ANhLgQ154oX6YpNBtfNoc7hCU3aw+NKhrdJ4H6tXf01aQDgfOX07/cA0
 nDEWWPtM38ukrVuOtILCvhS8mHQUP+g=
X-Google-Smtp-Source: ADFU+vtOOB4YT138AG39SOK4IzfdmgDSBLxPqSj8uEcIJySFjzTzwvcbFIyUUVC/KFkZJT84bChUrQ==
X-Received: by 2002:a17:902:ba8e:: with SMTP id
 k14mr8841190pls.298.1585244557355; 
 Thu, 26 Mar 2020 10:42:37 -0700 (PDT)
Received: from localhost.localdomain (c-67-165-113-11.hsd1.wa.comcast.net.
 [67.165.113.11])
 by smtp.gmail.com with ESMTPSA id q71sm2160373pfc.92.2020.03.26.10.42.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 10:42:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] ARM: vf610: report soc info via soc device
Date: Thu, 26 Mar 2020 10:42:32 -0700
Message-Id: <20200326174232.23365-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_104238_779767_A102BA74 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrew.smirnov[at]gmail.com]
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, Chris Healy <cphealy@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch adds plumbing to soc device info code necessary to support
Vybrid devices. Use case in mind for this is CAAM driver, which
utilizes said API.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-imx@nxp.com
---
 arch/arm/mach-imx/cpu.c        | 16 ++++++++++
 arch/arm/mach-imx/mach-vf610.c | 53 ++++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/mxc.h        |  6 ++++
 3 files changed, 75 insertions(+)

diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
index 06f8d64b65af..e3d12b21d6f6 100644
--- a/arch/arm/mach-imx/cpu.c
+++ b/arch/arm/mach-imx/cpu.c
@@ -172,6 +172,22 @@ struct device * __init imx_soc_device_init(void)
 		ocotp_compat = "fsl,imx7ulp-ocotp";
 		soc_id = "i.MX7ULP";
 		break;
+	case MXC_CPU_VF500:
+		ocotp_compat = "fsl,vf610-ocotp";
+		soc_id = "VF500";
+		break;
+	case MXC_CPU_VF510:
+		ocotp_compat = "fsl,vf610-ocotp";
+		soc_id = "VF510";
+		break;
+	case MXC_CPU_VF600:
+		ocotp_compat = "fsl,vf610-ocotp";
+		soc_id = "VF600";
+		break;
+	case MXC_CPU_VF610:
+		ocotp_compat = "fsl,vf610-ocotp";
+		soc_id = "VF610";
+		break;
 	default:
 		soc_id = "Unknown";
 	}
diff --git a/arch/arm/mach-imx/mach-vf610.c b/arch/arm/mach-imx/mach-vf610.c
index 9c929b09310c..565dc08412a2 100644
--- a/arch/arm/mach-imx/mach-vf610.c
+++ b/arch/arm/mach-imx/mach-vf610.c
@@ -3,11 +3,63 @@
  * Copyright 2012-2013 Freescale Semiconductor, Inc.
  */

+#include <linux/of_address.h>
 #include <linux/of_platform.h>
+#include <linux/io.h>
+
 #include <linux/irqchip.h>
 #include <asm/mach/arch.h>
 #include <asm/hardware/cache-l2x0.h>

+#include "common.h"
+#include "hardware.h"
+
+#define MSCM_CPxCOUNT		0x00c
+#define MSCM_CPxCFG1		0x014
+
+static void __init vf610_detect_cpu(void)
+{
+	struct device_node *np;
+	u32 cpxcount, cpxcfg1;
+	unsigned int cpu_type;
+	void __iomem *mscm;
+
+	np = of_find_compatible_node(NULL, NULL, "fsl,vf610-mscm-cpucfg");
+	if (WARN_ON(!np))
+		return;
+
+	mscm = of_iomap(np, 0);
+	of_node_put(np);
+
+	if (WARN_ON(!mscm))
+		return;
+
+	cpxcount = readl_relaxed(mscm + MSCM_CPxCOUNT);
+	cpxcfg1  = readl_relaxed(mscm + MSCM_CPxCFG1);
+
+	iounmap(mscm);
+
+	cpu_type = cpxcount ? MXC_CPU_VF600 : MXC_CPU_VF500;
+
+	if (cpxcfg1)
+		cpu_type |= MXC_CPU_VFx10;
+
+	mxc_set_cpu_type(cpu_type);
+}
+
+static void __init vf610_init_machine(void)
+{
+	struct device *parent;
+
+	vf610_detect_cpu();
+
+	parent = imx_soc_device_init();
+	if (parent == NULL)
+		pr_warn("failed to initialize soc device\n");
+
+	of_platform_default_populate(NULL, NULL, parent);
+}
+
 static const char * const vf610_dt_compat[] __initconst = {
 	"fsl,vf500",
 	"fsl,vf510",
@@ -20,5 +72,6 @@ static const char * const vf610_dt_compat[] __initconst = {
 DT_MACHINE_START(VYBRID_VF610, "Freescale Vybrid VF5xx/VF6xx (Device Tree)")
 	.l2c_aux_val	= 0,
 	.l2c_aux_mask	= ~0,
+	.init_machine   = vf610_init_machine,
 	.dt_compat	= vf610_dt_compat,
 MACHINE_END
diff --git a/arch/arm/mach-imx/mxc.h b/arch/arm/mach-imx/mxc.h
index 2bfd2d59b4a6..48e6d781f15b 100644
--- a/arch/arm/mach-imx/mxc.h
+++ b/arch/arm/mach-imx/mxc.h
@@ -33,6 +33,12 @@
 #define MXC_CPU_IMX7D		0x72
 #define MXC_CPU_IMX7ULP		0xff

+#define MXC_CPU_VFx10		0x010
+#define MXC_CPU_VF500		0x500
+#define MXC_CPU_VF510		(MXC_CPU_VF500 | MXC_CPU_VFx10)
+#define MXC_CPU_VF600		0x600
+#define MXC_CPU_VF610		(MXC_CPU_VF600 | MXC_CPU_VFx10)
+
 #define IMX_DDR_TYPE_LPDDR2		1

 #ifndef __ASSEMBLY__
--
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
