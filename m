Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 610F01BDE1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 21:26:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Yn8VGG8kcnAtO0PsbYKcX369+IoM8uvSx6tIHaR0cEE=; b=CRWTvPjGKS2NXj7S63W+VrGzJl
	S3ti/8UG5si7ZSwGwLv6m+XPJTN7/lK77DviUe6XRSEgjRWcck++5ORzVUKPeXp+PFxzkhaTI/y5q
	Tfc/XTypcNu+bMvieNzA97YGanGvgCB1CoHPjWf+SdU8yc04NAp41N6lXFNv8PWUNmEpMMLwquFUr
	kGpSAAr67m75itoxGUl4W2PLOEUbNVcHDfpHuA+bq09lh3RZka2IJSgw81vgMGDU5WizeSchw4G26
	cRbsAs1+fV/uTo70x3CTK2e6rhhY5tOLVixqoT2uHeZq1RtWtwDg+gKaoYGnRKeihmHsKWYBZFfhF
	3jUAxJgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQGam-0006DM-EH; Mon, 13 May 2019 19:26:32 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQGXv-0001NW-5D
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 19:24:00 +0000
Received: by mail-lj1-x244.google.com with SMTP id e13so12044685ljl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 12:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WrUBlQWQzfbgrdk7klxniFTaW91XaiQj55o38mlFd9s=;
 b=sPy1xWvat53hABQ29ElA2SDvZnqfRV5oZCv6u9/BoxR2ZPqFXvyAG3a5TqRkJY1a78
 ViroHIx+ON0jQRU/3UrEYHgnwsRgfEfK1eI6rvzBvxBl01A+l0VD3RNQr/pCLeiGgll5
 oZk8WImmrSosBLIL5WDY5HKxk6DoQYAY3hOyay9Zaekc0Qx48OBqfoEIU9LOQbcuUzO9
 y21fdWLhr9sVngZjVbZUtziI2z+WwnXK05qOJ7jaN6FqE68r4gmG+pebrx9IRchSta0X
 VzfAclg9EtvAhwIfrDB0k8yyetyh5giqMkUfQdSjeFYl6oWMRIbrHygy50HEN/rtT2Ov
 JANw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WrUBlQWQzfbgrdk7klxniFTaW91XaiQj55o38mlFd9s=;
 b=No+GxlAm/vI1zG4ProVS+tdQq+yFZfMSOWjMFOIczenQEqiRq5KJxg3X8lhtFlaRAR
 QAXsof2LncsbBMZ8sGm9q39zVCXSowXRcQGqOTL8OFr4nRfkyqwf35zTgappFjuHOPY4
 RqPybMqoI6JnDeZrAnk0/d6vG3C9awf2i+ueBsIg9KBb10jzihQQKOA7C5hGUoq/4hK2
 QRI3DAMsv5NSdj9slN/Q3rbZOCvKZxKP7m8sKxskDu2gEseV3W0AfYfQMWwcsQk3geat
 MFSYBhwTxZK930KHL6kec2OSxbE0hGkb1Ehame7jYcb2lkQ2namYj3WTiCP1OdYCV45l
 gjLA==
X-Gm-Message-State: APjAAAXMRBoeKQkF72TlDhgLiXKC3EmIrEb3SrLsUWuLSuBqPZpDJr5h
 w0POuUFETfF03HmCRrPxwJoLNg==
X-Google-Smtp-Source: APXvYqwd8hFjFHeIWZMZf2tJMuRrNt9YuVmMQEmung/qTBri+UbFr4ziejpMmn/ZiqWmeUdPeQNSbw==
X-Received: by 2002:a2e:2b58:: with SMTP id q85mr14768159lje.179.1557775413538; 
 Mon, 13 May 2019 12:23:33 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id q21sm3449365lfa.84.2019.05.13.12.23.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 12:23:32 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 15/18] drivers: firmware: psci: Support CPU hotplug for the
 hierarchical model
Date: Mon, 13 May 2019 21:22:57 +0200
Message-Id: <20190513192300.653-16-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513192300.653-1-ulf.hansson@linaro.org>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_122335_497177_4A3E0CA3 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 Lina Iyer <ilina@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the hierarchical CPU topology is used and when a CPU has been put
offline (hotplug), that same CPU prevents its PM domain and thus also
potential master PM domains, from being powered off. This is because genpd
observes the CPU's attached device as being active from a runtime PM point
of view.

To deal with this, let's decrease the runtime PM usage count by calling
pm_runtime_put_sync_suspend() of the attached struct device when putting
the CPU offline. Consequentially, we must then increase the runtime PM
usage count, while putting the CPU online again.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes:
	- Use get_logical_index() to find the CPU number.
	- Verify that a corresponding struct device* has been attached to the
	  PM domain before doing runtime PM refrence counting.
	- Clear the domain state when the CPU goes offline, to start fresh.
	- Move code to internal helper functions and move them inside
	  "ifdef CONFIG_CPU_IDLE.

---
 drivers/firmware/psci/psci.c | 47 +++++++++++++++++++++++++++++++++++-
 1 file changed, 46 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 2c4157d3a616..5ad93c3694b5 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -15,6 +15,7 @@
 
 #include <linux/acpi.h>
 #include <linux/arm-smccc.h>
+#include <linux/cpu.h>
 #include <linux/cpuidle.h>
 #include <linux/errno.h>
 #include <linux/linkage.h>
@@ -93,6 +94,9 @@ static u32 psci_function_id[PSCI_FN_MAX];
 static u32 psci_cpu_suspend_feature;
 static bool psci_system_reset2_supported;
 
+static void psci_cpuidle_cpu_off(void);
+static void psci_cpuidle_cpu_on(unsigned long cpuid);
+
 static inline bool psci_has_ext_power_state(void)
 {
 	return psci_cpu_suspend_feature &
@@ -188,6 +192,8 @@ static int psci_cpu_off(u32 state)
 	int err;
 	u32 fn;
 
+	psci_cpuidle_cpu_off();
+
 	fn = psci_function_id[PSCI_FN_CPU_OFF];
 	err = invoke_psci_fn(fn, state, 0, 0);
 	return psci_to_linux_errno(err);
@@ -200,7 +206,13 @@ static int psci_cpu_on(unsigned long cpuid, unsigned long entry_point)
 
 	fn = psci_function_id[PSCI_FN_CPU_ON];
 	err = invoke_psci_fn(fn, cpuid, entry_point, 0);
-	return psci_to_linux_errno(err);
+	err = psci_to_linux_errno(err);
+	if (err)
+		return err;
+
+	psci_cpuidle_cpu_on(cpuid);
+
+	return 0;
 }
 
 static int psci_migrate(unsigned long cpuid)
@@ -540,8 +552,41 @@ static int __init _psci_dt_topology_init(struct device_node *np)
 
 	return ret;
 }
+
+static void psci_cpuidle_cpu_off(void)
+{
+	struct device *dev = __this_cpu_read(psci_cpuidle_data.dev);
+
+	/*
+	 * Drop the runtime PM usage count if the CPU has been attached to a
+	 * CPU PM domain. This is needed to, for example, not prevent other
+	 * master domains in the hierarchy to remain powered on.
+	 */
+	if (dev)
+		pm_runtime_put_sync_suspend(dev);
+}
+
+static void psci_cpuidle_cpu_on(unsigned long cpuid)
+{
+	struct device *dev;
+	int cpu;
+
+	if (!psci_dt_topology)
+		return;
+
+	cpu = get_logical_index(cpuid);
+	if (cpu < 0)
+		return;
+
+	dev = per_cpu(psci_cpuidle_data.dev, cpu);
+	if (dev)
+		pm_runtime_get_sync(dev);
+}
+
 #else
 static inline int _psci_dt_topology_init(struct device_node *np) { return 0; }
+static void psci_cpuidle_cpu_off(void) {}
+static void psci_cpuidle_cpu_on(unsigned long cpuid) {}
 #endif
 
 static int psci_system_suspend(unsigned long unused)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
