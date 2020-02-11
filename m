Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9167B158E74
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 13:27:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VqrOcuSCDCNB2AoTIdlL4/kWcF0LKQapISIxRIqeLWw=; b=D44SJaAmsyjGb3rO/N8F+D9t4I
	o3GkByd3HdZ+H2m5YyDQnsN9ItZ1sYQuBwjfa0raaV/LAIFaDPFLfwZ/WdC0YhXTQsyjrEwflxZl4
	v1QqiHnfGMTFM7kKWLRm1Lx/uNq0xopIMlSabrdd5nyeDbp8vlS3DBkkRIyDdqGOSowlM96goOvRm
	ABwawwHPup9ww/a9PgU8Dk7rGad6xwF9MYnsyqYmvLIkiyCJtnFNdUIWk4FjgTjNJdScL1IOEAkd5
	K7xopqzou8Q93t/LJbUiJ+NgZKkeZZn5QVclnVzPaDw9+CVjxhZ2gyJOvlaXQcvMJDoePDf4En5va
	PTEqtyIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1UdL-00042z-7U; Tue, 11 Feb 2020 12:27:19 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Ucb-0003SS-DO
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 12:26:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3D7DEAFB2;
 Tue, 11 Feb 2020 12:26:31 +0000 (UTC)
From: Nikolay Borisov <nborisov@suse.com>
To: mripard@kernel.org,
	bjorn.andersson@linaro.org
Subject: [PATCH v2 1/3] hwspinlock: sunxi: Implement support for Allwinner's
 A64 SoC
Date: Tue, 11 Feb 2020 14:26:22 +0200
Message-Id: <20200211122624.16484-2-nborisov@suse.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200211122624.16484-1-nborisov@suse.com>
References: <20200211122624.16484-1-nborisov@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_042633_766485_B8BAA33D 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Nikolay Borisov <nborisov@suse.com>, devicetree@vger.kernel.org,
 wens@csie.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Based on the datasheet this implements support for the hwspinlock IP
block.

Signed-off-by: Nikolay Borisov <nborisov@suse.com>
---
 drivers/hwspinlock/Kconfig             |   9 ++
 drivers/hwspinlock/Makefile            |   1 +
 drivers/hwspinlock/sun50i_hwspinlock.c | 163 +++++++++++++++++++++++++
 3 files changed, 173 insertions(+)
 create mode 100644 drivers/hwspinlock/sun50i_hwspinlock.c

diff --git a/drivers/hwspinlock/Kconfig b/drivers/hwspinlock/Kconfig
index 37740e992cfa..aff39bad3e90 100644
--- a/drivers/hwspinlock/Kconfig
+++ b/drivers/hwspinlock/Kconfig
@@ -68,3 +68,12 @@ config HSEM_U8500
 	  SoC.
 
 	  If unsure, say N.
+
+config HWSPINLOCK_SUN50I
+	tristate "Allwinner Hardware Spinlock device"
+	depends on ARCH_SUNXI
+	depends on HWSPINLOCK
+	help
+	  Say y here to support the SUNXI Hardware Spinlock device.
+
+	  If unsure, say N.
diff --git a/drivers/hwspinlock/Makefile b/drivers/hwspinlock/Makefile
index ed053e3f02be..ebabe5c7b7ef 100644
--- a/drivers/hwspinlock/Makefile
+++ b/drivers/hwspinlock/Makefile
@@ -8,5 +8,6 @@ obj-$(CONFIG_HWSPINLOCK_OMAP)		+= omap_hwspinlock.o
 obj-$(CONFIG_HWSPINLOCK_QCOM)		+= qcom_hwspinlock.o
 obj-$(CONFIG_HWSPINLOCK_SIRF)		+= sirf_hwspinlock.o
 obj-$(CONFIG_HWSPINLOCK_SPRD)		+= sprd_hwspinlock.o
+obj-$(CONFIG_HWSPINLOCK_SUN50I)		+= sun50i_hwspinlock.o
 obj-$(CONFIG_HWSPINLOCK_STM32)		+= stm32_hwspinlock.o
 obj-$(CONFIG_HSEM_U8500)		+= u8500_hsem.o
diff --git a/drivers/hwspinlock/sun50i_hwspinlock.c b/drivers/hwspinlock/sun50i_hwspinlock.c
new file mode 100644
index 000000000000..2b54c0a0148d
--- /dev/null
+++ b/drivers/hwspinlock/sun50i_hwspinlock.c
@@ -0,0 +1,163 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Author: Nikolay Borisov <nborisov@suse.com> */
+
+#include <linux/bitfield.h>
+#include <linux/bits.h>
+#include <linux/clk.h>
+#include <linux/hwspinlock.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/reset.h>
+
+#include "hwspinlock_internal.h"
+
+/* Bits containing number of locks in SPINLOCK_SYSSTATUS_REG */
+#define SPINLOCK_LOCKS_NUM GENMASK(29, 28)
+
+/* Spinlock register offsets */
+#define SPINLOCK_ID(X) (0x100 + 0x4 * X)
+
+/* Possible values of SPINLOCK_LOCK_REG */
+#define SPINLOCK_NOTTAKEN		(0)	/* free */
+#define SPINLOCK_TAKEN			(1)	/* locked */
+
+struct sun50i_hwspinlock {
+	struct clk *clk;
+	struct reset_control *reset;
+	struct hwspinlock_device *bank;
+};
+
+static int sun50i_hwspinlock_trylock(struct hwspinlock *lock)
+{
+	void __iomem *lock_addr = lock->priv;
+
+	/* attempt to acquire the lock by reading its value */
+	return readl(lock_addr) == SPINLOCK_NOTTAKEN;
+}
+
+static void sun50i_hwspinlock_unlock(struct hwspinlock *lock)
+{
+	void __iomem *lock_addr = lock->priv;
+
+	/* release the lock by writing 0 to it */
+	writel(SPINLOCK_NOTTAKEN, lock_addr);
+}
+
+static const struct hwspinlock_ops sun50i_hwspinlock_ops = {
+	.trylock	= sun50i_hwspinlock_trylock,
+	.unlock		= sun50i_hwspinlock_unlock,
+};
+
+static int sun50i_get_num_locks(void __iomem *io_base)
+{
+	u32 i = readl(io_base);
+	i = FIELD_GET(SPINLOCK_LOCKS_NUM, i);
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
+static int sun50i_hwspinlock_probe(struct platform_device *pdev)
+{
+	struct sun50i_hwspinlock *hw;
+	void __iomem *io_base;
+	struct clk *clk;
+	struct reset_control *reset;
+	int i, ret, num_locks;
+
+	io_base = devm_platform_ioremap_resource(&pdev->dev, 0);
+	if (IS_ERR(io_base))
+		return PTR_ERR(io_base);
+
+	hw = devm_kzalloc(&pdev->dev, sizeof(*hw), GFP_KERNEL);
+	if (!hw)
+		return -ENOMEM;
+
+	hw->clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(hw->clk))
+		return PTR_ERR(hw->clk);
+
+	ret = clk_prepare_enable(hw->clk);
+	if (ret) {
+		dev_err(&pdev->dev, "Cannot enable clock\n");
+		return ret;
+	}
+
+	/* Disable soft reset */
+	hw->reset= devm_reset_control_get_exclusive(&pdev->dev, NULL);
+	if (IS_ERR(hw->reset)) {
+		clk_disable_unprepare(hw->clk);
+		return PTR_ERR(hw->reset);
+	}
+	reset_control_deassert(hw->reset);
+
+	ret = devm_add_action_or_reset(&pdev->dev, sun50i_hwpinlock_disable,
+				       hw);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to add hwspinlock disable action\n");
+		return ret;
+	}
+
+	num_locks = sun50i_get_num_locks(io_base);
+	if (!num_locks) {
+		dev_err(&pdev->dev, "Unrecognised sun50i hwspinlock device\n");
+		ret = -EINVAL;
+		goto out_reset;
+	}
+
+	hw->bank = devm_kzalloc(&pdev->dev,
+				struct_size(hw->bank, lock, num_locks),
+				GFP_KERNEL);
+	if (!hw) {
+		ret = -ENOMEM;
+		goto out_reset;
+	}
+
+	for (i = 0; i < num_locks; i++)
+		hw->bank.lock[i].priv = io_base + SPINLOCK_ID(i);
+
+	platform_set_drvdata(pdev, hw);
+
+	return devm_hwspin_lock_register(&pdev->dev, &hw->bank,
+					 &sun50i_hwspinlock_ops, 0, num_locks);
+}
+
+static int sun50i_hwspinlock_disable(struct platform_device *pdev)
+{
+	struct sun50i_hwspinlock *hw = platform_get_drvdata(pdev);
+	int ret;
+
+	reset_control_assert(hw->reset);
+	clk_disable_unprepare(hw->clk);
+
+	return 0;
+}
+
+static const struct of_device_id sun50i_hwpinlock_ids[] = {
+	{ .compatible = "allwinner,sun50i-a64-hwspinlock", },
+	{},
+};
+MODULE_DEVICE_TABLE(of, sun50i_hwpinlock_ids);
+
+static struct platform_driver sun50i_hwspinlock_driver = {
+	.probe		= sun50i_hwspinlock_probe,
+	.driver		= {
+		.name	= "sun50i_hwspinlock",
+		.of_match_table = sun50i_hwpinlock_ids,
+	},
+};
+
+module_platform_driver(sun50i_hwspinlock_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("Hardware spinlock driver for sun50i SoCs");
+MODULE_AUTHOR("Nikolay Borisov <nborisov@suse.com>");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
