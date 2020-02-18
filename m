Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC466162C49
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:15:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmOmjagmo3MKYaxKogRQzG1oiSw4VkeAAROpoTYpky4=; b=K/74yAAjsVGvfQ
	XjMghdEvGJbh99QMcJT60w9ia87JQhrfrAHDncZ0OEXdMa7+t3taOwH3BZjdztQnePLLu9wAdLKbl
	BtpFxfQ1cYxHt0KF7gbFFmqG7npVvky4pbZS5sIlorxHKBxp5E3KK6ELIf/E55amLN0jq7/lwJt9f
	geY88Yahk0b/aO2Lkt4eHO9T0/lwsHVJjitnGLZP28hIrfuJ6VP6Z3U6RJSSWLZ4bAmm1uKlfuMPa
	oY+IXT/e3676UZtZzJXfWSII6oxDUZwWVEyu/5V3UUWVPXJT+O2bcXqF8QtKP4vTpaM0F3WliRyWC
	/gooJzADL8L5E3HgZdSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46T9-0004lF-Ha; Tue, 18 Feb 2020 17:15:35 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46RB-0001wn-SL
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:13:36 +0000
Received: by mail-oi1-f195.google.com with SMTP id z2so20835257oih.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 09:13:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v0Vl76UEuxsk5yg9Po+ygPtGTaEk/mhPYQr81MGY08w=;
 b=F87OyrBHTbvz7Z3BBrXdNDqkoYn65sjuQQulx6N4bveDRIv7dpHGfnchWjkL6lYqPL
 3/dshOqs9afB8TMjP2nY4A1xMRZwPGenWjA8TcrHn9vRBgXniN8kHNu4W/g4Y020j1xT
 ZUjCVIh7OayddYIqJEUmguSCwhFG3nGHtdlAS8ppz0RQKGQ/3NgDhz75FjeCgbT0OCid
 iUj6F+RSnulk/RbmZJ6Sr1EpGOn2eFF+MAYXoIrIo5fz1I6l4GDH2Igz9ifYigr9BnZ/
 90ZzXRRGOLtQsgECNrnmVtITFEpgPWdJPkx7u+xnqCbHlM7ds2hyBqmq59mofU1nBY7A
 P1uQ==
X-Gm-Message-State: APjAAAXqzIXuDPb1MnKeLC1GyTypfVkB8oITde2oAO3/Hqs63+c6opmT
 tSysDcW7zkQs2HBkIMCVRh9rg6E=
X-Google-Smtp-Source: APXvYqwUc3inMoCdecbdUuNsMDgvDcrJjhj8ChMk19cWCZkyZjwjeXollkDMysGYw5kJtCo1GqwvHQ==
X-Received: by 2002:a54:4791:: with SMTP id o17mr1818618oic.70.1582046011959; 
 Tue, 18 Feb 2020 09:13:31 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id y25sm1545755oto.27.2020.02.18.09.13.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 09:13:31 -0800 (PST)
From: Rob Herring <robh@kernel.org>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 soc@kernel.org, Andre Przywara <andre.przywara@arm.com>,
 Robert Richter <rrichter@marvell.com>, Jon Loeliger <jdl@jdl.com>,
 Alexander Graf <graf@amazon.com>, Matthias Brugger <mbrugger@suse.com>,
 Mark Langsdorf <mlangsdo@redhat.com>
Subject: [RFC PATCH 05/11] EDAC: Remove Calxeda drivers
Date: Tue, 18 Feb 2020 11:13:15 -0600
Message-Id: <20200218171321.30990-6-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200218171321.30990-1-robh@kernel.org>
References: <20200218171321.30990-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_091333_960238_605E81A8 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: kvm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 linux-ide@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-edac@vger.kernel.org,
 Jens Axboe <axboe@kernel.dk>, Tony Luck <tony.luck@intel.com>,
 Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org,
 Cornelia Huck <cohuck@redhat.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 iommu@lists.linux-foundation.org, James Morse <james.morse@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cc: Borislav Petkov <bp@alien8.de>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Tony Luck <tony.luck@intel.com>
Cc: James Morse <james.morse@arm.com>
Cc: Robert Richter <rrichter@marvell.com>
Cc: linux-edac@vger.kernel.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
Do not apply yet.

 MAINTAINERS                     |   6 -
 drivers/edac/Kconfig            |  14 --
 drivers/edac/Makefile           |   3 -
 drivers/edac/highbank_l2_edac.c | 142 -----------------
 drivers/edac/highbank_mc_edac.c | 272 --------------------------------
 5 files changed, 437 deletions(-)
 delete mode 100644 drivers/edac/highbank_l2_edac.c
 delete mode 100644 drivers/edac/highbank_mc_edac.c

diff --git a/MAINTAINERS b/MAINTAINERS
index a0d86490c2c6..4732bb268299 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5964,12 +5964,6 @@ M:	Shravan Kumar Ramani <sramani@mellanox.com>
 S:	Supported
 F:	drivers/edac/bluefield_edac.c

-EDAC-CALXEDA
-M:	Robert Richter <rric@kernel.org>
-L:	linux-edac@vger.kernel.org
-S:	Maintained
-F:	drivers/edac/highbank*
-
 EDAC-CAVIUM OCTEON
 M:	Ralf Baechle <ralf@linux-mips.org>
 M:	Robert Richter <rrichter@marvell.com>
diff --git a/drivers/edac/Kconfig b/drivers/edac/Kconfig
index b3c99bb5fe77..f3ff75e5ed9b 100644
--- a/drivers/edac/Kconfig
+++ b/drivers/edac/Kconfig
@@ -334,20 +334,6 @@ config EDAC_CPC925
 	  a companion chip to the PowerPC 970 family of
 	  processors.

-config EDAC_HIGHBANK_MC
-	tristate "Highbank Memory Controller"
-	depends on ARCH_HIGHBANK
-	help
-	  Support for error detection and correction on the
-	  Calxeda Highbank memory controller.
-
-config EDAC_HIGHBANK_L2
-	tristate "Highbank L2 Cache"
-	depends on ARCH_HIGHBANK
-	help
-	  Support for error detection and correction on the
-	  Calxeda Highbank memory controller.
-
 config EDAC_OCTEON_PC
 	tristate "Cavium Octeon Primary Caches"
 	depends on CPU_CAVIUM_OCTEON
diff --git a/drivers/edac/Makefile b/drivers/edac/Makefile
index d77200c9680b..9a563db39bc3 100644
--- a/drivers/edac/Makefile
+++ b/drivers/edac/Makefile
@@ -69,9 +69,6 @@ obj-$(CONFIG_EDAC_PPC4XX)		+= ppc4xx_edac.o
 obj-$(CONFIG_EDAC_AMD8111)		+= amd8111_edac.o
 obj-$(CONFIG_EDAC_AMD8131)		+= amd8131_edac.o

-obj-$(CONFIG_EDAC_HIGHBANK_MC)		+= highbank_mc_edac.o
-obj-$(CONFIG_EDAC_HIGHBANK_L2)		+= highbank_l2_edac.o
-
 obj-$(CONFIG_EDAC_OCTEON_PC)		+= octeon_edac-pc.o
 obj-$(CONFIG_EDAC_OCTEON_L2C)		+= octeon_edac-l2c.o
 obj-$(CONFIG_EDAC_OCTEON_LMC)		+= octeon_edac-lmc.o
diff --git a/drivers/edac/highbank_l2_edac.c b/drivers/edac/highbank_l2_edac.c
deleted file mode 100644
index c4549cec788b..000000000000
--- a/drivers/edac/highbank_l2_edac.c
+++ /dev/null
@@ -1,142 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright 2011-2012 Calxeda, Inc.
- */
-#include <linux/types.h>
-#include <linux/kernel.h>
-#include <linux/ctype.h>
-#include <linux/edac.h>
-#include <linux/interrupt.h>
-#include <linux/platform_device.h>
-#include <linux/of_platform.h>
-
-#include "edac_module.h"
-
-#define SR_CLR_SB_ECC_INTR	0x0
-#define SR_CLR_DB_ECC_INTR	0x4
-
-struct hb_l2_drvdata {
-	void __iomem *base;
-	int sb_irq;
-	int db_irq;
-};
-
-static irqreturn_t highbank_l2_err_handler(int irq, void *dev_id)
-{
-	struct edac_device_ctl_info *dci = dev_id;
-	struct hb_l2_drvdata *drvdata = dci->pvt_info;
-
-	if (irq == drvdata->sb_irq) {
-		writel(1, drvdata->base + SR_CLR_SB_ECC_INTR);
-		edac_device_handle_ce(dci, 0, 0, dci->ctl_name);
-	}
-	if (irq == drvdata->db_irq) {
-		writel(1, drvdata->base + SR_CLR_DB_ECC_INTR);
-		edac_device_handle_ue(dci, 0, 0, dci->ctl_name);
-	}
-
-	return IRQ_HANDLED;
-}
-
-static const struct of_device_id hb_l2_err_of_match[] = {
-	{ .compatible = "calxeda,hb-sregs-l2-ecc", },
-	{},
-};
-MODULE_DEVICE_TABLE(of, hb_l2_err_of_match);
-
-static int highbank_l2_err_probe(struct platform_device *pdev)
-{
-	const struct of_device_id *id;
-	struct edac_device_ctl_info *dci;
-	struct hb_l2_drvdata *drvdata;
-	struct resource *r;
-	int res = 0;
-
-	dci = edac_device_alloc_ctl_info(sizeof(*drvdata), "cpu",
-		1, "L", 1, 2, NULL, 0, 0);
-	if (!dci)
-		return -ENOMEM;
-
-	drvdata = dci->pvt_info;
-	dci->dev = &pdev->dev;
-	platform_set_drvdata(pdev, dci);
-
-	if (!devres_open_group(&pdev->dev, NULL, GFP_KERNEL))
-		return -ENOMEM;
-
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!r) {
-		dev_err(&pdev->dev, "Unable to get mem resource\n");
-		res = -ENODEV;
-		goto err;
-	}
-
-	if (!devm_request_mem_region(&pdev->dev, r->start,
-				     resource_size(r), dev_name(&pdev->dev))) {
-		dev_err(&pdev->dev, "Error while requesting mem region\n");
-		res = -EBUSY;
-		goto err;
-	}
-
-	drvdata->base = devm_ioremap(&pdev->dev, r->start, resource_size(r));
-	if (!drvdata->base) {
-		dev_err(&pdev->dev, "Unable to map regs\n");
-		res = -ENOMEM;
-		goto err;
-	}
-
-	id = of_match_device(hb_l2_err_of_match, &pdev->dev);
-	dci->mod_name = pdev->dev.driver->name;
-	dci->ctl_name = id ? id->compatible : "unknown";
-	dci->dev_name = dev_name(&pdev->dev);
-
-	if (edac_device_add_device(dci))
-		goto err;
-
-	drvdata->db_irq = platform_get_irq(pdev, 0);
-	res = devm_request_irq(&pdev->dev, drvdata->db_irq,
-			       highbank_l2_err_handler,
-			       0, dev_name(&pdev->dev), dci);
-	if (res < 0)
-		goto err2;
-
-	drvdata->sb_irq = platform_get_irq(pdev, 1);
-	res = devm_request_irq(&pdev->dev, drvdata->sb_irq,
-			       highbank_l2_err_handler,
-			       0, dev_name(&pdev->dev), dci);
-	if (res < 0)
-		goto err2;
-
-	devres_close_group(&pdev->dev, NULL);
-	return 0;
-err2:
-	edac_device_del_device(&pdev->dev);
-err:
-	devres_release_group(&pdev->dev, NULL);
-	edac_device_free_ctl_info(dci);
-	return res;
-}
-
-static int highbank_l2_err_remove(struct platform_device *pdev)
-{
-	struct edac_device_ctl_info *dci = platform_get_drvdata(pdev);
-
-	edac_device_del_device(&pdev->dev);
-	edac_device_free_ctl_info(dci);
-	return 0;
-}
-
-static struct platform_driver highbank_l2_edac_driver = {
-	.probe = highbank_l2_err_probe,
-	.remove = highbank_l2_err_remove,
-	.driver = {
-		.name = "hb_l2_edac",
-		.of_match_table = hb_l2_err_of_match,
-	},
-};
-
-module_platform_driver(highbank_l2_edac_driver);
-
-MODULE_LICENSE("GPL v2");
-MODULE_AUTHOR("Calxeda, Inc.");
-MODULE_DESCRIPTION("EDAC Driver for Calxeda Highbank L2 Cache");
diff --git a/drivers/edac/highbank_mc_edac.c b/drivers/edac/highbank_mc_edac.c
deleted file mode 100644
index 61b76ec226af..000000000000
--- a/drivers/edac/highbank_mc_edac.c
+++ /dev/null
@@ -1,272 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright 2011-2012 Calxeda, Inc.
- */
-#include <linux/types.h>
-#include <linux/kernel.h>
-#include <linux/ctype.h>
-#include <linux/edac.h>
-#include <linux/interrupt.h>
-#include <linux/platform_device.h>
-#include <linux/of_platform.h>
-#include <linux/uaccess.h>
-
-#include "edac_module.h"
-
-/* DDR Ctrlr Error Registers */
-
-#define HB_DDR_ECC_ERR_BASE		0x128
-#define MW_DDR_ECC_ERR_BASE		0x1b4
-
-#define HB_DDR_ECC_OPT			0x00
-#define HB_DDR_ECC_U_ERR_ADDR		0x08
-#define HB_DDR_ECC_U_ERR_STAT		0x0c
-#define HB_DDR_ECC_U_ERR_DATAL		0x10
-#define HB_DDR_ECC_U_ERR_DATAH		0x14
-#define HB_DDR_ECC_C_ERR_ADDR		0x18
-#define HB_DDR_ECC_C_ERR_STAT		0x1c
-#define HB_DDR_ECC_C_ERR_DATAL		0x20
-#define HB_DDR_ECC_C_ERR_DATAH		0x24
-
-#define HB_DDR_ECC_OPT_MODE_MASK	0x3
-#define HB_DDR_ECC_OPT_FWC		0x100
-#define HB_DDR_ECC_OPT_XOR_SHIFT	16
-
-/* DDR Ctrlr Interrupt Registers */
-
-#define HB_DDR_ECC_INT_BASE		0x180
-#define MW_DDR_ECC_INT_BASE		0x218
-
-#define HB_DDR_ECC_INT_STATUS		0x00
-#define HB_DDR_ECC_INT_ACK		0x04
-
-#define HB_DDR_ECC_INT_STAT_CE		0x8
-#define HB_DDR_ECC_INT_STAT_DOUBLE_CE	0x10
-#define HB_DDR_ECC_INT_STAT_UE		0x20
-#define HB_DDR_ECC_INT_STAT_DOUBLE_UE	0x40
-
-struct hb_mc_drvdata {
-	void __iomem *mc_err_base;
-	void __iomem *mc_int_base;
-};
-
-static irqreturn_t highbank_mc_err_handler(int irq, void *dev_id)
-{
-	struct mem_ctl_info *mci = dev_id;
-	struct hb_mc_drvdata *drvdata = mci->pvt_info;
-	u32 status, err_addr;
-
-	/* Read the interrupt status register */
-	status = readl(drvdata->mc_int_base + HB_DDR_ECC_INT_STATUS);
-
-	if (status & HB_DDR_ECC_INT_STAT_UE) {
-		err_addr = readl(drvdata->mc_err_base + HB_DDR_ECC_U_ERR_ADDR);
-		edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1,
-				     err_addr >> PAGE_SHIFT,
-				     err_addr & ~PAGE_MASK, 0,
-				     0, 0, -1,
-				     mci->ctl_name, "");
-	}
-	if (status & HB_DDR_ECC_INT_STAT_CE) {
-		u32 syndrome = readl(drvdata->mc_err_base + HB_DDR_ECC_C_ERR_STAT);
-		syndrome = (syndrome >> 8) & 0xff;
-		err_addr = readl(drvdata->mc_err_base + HB_DDR_ECC_C_ERR_ADDR);
-		edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci, 1,
-				     err_addr >> PAGE_SHIFT,
-				     err_addr & ~PAGE_MASK, syndrome,
-				     0, 0, -1,
-				     mci->ctl_name, "");
-	}
-
-	/* clear the error, clears the interrupt */
-	writel(status, drvdata->mc_int_base + HB_DDR_ECC_INT_ACK);
-	return IRQ_HANDLED;
-}
-
-static void highbank_mc_err_inject(struct mem_ctl_info *mci, u8 synd)
-{
-	struct hb_mc_drvdata *pdata = mci->pvt_info;
-	u32 reg;
-
-	reg = readl(pdata->mc_err_base + HB_DDR_ECC_OPT);
-	reg &= HB_DDR_ECC_OPT_MODE_MASK;
-	reg |= (synd << HB_DDR_ECC_OPT_XOR_SHIFT) | HB_DDR_ECC_OPT_FWC;
-	writel(reg, pdata->mc_err_base + HB_DDR_ECC_OPT);
-}
-
-#define to_mci(k) container_of(k, struct mem_ctl_info, dev)
-
-static ssize_t highbank_mc_inject_ctrl(struct device *dev,
-	struct device_attribute *attr, const char *buf, size_t count)
-{
-	struct mem_ctl_info *mci = to_mci(dev);
-	u8 synd;
-
-	if (kstrtou8(buf, 16, &synd))
-		return -EINVAL;
-
-	highbank_mc_err_inject(mci, synd);
-
-	return count;
-}
-
-static DEVICE_ATTR(inject_ctrl, S_IWUSR, NULL, highbank_mc_inject_ctrl);
-
-static struct attribute *highbank_dev_attrs[] = {
-	&dev_attr_inject_ctrl.attr,
-	NULL
-};
-
-ATTRIBUTE_GROUPS(highbank_dev);
-
-struct hb_mc_settings {
-	int	err_offset;
-	int	int_offset;
-};
-
-static struct hb_mc_settings hb_settings = {
-	.err_offset = HB_DDR_ECC_ERR_BASE,
-	.int_offset = HB_DDR_ECC_INT_BASE,
-};
-
-static struct hb_mc_settings mw_settings = {
-	.err_offset = MW_DDR_ECC_ERR_BASE,
-	.int_offset = MW_DDR_ECC_INT_BASE,
-};
-
-static const struct of_device_id hb_ddr_ctrl_of_match[] = {
-	{ .compatible = "calxeda,hb-ddr-ctrl",		.data = &hb_settings },
-	{ .compatible = "calxeda,ecx-2000-ddr-ctrl",	.data = &mw_settings },
-	{},
-};
-MODULE_DEVICE_TABLE(of, hb_ddr_ctrl_of_match);
-
-static int highbank_mc_probe(struct platform_device *pdev)
-{
-	const struct of_device_id *id;
-	const struct hb_mc_settings *settings;
-	struct edac_mc_layer layers[2];
-	struct mem_ctl_info *mci;
-	struct hb_mc_drvdata *drvdata;
-	struct dimm_info *dimm;
-	struct resource *r;
-	void __iomem *base;
-	u32 control;
-	int irq;
-	int res = 0;
-
-	id = of_match_device(hb_ddr_ctrl_of_match, &pdev->dev);
-	if (!id)
-		return -ENODEV;
-
-	layers[0].type = EDAC_MC_LAYER_CHIP_SELECT;
-	layers[0].size = 1;
-	layers[0].is_virt_csrow = true;
-	layers[1].type = EDAC_MC_LAYER_CHANNEL;
-	layers[1].size = 1;
-	layers[1].is_virt_csrow = false;
-	mci = edac_mc_alloc(0, ARRAY_SIZE(layers), layers,
-			    sizeof(struct hb_mc_drvdata));
-	if (!mci)
-		return -ENOMEM;
-
-	mci->pdev = &pdev->dev;
-	drvdata = mci->pvt_info;
-	platform_set_drvdata(pdev, mci);
-
-	if (!devres_open_group(&pdev->dev, NULL, GFP_KERNEL))
-		return -ENOMEM;
-
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!r) {
-		dev_err(&pdev->dev, "Unable to get mem resource\n");
-		res = -ENODEV;
-		goto err;
-	}
-
-	if (!devm_request_mem_region(&pdev->dev, r->start,
-				     resource_size(r), dev_name(&pdev->dev))) {
-		dev_err(&pdev->dev, "Error while requesting mem region\n");
-		res = -EBUSY;
-		goto err;
-	}
-
-	base = devm_ioremap(&pdev->dev, r->start, resource_size(r));
-	if (!base) {
-		dev_err(&pdev->dev, "Unable to map regs\n");
-		res = -ENOMEM;
-		goto err;
-	}
-
-	settings = id->data;
-	drvdata->mc_err_base = base + settings->err_offset;
-	drvdata->mc_int_base = base + settings->int_offset;
-
-	control = readl(drvdata->mc_err_base + HB_DDR_ECC_OPT) & 0x3;
-	if (!control || (control == 0x2)) {
-		dev_err(&pdev->dev, "No ECC present, or ECC disabled\n");
-		res = -ENODEV;
-		goto err;
-	}
-
-	mci->mtype_cap = MEM_FLAG_DDR3;
-	mci->edac_ctl_cap = EDAC_FLAG_NONE | EDAC_FLAG_SECDED;
-	mci->edac_cap = EDAC_FLAG_SECDED;
-	mci->mod_name = pdev->dev.driver->name;
-	mci->ctl_name = id->compatible;
-	mci->dev_name = dev_name(&pdev->dev);
-	mci->scrub_mode = SCRUB_SW_SRC;
-
-	/* Only a single 4GB DIMM is supported */
-	dimm = *mci->dimms;
-	dimm->nr_pages = (~0UL >> PAGE_SHIFT) + 1;
-	dimm->grain = 8;
-	dimm->dtype = DEV_X8;
-	dimm->mtype = MEM_DDR3;
-	dimm->edac_mode = EDAC_SECDED;
-
-	res = edac_mc_add_mc_with_groups(mci, highbank_dev_groups);
-	if (res < 0)
-		goto err;
-
-	irq = platform_get_irq(pdev, 0);
-	res = devm_request_irq(&pdev->dev, irq, highbank_mc_err_handler,
-			       0, dev_name(&pdev->dev), mci);
-	if (res < 0) {
-		dev_err(&pdev->dev, "Unable to request irq %d\n", irq);
-		goto err2;
-	}
-
-	devres_close_group(&pdev->dev, NULL);
-	return 0;
-err2:
-	edac_mc_del_mc(&pdev->dev);
-err:
-	devres_release_group(&pdev->dev, NULL);
-	edac_mc_free(mci);
-	return res;
-}
-
-static int highbank_mc_remove(struct platform_device *pdev)
-{
-	struct mem_ctl_info *mci = platform_get_drvdata(pdev);
-
-	edac_mc_del_mc(&pdev->dev);
-	edac_mc_free(mci);
-	return 0;
-}
-
-static struct platform_driver highbank_mc_edac_driver = {
-	.probe = highbank_mc_probe,
-	.remove = highbank_mc_remove,
-	.driver = {
-		.name = "hb_mc_edac",
-		.of_match_table = hb_ddr_ctrl_of_match,
-	},
-};
-
-module_platform_driver(highbank_mc_edac_driver);
-
-MODULE_LICENSE("GPL v2");
-MODULE_AUTHOR("Calxeda, Inc.");
-MODULE_DESCRIPTION("EDAC Driver for Calxeda Highbank");
--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
