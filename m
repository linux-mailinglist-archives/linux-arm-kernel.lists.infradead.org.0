Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1FD11B487
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:49:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vfAYBwFae/UI1O+1/uI+7H45YNIyXUE8TpTzO5ezXEI=; b=fMi9qaEYlCshEEAXhjTW8ADSBf
	Mr7hoqWrUXcuHD83UJEtnlHZqxDdUUF7e6z97lcIubQ08C6F3EMThg5ctav+Jv5liPqnzI2jiHRMv
	05/YnRfdQufMaefsIJD3rF9Zc/eNJCWmG7iiUNhEQnUm2upKaFM0xWUS1GnFOOKzZKSYKo1BeV1sw
	uscc5n36qiiLEHLvgCCozzeoBSy2lDDNMyWKNzRXodfwPLWPCMYbJ+T7jnrf2Qf7c8pY7LDgnw5h0
	iGwpXOkIuhq10nk4VjdITp6iiBuwV9HmK2vK34+YiCCcysm+tYu/FuMM23f/2olI+5sl00OAUlEDb
	DcQgfD8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4Ed-0004YT-GK; Wed, 11 Dec 2019 15:49:07 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if49m-000750-Cv
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:44:08 +0000
Received: by mail-lf1-x141.google.com with SMTP id n25so17120760lfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 07:44:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XRfmkf4JnKo9PHq3PVzPd6h/hHi59OtQm8uNLFVlFhw=;
 b=vlqC0QWgeO1GZemTWBSNt6UdSV9A9IQdBl8vegBUr1H/Ag8x1Cd9tjpyIHNvG5fyB9
 QTBTZKMXiUxLQviC7xKcLGZ2YubJVmmZtnTA5ZsQ7z66HDc5/7k1BH83pqFWczznzZwS
 sx36NLkjtCKlPPRvRmiJ3IbuE4YWExffudRu5xmaJQC5nsLvmc9+zlEhYTUXYThE1QiP
 i/4ay48+KWFMXOSTi3JOMjXj8gMa3uArXqiM9CeNFERCQK/vNms394Z7BR1ZUpEdUIxg
 95KsTrmnB2uRI8q9or5tnD7lPJeFGgCXP+jS+vKxOo0opD/4GtZL/ACyneRM5uIdV1Vl
 W/Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XRfmkf4JnKo9PHq3PVzPd6h/hHi59OtQm8uNLFVlFhw=;
 b=HPPLG0jUtbTotBR3ZfmclHCYi3n+UfS7kx1JE0qSvpHlc7qyMHKsC3tQtVx/EqeouX
 ytaTe78xBCnJBbe09YPngCwP4oSH268s6JLXU6aDSkVG1UlyFz9Ak9SPkQ7dsAOUUYow
 vC/CzVHN94/qq9WMXcR6SRm/zj4Mg0d42Q4Bghkoo+fG0NfCkJZlUj07lyaUmPLrRfyU
 BhjBQSo1j0U5dJs1IrIUZD0bulJGRMph1Pq1vSyDXS4624vE16DwFCoP5S7zAvR1kNXt
 pWMTYOGvZ7gs0pebDOl8Vk6xOFb1NzaEb6zVeepLPuvQSHMAazXJTx330Gc25IZFxeC0
 YdcA==
X-Gm-Message-State: APjAAAVsDaULx4DdzxepjnFBYub3IlP0ZXAHM4gKsfbtlpwSfpmnsuCB
 0tnw35uW7JK8EWTG2eT7+kMsMw==
X-Google-Smtp-Source: APXvYqyhMsqjbCZuwpuxXeIZk5TZCnSHx3W6LBzXGYi7B+TXl9c4TYuR1rKG/FBz0EPE2iPVxo0Zow==
X-Received: by 2002:a19:f006:: with SMTP id p6mr2619628lfc.94.1576079044833;
 Wed, 11 Dec 2019 07:44:04 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id b14sm1389608lff.68.2019.12.11.07.44.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 07:44:04 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v4 08/14] cpuidle: psci: Add a helper to attach a CPU to its
 PM domain
Date: Wed, 11 Dec 2019 16:43:37 +0100
Message-Id: <20191211154343.29765-9-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211154343.29765-1-ulf.hansson@linaro.org>
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_074406_573381_7C9582A9 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
---

Changes in v4:
	- Drop check for OSI support in psci_dt_attach_cpu().

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
index 000000000000..656ef3d59149
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
+struct device *psci_dt_attach_cpu(int cpu)
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
index 000000000000..0cadbb71dc55
--- /dev/null
+++ b/drivers/cpuidle/cpuidle-psci.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __CPUIDLE_PSCI_H
+#define __CPUIDLE_PSCI_H
+
+#ifdef CONFIG_PM_GENERIC_DOMAINS_OF
+struct device *psci_dt_attach_cpu(int cpu);
+#else
+static inline struct device *psci_dt_attach_cpu(int cpu) { return NULL; }
+#endif
+
+#endif /* __CPUIDLE_PSCI_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
