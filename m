Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4FB14BD08
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 16:40:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oubehYHB+0EJmiIk5cRgDFJ1tg3H1R6OZOBiPh7a2WA=; b=M1TGfewRLklA5M
	XVebp5p0NIP8EuOeaBl+gGem31cCN+VLqZZv2Ywy15b4T4CGBZLdFYwF+X8kEy2FtVqQbdxcLIkq4
	mDcxPOY+gSaq3cZy1QKYaY8u4nQaScFyi3LzU62H+YdZM3yz14Lhnojs0kGeHr28xzlbqvq/nscXp
	4x09j09Otb5CAZT2UcuPVKJoaz4HniD+xaqaQv0N83FBCfUcZWHVHukEJopGqnUTbq3mVwPKNrs8f
	MeehiNo4Ls6m144309/k8DGorrLkeRpBY3r8wpVrKcZVxPBCH076BBRWeu0pw2Mq6dBmgKqNwqOxO
	/19LTrj5nzpzcOzsMXtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwSyU-00053s-Jd; Tue, 28 Jan 2020 15:40:22 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwSwe-0003nu-ST
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 15:38:32 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00SFYEVU022156; Tue, 28 Jan 2020 16:38:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=q/c0qNSKj8aYswDcead/4rOA6djgvx5JBXYvwUSuNrU=;
 b=wTOGQAb+jrvgWsFvkQe7UITD8lRaoydzKMvXf6LhhVSPJPXqER5XhlHjt5Qd8KJpVIqo
 ern5j0Uc1MgnJ5NG/SSVxoqj9oluZ1y37aZxQhry7E4EoZ3EF1F4jtUqJEILVAVOhXja
 JgYCARmW3Bi/oDqR+euXGioPquML7xc6G0Dz3W5732HvbBNaS+Thwr/ndK8bQLdmQefz
 t0v+I6rBo3zny+jLRYnMHjGZJ5BcASB1Ax9vXfAg6ZrMK1HnVv/xUDVepEiEg9TZDn72
 Cjud04QZNU2Rqdz5T7Z0dP0LW3l/MJyARHQDwlUDWuyqQYv1g7rUIgETK9Y58cQJxaJG vw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrc136p53-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Jan 2020 16:38:21 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B80D2100038;
 Tue, 28 Jan 2020 16:38:20 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A2EC92BF9CF;
 Tue, 28 Jan 2020 16:38:20 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 28 Jan 2020 16:38:20
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <broonie@kernel.org>, <robh@kernel.org>, <arnd@arndb.de>,
 <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <fabio.estevam@nxp.com>, <sudeep.holla@arm.com>, <lkml@metux.net>
Subject: [PATCH v2 2/7] bus: Introduce firewall controller framework
Date: Tue, 28 Jan 2020 16:38:01 +0100
Message-ID: <20200128153806.7780-3-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200128153806.7780-1-benjamin.gaignard@st.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-28_05:2020-01-28,
 2020-01-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_073829_382734_F7E271C1 
X-CRM114-Status: GOOD (  26.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 loic.pallardy@st.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, stefano.stabellini@xilinx.com,
 system-dt@lists.openampproject.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The goal of this framework is to offer an interface for the
hardware blocks controlling bus accesses rights.

Bus firewall controllers are typically used to control if a
hardware block can perform read or write operations on bus.

Smarter firewall controllers could be able to define accesses
rights per hardware blocks to control where they can read
or write.

Firewall controller configurations are provided in device node,
parsed by the framework and send to the driver to apply them.
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

When a configuration has to be applied the driver callback,
provided in the ops at registration time, set_config is called
by the framework.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
version 2:
- rename the framework "firewall"
- rebased on top of v5.5

 drivers/bus/Kconfig             |   2 +
 drivers/bus/Makefile            |   2 +
 drivers/bus/firewall/Kconfig    |   7 ++
 drivers/bus/firewall/Makefile   |   1 +
 drivers/bus/firewall/firewall.c | 264 ++++++++++++++++++++++++++++++++++++++++
 include/linux/firewall.h        |  70 +++++++++++
 6 files changed, 346 insertions(+)
 create mode 100644 drivers/bus/firewall/Kconfig
 create mode 100644 drivers/bus/firewall/Makefile
 create mode 100644 drivers/bus/firewall/firewall.c
 create mode 100644 include/linux/firewall.h

diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
index 50200d1c06ea..d3f636c64e1c 100644
--- a/drivers/bus/Kconfig
+++ b/drivers/bus/Kconfig
@@ -203,4 +203,6 @@ config DA8XX_MSTPRI
 
 source "drivers/bus/fsl-mc/Kconfig"
 
+source "drivers/bus/firewall/Kconfig"
+
 endmenu
diff --git a/drivers/bus/Makefile b/drivers/bus/Makefile
index 1320bcf9fa9d..278c27fd57cd 100644
--- a/drivers/bus/Makefile
+++ b/drivers/bus/Makefile
@@ -34,3 +34,5 @@ obj-$(CONFIG_UNIPHIER_SYSTEM_BUS)	+= uniphier-system-bus.o
 obj-$(CONFIG_VEXPRESS_CONFIG)	+= vexpress-config.o
 
 obj-$(CONFIG_DA8XX_MSTPRI)	+= da8xx-mstpri.o
+
+obj-$(CONFIG_FIREWALL_CONTROLLERS) 	+= firewall/
diff --git a/drivers/bus/firewall/Kconfig b/drivers/bus/firewall/Kconfig
new file mode 100644
index 000000000000..893bacb955f5
--- /dev/null
+++ b/drivers/bus/firewall/Kconfig
@@ -0,0 +1,7 @@
+menu "Bus Firewall Controllers"
+
+config FIREWALL_CONTROLLERS
+	bool "Support of bus firewall controllers"
+	depends on OF
+
+endmenu
diff --git a/drivers/bus/firewall/Makefile b/drivers/bus/firewall/Makefile
new file mode 100644
index 000000000000..eb6b978d6450
--- /dev/null
+++ b/drivers/bus/firewall/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_FIREWALL_CONTROLLERS) += firewall.o
diff --git a/drivers/bus/firewall/firewall.c b/drivers/bus/firewall/firewall.c
new file mode 100644
index 000000000000..765105d29075
--- /dev/null
+++ b/drivers/bus/firewall/firewall.c
@@ -0,0 +1,264 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) STMicroelectronics 2020 - All Rights Reserved
+ * Author: Benjamin Gaignard <benjamin.gaignard@st.com> for STMicroelectronics.
+ */
+
+#include <linux/device.h>
+#include <linux/firewall.h>
+#include <linux/err.h>
+#include <linux/init.h>
+#include <linux/kernel.h>
+#include <linux/list.h>
+#include <linux/of.h>
+#include <linux/slab.h>
+
+/* Mutex taken to protect firewall_list */
+static DEFINE_MUTEX(firewall_list_mutex);
+
+/* Global list of firewall control devices */
+static LIST_HEAD(firewall_list);
+
+struct firewall_ctrl {
+	struct list_head node;
+	struct device *dev;
+	struct firewall_ops *ops;
+};
+
+static struct firewall_ctrl *get_firewallctrl_from_node(struct device_node *np)
+{
+	struct firewall_ctrl *ctrl;
+
+	mutex_lock(&firewall_list_mutex);
+
+	list_for_each_entry(ctrl, &firewall_list, node) {
+		if (ctrl->dev->of_node == np) {
+			mutex_unlock(&firewall_list_mutex);
+			return ctrl;
+		}
+	}
+
+	mutex_unlock(&firewall_list_mutex);
+
+	return NULL;
+}
+
+/**
+ * firewall_dt_has_default
+ *
+ * Check if the device node provide firewall configuration
+ *
+ * @dev: device with possible firewall configuration
+ *
+ * Return: true is firewall-0 property exist in the device node
+ */
+static bool firewall_dt_has_default(struct device *dev)
+{
+	struct device_node *np;
+	struct property *prop;
+	int size;
+
+	np = dev->of_node;
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
+ * @dev: device with firewall configuration to apply.
+ * @index: the index of the configuration in device node.
+ *
+ * Return: 0 if OK, -EPROBE_DEFER if waiting for firewall controller to be
+ * registered or negative value on other errors.
+ */
+int firewall_set_config_by_index(struct device *dev, int index)
+{
+	struct device_node *np = dev->of_node;
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
+		struct firewall_ctrl *ctrl;
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
+		ctrl = get_firewallctrl_from_node(args.np);
+		of_node_put(args.np);
+
+		/* Controller is not yet registered */
+		if (!ctrl) {
+			err = -EPROBE_DEFER;
+			goto error;
+		}
+
+		err = ctrl->ops->set_config(ctrl->dev, &args);
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
+ * @dev: device with firewall configuration to apply.
+ * @name: the name of the configuration in device node.
+ *
+ * Return: 0 if OK, -EPROBE_DEFER if waiting for firewall controller to be
+ * registered or negative value on other errors.
+ */
+int firewall_set_config_by_name(struct device *dev, char *name)
+{
+	const char *configname;
+	int count, i;
+
+	count = of_property_count_strings(dev->of_node, "firewall-names");
+	for (i = 0; i < count; i++) {
+		int err;
+
+		err = of_property_read_string_index(dev->of_node,
+						    "firewall-names",
+						    i, &configname);
+		if (err)
+			return err;
+
+		if (strcmp(name, configname))
+			continue;
+
+		return firewall_set_config_by_index(dev, i);
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
+ * @dev: device with firewall configuration to apply.
+ *
+ * Return: 0 if OK, -EPROBE_DEFER if waiting for firewall controller to be
+ * registered or negative value on other errors.
+ */
+int firewall_set_default_config(struct device *dev)
+{
+	int ret;
+
+	/* Nothing to do if device node doesn't contain at least
+	 * one configuration
+	 */
+	if (!firewall_dt_has_default(dev))
+		return 0;
+
+	ret = firewall_set_config_by_name(dev, "default");
+	if (!ret || (ret == -EPROBE_DEFER))
+		return ret;
+
+	return firewall_set_config_by_index(dev, 0);
+}
+EXPORT_SYMBOL_GPL(firewall_set_default_config);
+
+/**
+ * firewall_register
+ *
+ * Register a firewall controller device.
+ *
+ * @dev: device implementing firewall controller.
+ * @ops: firewall controller operations.
+ *
+ * Return: 0 if OK or negative value on error.
+ */
+int firewall_register(struct device *dev,
+		      struct firewall_ops *ops)
+{
+	struct firewall_ctrl *ctrl;
+
+	if (!dev || !ops || !ops->set_config)
+		return -EINVAL;
+
+	ctrl = kzalloc(sizeof(*ctrl), GFP_KERNEL);
+	if (!ctrl)
+		return -ENOMEM;
+
+	INIT_LIST_HEAD(&ctrl->node);
+
+	ctrl->dev = dev;
+	ctrl->ops = ops;
+
+	mutex_lock(&firewall_list_mutex);
+	list_add_tail(&ctrl->node, &firewall_list);
+	mutex_unlock(&firewall_list_mutex);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(firewall_register);
+
+/**
+ * firewall_unregister
+ *
+ * Unregister a firewall controller device.
+ *
+ * @dev: device implementing firewall controller.
+ */
+void firewall_unregister(struct device *dev)
+{
+	struct firewall_ctrl *ctrl;
+
+	ctrl = get_firewallctrl_from_node(dev->of_node);
+	if (!ctrl)
+		return;
+
+	mutex_lock(&firewall_list_mutex);
+	list_del(&ctrl->node);
+	mutex_unlock(&firewall_list_mutex);
+
+	kfree(ctrl);
+}
+EXPORT_SYMBOL_GPL(firewall_unregister);
+
+static int __init firewall_init(void)
+{
+	pr_info("initialized bus firewall controller subsystem\n");
+	return 0;
+}
+
+/* Init early since drivers really need to configure firewall early */
+core_initcall(firewall_init);
diff --git a/include/linux/firewall.h b/include/linux/firewall.h
new file mode 100644
index 000000000000..67eb9985821c
--- /dev/null
+++ b/include/linux/firewall.h
@@ -0,0 +1,70 @@
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
+int firewall_set_config_by_index(struct device *dev, int index);
+int firewall_set_config_by_name(struct device *dev, char *name);
+int firewall_set_default_config(struct device *dev);
+
+int firewall_register(struct device *dev, struct firewall_ops *ops);
+
+void firewall_unregister(struct device *dev);
+
+#else
+
+static inline int firewall_set_config_by_index(struct device *dev, int index)
+{
+	return 0;
+}
+
+static inline int firewall_set_config_by_name(struct device *dev, char *name)
+{
+	return 0;
+}
+
+static inline int firewall_set_default_config(struct device *dev)
+{
+	return 0;
+}
+
+static inline int firewall_register(struct device *dev,
+				    struct firewall_ops *ops)
+{
+	return 0;
+}
+
+static inline void firewall_unregister(struct device *dev)
+{
+	/* Empty */
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
