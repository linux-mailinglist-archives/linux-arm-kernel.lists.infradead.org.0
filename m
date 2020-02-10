Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB86C158066
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 18:02:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4xuL43lV0EVkqscqhUK3QlWK+NakLdBMScfKu/zNtNE=; b=TvFU7kqYK+2lpV5ZrHHZuigL/h
	PE8jM62ULvmLLES446AY3MGctaztIA4K427fJJZkG6m58qQWEKFA5q7UgD7afb5YQSQyTqYSvEmiw
	JDJuGEKHfXDbaqcy5T6U0u2E+CGAVVi14rSfAE8ar52UUfpGLZZFDRFIt0yjuhNmQxx+cazFuv4y+
	R7VbURGlXegRNo+JvA0EQhMiJuZtiwmQ6wSHPKAfrzc4uoVIJwhN8uk653Pg5kz1Od7YCTZdASz0o
	+JCvQPRy9EOcrixJk+khKKGMzpUtGjOhkZ8+inI2ie++5yy3X+9/7nfT3PJPy4nqr3bEzcas5VT/E
	ll9r/oww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1CSB-00078j-FY; Mon, 10 Feb 2020 17:02:35 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1CRW-0006XR-IR
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 17:01:58 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 52C97ADB3;
 Mon, 10 Feb 2020 17:01:46 +0000 (UTC)
From: Nikolay Borisov <nborisov@suse.com>
To: bjorn.andersson@linaro.org
Subject: [PATCH 1/3] hwspinlock: sunxi: Implement support for Allwinner's A64
 SoC
Date: Mon, 10 Feb 2020 19:01:41 +0200
Message-Id: <20200210170143.20007-2-nborisov@suse.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200210170143.20007-1-nborisov@suse.com>
References: <20200210170143.20007-1-nborisov@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_090154_960987_3572456A 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Nikolay Borisov <nborisov@suse.com>, linux-arm-kernel@lists.infradead.org,
 mripard@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Based on the datasheet this implements support for the hwspinlock IP
block.

Signed-off-by: Nikolay Borisov <nborisov@suse.com>
---
 drivers/hwspinlock/Kconfig            |   9 ++
 drivers/hwspinlock/Makefile           |   1 +
 drivers/hwspinlock/sunxi_hwspinlock.c | 181 ++++++++++++++++++++++++++
 3 files changed, 191 insertions(+)
 create mode 100644 drivers/hwspinlock/sunxi_hwspinlock.c

diff --git a/drivers/hwspinlock/Kconfig b/drivers/hwspinlock/Kconfig
index 37740e992cfa..ebc1ea48ef16 100644
--- a/drivers/hwspinlock/Kconfig
+++ b/drivers/hwspinlock/Kconfig
@@ -68,3 +68,12 @@ config HSEM_U8500
 	  SoC.
 
 	  If unsure, say N.
+
+config HWSPINLOCK_SUNXI
+	tristate "Allwinner Hardware Spinlock device"
+	depends on ARCH_SUNXI
+	depends on HWSPINLOCK
+	help
+	  Say y here to support the SUNXI Hardware Spinlock device.
+
+	  If unsure, say N.
diff --git a/drivers/hwspinlock/Makefile b/drivers/hwspinlock/Makefile
index ed053e3f02be..6be5ebef906e 100644
--- a/drivers/hwspinlock/Makefile
+++ b/drivers/hwspinlock/Makefile
@@ -8,5 +8,6 @@ obj-$(CONFIG_HWSPINLOCK_OMAP)		+= omap_hwspinlock.o
 obj-$(CONFIG_HWSPINLOCK_QCOM)		+= qcom_hwspinlock.o
 obj-$(CONFIG_HWSPINLOCK_SIRF)		+= sirf_hwspinlock.o
 obj-$(CONFIG_HWSPINLOCK_SPRD)		+= sprd_hwspinlock.o
+obj-$(CONFIG_HWSPINLOCK_SUNXI)		+= sunxi_hwspinlock.o
 obj-$(CONFIG_HWSPINLOCK_STM32)		+= stm32_hwspinlock.o
 obj-$(CONFIG_HSEM_U8500)		+= u8500_hsem.o
diff --git a/drivers/hwspinlock/sunxi_hwspinlock.c b/drivers/hwspinlock/sunxi_hwspinlock.c
new file mode 100644
index 000000000000..8e5685357fbf
--- /dev/null
+++ b/drivers/hwspinlock/sunxi_hwspinlock.c
@@ -0,0 +1,181 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Author: Nikolay Borisov <nborisov@suse.com> */
+
+#include <linux/clk.h>
+#include <linux/reset.h>
+#include <linux/hwspinlock.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+
+#include "hwspinlock_internal.h"
+
+/* Spinlock register offsets */
+#define LOCK_BASE_OFFSET		0x0100
+
+#define SPINLOCK_NUMLOCKS_BIT_OFFSET	(28)
+/* Possible values of SPINLOCK_LOCK_REG */
+#define SPINLOCK_NOTTAKEN		(0)	/* free */
+#define SPINLOCK_TAKEN			(1)	/* locked */
+
+struct sunxi_hwspinlock {
+	struct clk *clk;
+	struct reset_control *reset;
+	struct hwspinlock_device bank;
+};
+
+static int sunxi_hwspinlock_trylock(struct hwspinlock *lock)
+{
+	void __iomem *lock_addr = lock->priv;
+
+	/* attempt to acquire the lock by reading its value */
+	return (SPINLOCK_NOTTAKEN == readl(lock_addr));
+}
+
+static void sunxi_hwspinlock_unlock(struct hwspinlock *lock)
+{
+	void __iomem *lock_addr = lock->priv;
+
+	/* release the lock by writing 0 to it */
+	writel(SPINLOCK_NOTTAKEN, lock_addr);
+}
+
+static const struct hwspinlock_ops sunxi_hwspinlock_ops = {
+	.trylock	= sunxi_hwspinlock_trylock,
+	.unlock		= sunxi_hwspinlock_unlock,
+};
+
+static int sunxi_get_num_locks(void __iomem *io_base)
+{
+	int i = readl(io_base);
+	i >>= SPINLOCK_NUMLOCKS_BIT_OFFSET;
+
+	switch (i) {
+	case 0x1: return 32;
+	case 0x2: return 64;
+	case 0x3: return 128;
+	case 0x4: return 256;
+	}
+
+	return 0;
+}
+
+static int sunxi_hwspinlock_probe(struct platform_device *pdev)
+{
+	struct sunxi_hwspinlock *hw;
+	void __iomem *io_base;
+	struct resource *res;
+	struct clk *clk;
+	struct reset_control *reset;
+	int i, ret, num_locks;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	io_base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(io_base))
+		return PTR_ERR(io_base);
+
+	/*
+	 * make sure the module is enabled and clocked before reading
+	 * the module SYSSTATUS register
+	 */
+	clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	ret = clk_prepare_enable(clk);
+	if (ret) {
+		dev_err(&pdev->dev, "Cannot enable clock\n");
+		return ret;
+	}
+
+	/* Disable soft reset */
+        reset= devm_reset_control_get_exclusive(&pdev->dev, NULL);
+        if (IS_ERR(reset)) {
+                ret = PTR_ERR(reset);
+                goto out_declock;
+        }
+        reset_control_deassert(reset);
+
+	num_locks = sunxi_get_num_locks(io_base);
+	if (!num_locks) {
+		dev_err(&pdev->dev, "Unrecognised sunxi hwspinlock device\n");
+		ret = -EINVAL;
+		goto out_reset;
+	}
+
+	hw = devm_kzalloc(&pdev->dev, sizeof(*hw) +
+			  num_locks * sizeof(struct hwspinlock), GFP_KERNEL);
+	if (!hw) {
+		ret = -ENOMEM;
+		goto out_reset;
+	}
+
+	hw->clk = clk;
+	hw->reset = reset;
+
+	io_base += LOCK_BASE_OFFSET;
+	for (i = 0; i < num_locks; i++)
+		hw->bank.lock[i].priv = io_base + i * sizeof(u32);
+
+	platform_set_drvdata(pdev, hw);
+
+	ret = hwspin_lock_register(&hw->bank, &pdev->dev, &sunxi_hwspinlock_ops,
+				   0, num_locks);
+
+	if (!ret)
+		return ret;
+out_reset:
+	reset_control_assert(reset);
+out_declock:
+	clk_disable_unprepare(clk);
+	return ret;
+}
+
+static int sunxi_hwspinlock_remove(struct platform_device *pdev)
+{
+	struct sunxi_hwspinlock *hw = platform_get_drvdata(pdev);
+	int ret;
+
+	ret = hwspin_lock_unregister(&hw->bank);
+	if (ret)
+		dev_err(&pdev->dev, "%s failed: %d\n", __func__, ret);
+
+	reset_control_assert(hw->reset);
+	clk_disable_unprepare(hw->clk);
+
+	return 0;
+}
+
+static const struct of_device_id sunxi_hwpinlock_ids[] = {
+	{ .compatible = "allwinner,sun50i-a64-hwspinlock", },
+	{},
+};
+MODULE_DEVICE_TABLE(of, sunxi_hwpinlock_ids);
+
+static struct platform_driver sunxi_hwspinlock_driver = {
+	.probe		= sunxi_hwspinlock_probe,
+	.remove		= sunxi_hwspinlock_remove,
+	.driver		= {
+		.name	= "sunxi_hwspinlock",
+		.of_match_table = sunxi_hwpinlock_ids,
+	},
+};
+
+static int __init sunxi_hwspinlock_init(void)
+{
+	return platform_driver_register(&sunxi_hwspinlock_driver);
+}
+/* board init code might need to reserve hwspinlocks for predefined purposes */
+postcore_initcall(sunxi_hwspinlock_init);
+
+static void __exit sunxi_hwspinlock_exit(void)
+{
+	platform_driver_unregister(&sunxi_hwspinlock_driver);
+}
+module_exit(sunxi_hwspinlock_exit);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("Hardware spinlock driver for sunxi SoCs");
+MODULE_AUTHOR("Nikolay Borisov <nborisov@suse.com>");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
