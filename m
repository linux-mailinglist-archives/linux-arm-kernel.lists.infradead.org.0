Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC131BE97A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVWoYWIxjSolNGRwqBCsqabRqD0SyN5cftRUpS6HYYg=; b=L1fWNak2rbXEN3
	j7ONshpPNgwK9z+sxVzCcNgYybK9MnM3bKU/WqKUJVQie/y/XxHMfXRJJ0u19yE8Ie9ZP74qAzCw5
	zeN3BxLRM+aSV+4AjfJVhyp5DKzi7FnJf2Nnsg9IpajaevgpQyoPbR/CzLZgxkD1x64atRM5WDLsA
	KlUAse/pR6IymIu8+YwU+KN96eQt7l7jq8Nk30G/AqwDyJ3tyTn2QuOMXn5Tc9cE3uYDrYDj63666
	xLjFanXrNiHAwANX4cf8O2wrUwK8ObW3pcD7mhUwqFqdLanrTm5LkzYetDocjPqAve0KFiLIQiajJ
	x4MD0iwrWKAXoEFeBHbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtr5-0002DO-6z; Wed, 29 Apr 2020 21:02:55 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtn4-0005IM-LW
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:58:51 +0000
Received: by mail-ot1-f65.google.com with SMTP id j4so2961106otr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 13:58:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+USzHRYmJEzVRKFDOu0LkwxTP/bvZhq9sONXfjk1RSU=;
 b=oF3WDXr8wwThHa8epWGFibteXhMkXJYJCCupQwKsZGPSbrxo9pGBv8qzEn8zGF71sH
 IFL/JP5LbDI8uxQobixd7KsjcU2d1FG9vKGDcuoh1MJ1h7cHhsZ7U953vHze1cTrsCGq
 OfLJsqRgJ+Cx2c2/5eGap2+MreYXrAXLE6bBO+hhmjagkpA9XN149N0Qv/kJad1TkBzH
 EnYIybfL6LzsZ62nOP+tb2g4mLmuTe/2KOgboZ9kDKZohqplcVQyO8Fl1Bs9g1KVJzfD
 6k6jMOcVHV3lNTLupEQGSu3WQt/xbDLZAvQLSs7inc9fTq45plUP4yebdo6aL3xPDSCL
 9mJA==
X-Gm-Message-State: AGi0PuZ1NmbZaAxu2TxxjZaI74CjUGEJCBiuj5qqyRpl1016nHGh6iTP
 u3o9MPMO2z6h9coYJUC68w==
X-Google-Smtp-Source: APiQypK0Wl97YaJ+3gmf3RG0azGmqbkDqn9cb7GfcYJGkadk3/1GnuCxNSkLpU0KU+MPLRR6UWLwCA==
X-Received: by 2002:a9d:6ac6:: with SMTP id m6mr4943974otq.215.1588193925511; 
 Wed, 29 Apr 2020 13:58:45 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id z13sm653162oth.10.2020.04.29.13.58.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:58:44 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v2 12/16] bus: vexpress-config: Merge vexpress-syscfg into
 vexpress-config
Date: Wed, 29 Apr 2020 15:58:21 -0500
Message-Id: <20200429205825.10604-13-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429205825.10604-1-robh@kernel.org>
References: <20200429205825.10604-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_135847_138247_9461C8A3 
X-CRM114-Status: GOOD (  24.23  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The only thing that vexpress-syscfg does is provide a regmap to
vexpress-config bus child devices. There's little reason to have 2
components for this. The current structure with initcall ordering
requirements makes turning these components into modules more difficult.

So let's start to simplify things and merge vexpress-syscfg into
vexpress-config. There's no functional change in this commit and it's
still separate components until subsequent commits.

Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Acked-by: Liviu Dudau <liviu.dudau@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/mach-vexpress/Kconfig |   1 -
 drivers/bus/vexpress-config.c  | 283 +++++++++++++++++++++++++++++++--
 drivers/misc/Kconfig           |   9 --
 drivers/misc/Makefile          |   1 -
 drivers/misc/vexpress-syscfg.c | 280 --------------------------------
 include/linux/vexpress.h       |  17 --
 6 files changed, 274 insertions(+), 317 deletions(-)
 delete mode 100644 drivers/misc/vexpress-syscfg.c

diff --git a/arch/arm/mach-vexpress/Kconfig b/arch/arm/mach-vexpress/Kconfig
index 2d1fdec4c230..065e12991663 100644
--- a/arch/arm/mach-vexpress/Kconfig
+++ b/arch/arm/mach-vexpress/Kconfig
@@ -20,7 +20,6 @@ menuconfig ARCH_VEXPRESS
 	select REGULATOR if MMC_ARMMMCI
 	select REGULATOR_FIXED_VOLTAGE if REGULATOR
 	select VEXPRESS_CONFIG
-	select VEXPRESS_SYSCFG
 	help
 	  This option enables support for systems using Cortex processor based
 	  ARM core and logic (FPGA) tiles on the Versatile Express motherboard,
diff --git a/drivers/bus/vexpress-config.c b/drivers/bus/vexpress-config.c
index ff70575b2db6..43f5beac9811 100644
--- a/drivers/bus/vexpress-config.c
+++ b/drivers/bus/vexpress-config.c
@@ -6,10 +6,48 @@
 
 #include <linux/err.h>
 #include <linux/init.h>
+#include <linux/io.h>
 #include <linux/of.h>
+#include <linux/platform_device.h>
 #include <linux/of_device.h>
+#include <linux/sched/signal.h>
+#include <linux/slab.h>
 #include <linux/vexpress.h>
 
+#define SYS_CFGDATA		0x0
+
+#define SYS_CFGCTRL		0x4
+#define SYS_CFGCTRL_START	(1 << 31)
+#define SYS_CFGCTRL_WRITE	(1 << 30)
+#define SYS_CFGCTRL_DCC(n)	(((n) & 0xf) << 26)
+#define SYS_CFGCTRL_FUNC(n)	(((n) & 0x3f) << 20)
+#define SYS_CFGCTRL_SITE(n)	(((n) & 0x3) << 16)
+#define SYS_CFGCTRL_POSITION(n)	(((n) & 0xf) << 12)
+#define SYS_CFGCTRL_DEVICE(n)	(((n) & 0xfff) << 0)
+
+#define SYS_CFGSTAT		0x8
+#define SYS_CFGSTAT_ERR		(1 << 1)
+#define SYS_CFGSTAT_COMPLETE	(1 << 0)
+
+
+struct vexpress_syscfg {
+	struct device *dev;
+	void __iomem *base;
+	struct list_head funcs;
+};
+
+struct vexpress_syscfg_func {
+	struct list_head list;
+	struct vexpress_syscfg *syscfg;
+	struct regmap *regmap;
+	int num_templates;
+	u32 template[]; /* Keep it last! */
+};
+
+struct vexpress_config_bridge_ops {
+	struct regmap * (*regmap_init)(struct device *dev, void *context);
+	void (*regmap_exit)(struct regmap *regmap, void *context);
+};
 
 struct vexpress_config_bridge {
 	struct vexpress_config_bridge_ops *ops;
@@ -27,17 +65,12 @@ void vexpress_config_set_master(u32 site)
 	vexpress_config_site_master = site;
 }
 
-u32 vexpress_config_get_master(void)
-{
-	return vexpress_config_site_master;
-}
-
-void vexpress_config_lock(void *arg)
+static void vexpress_config_lock(void *arg)
 {
 	mutex_lock(&vexpress_config_mutex);
 }
 
-void vexpress_config_unlock(void *arg)
+static void vexpress_config_unlock(void *arg)
 {
 	mutex_unlock(&vexpress_config_mutex);
 }
@@ -59,7 +92,7 @@ static void vexpress_config_find_prop(struct device_node *node,
 	}
 }
 
-int vexpress_config_get_topo(struct device_node *node, u32 *site,
+static int vexpress_config_get_topo(struct device_node *node, u32 *site,
 		u32 *position, u32 *dcc)
 {
 	vexpress_config_find_prop(node, "arm,vexpress,site", site);
@@ -113,7 +146,7 @@ struct regmap *devm_regmap_init_vexpress_config(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(devm_regmap_init_vexpress_config);
 
-struct device *vexpress_config_bridge_register(struct device *parent,
+static struct device *vexpress_config_bridge_register(struct device *parent,
 		struct vexpress_config_bridge_ops *ops, void *context)
 {
 	struct device *dev;
@@ -201,3 +234,235 @@ static int __init vexpress_config_init(void)
 }
 postcore_initcall(vexpress_config_init);
 
+static int vexpress_syscfg_exec(struct vexpress_syscfg_func *func,
+		int index, bool write, u32 *data)
+{
+	struct vexpress_syscfg *syscfg = func->syscfg;
+	u32 command, status;
+	int tries;
+	long timeout;
+
+	if (WARN_ON(index >= func->num_templates))
+		return -EINVAL;
+
+	command = readl(syscfg->base + SYS_CFGCTRL);
+	if (WARN_ON(command & SYS_CFGCTRL_START))
+		return -EBUSY;
+
+	command = func->template[index];
+	command |= SYS_CFGCTRL_START;
+	command |= write ? SYS_CFGCTRL_WRITE : 0;
+
+	/* Use a canary for reads */
+	if (!write)
+		*data = 0xdeadbeef;
+
+	dev_dbg(syscfg->dev, "func %p, command %x, data %x\n",
+			func, command, *data);
+	writel(*data, syscfg->base + SYS_CFGDATA);
+	writel(0, syscfg->base + SYS_CFGSTAT);
+	writel(command, syscfg->base + SYS_CFGCTRL);
+	mb();
+
+	/* The operation can take ages... Go to sleep, 100us initially */
+	tries = 100;
+	timeout = 100;
+	do {
+		if (!irqs_disabled()) {
+			set_current_state(TASK_INTERRUPTIBLE);
+			schedule_timeout(usecs_to_jiffies(timeout));
+			if (signal_pending(current))
+				return -EINTR;
+		} else {
+			udelay(timeout);
+		}
+
+		status = readl(syscfg->base + SYS_CFGSTAT);
+		if (status & SYS_CFGSTAT_ERR)
+			return -EFAULT;
+
+		if (timeout > 20)
+			timeout -= 20;
+	} while (--tries && !(status & SYS_CFGSTAT_COMPLETE));
+	if (WARN_ON_ONCE(!tries))
+		return -ETIMEDOUT;
+
+	if (!write) {
+		*data = readl(syscfg->base + SYS_CFGDATA);
+		dev_dbg(syscfg->dev, "func %p, read data %x\n", func, *data);
+	}
+
+	return 0;
+}
+
+static int vexpress_syscfg_read(void *context, unsigned int index,
+		unsigned int *val)
+{
+	struct vexpress_syscfg_func *func = context;
+
+	return vexpress_syscfg_exec(func, index, false, val);
+}
+
+static int vexpress_syscfg_write(void *context, unsigned int index,
+		unsigned int val)
+{
+	struct vexpress_syscfg_func *func = context;
+
+	return vexpress_syscfg_exec(func, index, true, &val);
+}
+
+static struct regmap_config vexpress_syscfg_regmap_config = {
+	.lock = vexpress_config_lock,
+	.unlock = vexpress_config_unlock,
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_read = vexpress_syscfg_read,
+	.reg_write = vexpress_syscfg_write,
+	.reg_format_endian = REGMAP_ENDIAN_LITTLE,
+	.val_format_endian = REGMAP_ENDIAN_LITTLE,
+};
+
+
+static struct regmap *vexpress_syscfg_regmap_init(struct device *dev,
+		void *context)
+{
+	int err;
+	struct vexpress_syscfg *syscfg = context;
+	struct vexpress_syscfg_func *func;
+	struct property *prop;
+	const __be32 *val = NULL;
+	__be32 energy_quirk[4];
+	int num;
+	u32 site, position, dcc;
+	int i;
+
+	err = vexpress_config_get_topo(dev->of_node, &site,
+				&position, &dcc);
+	if (err)
+		return ERR_PTR(err);
+
+	prop = of_find_property(dev->of_node,
+			"arm,vexpress-sysreg,func", NULL);
+	if (!prop)
+		return ERR_PTR(-EINVAL);
+
+	num = prop->length / sizeof(u32) / 2;
+	val = prop->value;
+
+	/*
+	 * "arm,vexpress-energy" function used to be described
+	 * by its first device only, now it requires both
+	 */
+	if (num == 1 && of_device_is_compatible(dev->of_node,
+			"arm,vexpress-energy")) {
+		num = 2;
+		energy_quirk[0] = *val;
+		energy_quirk[2] = *val++;
+		energy_quirk[1] = *val;
+		energy_quirk[3] = cpu_to_be32(be32_to_cpup(val) + 1);
+		val = energy_quirk;
+	}
+
+	func = kzalloc(struct_size(func, template, num), GFP_KERNEL);
+	if (!func)
+		return ERR_PTR(-ENOMEM);
+
+	func->syscfg = syscfg;
+	func->num_templates = num;
+
+	for (i = 0; i < num; i++) {
+		u32 function, device;
+
+		function = be32_to_cpup(val++);
+		device = be32_to_cpup(val++);
+
+		dev_dbg(dev, "func %p: %u/%u/%u/%u/%u\n",
+				func, site, position, dcc,
+				function, device);
+
+		func->template[i] = SYS_CFGCTRL_DCC(dcc);
+		func->template[i] |= SYS_CFGCTRL_SITE(site);
+		func->template[i] |= SYS_CFGCTRL_POSITION(position);
+		func->template[i] |= SYS_CFGCTRL_FUNC(function);
+		func->template[i] |= SYS_CFGCTRL_DEVICE(device);
+	}
+
+	vexpress_syscfg_regmap_config.max_register = num - 1;
+
+	func->regmap = regmap_init(dev, NULL, func,
+			&vexpress_syscfg_regmap_config);
+
+	if (IS_ERR(func->regmap)) {
+		void *err = func->regmap;
+
+		kfree(func);
+		return err;
+	}
+
+	list_add(&func->list, &syscfg->funcs);
+
+	return func->regmap;
+}
+
+static void vexpress_syscfg_regmap_exit(struct regmap *regmap, void *context)
+{
+	struct vexpress_syscfg *syscfg = context;
+	struct vexpress_syscfg_func *func, *tmp;
+
+	regmap_exit(regmap);
+
+	list_for_each_entry_safe(func, tmp, &syscfg->funcs, list) {
+		if (func->regmap == regmap) {
+			list_del(&syscfg->funcs);
+			kfree(func);
+			break;
+		}
+	}
+}
+
+static struct vexpress_config_bridge_ops vexpress_syscfg_bridge_ops = {
+	.regmap_init = vexpress_syscfg_regmap_init,
+	.regmap_exit = vexpress_syscfg_regmap_exit,
+};
+
+
+static int vexpress_syscfg_probe(struct platform_device *pdev)
+{
+	struct vexpress_syscfg *syscfg;
+	struct resource *res;
+	struct device *bridge;
+
+	syscfg = devm_kzalloc(&pdev->dev, sizeof(*syscfg), GFP_KERNEL);
+	if (!syscfg)
+		return -ENOMEM;
+	syscfg->dev = &pdev->dev;
+	INIT_LIST_HEAD(&syscfg->funcs);
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	syscfg->base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(syscfg->base))
+		return PTR_ERR(syscfg->base);
+
+	/* Must use dev.parent (MFD), as that's where DT phandle points at... */
+	bridge = vexpress_config_bridge_register(pdev->dev.parent,
+			&vexpress_syscfg_bridge_ops, syscfg);
+
+	return PTR_ERR_OR_ZERO(bridge);
+}
+
+static const struct platform_device_id vexpress_syscfg_id_table[] = {
+	{ "vexpress-syscfg", },
+	{},
+};
+
+static struct platform_driver vexpress_syscfg_driver = {
+	.driver.name = "vexpress-syscfg",
+	.id_table = vexpress_syscfg_id_table,
+	.probe = vexpress_syscfg_probe,
+};
+
+static int __init vexpress_syscfg_init(void)
+{
+	return platform_driver_register(&vexpress_syscfg_driver);
+}
+core_initcall(vexpress_syscfg_init);
diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 99e151475d8f..edd5dd5ebfdc 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -423,15 +423,6 @@ config SRAM
 config SRAM_EXEC
 	bool
 
-config VEXPRESS_SYSCFG
-	bool "Versatile Express System Configuration driver"
-	depends on VEXPRESS_CONFIG
-	default y
-	help
-	  ARM Ltd. Versatile Express uses specialised platform configuration
-	  bus. System Configuration interface is one of the possible means
-	  of generating transactions on this bus.
-
 config PCI_ENDPOINT_TEST
 	depends on PCI
 	select CRC32
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index 9abf2923d831..c7bd01ac6291 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -49,7 +49,6 @@ obj-$(CONFIG_SRAM_EXEC)		+= sram-exec.o
 obj-y				+= mic/
 obj-$(CONFIG_GENWQE)		+= genwqe/
 obj-$(CONFIG_ECHO)		+= echo/
-obj-$(CONFIG_VEXPRESS_SYSCFG)	+= vexpress-syscfg.o
 obj-$(CONFIG_CXL_BASE)		+= cxl/
 obj-$(CONFIG_PCI_ENDPOINT_TEST)	+= pci_endpoint_test.o
 obj-$(CONFIG_OCXL)		+= ocxl/
diff --git a/drivers/misc/vexpress-syscfg.c b/drivers/misc/vexpress-syscfg.c
deleted file mode 100644
index a431787c0898..000000000000
--- a/drivers/misc/vexpress-syscfg.c
+++ /dev/null
@@ -1,280 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- *
- * Copyright (C) 2014 ARM Limited
- */
-
-#include <linux/delay.h>
-#include <linux/err.h>
-#include <linux/io.h>
-#include <linux/of.h>
-#include <linux/platform_device.h>
-#include <linux/sched/signal.h>
-#include <linux/slab.h>
-#include <linux/syscore_ops.h>
-#include <linux/vexpress.h>
-
-
-#define SYS_CFGDATA		0x0
-
-#define SYS_CFGCTRL		0x4
-#define SYS_CFGCTRL_START	(1 << 31)
-#define SYS_CFGCTRL_WRITE	(1 << 30)
-#define SYS_CFGCTRL_DCC(n)	(((n) & 0xf) << 26)
-#define SYS_CFGCTRL_FUNC(n)	(((n) & 0x3f) << 20)
-#define SYS_CFGCTRL_SITE(n)	(((n) & 0x3) << 16)
-#define SYS_CFGCTRL_POSITION(n)	(((n) & 0xf) << 12)
-#define SYS_CFGCTRL_DEVICE(n)	(((n) & 0xfff) << 0)
-
-#define SYS_CFGSTAT		0x8
-#define SYS_CFGSTAT_ERR		(1 << 1)
-#define SYS_CFGSTAT_COMPLETE	(1 << 0)
-
-
-struct vexpress_syscfg {
-	struct device *dev;
-	void __iomem *base;
-	struct list_head funcs;
-};
-
-struct vexpress_syscfg_func {
-	struct list_head list;
-	struct vexpress_syscfg *syscfg;
-	struct regmap *regmap;
-	int num_templates;
-	u32 template[]; /* Keep it last! */
-};
-
-
-static int vexpress_syscfg_exec(struct vexpress_syscfg_func *func,
-		int index, bool write, u32 *data)
-{
-	struct vexpress_syscfg *syscfg = func->syscfg;
-	u32 command, status;
-	int tries;
-	long timeout;
-
-	if (WARN_ON(index >= func->num_templates))
-		return -EINVAL;
-
-	command = readl(syscfg->base + SYS_CFGCTRL);
-	if (WARN_ON(command & SYS_CFGCTRL_START))
-		return -EBUSY;
-
-	command = func->template[index];
-	command |= SYS_CFGCTRL_START;
-	command |= write ? SYS_CFGCTRL_WRITE : 0;
-
-	/* Use a canary for reads */
-	if (!write)
-		*data = 0xdeadbeef;
-
-	dev_dbg(syscfg->dev, "func %p, command %x, data %x\n",
-			func, command, *data);
-	writel(*data, syscfg->base + SYS_CFGDATA);
-	writel(0, syscfg->base + SYS_CFGSTAT);
-	writel(command, syscfg->base + SYS_CFGCTRL);
-	mb();
-
-	/* The operation can take ages... Go to sleep, 100us initially */
-	tries = 100;
-	timeout = 100;
-	do {
-		if (!irqs_disabled()) {
-			set_current_state(TASK_INTERRUPTIBLE);
-			schedule_timeout(usecs_to_jiffies(timeout));
-			if (signal_pending(current))
-				return -EINTR;
-		} else {
-			udelay(timeout);
-		}
-
-		status = readl(syscfg->base + SYS_CFGSTAT);
-		if (status & SYS_CFGSTAT_ERR)
-			return -EFAULT;
-
-		if (timeout > 20)
-			timeout -= 20;
-	} while (--tries && !(status & SYS_CFGSTAT_COMPLETE));
-	if (WARN_ON_ONCE(!tries))
-		return -ETIMEDOUT;
-
-	if (!write) {
-		*data = readl(syscfg->base + SYS_CFGDATA);
-		dev_dbg(syscfg->dev, "func %p, read data %x\n", func, *data);
-	}
-
-	return 0;
-}
-
-static int vexpress_syscfg_read(void *context, unsigned int index,
-		unsigned int *val)
-{
-	struct vexpress_syscfg_func *func = context;
-
-	return vexpress_syscfg_exec(func, index, false, val);
-}
-
-static int vexpress_syscfg_write(void *context, unsigned int index,
-		unsigned int val)
-{
-	struct vexpress_syscfg_func *func = context;
-
-	return vexpress_syscfg_exec(func, index, true, &val);
-}
-
-static struct regmap_config vexpress_syscfg_regmap_config = {
-	.lock = vexpress_config_lock,
-	.unlock = vexpress_config_unlock,
-	.reg_bits = 32,
-	.val_bits = 32,
-	.reg_read = vexpress_syscfg_read,
-	.reg_write = vexpress_syscfg_write,
-	.reg_format_endian = REGMAP_ENDIAN_LITTLE,
-	.val_format_endian = REGMAP_ENDIAN_LITTLE,
-};
-
-
-static struct regmap *vexpress_syscfg_regmap_init(struct device *dev,
-		void *context)
-{
-	int err;
-	struct vexpress_syscfg *syscfg = context;
-	struct vexpress_syscfg_func *func;
-	struct property *prop;
-	const __be32 *val = NULL;
-	__be32 energy_quirk[4];
-	int num;
-	u32 site, position, dcc;
-	int i;
-
-	err = vexpress_config_get_topo(dev->of_node, &site,
-				&position, &dcc);
-	if (err)
-		return ERR_PTR(err);
-
-	prop = of_find_property(dev->of_node,
-			"arm,vexpress-sysreg,func", NULL);
-	if (!prop)
-		return ERR_PTR(-EINVAL);
-
-	num = prop->length / sizeof(u32) / 2;
-	val = prop->value;
-
-	/*
-	 * "arm,vexpress-energy" function used to be described
-	 * by its first device only, now it requires both
-	 */
-	if (num == 1 && of_device_is_compatible(dev->of_node,
-			"arm,vexpress-energy")) {
-		num = 2;
-		energy_quirk[0] = *val;
-		energy_quirk[2] = *val++;
-		energy_quirk[1] = *val;
-		energy_quirk[3] = cpu_to_be32(be32_to_cpup(val) + 1);
-		val = energy_quirk;
-	}
-
-	func = kzalloc(struct_size(func, template, num), GFP_KERNEL);
-	if (!func)
-		return ERR_PTR(-ENOMEM);
-
-	func->syscfg = syscfg;
-	func->num_templates = num;
-
-	for (i = 0; i < num; i++) {
-		u32 function, device;
-
-		function = be32_to_cpup(val++);
-		device = be32_to_cpup(val++);
-
-		dev_dbg(dev, "func %p: %u/%u/%u/%u/%u\n",
-				func, site, position, dcc,
-				function, device);
-
-		func->template[i] = SYS_CFGCTRL_DCC(dcc);
-		func->template[i] |= SYS_CFGCTRL_SITE(site);
-		func->template[i] |= SYS_CFGCTRL_POSITION(position);
-		func->template[i] |= SYS_CFGCTRL_FUNC(function);
-		func->template[i] |= SYS_CFGCTRL_DEVICE(device);
-	}
-
-	vexpress_syscfg_regmap_config.max_register = num - 1;
-
-	func->regmap = regmap_init(dev, NULL, func,
-			&vexpress_syscfg_regmap_config);
-
-	if (IS_ERR(func->regmap)) {
-		void *err = func->regmap;
-
-		kfree(func);
-		return err;
-	}
-
-	list_add(&func->list, &syscfg->funcs);
-
-	return func->regmap;
-}
-
-static void vexpress_syscfg_regmap_exit(struct regmap *regmap, void *context)
-{
-	struct vexpress_syscfg *syscfg = context;
-	struct vexpress_syscfg_func *func, *tmp;
-
-	regmap_exit(regmap);
-
-	list_for_each_entry_safe(func, tmp, &syscfg->funcs, list) {
-		if (func->regmap == regmap) {
-			list_del(&syscfg->funcs);
-			kfree(func);
-			break;
-		}
-	}
-}
-
-static struct vexpress_config_bridge_ops vexpress_syscfg_bridge_ops = {
-	.regmap_init = vexpress_syscfg_regmap_init,
-	.regmap_exit = vexpress_syscfg_regmap_exit,
-};
-
-
-static int vexpress_syscfg_probe(struct platform_device *pdev)
-{
-	struct vexpress_syscfg *syscfg;
-	struct resource *res;
-	struct device *bridge;
-
-	syscfg = devm_kzalloc(&pdev->dev, sizeof(*syscfg), GFP_KERNEL);
-	if (!syscfg)
-		return -ENOMEM;
-	syscfg->dev = &pdev->dev;
-	INIT_LIST_HEAD(&syscfg->funcs);
-
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	syscfg->base = devm_ioremap_resource(&pdev->dev, res);
-	if (IS_ERR(syscfg->base))
-		return PTR_ERR(syscfg->base);
-
-	/* Must use dev.parent (MFD), as that's where DT phandle points at... */
-	bridge = vexpress_config_bridge_register(pdev->dev.parent,
-			&vexpress_syscfg_bridge_ops, syscfg);
-
-	return PTR_ERR_OR_ZERO(bridge);
-}
-
-static const struct platform_device_id vexpress_syscfg_id_table[] = {
-	{ "vexpress-syscfg", },
-	{},
-};
-
-static struct platform_driver vexpress_syscfg_driver = {
-	.driver.name = "vexpress-syscfg",
-	.id_table = vexpress_syscfg_id_table,
-	.probe = vexpress_syscfg_probe,
-};
-
-static int __init vexpress_syscfg_init(void)
-{
-	return platform_driver_register(&vexpress_syscfg_driver);
-}
-core_initcall(vexpress_syscfg_init);
diff --git a/include/linux/vexpress.h b/include/linux/vexpress.h
index 2ec7992b054c..65096c792d57 100644
--- a/include/linux/vexpress.h
+++ b/include/linux/vexpress.h
@@ -18,23 +18,6 @@
 /* Config infrastructure */
 
 void vexpress_config_set_master(u32 site);
-u32 vexpress_config_get_master(void);
-
-void vexpress_config_lock(void *arg);
-void vexpress_config_unlock(void *arg);
-
-int vexpress_config_get_topo(struct device_node *node, u32 *site,
-		u32 *position, u32 *dcc);
-
-/* Config bridge API */
-
-struct vexpress_config_bridge_ops {
-	struct regmap * (*regmap_init)(struct device *dev, void *context);
-	void (*regmap_exit)(struct regmap *regmap, void *context);
-};
-
-struct device *vexpress_config_bridge_register(struct device *parent,
-		struct vexpress_config_bridge_ops *ops, void *context);
 
 /* Config regmap API */
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
