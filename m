Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5121EF335
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 10:35:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q7MKmO6C/K9RRIfRCDUrh5ngFAoStkH/uo3C7NRdsNs=; b=ku3YG1JgZ0QpVV
	VQ9dNMy+xrBxa2D8uNkrkItUbRyb98865jg/YMA6yagfpaQOvjMB7exe2ed7w0Wdzqa7GSMstpWxk
	kKSWvYbA6FL+++ysaCJ6x2mkgoOPe8KxD/0KIl+dh0S8DtRUTrOpvmIvskG4dVUWiOoe4nIWvnoZE
	jzCEzk3nbxtrX7ZzU04a16ttI+qcoBNSF9fNptUV9+ISFEgwklv77Hzz4nfZ5Zx3GicMXILIwwyuu
	lA+GPbef8w+Ugwde6q3b0RRqcT7L5nco27uFtEZFCxGFbyefYbSIwP4Verq4FbK2T5S9sUeXhoAVl
	IjfeN/Mm/clgaQ6MZvhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh7pP-0007WV-PD; Fri, 05 Jun 2020 08:35:51 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh7nl-0003el-Aj
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 08:34:13 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0558WT2R027499; Fri, 5 Jun 2020 10:33:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=PXXZtQ5Os6lwz0ufC9ZTnIj88Nqg0GFEDPYR/vcbKrc=;
 b=PVnIiIhjXyzc9gNXvK+niWGo0x4SED7UWsIWV3rTHWxqzhLjfL/G7wHC0Ck3g2A1w0lS
 XgVMvswSAMa4KPmgnONiH93OHsvE3JghPCArOyHR2TwTxMTSNow3LamEYNPHoTDjQmKZ
 ElejmrgbKhEHSpdHZcAOGNAUj77qbbHSV7g20zlmVpHBrrRdQn3IAuwr5xwcxBBrgOos
 8chHymy6j4Os7SBl+pBYfCk8vOrt/33QewvGAlRHpc6eTM3LAQWAqqjqhFqerFmBjqiZ
 foBoj6bn3aiFWc8jN0Ppub0LnhbY6YDBseFfoLM6o1LlvaS826F113pCG9o6O2zHWXH6 gA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31fasma5p7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 05 Jun 2020 10:33:54 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A765E10002A;
 Fri,  5 Jun 2020 10:33:53 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 98C302B21C0;
 Fri,  5 Jun 2020 10:33:53 +0200 (CEST)
Received: from localhost (10.75.127.47) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 5 Jun 2020 10:33:52
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <robh+dt@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <linus.walleij@linaro.org>,
 <gregkh@linuxfoundation.org>
Subject: [PATCH v4 2/5] bus: stm32: Introduce firewall controller helpers
Date: Fri, 5 Jun 2020 10:33:45 +0200
Message-ID: <20200605083348.13880-3-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200605083348.13880-1-benjamin.gaignard@st.com>
References: <20200605083348.13880-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-05_01:2020-06-04,
 2020-06-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_013409_666631_C87E3D02 
X-CRM114-Status: GOOD (  25.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, tomase@xilinx.com,
 linux-kernel@vger.kernel.org, stefano.stabellini@xilinx.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The goal of these helpers are to offer an interface for the
hardware blocks controlling bus accesses rights.

Bus firewall controllers are typically used to control if a
hardware block can perform read or write operations on bus.

Smarter firewall controllers could be able to define accesses
rights per hardware blocks to control where they can read
or write.

Firewall controller configurations are provided in device node,
parsed by the helpers and send to the driver to apply them.
Each controller may need different number and type of inputs
to configure the firewall so device-tree properties size have to
be define by using "#firewall-cells".
Firewall configurations properties have to be named "firewall-X"
on device node.
"firewall-names" keyword can also be used to give a name to
a specific configuration.

Example of device-tree:
ctrl0: firewall@0 {
	#firewall-cells = <2>;
      };

foo: foo@0 {
	firewall-names = "default", "setting1";
	firewall-0 = <&ctrl0 1 2>;
	firewall-1 = <&ctrl0 3 4>;
};

Configurations could be applied with functions like
firewall_set_config_by_index() or firewall_set_config_by_name().

firewall_set_default_config() function will apply the
configuration named "default" (if existing) or the configuration
with index 0 (i.e. firewall-0).

Drivers could register/unregister themselves be calling
firewall_register/firewall_unregister functions.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
version 4:
- use bus API

 drivers/bus/Kconfig          |   2 +
 drivers/bus/Makefile         |   2 +
 drivers/bus/stm32/Kconfig    |   3 +
 drivers/bus/stm32/Makefile   |   1 +
 drivers/bus/stm32/firewall.c | 251 +++++++++++++++++++++++++++++++++++++++++++
 drivers/bus/stm32/firewall.h |  66 ++++++++++++
 6 files changed, 325 insertions(+)
 create mode 100644 drivers/bus/stm32/Kconfig
 create mode 100644 drivers/bus/stm32/Makefile
 create mode 100644 drivers/bus/stm32/firewall.c
 create mode 100644 drivers/bus/stm32/firewall.h

diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
index 6d4e4497b59b..843b356322d9 100644
--- a/drivers/bus/Kconfig
+++ b/drivers/bus/Kconfig
@@ -203,4 +203,6 @@ config DA8XX_MSTPRI
 source "drivers/bus/fsl-mc/Kconfig"
 source "drivers/bus/mhi/Kconfig"
 
+source "drivers/bus/stm32/Kconfig"
+
 endmenu
diff --git a/drivers/bus/Makefile b/drivers/bus/Makefile
index 05f32cd694a4..5e0e34b10235 100644
--- a/drivers/bus/Makefile
+++ b/drivers/bus/Makefile
@@ -37,3 +37,5 @@ obj-$(CONFIG_DA8XX_MSTPRI)	+= da8xx-mstpri.o
 
 # MHI
 obj-$(CONFIG_MHI_BUS)		+= mhi/
+
+obj-$(CONFIG_MACH_STM32MP157) 	+= stm32/
\ No newline at end of file
diff --git a/drivers/bus/stm32/Kconfig b/drivers/bus/stm32/Kconfig
new file mode 100644
index 000000000000..57221e833e2d
--- /dev/null
+++ b/drivers/bus/stm32/Kconfig
@@ -0,0 +1,3 @@
+config FIREWALL_CONTROLLERS
+	bool "Support of bus firewall controllers"
+	depends on OF
diff --git a/drivers/bus/stm32/Makefile b/drivers/bus/stm32/Makefile
new file mode 100644
index 000000000000..eb6b978d6450
--- /dev/null
+++ b/drivers/bus/stm32/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_FIREWALL_CONTROLLERS) += firewall.o
diff --git a/drivers/bus/stm32/firewall.c b/drivers/bus/stm32/firewall.c
new file mode 100644
index 000000000000..234571b8ad11
--- /dev/null
+++ b/drivers/bus/stm32/firewall.c
@@ -0,0 +1,251 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) STMicroelectronics 2020 - All Rights Reserved
+ * Author: Benjamin Gaignard <benjamin.gaignard@st.com> for STMicroelectronics.
+ */
+
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/init.h>
+#include <linux/kernel.h>
+#include <linux/list.h>
+#include <linux/of.h>
+#include <linux/slab.h>
+
+#include "firewall.h"
+
+struct firewall_device {
+	struct device		dev;
+	struct firewall_ops	*ops;
+};
+
+struct device firewall_bus = {
+	.init_name	= "firewall",
+};
+
+static inline struct firewall_device *to_firewall_device(struct device *d)
+{
+	return container_of(d, struct firewall_device, dev);
+}
+
+static struct bus_type firewall_bus_type = {
+	.name		= "firewall",
+};
+
+static struct firewall_device *firewall_from_node(struct device_node *np)
+{
+	struct device *dev;
+
+	dev = bus_find_device_by_of_node(&firewall_bus_type, np);
+
+	return dev ? to_firewall_device(dev) : NULL;
+}
+
+/**
+ * firewall_dt_has_default
+ *
+ * Check if the device node provide firewall configuration
+ *
+ * @np: device node with possible firewall configuration
+ *
+ * Return: true is firewall-0 property exist in the device node
+ */
+static bool firewall_dt_has_default(struct device_node *np)
+{
+	struct property *prop;
+	int size;
+
+	if (!np)
+		return false;
+
+	prop = of_find_property(np, "firewall-0", &size);
+
+	return prop ? true : false;
+}
+
+/**
+ * firewall_set_config_by_index
+ *
+ * Set a firewall controller configuration based on given index.
+ *
+ * @np: device node with firewall configuration to apply.
+ * @index: the index of the configuration in device node.
+ *
+ * Return: 0 if OK, -EPROBE_DEFER if waiting for firewall controller to be
+ * registered or negative value on other errors.
+ */
+int firewall_set_config_by_index(struct device_node *np, int index)
+{
+	char *propname;
+	int configs, i, err = 0;
+
+	if (!np)
+		return 0;
+
+	propname = kasprintf(GFP_KERNEL, "firewall-%d", index);
+	configs = of_count_phandle_with_args(np, propname, "#firewall-cells");
+	if (configs < 0) {
+		err = -EINVAL;
+		goto error;
+	}
+
+	for (i = 0; i < configs; i++) {
+		struct firewall_device *firewall;
+		struct of_phandle_args args;
+
+		err = of_parse_phandle_with_args(np, propname,
+						 "#firewall-cells",
+						 i, &args);
+		if (err)
+			goto error;
+
+		/* Test if the controller is (or will be) available */
+		if (!of_device_is_available(args.np)) {
+			of_node_put(args.np);
+			continue;
+		}
+
+		firewall = firewall_from_node(args.np);
+		of_node_put(args.np);
+
+		/* Firewall is not yet registered */
+		if (!firewall) {
+			err = -EPROBE_DEFER;
+			goto error;
+		}
+
+		err = firewall->ops->set_config(&firewall->dev, &args);
+		if (err)
+			goto error;
+	}
+
+error:
+	kfree(propname);
+	return err;
+}
+EXPORT_SYMBOL_GPL(firewall_set_config_by_index);
+
+/**
+ * firewall_set_config_by_name
+ *
+ * Set a firwall controller configuration based on given name.
+ *
+ * @np: device node with firewall configuration to apply.
+ * @name: the name of the configuration in device node.
+ *
+ * Return: 0 if OK, -EPROBE_DEFER if waiting for firewall controller to be
+ * registered or negative value on other errors.
+ */
+int firewall_set_config_by_name(struct device_node *np, char *name)
+{
+	const char *configname;
+	int count, i;
+
+	count = of_property_count_strings(np, "firewall-names");
+	for (i = 0; i < count; i++) {
+		int err;
+
+		err = of_property_read_string_index(np,
+						    "firewall-names",
+						    i, &configname);
+		if (err)
+			return err;
+
+		if (strcmp(name, configname))
+			continue;
+
+		return firewall_set_config_by_index(np, i);
+	}
+
+	return -EINVAL;
+}
+EXPORT_SYMBOL_GPL(firewall_set_config_by_name);
+
+/**
+ * firewall_set_default_config
+ *
+ * Set the default configuration for device.
+ * First try to apply configuration named "default", if it fails
+ * or doesn't exist, try to apply firewall-0 configuration.
+ *
+ * @np: device node with firewall configuration to apply.
+ *
+ * Return: 0 if OK, -EPROBE_DEFER if waiting for firewall controller to be
+ * registered or negative value on other errors.
+ */
+int firewall_set_default_config(struct device_node *np)
+{
+	int ret;
+
+	/* Nothing to do if device node doesn't contain at least
+	 * one configuration
+	 */
+	if (!firewall_dt_has_default(np))
+		return 0;
+
+	ret = firewall_set_config_by_name(np, "default");
+	if (!ret || (ret == -EPROBE_DEFER))
+		return ret;
+
+	return firewall_set_config_by_index(np, 0);
+}
+EXPORT_SYMBOL_GPL(firewall_set_default_config);
+
+/**
+ * firewall_register
+ *
+ * Register a firewall controller.
+ *
+ * @np: node implementing firewall controller.
+ * @ops: firewall controller operations.
+ *
+ * Return: a pointer on the device if OK or NULL on error.
+ */
+struct device *firewall_register(struct device_node *np,
+				 struct firewall_ops *ops)
+{
+	struct firewall_device *firewall;
+
+	if (!np || !ops || !ops->set_config)
+		return NULL;
+
+	firewall = kzalloc(sizeof(*firewall), GFP_KERNEL);
+	if (!firewall)
+		return NULL;
+
+	device_initialize(&firewall->dev);
+	firewall->dev.init_name = devm_kstrdup(&firewall->dev,
+					       np->name, GFP_KERNEL);
+	firewall->dev.bus = &firewall_bus_type;
+	firewall->dev.parent = &firewall_bus;
+	firewall->dev.of_node = np;
+	firewall->ops = ops;
+
+	if (device_add(&firewall->dev)) {
+		kfree(firewall);
+		return NULL;
+	}
+
+	return &firewall->dev;
+}
+EXPORT_SYMBOL_GPL(firewall_register);
+
+static int __init firewall_init(void)
+{
+	int ret;
+
+	ret = device_register(&firewall_bus);
+	if (ret) {
+		put_device(&firewall_bus);
+		return ret;
+	}
+
+	ret = bus_register(&firewall_bus_type);
+	if (ret)
+		device_unregister(&firewall_bus);
+
+	return ret;
+}
+
+/* Init early since drivers really need to configure firewall early */
+core_initcall(firewall_init);
diff --git a/drivers/bus/stm32/firewall.h b/drivers/bus/stm32/firewall.h
new file mode 100644
index 000000000000..ea38f9f7e4ee
--- /dev/null
+++ b/drivers/bus/stm32/firewall.h
@@ -0,0 +1,66 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) STMicroelectronics 2020 - All Rights Reserved
+ * Author: Benjamin Gaignard <benjamin.gaignard@st.com> for STMicroelectronics.
+ */
+
+#ifndef _FIREWALL_H_
+#define _FIREWALL_H_
+
+#include <linux/device.h>
+#include <linux/of.h>
+
+/**
+ * struct firewall_ops
+ *
+ * Firewall controller operations structure to be filled by drivers.
+ */
+struct firewall_ops {
+	/**
+	 * @set_config:
+	 *
+	 * Driver callback to set a firewall configuration on a controller.
+	 * Configuration arguments are provided in out_args parameter.
+	 *
+	 * Return: 0 on success, a negative error code on failure.
+	 */
+	int (*set_config)(struct device *dev, struct of_phandle_args *out_args);
+};
+
+#ifdef CONFIG_FIREWALL_CONTROLLERS
+
+int firewall_set_config_by_index(struct device_node *np, int index);
+int firewall_set_config_by_name(struct device_node *np, char *name);
+int firewall_set_default_config(struct device_node *np);
+
+struct device *firewall_register(struct device_node *np,
+				 struct firewall_ops *ops);
+
+#else
+
+static inline int firewall_set_config_by_index(struct device_node *np,
+					       int index)
+{
+	return 0;
+}
+
+static inline int firewall_set_config_by_name(struct device_node *np,
+					      char *name)
+{
+	return 0;
+}
+
+static inline int firewall_set_default_config(struct device_node *np)
+{
+	return 0;
+}
+
+static inline struct device *firewall_register(struct device_node *np,
+					       struct firewall_ops *ops)
+{
+	return NULL;
+}
+
+#endif
+
+#endif /* _FIREWALL_H_ */
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
