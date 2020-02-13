Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85AE015C883
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:41:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fJPnGZS2D4yxIvq7DzP+yavek6BWue3a5eYR7N9CzuU=; b=N7iI5tF5WtPJnJ
	L34HR0M0eSpkn/1HM4KyZ8ED9SiroehbfbdMmjfNWweR12ORI7KD2kMIElnWawFAQsiv7aPJfjjno
	+dVdukEUCwCqmSiH+JaIfJUjjYYmhGPl1fteo73DVEOID5ibz8hC0NT45S83vnt3Z1Ya+T4Bh7n+i
	zFoh9FzMqg7R/j45zb+eanrpmFY6UMNTuFl0bnKIN6U73m0bgx7rEuNsInXif5P7Dpyx+ODreM/8p
	c0KFygpDeJJKB7e+VJNP57IJ9pDv8/tM3TYxbH/QMa9bVUHeB5bJfPcnAkRwlwRuK4UBsYNqo7mH9
	++HNtVvjJGYRWzO3Rz7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2HYB-0001Qt-Ch; Thu, 13 Feb 2020 16:41:15 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2HXD-0000TQ-8u
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:40:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id t3so7499524wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 08:40:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w3xvzwyOcTX6jrZCmLPn1xPCdXLA1nzGkBSyRyltXjk=;
 b=pm4N8Ii165b0PL12/aNBBO5dsYM8aT8KKCzM91JjbkYwNvHB/6EX4CQPfvsbfw5ZqM
 soIkHHO1hk9pg6Jy/SZrIVazNboCiqilkZbQliAWBBXhpfdpc2rUJedclINykTjcT0uo
 n+AukqdJAxj6ugTbe8ZfvoK4zx07WeCleRfyXQxAnNctcWsDFAQ9Yb7c5L5tE8iWqw69
 p62DM8N16wex4hZ+q0adAW5uJyygpNEVO0nznpRY8xy57ZQeZkyk8wdRxFmIKkLIulml
 gnpsIXEaCqJqsUaRhMPBxlHeidD9vefcuyZMCN3gw4VbIE/eCwhAmVwP9W3Rq3gByTQa
 MnVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w3xvzwyOcTX6jrZCmLPn1xPCdXLA1nzGkBSyRyltXjk=;
 b=UUZqClsfD1bmeZIZjAfG82eChU/U+ASxlKRomjIcMPFRHvHAp2NuLDukanRxQ3KBZh
 dzVYqsOoIgkaSalwNxGmT5mctETWy9CVH7JOYJwg3fjPqgw7jlJMY8Q15cPfJh7ASIEY
 rRUycDtVW3e7L8hrOlN0Md68VTgeH8WC/UgOPzz1bWEYc+Z7N/dq/1c1Ts/hosCggAaO
 /1j0jSK+DBuSDGuvCrviLh+J+unjK/z5R2u82cS9/XR1XdiK5518mv8yvlbtwJQEnnT3
 so2fL5AvYqeO4BdJhK2FUjIRqedmRd7lZ5DvzI2Zlanmc9/9B1g+AnG40ZvhLtL3lZpf
 P6wg==
X-Gm-Message-State: APjAAAUa94evZirAwxvDhH5k5zlpkRZvay90iorzr4eml75i/Qp3/jau
 blHA/xPuF77rlJKlVmUUHSF/8dBE
X-Google-Smtp-Source: APXvYqwAQ8ZhIMvrFsFR4RRaNhv2IV0NL2QgoB1KS82Vk12y4CqKdnUSuXVHDuARmEIGukcWcD/GVA==
X-Received: by 2002:adf:f7c6:: with SMTP id a6mr23670566wrq.164.1581612013884; 
 Thu, 13 Feb 2020 08:40:13 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id w19sm3553724wmc.22.2020.02.13.08.40.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 08:40:12 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 3/5] memory: Introduce memory controller mini-framework
Date: Thu, 13 Feb 2020 17:39:57 +0100
Message-Id: <20200213163959.819733-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200213163959.819733-1-thierry.reding@gmail.com>
References: <20200213163959.819733-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_084015_350356_5F3D57D8 
X-CRM114-Status: GOOD (  25.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 linux-tegra@vger.kernel.org, iommu@lists.linux-foundation.org,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

This new framework is currently nothing more than a registry of memory
controllers, with the goal being to order device probing. One use-case
where this is useful, for example, is a memory controller device which
needs to program some registers before the system MMU can be enabled.
Associating the memory controller with the SMMU allows the SMMU driver
to defer the probe until the memory controller has been registered.

One such example is Tegra186 where the memory controller contains some
registers that are used to program stream IDs for the various memory
clients (display, USB, PCI, ...) in the system. Programming these SIDs
is required for the memory clients to emit the proper SIDs as part of
their memory requests. The memory controller driver therefore needs to
be programmed prior to the SMMU driver. To achieve that, the memory
controller will be referenced via phandle from the SMMU device tree
node, the SMMU driver can then use the memory controller framework to
find it and defer probe until it has been registered.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
Changes in v3:
- add device-managed variants of the consumer APIs
- add kerneldoc

Changes in v2:
- fix double unlock (Dan Carpenter, kbuild test robot)
- add helper to get optional memory controllers
- acquire and release module reference

 drivers/memory/Makefile           |   1 +
 drivers/memory/core.c             | 248 ++++++++++++++++++++++++++++++
 include/linux/memory-controller.h |  34 ++++
 3 files changed, 283 insertions(+)
 create mode 100644 drivers/memory/core.c
 create mode 100644 include/linux/memory-controller.h

diff --git a/drivers/memory/Makefile b/drivers/memory/Makefile
index 27b493435e61..d16e7dca8ef9 100644
--- a/drivers/memory/Makefile
+++ b/drivers/memory/Makefile
@@ -3,6 +3,7 @@
 # Makefile for memory devices
 #
 
+obj-y				+= core.o
 obj-$(CONFIG_DDR)		+= jedec_ddr_data.o
 ifeq ($(CONFIG_DDR),y)
 obj-$(CONFIG_OF)		+= of_memory.o
diff --git a/drivers/memory/core.c b/drivers/memory/core.c
new file mode 100644
index 000000000000..b2fbd2e808de
--- /dev/null
+++ b/drivers/memory/core.c
@@ -0,0 +1,248 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019-2020 NVIDIA Corporation.
+ */
+
+#include <linux/memory-controller.h>
+#include <linux/module.h>
+#include <linux/of.h>
+
+static DEFINE_MUTEX(controllers_lock);
+static LIST_HEAD(controllers);
+
+static void memory_controller_release(struct kref *ref)
+{
+	struct memory_controller *mc = container_of(ref, struct memory_controller, ref);
+
+	WARN_ON(!list_empty(&mc->list));
+}
+
+/**
+ * memory_controller_register() - register a memory controller
+ * @mc: memory controller
+ */
+int memory_controller_register(struct memory_controller *mc)
+{
+	kref_init(&mc->ref);
+
+	mutex_lock(&controllers_lock);
+	list_add_tail(&mc->list, &controllers);
+	mutex_unlock(&controllers_lock);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(memory_controller_register);
+
+/**
+ * memory_controller_unregister() - unregister a memory controller
+ * @mc: memory controller
+ */
+void memory_controller_unregister(struct memory_controller *mc)
+{
+	mutex_lock(&controllers_lock);
+	list_del_init(&mc->list);
+	mutex_unlock(&controllers_lock);
+
+	kref_put(&mc->ref, memory_controller_release);
+}
+EXPORT_SYMBOL_GPL(memory_controller_unregister);
+
+static struct memory_controller *
+of_memory_controller_get(struct device *dev, struct device_node *np,
+			 const char *con_id)
+{
+	const char *cells = "#memory-controller-cells";
+	const char *names = "memory-controller-names";
+	const char *prop = "memory-controllers";
+	struct memory_controller *mc;
+	struct of_phandle_args args;
+	int index = 0, err;
+
+	if (con_id) {
+		index = of_property_match_string(np, names, con_id);
+		if (index < 0)
+			return ERR_PTR(index);
+	}
+
+	err = of_parse_phandle_with_args(np, prop, cells, index, &args);
+	if (err) {
+		if (err == -ENOENT)
+			err = -ENODEV;
+
+		return ERR_PTR(err);
+	}
+
+	mutex_lock(&controllers_lock);
+
+	list_for_each_entry(mc, &controllers, list) {
+		if (mc->dev && mc->dev->of_node == args.np) {
+			__module_get(mc->dev->driver->owner);
+			kref_get(&mc->ref);
+			goto unlock;
+		}
+	}
+
+	mc = ERR_PTR(-EPROBE_DEFER);
+
+unlock:
+	mutex_unlock(&controllers_lock);
+	of_node_put(args.np);
+	return mc;
+}
+
+/**
+ * memory_controller_get() - obtain a reference to a memory controller
+ * @dev: consumer device
+ * @con_id: consumer name
+ *
+ * Returns: A pointer to the requested memory controller or an ERR_PTR()-
+ * encoded error code on failure.
+ */
+struct memory_controller *
+memory_controller_get(struct device *dev, const char *con_id)
+{
+	if (IS_ENABLED(CONFIG_OF) && dev && dev->of_node)
+		return of_memory_controller_get(dev, dev->of_node, con_id);
+
+	return ERR_PTR(-ENODEV);
+}
+EXPORT_SYMBOL_GPL(memory_controller_get);
+
+/**
+ * memory_controller_get_optional() - obtain a reference to an optional
+ *                                    memory controller
+ * @dev: consumer device
+ * @con_id: consumer name
+ *
+ * Returns: A pointer to the requested memory controller, NULL if no memory
+ * controller for the consumer device/name pair exists, or an ERR_PTR()-
+ * encoded error code on failure.
+ */
+struct memory_controller *
+memory_controller_get_optional(struct device *dev, const char *con_id)
+{
+	struct memory_controller *mc;
+
+	mc = memory_controller_get(dev, con_id);
+	if (IS_ERR(mc)) {
+		if (mc == ERR_PTR(-ENODEV))
+			return NULL;
+	}
+
+	return mc;
+}
+EXPORT_SYMBOL_GPL(memory_controller_get_optional);
+
+/**
+ * memory_controller_put() - release a reference to a memory controller
+ * @mc: memory controller
+ */
+void memory_controller_put(struct memory_controller *mc)
+{
+	if (mc) {
+		kref_put(&mc->ref, memory_controller_release);
+		module_put(mc->dev->driver->owner);
+	}
+}
+EXPORT_SYMBOL_GPL(memory_controller_put);
+
+static void devm_memory_controller_release(struct device *dev, void *res)
+{
+	memory_controller_put(*(struct memory_controller **)res);
+}
+
+/**
+ * devm_memory_controller_get() - obtain a reference to a memory controller
+ * @dev: consumer device
+ * @con_id: consumer name
+ *
+ * This is a device-managed variant of memory_controller_get(). The memory
+ * controller reference obtained with this function is automatically released
+ * when the device is unbound from its driver.
+ *
+ * Returns: A pointer to the requested memory controller or an ERR_PTR()-
+ * encoded error code on failure.
+ */
+struct memory_controller *devm_memory_controller_get(struct device *dev,
+						     const char *con_id)
+{
+	struct memory_controller **ptr, *mc;
+
+	ptr = devres_alloc(devm_memory_controller_release, sizeof(*ptr),
+			   GFP_KERNEL);
+	if (!ptr)
+		return ERR_PTR(-ENOMEM);
+
+	mc = memory_controller_get(dev, con_id);
+	if (!IS_ERR(mc)) {
+		*ptr = mc;
+		devres_add(dev, ptr);
+	} else {
+		devres_free(ptr);
+	}
+
+	return mc;
+}
+EXPORT_SYMBOL_GPL(devm_memory_controller_get);
+
+/**
+ * memory_controller_get_optional() - obtain a reference to an optional
+ *                                    memory controller
+ * @dev: consumer device
+ * @con_id: consumer name
+ *
+ * This is a device-managed variant of memory_controller_get_optional(). The
+ * memory controller reference obtained with this function is automatically
+ * released when the device is unbound from its driver.
+ *
+ * Returns: A pointer to the requested memory controller, NULL if no memory
+ * controller for the consumer device/name pair exists, or an ERR_PTR()-
+ * encoded error code on failure.
+ */
+struct memory_controller *
+devm_memory_controller_get_optional(struct device *dev, const char *con_id)
+{
+	struct memory_controller **ptr, *mc;
+
+	ptr = devres_alloc(devm_memory_controller_release, sizeof(*ptr),
+			   GFP_KERNEL);
+	if (!ptr)
+		return ERR_PTR(-ENOMEM);
+
+	mc = memory_controller_get_optional(dev, con_id);
+	if (!IS_ERR(mc)) {
+		*ptr = mc;
+		devres_add(dev, ptr);
+	} else {
+		devres_free(ptr);
+	}
+
+	return mc;
+}
+EXPORT_SYMBOL_GPL(devm_memory_controller_get_optional);
+
+static int devm_memory_controller_match(struct device *dev, void *res, void *data)
+{
+	struct memory_controller **mc = res;
+
+	if (WARN_ON(!mc || !*mc))
+		return 0;
+
+	return *mc == data;
+}
+
+/**
+ * devm_memory_controller_put() - release a reference to a memory controller
+ * @mc: memory controller
+ *
+ * This is a device-managed variant of memory_controller_put(). Typically it
+ * should never be necessary to call this function, since the device-managed
+ * code should take care of releasing the reference at the right time.
+ */
+void devm_memory_controller_put(struct device *dev,
+				struct memory_controller *mc)
+{
+	WARN_ON(devres_release(dev, devm_memory_controller_release,
+			       devm_memory_controller_match, mc));
+}
+EXPORT_SYMBOL_GPL(devm_memory_controller_put);
diff --git a/include/linux/memory-controller.h b/include/linux/memory-controller.h
new file mode 100644
index 000000000000..54490cb5e625
--- /dev/null
+++ b/include/linux/memory-controller.h
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019-2020 NVIDIA Corporation.
+ */
+
+#ifndef _LINUX_MEMORY_CONTROLLER_H
+#define _LINUX_MEMORY_CONTROLLER_H
+
+#include <linux/device.h>
+#include <linux/list.h>
+
+struct memory_controller {
+	struct device *dev;
+	struct kref ref;
+	struct list_head list;
+};
+
+int memory_controller_register(struct memory_controller *mc);
+void memory_controller_unregister(struct memory_controller *mc);
+
+struct memory_controller *memory_controller_get(struct device *dev,
+						const char *con_id);
+struct memory_controller *memory_controller_get_optional(struct device *dev,
+							 const char *con_id);
+void memory_controller_put(struct memory_controller *mc);
+
+struct memory_controller *devm_memory_controller_get(struct device *dev,
+						     const char *con_id);
+struct memory_controller *
+devm_memory_controller_get_optional(struct device *dev, const char *con_id);
+void devm_memory_controller_put(struct device *dev,
+				struct memory_controller *mc);
+
+#endif
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
