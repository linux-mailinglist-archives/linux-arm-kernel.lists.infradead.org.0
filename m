Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9B312D13C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:52:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dh4KFBSpv82ErmA4t7L05yg7xJzV2SdjRzAKZJ1dsgc=; b=iynS25hd9MRj0oEzobgwrDEz/C
	FKP89/XTrsL2Nqn5JvQo4Uhb6YL4b6Ed3BrA/4LnLhZYXb7fZ8FNYsqKHX30hnlDHIgoPF2+Dlbvf
	SqVGnnZiq/CKOPP/vHjG2pXD+DgvxotdF1X9uYbmnFdi85bs8QPYXSb3v7uYLOGq4ojXpZ7gA2fJa
	vPpPwwgkkTlZAkIuBrVEB4aM+xuAgaoclrynKlSUENTA91dz1AG7Q937cDeh7QTENO2GYwIWuX+NA
	n4EzUxhLaiRsFD+/CKwSHpa6rEQS3pd2LudTBPMdN5j7CRBPygBx3Gtv3lRpdz6ppOAmWEbUuAJS/
	+6iLiEDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwOw-0005ki-09; Mon, 30 Dec 2019 14:52:10 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwHP-0005Jk-Vb
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 14:44:32 +0000
Received: by mail-lj1-x241.google.com with SMTP id m26so31068255ljc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 06:44:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=neea4kQTvG+Bpgec4NpbRFMjAla+zHuzZZgjs6GRGkc=;
 b=CY8w9n0qANi3pwpse5njlfUuAXhBW7I2P8v6T8Momocn6zaJyS9eUNpXR6rklTo6dg
 sq+oD3qSYMqB0wdHlDpE3jkyYaDDnJHCkfrXPBz1GfhmtlV7apr9LScWjde4LbAIiZx0
 RLOWOqpMSJiQcd3lmVt5H67wYDzWg+AdVC9P1T20yfcXI8ABlEREGNiOd4yO4jG7QCUI
 bkADMMLprTLR0eR+X7OmdFXwjGSeYM0Ngk65Ev77A+7MtvMrv27NP0obM/n5DvFCWGYy
 5z7X2a5X9oYhJZ3SAkZHCYhKtbgKBoaNCtXSM71AdSInmuszfBFuZrl7vxgoyZ5wjZ4m
 6I+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=neea4kQTvG+Bpgec4NpbRFMjAla+zHuzZZgjs6GRGkc=;
 b=kUjl6B1IqQMWF++nq5nkLXeBCnL10efkcnjJWbDjXjsGngwlb6b1PU6h3v0i0lMyNV
 GpboUe0npeOnMktrG2pRCRf8zUeq/hamliaK7M4CXmXQoVxbYXZfXtKjemGp3uN1yRuQ
 K/zzEuwbXpLI8O+HhiabBImUGJM+Nq2gtIH7vfjltF7qwEyKUOhpJrU/qu8C/QpxKBU1
 EQ/vzTA2CQtwKHOyEvRywBgidMscbGtmMK+3R/auQW4z6RodAKUbHWZkrnVvT2mKlBqY
 WMssdPmIlcwhjVq7Lc67YepSC2UB62Pi+ARNkumDkSN5z5YlGNDodSH0aEeLgp3SZleX
 rO1w==
X-Gm-Message-State: APjAAAU4Cl0QSgtMzkTrFypNFTBbczJjGO45d2qhpWyrFYnm+dLoC4f7
 5dborVWGSYiIXtWCfGzo/thKyw==
X-Google-Smtp-Source: APXvYqz4pHdrSZYvR9LPkn6aBxofeWRY+5WpuR/T2iFRqr3dH9alwMysRzcX9iPHqQj6c18Apu+KPg==
X-Received: by 2002:a2e:93d5:: with SMTP id p21mr40357019ljh.50.1577717061929; 
 Mon, 30 Dec 2019 06:44:21 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id a21sm18744931lfg.44.2019.12.30.06.44.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 06:44:21 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v5 08/15] cpuidle: psci: Add a helper to attach a CPU to its
 PM domain
Date: Mon, 30 Dec 2019 15:43:55 +0100
Message-Id: <20191230144402.30195-9-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191230144402.30195-1-ulf.hansson@linaro.org>
References: <20191230144402.30195-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064424_138723_C4C79374 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce a PSCI DT helper function, psci_dt_attach_cpu(), which takes a
CPU number as an in-parameter and tries to attach the CPU's struct device
to its corresponding PM domain.

Let's makes use of dev_pm_domain_attach_by_name(), as it allows us to
specify "psci" as the "name" of the PM domain to attach to. Additionally,
let's also prepare the attached device to be power managed via runtime PM.

Note that, the implementation of the new helper function is in a new
separate c-file, which may seems a bit too much at this point. However,
subsequent changes that implements the remaining part of the PM domain
support for cpuidle-psci, helps to justify this split.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
---

Changes in v5:
	- Declare psci_dt_attach_cpu() as __init.

---
 drivers/cpuidle/Makefile              |  4 +++-
 drivers/cpuidle/cpuidle-psci-domain.c | 31 +++++++++++++++++++++++++++
 drivers/cpuidle/cpuidle-psci.h        | 12 +++++++++++
 3 files changed, 46 insertions(+), 1 deletion(-)
 create mode 100644 drivers/cpuidle/cpuidle-psci-domain.c
 create mode 100644 drivers/cpuidle/cpuidle-psci.h

diff --git a/drivers/cpuidle/Makefile b/drivers/cpuidle/Makefile
index ee70d5cc5b99..cc8c769d7fa9 100644
--- a/drivers/cpuidle/Makefile
+++ b/drivers/cpuidle/Makefile
@@ -21,7 +21,9 @@ obj-$(CONFIG_ARM_U8500_CPUIDLE)         += cpuidle-ux500.o
 obj-$(CONFIG_ARM_AT91_CPUIDLE)          += cpuidle-at91.o
 obj-$(CONFIG_ARM_EXYNOS_CPUIDLE)        += cpuidle-exynos.o
 obj-$(CONFIG_ARM_CPUIDLE)		+= cpuidle-arm.o
-obj-$(CONFIG_ARM_PSCI_CPUIDLE)		+= cpuidle-psci.o
+obj-$(CONFIG_ARM_PSCI_CPUIDLE)		+= cpuidle_psci.o
+cpuidle_psci-y				:= cpuidle-psci.o
+cpuidle_psci-$(CONFIG_PM_GENERIC_DOMAINS_OF) += cpuidle-psci-domain.o
 
 ###############################################################################
 # MIPS drivers
diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
new file mode 100644
index 000000000000..87f881c21af1
--- /dev/null
+++ b/drivers/cpuidle/cpuidle-psci-domain.c
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * PM domains for CPUs via genpd - managed by cpuidle-psci.
+ *
+ * Copyright (C) 2019 Linaro Ltd.
+ * Author: Ulf Hansson <ulf.hansson@linaro.org>
+ *
+ */
+
+#include <linux/cpu.h>
+#include <linux/device.h>
+#include <linux/kernel.h>
+#include <linux/pm_domain.h>
+#include <linux/pm_runtime.h>
+
+#include "cpuidle-psci.h"
+
+struct device __init *psci_dt_attach_cpu(int cpu)
+{
+	struct device *dev;
+
+	dev = dev_pm_domain_attach_by_name(get_cpu_device(cpu), "psci");
+	if (IS_ERR_OR_NULL(dev))
+		return dev;
+
+	pm_runtime_irq_safe(dev);
+	if (cpu_online(cpu))
+		pm_runtime_get_sync(dev);
+
+	return dev;
+}
diff --git a/drivers/cpuidle/cpuidle-psci.h b/drivers/cpuidle/cpuidle-psci.h
new file mode 100644
index 000000000000..8609482cf490
--- /dev/null
+++ b/drivers/cpuidle/cpuidle-psci.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __CPUIDLE_PSCI_H
+#define __CPUIDLE_PSCI_H
+
+#ifdef CONFIG_PM_GENERIC_DOMAINS_OF
+struct device __init *psci_dt_attach_cpu(int cpu);
+#else
+static inline struct device __init *psci_dt_attach_cpu(int cpu) { return NULL; }
+#endif
+
+#endif /* __CPUIDLE_PSCI_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
