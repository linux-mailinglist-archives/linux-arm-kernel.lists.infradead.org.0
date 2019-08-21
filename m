Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C07971D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 07:57:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/HZwq2jv05inoFaxSphSJq1BFVJXjMCnbb8Zp9Z/nwk=; b=GyZlp6K0Qv5q28
	3ylzKf1zh0s8cYo+Pdy+jmDorhLXZeXAbiAKXIEsCBzyId86CufqPVBZAGQst2SxOBOXHRbPjMHlq
	jc/PAZTaM/4DJmpQjLEIPhvvPNTe3Gpi2iSCowK7dLV6glBKPRlCD+x4yEX+xW7EKy1igZRm62FLp
	3DQIoASW7f3x7Gtms+lQPhbtPWo6tQcoOEkw40Ty8izE0039JszelMUPjD4W6Hgate1A3AqbNGO+C
	rHoJjUsqLGDq/qr9++7gJxj0czTxdXxAJrivo8Wp5ssmfQg5AFrCeQjJ1lfL4NEcOHgj8xDRWdhsz
	7X32qKHdItau1YUdbYJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Jcf-0008Rh-1n; Wed, 21 Aug 2019 05:57:29 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0JbO-0007Uh-Co
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 05:56:11 +0000
Received: by mail-pl1-x642.google.com with SMTP id d3so732864plr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 22:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lLwP3mTOJnfDSrV2MSql/pLg1RylIFBDj+4cxU85JLA=;
 b=pgfPMqAYF1GB9XdOwifBr9+txHI4Bvok60GT3VptbvsIKyyrpsDxznr48oNqWFPy0Z
 obk2AWdFDOJO0+HbeoUQsDLJlQ+6on9XrOFpnBktqGSAIDyZhQ0jBxBenpFZhF1PWadB
 B4kmu3+tV2X7lHFWqrBnCKQt/5dFxdRN7K1pn7xw7EzubDJKQkPsfeH0tAc5rxJJrw6Z
 LVK31Gulp/iQI6J2K/jicOEpE0ozIdVTu0dE1S6nXFUfy6EC/27Y1474FiMtF8fxNxka
 thf7+ZFwgxhFGCkkR8yG0CtCoZqcqUhcZxE8QGa9TVHf1/c/Aj0lT6oLDgbItlauMYlx
 EhoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=lLwP3mTOJnfDSrV2MSql/pLg1RylIFBDj+4cxU85JLA=;
 b=jDnMGFa7ry3R3UgXQl3Y+JkxY0IEEDAdWiFxUTMwkWOWtRm7+UHjvZBSLurTYqWCW/
 ClE+7f8u8a73z7fEEraU2UjiyP3zhclhBfJxxhGvkVRvvdTA+uqc+TW5uhXDu6bZaICg
 aKGGlLAaF/B3Z+3d0/MrUlU5qW7jduCpKA0U2DYd6xJNtblLtQSjTDnj0vUudwuE1NHy
 DVoUixG5Gm9MzT2X7x8LQq5BR78OOtpsI7H+gJndeaotneXOpI4wvSZ72igPykm8nssI
 /oz4CyP/KsBSZZGfyShVJi/EZ552E+fr645i7sHLmQW7LYnLI2sPxC2hYFhEhPS7k7F9
 i6fw==
X-Gm-Message-State: APjAAAWK8CE3mtiIPgmUaQKmJ1lZvn30dwe7eLg8r0aGTVBOanewbPtD
 rA3Y9kCBUc5/fArPlRzmAHSdZs//QvA=
X-Google-Smtp-Source: APXvYqz+UEvlsHPy8pZuC/TGIdmf7TVS3tbQQ2LbuvsuOV6sZRFG0SOn7rSViCigIl+8HOPZOoOe4w==
X-Received: by 2002:a17:902:e9:: with SMTP id
 a96mr16619138pla.169.1566366969567; 
 Tue, 20 Aug 2019 22:56:09 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id m9sm26568254pfh.84.2019.08.20.22.56.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 22:56:08 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 4/7] ARM: aspeed: Enable SMP boot
Date: Wed, 21 Aug 2019 15:25:27 +0930
Message-Id: <20190821055530.8720-5-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190821055530.8720-1-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_225610_519518_6E9CC19D 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This brings the secondary CPU into Linux. It depends on the setup
performed by ASPEED's u-boot.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/Makefile              |  1 +
 arch/arm/mach-aspeed/Makefile  |  5 +++
 arch/arm/mach-aspeed/platsmp.c | 61 ++++++++++++++++++++++++++++++++++
 3 files changed, 67 insertions(+)
 create mode 100644 arch/arm/mach-aspeed/Makefile
 create mode 100644 arch/arm/mach-aspeed/platsmp.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index f96419135d35..be2fc3e79434 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -155,6 +155,7 @@ textofs-$(CONFIG_ARCH_AXXIA) := 0x00308000
 machine-$(CONFIG_ARCH_ACTIONS)		+= actions
 machine-$(CONFIG_ARCH_ALPINE)		+= alpine
 machine-$(CONFIG_ARCH_ARTPEC)		+= artpec
+machine-$(CONFIG_ARCH_ASPEED)           += aspeed
 machine-$(CONFIG_ARCH_AT91)		+= at91
 machine-$(CONFIG_ARCH_AXXIA)		+= axxia
 machine-$(CONFIG_ARCH_BCM)		+= bcm
diff --git a/arch/arm/mach-aspeed/Makefile b/arch/arm/mach-aspeed/Makefile
new file mode 100644
index 000000000000..1951b3317a76
--- /dev/null
+++ b/arch/arm/mach-aspeed/Makefile
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+# Copyright (C) ASPEED Technology Inc.
+# Copyright IBM Corp.
+
+obj-$(CONFIG_SMP) += platsmp.o
diff --git a/arch/arm/mach-aspeed/platsmp.c b/arch/arm/mach-aspeed/platsmp.c
new file mode 100644
index 000000000000..2324becf7991
--- /dev/null
+++ b/arch/arm/mach-aspeed/platsmp.c
@@ -0,0 +1,61 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// Copyright (C) ASPEED Technology Inc.
+// Copyright IBM Corp.
+
+#include <linux/of_address.h>
+#include <linux/io.h>
+#include <linux/of.h>
+#include <linux/smp.h>
+
+#define BOOT_ADDR	0x00
+#define BOOT_SIG	0x04
+
+static struct device_node *secboot_node;
+
+static int aspeed_g6_boot_secondary(unsigned int cpu, struct task_struct *idle)
+{
+	void __iomem *base;
+
+	base = of_iomap(secboot_node, 0);
+	if (!base) {
+		pr_err("could not map the secondary boot base!");
+		return -ENODEV;
+	}
+
+	writel_relaxed(0, base + BOOT_ADDR);
+	writel_relaxed(__pa_symbol(secondary_startup_arm), base + BOOT_ADDR);
+	writel_relaxed((0xABBAAB00 | (cpu & 0xff)), base + BOOT_SIG);
+
+	dsb_sev();
+
+	iounmap(base);
+
+	return 0;
+}
+
+static void __init aspeed_g6_smp_prepare_cpus(unsigned int max_cpus)
+{
+	void __iomem *base;
+
+	secboot_node = of_find_compatible_node(NULL, NULL, "aspeed,ast2600-smpmem");
+	if (!secboot_node) {
+		pr_err("secboot device node found!!\n");
+		return;
+	}
+
+	base = of_iomap(secboot_node, 0);
+	if (!base) {
+		pr_err("could not map the secondary boot base!");
+		return;
+	}
+	__raw_writel(0xBADABABA, base + BOOT_SIG);
+
+	iounmap(base);
+}
+
+static const struct smp_operations aspeed_smp_ops __initconst = {
+	.smp_prepare_cpus	= aspeed_g6_smp_prepare_cpus,
+	.smp_boot_secondary	= aspeed_g6_boot_secondary,
+};
+
+CPU_METHOD_OF_DECLARE(aspeed_smp, "aspeed,ast2600-smp", &aspeed_smp_ops);
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
