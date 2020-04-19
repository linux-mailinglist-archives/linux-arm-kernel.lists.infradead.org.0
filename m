Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F174D1AFB95
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 17:06:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dTMKdNd5m4KnDe9lAg100GL9nElirM92Qe2zinjfCPw=; b=L3vh/Y/xyFvk3tRDmp1XgSgYgf
	0s+O6jV+MTMrAMu9ZtrGRUQg5zt6JX3MGHFm6rK9d8UKvimG7sQV2oJ8R8QTtdR4C9O/TS0t0w3WL
	dk/C6jfHUnU2omvcb6BHAqzhldr1z7K2JM4GSSbjfscO8MzxwfKnZjHkmWH45N1Cq9h9jImPJ5LmL
	AUNUUGYSb6oyU5JPPnG+JdKPXJfzjr6j91AgFPse/my2rQ4nEM5TFqUHwsXaTaXzhrvJe2I5DJBdA
	30AkbG5VoJQiHGeoHxeOuhX0/SawQEAMCMaMfJKdko4KyDAT9w6cc1wV9tdbtWMJ8LylrbgSivhxE
	KHRxY/Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQBWB-0007ok-4L; Sun, 19 Apr 2020 15:05:59 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQBVp-0007ec-IE
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 15:05:39 +0000
Received: by mail-wr1-x443.google.com with SMTP id g13so6816583wrb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 08:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tJyu1goMDawsMnyU0ATkWtgXzvVpCCNTMOr5sgRr7ks=;
 b=lw3YZBs2+CzmIxZI4c3R3pem5y/CkiFmzRnZyNY7Bnf7YgR7rv3/tEW4U3QCw1cJuR
 JAjxjhIrSd8BHtGQgYGVXEaVIbTEoh7lNMbD58r+pHlObobJUZav5O+Cc3o+oU8uOkZ9
 yCTEEIslPZ7vsAwTxVuFMRbUHWG97mC0EGITQ1XgSy6q7nBXtrCeRTXgSSO/JXmk0soZ
 sLZiVluJA6lsFDi0v2Vd05a16Rt68tWfwT+RvNzxYItfV07ZvnAYk+r/nmOFIQSGWylk
 MzjN+ra5yIZUYPtsdejrSqk2POYyQZKivf0qnn13HKiB6zvPW2ZcN7iMvJYdysovuunm
 LFPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tJyu1goMDawsMnyU0ATkWtgXzvVpCCNTMOr5sgRr7ks=;
 b=KVc9ZJwRZ02oo9gg773zCqNwrqDIz0o7acOZmKIh3E4sKZMLtJHJrmZfxc+jbRAEBC
 mL9WwbOY2utS7AwvDOoggimAh96vDvZcwIaqAyOD0vubBCB6Ar+M3Ad0ugsitGy17fyb
 AiaFoSpEIEN7kePLBPBXJN/2dMeKQ//gMYO1WU0ERC1RGvDKBvzGJrHkkO8Eohaxsikv
 luLofnYwxaUjWjNewQ2Qaxqr8bScDygH66qYbIrC+zYBZDhxFoOnWlbn/zb15seyZOhS
 qMTt3BLmMuseVdtj96ZP9kpitsSeskJYqobGljI9/2YO3D7xmLTXxqBKzOzBc3ze0uUW
 PO6A==
X-Gm-Message-State: AGi0PuaQiJxpY0l0uhNU/t7yyzu0bxGw6xHUxtNypZw3OoUplXkCH+VB
 XM4oS3HK38rAcPcUEEQPAhpFeQ==
X-Google-Smtp-Source: APiQypJBj7hPW2geuzSFyXnoAMnke+GfIXWdXk6/g0HHLzsza5OPiJnU8GrVfqyYrFIcoUaY+qYCbg==
X-Received: by 2002:a5d:6946:: with SMTP id r6mr6894861wrw.291.1587308736034; 
 Sun, 19 Apr 2020 08:05:36 -0700 (PDT)
Received: from lmecxl0524.home
 (2a01cb058702ff00947c0d9b78b8fa1e.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:947c:d9b:78b8:fa1e])
 by smtp.gmail.com with ESMTPSA id w12sm25948635wrk.56.2020.04.19.08.05.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 08:05:35 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 1/6] firmware: helper functions for SMCCC v1.0 invocation
 conduit
Date: Sun, 19 Apr 2020 17:05:25 +0200
Message-Id: <20200419150530.20508-2-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200419150530.20508-1-etienne.carriere@linaro.org>
References: <20200419150530.20508-1-etienne.carriere@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_080537_599053_5B899FBC 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, michal.simek@xilinx.com,
 tee-dev@lists.linaro.org, Etienne Carriere <etienne.carriere@linaro.org>,
 james.morse@arm.com, sudeep.holla@arm.com, richard.gong@linux.intel.com,
 jens.wiklander@linaro.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce invocation helper functions for driver that interact with
firmware supporting Arm SMCCC v1.0 specification based on existing
arm_smccc_1_1_*() helpers. The new functions suit device where secure
world supports SMCCC v1.0 but not v1.1.

This change allows devices to ensure consistency of the conduit
used among drivers defining a conduit method as at runtime all
devices are expected to use the very same SMCCC invocation conduit.

Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
---
 drivers/firmware/Makefile            |   1 +
 drivers/firmware/arm_smccc_conduit.c | 147 +++++++++++++++++++++++++++
 include/linux/arm-smccc.h            | 106 +++++++++++++++++++
 3 files changed, 254 insertions(+)
 create mode 100644 drivers/firmware/arm_smccc_conduit.c

diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
index e9fb838af4df..5a4a72a06346 100644
--- a/drivers/firmware/Makefile
+++ b/drivers/firmware/Makefile
@@ -5,6 +5,7 @@
 obj-$(CONFIG_ARM_SCPI_PROTOCOL)	+= arm_scpi.o
 obj-$(CONFIG_ARM_SCPI_POWER_DOMAIN) += scpi_pm_domain.o
 obj-$(CONFIG_ARM_SDE_INTERFACE)	+= arm_sdei.o
+obj-$(CONFIG_HAVE_ARM_SMCCC)	+= arm_smccc_conduit.o
 obj-$(CONFIG_DMI)		+= dmi_scan.o
 obj-$(CONFIG_DMI_SYSFS)		+= dmi-sysfs.o
 obj-$(CONFIG_EDD)		+= edd.o
diff --git a/drivers/firmware/arm_smccc_conduit.c b/drivers/firmware/arm_smccc_conduit.c
new file mode 100644
index 000000000000..37b90e92a4b3
--- /dev/null
+++ b/drivers/firmware/arm_smccc_conduit.c
@@ -0,0 +1,147 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2020, Linaro Limited
+ */
+
+#include <linux/arm-smccc.h>
+#include <linux/device.h>
+#include <linux/of.h>
+
+static enum arm_smccc_conduit arm_smccc_1_0_conduit = SMCCC_CONDUIT_NONE;
+
+/* Helpers for nice trace when called outside a device instance */
+#define PRINT_INFO(dev, ...)				\
+	do {						\
+		if (dev)				\
+			dev_info(dev, __VA_ARGS__);	\
+		else					\
+			pr_info(__VA_ARGS__);		\
+	} while (0)
+
+#define PRINT_WARN(dev, ...)				\
+	do {						\
+		if (dev)				\
+			dev_warn(dev, __VA_ARGS__);	\
+		else					\
+			pr_warn(__VA_ARGS__);		\
+	} while (0)
+
+#define PRINT_ERROR(dev, ...)				\
+	do {						\
+		if (dev)				\
+			dev_err(dev, __VA_ARGS__);	\
+		else					\
+			pr_err(__VA_ARGS__);		\
+	} while (0)
+
+static const char *conduit_str(enum arm_smccc_conduit conduit)
+{
+	static const char hvc_str[] = "HVC";
+	static const char smc_str[] = "SMC";
+	static const char unknown[] = "unknown";
+
+	switch (conduit) {
+	case SMCCC_CONDUIT_HVC:
+		return hvc_str;
+	case SMCCC_CONDUIT_SMC:
+		return smc_str;
+	default:
+		return unknown;
+	}
+}
+
+static int set_conduit(struct device *dev, enum arm_smccc_conduit conduit)
+{
+	switch (conduit) {
+	case SMCCC_CONDUIT_HVC:
+	case SMCCC_CONDUIT_SMC:
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	if (arm_smccc_1_0_conduit == SMCCC_CONDUIT_NONE) {
+		arm_smccc_1_0_conduit = conduit;
+		return 0;
+	}
+
+	if (conduit == arm_smccc_1_0_conduit)
+		return 0;
+
+	PRINT_ERROR(dev, "inconsistent conduits %u (%s) vs %u (%s)\n",
+		    conduit, conduit_str(conduit),
+		    arm_smccc_1_0_conduit, conduit_str(arm_smccc_1_0_conduit));
+
+	return -EINVAL;
+}
+
+static enum arm_smccc_conduit method_to_conduit(const char *method)
+{
+	if (!strcmp("hvc", method))
+		return SMCCC_CONDUIT_HVC;
+	else if (!strcmp("smc", method))
+		return SMCCC_CONDUIT_SMC;
+	else
+		return SMCCC_CONDUIT_NONE;
+}
+
+static int set_conduit_from_node(struct device *dev, struct device_node *np)
+{
+	const char *method;
+
+	PRINT_INFO(dev, "probing for conduit method from DT.\n");
+
+	if (!np)
+		return -EINVAL;
+
+	if (!of_property_read_string(np, "method", &method)) {
+		enum arm_smccc_conduit dev_conduit = method_to_conduit(method);
+
+		if (dev_conduit == SMCCC_CONDUIT_NONE) {
+			PRINT_WARN(dev, "invalid \"method\" property \"%s\"\n",
+				   method);
+			return -EINVAL;
+		}
+
+		return set_conduit(dev, dev_conduit);
+	}
+
+	if (arm_smccc_1_0_conduit != SMCCC_CONDUIT_NONE)
+		return 0;
+
+	PRINT_WARN(dev, "missing \"method\" property\n");
+	return -ENXIO;
+}
+
+int devm_arm_smccc_1_0_set_conduit(struct device *dev)
+{
+	if (!dev || !dev->of_node)
+		return -EINVAL;
+
+	return set_conduit_from_node(dev, dev->of_node);
+}
+EXPORT_SYMBOL_GPL(devm_arm_smccc_1_0_set_conduit);
+
+int of_arm_smccc_1_0_set_conduit(struct device_node *np)
+{
+	if (!np)
+		return -EINVAL;
+
+	return set_conduit_from_node(NULL, np);
+}
+EXPORT_SYMBOL_GPL(of_arm_smccc_1_0_set_conduit);
+
+int arm_smccc_1_0_set_conduit(enum arm_smccc_conduit conduit)
+{
+	if (set_conduit(NULL, conduit))
+		return -EINVAL;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(arm_smccc_1_0_set_conduit);
+
+enum arm_smccc_conduit arm_smccc_1_0_get_conduit(void)
+{
+	return arm_smccc_1_0_conduit;
+}
+EXPORT_SYMBOL_GPL(arm_smccc_1_0_get_conduit);
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 59494df0f55b..4f5f17b00a6b 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -377,5 +377,111 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
 			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
 			   0x21)
 
+/* SMCCC v1.0 compliant invocation helpers */
+
+/*
+ * Like arm_smccc_1_0* but always returns SMCCC_RET_NOT_SUPPORTED.
+ * Used when the SMCCC conduit is not defined. The empty asm statement
+ * avoids compiler warnings about unused variables.
+ */
+#define __fail_smccc_1_0(...)						\
+	do {								\
+		__declare_args(7, __VA_ARGS__);				\
+		asm ("" __constraints(7));				\
+		___res->a0 = SMCCC_RET_NOT_SUPPORTED;			\
+	} while (0)
+
+/*
+ * arm_smccc_1_0_invoke() - make an SMCCC v1.0 compliant call
+ *
+ * This is a macro taking eight source arguments and an return structure.
+ * It uses the SMCCC conduit registered during driver(s) initialization.
+ *
+ * @a0-a7: arguments passed in registers 0 to 7
+ * @res: result values from registers 0 to 3
+ *
+ * This macro will make either an HVC call or an SMC call depending on the
+ * specified SMCCC conduit. If no valid conduit is available then -1
+ * (SMCCC_RET_NOT_SUPPORTED) is returned in @res.a0.
+ *
+ * The return value provides the conduit that was used.
+ */
+#define arm_smccc_1_0_invoke(...) ({					\
+		enum arm_smccc_conduit conduit = arm_smccc_1_0_get_conduit(); \
+		switch (conduit) {					\
+		case SMCCC_CONDUIT_HVC:					\
+			arm_smccc_hvc(__VA_ARGS__);			\
+			break;						\
+		case SMCCC_CONDUIT_SMC:					\
+			arm_smccc_smc(__VA_ARGS__);			\
+			break;						\
+		default:						\
+			__fail_smccc_1_0(__VA_ARGS__);			\
+			conduit = SMCCC_CONDUIT_NONE;			\
+		}							\
+		conduit;						\
+	})
+
+struct device;
+struct device_node;
+
+#ifdef CONFIG_HAVE_ARM_SMCCC
+/**
+ * arm_smccc_1_0_get_conduit() - Return registered SMCCC conduit
+ */
+enum arm_smccc_conduit arm_smccc_1_0_get_conduit(void);
+
+/**
+ * arm_smccc_1_0_set_conduit - Register SMCCC invocation conduit
+ * @conduit: conduit to register
+ *
+ * Return 0 on success and -EINVAL on failure.
+ */
+int arm_smccc_1_0_set_conduit(enum arm_smccc_conduit);
+
+/**
+ * devm_arm_smccc_1_0_set_conduit() - Set SMCCC v1.0 conduit if found in device
+ * @dev: Device instance
+ *
+ * Set the SMCCC invocation conduit based on device node if it has a "methhod"
+ * property that defines the SMCCC conduit to be used. If it has not, check a
+ * conduit is already registered.
+ *
+ * Return 0 on success, -ENXIO if no conduit found, -EINVAL otherwise.
+ */
+int devm_arm_smccc_1_0_set_conduit(struct device *dev);
+
+/**
+ * of_arm_smccc_1_0_set_conduit() - Set SMCCC v1.0 conduit if found in FDT node
+ * @np: Node instance
+ *
+ * Set the SMCCC invocation conduit based on device node if it has a "methhod"
+ * property that defines the SMCCC conduit to be used. If it has not, check a
+ * conduit is already registered.
+ *
+ * Return 0 on success, -ENXIO if no conduit found, -EINVAL otherwise.
+ */
+int of_arm_smccc_1_0_set_conduit(struct device_node *np);
+#else
+static inline enum arm_smccc_conduit arm_smccc_1_0_get_conduit(void)
+{
+	return SMCCC_CONDUIT_NONE;
+}
+
+static inline int arm_smccc_1_0_set_conduit(enum arm_smccc_conduit);
+{
+	return -EINVAL;
+}
+
+static inline int devm_arm_smccc_1_0_set_conduit(struct device *dev);
+{
+	return -EINVAL;
+}
+
+static inline int of_arm_smccc_1_0_set_conduit(struct device_node *np);
+{
+	return -EINVAL;
+}
+#endif /* CONFIG_HAVE_ARM_SMCCC */
 #endif /*__ASSEMBLY__*/
 #endif /*__LINUX_ARM_SMCCC_H*/
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
