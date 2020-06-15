Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E21E61F9BDF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 17:21:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bu+rVaQyxou9QwcXc4NxIUu64S6lj5jnS7ek7RnsItE=; b=P4wFZJ6bjUgIvc
	etVgO0DIRPFbfPAuKbgbi3aNijR42Qkns9sWvF3P7k99HpvqHrb9zoscvXfab9GF90xQC+0nm3uvB
	P7UXSXqkIj23txWtcnMuo6timCm3cB2gLKnp7WbR/QjBCC3y0FpONAZDxZWcUULnekv2nD8S34AcD
	PpJbPVdAJdYixZyzDwPW16ukHsOS0B1BcnFx76EPkVC8XjQMnSri1kbr4JYI4YyghketbaFWinHzV
	2yHEvk8LKDM7OjoC8HahNHZTfi4OFf9f0URjxcQb14qGOyV51+TUyOZBIOEnM6ERFdmLg0gOGixU4
	RsGtvP6eMSttsC+6f7yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqvj-0005UY-6f; Mon, 15 Jun 2020 15:21:47 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqv1-00054O-Np
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 15:21:05 +0000
Received: by mail-lj1-x241.google.com with SMTP id q19so19695261lji.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 08:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DIs8KJ98J5MEVUm8Cx49lckO7aev9utr31emHR9iDsU=;
 b=AFCjTEokEP2xEJjuOwKRjcKylvH8VqoJjg4K13+Nzc2pdpekOoxJq2ILU2MRcVImNs
 fw0AiQaLqsnQ2gh/dp+lH6VuzR2ZW8Z3YxDLV6JpAgSAUcxS17j6Fg2WWO1gT+5tn1K+
 OpMC6p9I58kyMkF5MqnOFX6sXvk/XyK/cOnDT0AxqXefKTcCnCM0By+oLxmdbpVwuFwj
 NCB78ttEpun1Idx9ipUa8FFRwaV2BF/hzdj8WopbHip/FYI0xrHF5WlQg74S50GEaISo
 RrgzHYjC8v7gNNC7g574np0lSd7/OLgEyRuJSsJC0aaRHuqiVTlvqEoc8neCqvabz0yU
 LiSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DIs8KJ98J5MEVUm8Cx49lckO7aev9utr31emHR9iDsU=;
 b=gQfhqJrs8UjShkvMBa0EdMU+IgKC0EYQAvKUw/MPKvWH7kyurxsgootnpdVAVhmXlI
 QZWInwP2mC5OSXg9hG0yuj1yC7MlSk8u/aUkiKyb2/Y4Sf8UAUlXrBDaXne5IvjQmPfb
 Bk9bFa78S0yCkogBwf5ZTObOQowjJFbWT6seP3COPWZLx1+mO77S3FulpkqYnM5NP/M3
 7M2gH8QBXibyBQURBoj30MynXIuwVQznRH2d/xtTSFnP2HNHTNHMCY425S8P7Npb8yP2
 v7lAFF22SRt05Uh2sLwmwi2kPCkLJHCzxRVo+7GpsXs5rrLGCxC7ANjhia7JXnsn7gnU
 vnqg==
X-Gm-Message-State: AOAM53068lsoBPTd52BDv8cDq7BoUUwB5PHROsEt7s3aaKx5VvwrCGmD
 ElQq13mSfFL6GaFwkB4PeUzuhQ==
X-Google-Smtp-Source: ABdhPJztnoAE7zSNCindBOjSInKfGNIkh6lL/30j/OX2l+3X1MmV/RJDFccwwnB2T2Sc8+tKjSldPQ==
X-Received: by 2002:a2e:9b8c:: with SMTP id z12mr12524785lji.257.1592234462069; 
 Mon, 15 Jun 2020 08:21:02 -0700 (PDT)
Received: from localhost.localdomain (h-98-128-181-7.NA.cust.bahnhof.se.
 [98.128.181.7])
 by smtp.gmail.com with ESMTPSA id r13sm507045lfp.80.2020.06.15.08.21.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 08:21:01 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Saravana Kannan <saravanak@google.com>, linux-pm@vger.kernel.org
Subject: [PATCH 2/5] cpuidle: psci: Fix error path via converting to a
 platform driver
Date: Mon, 15 Jun 2020 17:20:51 +0200
Message-Id: <20200615152054.6819-3-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200615152054.6819-1-ulf.hansson@linaro.org>
References: <20200615152054.6819-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_082103_783663_757F8F45 
X-CRM114-Status: GOOD (  25.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current error paths for the cpuidle-psci driver, may leak memory or
possibly leave CPU devices attached to their PM domains. These are quite
harmless issues, but still deserves to be taken care of.

Although, rather than fixing them by keeping track of allocations that
needs to be freed, which tends to become a bit messy, let's convert into a
platform driver. In this way, it gets easier to fix the memory leaks as we
can rely on the devm_* functions.

Moreover, converting to a platform driver also enables support for deferred
probe, which subsequent changes takes benefit from.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/cpuidle/cpuidle-psci-domain.c |  10 +-
 drivers/cpuidle/cpuidle-psci.c        | 141 +++++++++++++++-----------
 drivers/cpuidle/cpuidle-psci.h        |   9 +-
 3 files changed, 95 insertions(+), 65 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
index f07786aad673..e48e578aaa7d 100644
--- a/drivers/cpuidle/cpuidle-psci-domain.c
+++ b/drivers/cpuidle/cpuidle-psci-domain.c
@@ -287,7 +287,7 @@ static int __init psci_idle_init_domains(void)
 }
 subsys_initcall(psci_idle_init_domains);
 
-struct device __init *psci_dt_attach_cpu(int cpu)
+struct device *psci_dt_attach_cpu(int cpu)
 {
 	struct device *dev;
 
@@ -301,3 +301,11 @@ struct device __init *psci_dt_attach_cpu(int cpu)
 
 	return dev;
 }
+
+void psci_dt_detach_cpu(struct device *dev)
+{
+	if (IS_ERR_OR_NULL(dev))
+		return;
+
+	dev_pm_domain_detach(dev, false);
+}
diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 3806f911b61c..74463841805f 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -17,9 +17,11 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/platform_device.h>
 #include <linux/psci.h>
 #include <linux/pm_runtime.h>
 #include <linux/slab.h>
+#include <linux/string.h>
 
 #include <asm/cpuidle.h>
 
@@ -33,7 +35,7 @@ struct psci_cpuidle_data {
 
 static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
 static DEFINE_PER_CPU(u32, domain_state);
-static bool psci_cpuidle_use_cpuhp __initdata;
+static bool psci_cpuidle_use_cpuhp;
 
 void psci_set_domain_state(u32 state)
 {
@@ -104,7 +106,7 @@ static int psci_idle_cpuhp_down(unsigned int cpu)
 	return 0;
 }
 
-static void __init psci_idle_init_cpuhp(void)
+static void psci_idle_init_cpuhp(void)
 {
 	int err;
 
@@ -127,30 +129,13 @@ static int psci_enter_idle_state(struct cpuidle_device *dev,
 	return psci_enter_state(idx, state[idx]);
 }
 
-static struct cpuidle_driver psci_idle_driver __initdata = {
-	.name = "psci_idle",
-	.owner = THIS_MODULE,
-	/*
-	 * PSCI idle states relies on architectural WFI to
-	 * be represented as state index 0.
-	 */
-	.states[0] = {
-		.enter                  = psci_enter_idle_state,
-		.exit_latency           = 1,
-		.target_residency       = 1,
-		.power_usage		= UINT_MAX,
-		.name                   = "WFI",
-		.desc                   = "ARM WFI",
-	}
-};
-
-static const struct of_device_id psci_idle_state_match[] __initconst = {
+static const struct of_device_id psci_idle_state_match[] = {
 	{ .compatible = "arm,idle-state",
 	  .data = psci_enter_idle_state },
 	{ },
 };
 
-int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
+int psci_dt_parse_state_node(struct device_node *np, u32 *state)
 {
 	int err = of_property_read_u32(np, "arm,psci-suspend-param", state);
 
@@ -167,9 +152,9 @@ int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
 	return 0;
 }
 
-static int __init psci_dt_cpu_init_topology(struct cpuidle_driver *drv,
-					    struct psci_cpuidle_data *data,
-					    unsigned int state_count, int cpu)
+static int psci_dt_cpu_init_topology(struct cpuidle_driver *drv,
+				     struct psci_cpuidle_data *data,
+				     unsigned int state_count, int cpu)
 {
 	/* Currently limit the hierarchical topology to be used in OSI mode. */
 	if (!psci_has_osi_support())
@@ -190,9 +175,9 @@ static int __init psci_dt_cpu_init_topology(struct cpuidle_driver *drv,
 	return 0;
 }
 
-static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
-					struct device_node *cpu_node,
-					unsigned int state_count, int cpu)
+static int psci_dt_cpu_init_idle(struct device *dev, struct cpuidle_driver *drv,
+				 struct device_node *cpu_node,
+				 unsigned int state_count, int cpu)
 {
 	int i, ret = 0;
 	u32 *psci_states;
@@ -200,7 +185,8 @@ static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
 	struct psci_cpuidle_data *data = per_cpu_ptr(&psci_cpuidle_data, cpu);
 
 	state_count++; /* Add WFI state too */
-	psci_states = kcalloc(state_count, sizeof(*psci_states), GFP_KERNEL);
+	psci_states = devm_kcalloc(dev, state_count, sizeof(*psci_states),
+				   GFP_KERNEL);
 	if (!psci_states)
 		return -ENOMEM;
 
@@ -213,32 +199,26 @@ static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
 		of_node_put(state_node);
 
 		if (ret)
-			goto free_mem;
+			return ret;
 
 		pr_debug("psci-power-state %#x index %d\n", psci_states[i], i);
 	}
 
-	if (i != state_count) {
-		ret = -ENODEV;
-		goto free_mem;
-	}
+	if (i != state_count)
+		return -ENODEV;
 
 	/* Initialize optional data, used for the hierarchical topology. */
 	ret = psci_dt_cpu_init_topology(drv, data, state_count, cpu);
 	if (ret < 0)
-		goto free_mem;
+		return ret;
 
 	/* Idle states parsed correctly, store them in the per-cpu struct. */
 	data->psci_states = psci_states;
 	return 0;
-
-free_mem:
-	kfree(psci_states);
-	return ret;
 }
 
-static __init int psci_cpu_init_idle(struct cpuidle_driver *drv,
-				     unsigned int cpu, unsigned int state_count)
+static int psci_cpu_init_idle(struct device *dev, struct cpuidle_driver *drv,
+			      unsigned int cpu, unsigned int state_count)
 {
 	struct device_node *cpu_node;
 	int ret;
@@ -254,14 +234,22 @@ static __init int psci_cpu_init_idle(struct cpuidle_driver *drv,
 	if (!cpu_node)
 		return -ENODEV;
 
-	ret = psci_dt_cpu_init_idle(drv, cpu_node, state_count, cpu);
+	ret = psci_dt_cpu_init_idle(dev, drv, cpu_node, state_count, cpu);
 
 	of_node_put(cpu_node);
 
 	return ret;
 }
 
-static int __init psci_idle_init_cpu(int cpu)
+static void psci_cpu_deinit_idle(int cpu)
+{
+	struct psci_cpuidle_data *data = per_cpu_ptr(&psci_cpuidle_data, cpu);
+
+	psci_dt_detach_cpu(data->dev);
+	psci_cpuidle_use_cpuhp = false;
+}
+
+static int psci_idle_init_cpu(struct device *dev, int cpu)
 {
 	struct cpuidle_driver *drv;
 	struct device_node *cpu_node;
@@ -284,17 +272,26 @@ static int __init psci_idle_init_cpu(int cpu)
 	if (ret)
 		return ret;
 
-	drv = kmemdup(&psci_idle_driver, sizeof(*drv), GFP_KERNEL);
+	drv = devm_kzalloc(dev, sizeof(*drv), GFP_KERNEL);
 	if (!drv)
 		return -ENOMEM;
 
+	drv->name = "psci_idle";
+	drv->owner = THIS_MODULE;
 	drv->cpumask = (struct cpumask *)cpumask_of(cpu);
 
 	/*
-	 * Initialize idle states data, starting at index 1, since
-	 * by default idle state 0 is the quiescent state reached
-	 * by the cpu by executing the wfi instruction.
-	 *
+	 * PSCI idle states relies on architectural WFI to be represented as
+	 * state index 0.
+	 */
+	drv->states[0].enter = psci_enter_idle_state;
+	drv->states[0].exit_latency = 1;
+	drv->states[0].target_residency = 1;
+	drv->states[0].power_usage = UINT_MAX;
+	strcpy(drv->states[0].name, "WFI");
+	strcpy(drv->states[0].desc, "ARM WFI");
+
+	/*
 	 * If no DT idle states are detected (ret == 0) let the driver
 	 * initialization fail accordingly since there is no reason to
 	 * initialize the idle driver if only wfi is supported, the
@@ -302,48 +299,45 @@ static int __init psci_idle_init_cpu(int cpu)
 	 * on idle entry.
 	 */
 	ret = dt_init_idle_driver(drv, psci_idle_state_match, 1);
-	if (ret <= 0) {
-		ret = ret ? : -ENODEV;
-		goto out_kfree_drv;
-	}
+	if (ret <= 0)
+		return ret ? : -ENODEV;
 
 	/*
 	 * Initialize PSCI idle states.
 	 */
-	ret = psci_cpu_init_idle(drv, cpu, ret);
+	ret = psci_cpu_init_idle(dev, drv, cpu, ret);
 	if (ret) {
 		pr_err("CPU %d failed to PSCI idle\n", cpu);
-		goto out_kfree_drv;
+		return ret;
 	}
 
 	ret = cpuidle_register(drv, NULL);
 	if (ret)
-		goto out_kfree_drv;
+		goto deinit;
 
 	cpuidle_cooling_register(drv);
 
 	return 0;
-
-out_kfree_drv:
-	kfree(drv);
+deinit:
+	psci_cpu_deinit_idle(cpu);
 	return ret;
 }
 
 /*
- * psci_idle_init - Initializes PSCI cpuidle driver
+ * psci_idle_probe - Initializes PSCI cpuidle driver
  *
  * Initializes PSCI cpuidle driver for all CPUs, if any CPU fails
  * to register cpuidle driver then rollback to cancel all CPUs
  * registration.
  */
-static int __init psci_idle_init(void)
+static int psci_cpuidle_probe(struct platform_device *pdev)
 {
 	int cpu, ret;
 	struct cpuidle_driver *drv;
 	struct cpuidle_device *dev;
 
 	for_each_possible_cpu(cpu) {
-		ret = psci_idle_init_cpu(cpu);
+		ret = psci_idle_init_cpu(&pdev->dev, cpu);
 		if (ret)
 			goto out_fail;
 	}
@@ -356,9 +350,34 @@ static int __init psci_idle_init(void)
 		dev = per_cpu(cpuidle_devices, cpu);
 		drv = cpuidle_get_cpu_driver(dev);
 		cpuidle_unregister(drv);
-		kfree(drv);
+		psci_cpu_deinit_idle(cpu);
 	}
 
 	return ret;
 }
+
+static struct platform_driver psci_cpuidle_driver = {
+	.probe = psci_cpuidle_probe,
+	.driver = {
+		.name = "psci-cpuidle",
+	},
+};
+
+static int __init psci_idle_init(void)
+{
+	struct platform_device *pdev;
+	int ret;
+
+	ret = platform_driver_register(&psci_cpuidle_driver);
+	if (ret)
+		return ret;
+
+	pdev = platform_device_register_simple("psci-cpuidle", -1, NULL, 0);
+	if (IS_ERR(pdev)) {
+		platform_driver_unregister(&psci_cpuidle_driver);
+		return PTR_ERR(pdev);
+	}
+
+	return 0;
+}
 device_initcall(psci_idle_init);
diff --git a/drivers/cpuidle/cpuidle-psci.h b/drivers/cpuidle/cpuidle-psci.h
index 7299a04dd467..0690d66df829 100644
--- a/drivers/cpuidle/cpuidle-psci.h
+++ b/drivers/cpuidle/cpuidle-psci.h
@@ -3,15 +3,18 @@
 #ifndef __CPUIDLE_PSCI_H
 #define __CPUIDLE_PSCI_H
 
+struct device;
 struct device_node;
 
 void psci_set_domain_state(u32 state);
-int __init psci_dt_parse_state_node(struct device_node *np, u32 *state);
+int psci_dt_parse_state_node(struct device_node *np, u32 *state);
 
 #ifdef CONFIG_PM_GENERIC_DOMAINS_OF
-struct device __init *psci_dt_attach_cpu(int cpu);
+struct device *psci_dt_attach_cpu(int cpu);
+void psci_dt_detach_cpu(struct device *dev);
 #else
-static inline struct device __init *psci_dt_attach_cpu(int cpu) { return NULL; }
+static inline struct device *psci_dt_attach_cpu(int cpu) { return NULL; }
+static inline void psci_dt_detach_cpu(struct device *dev) { }
 #endif
 
 #endif /* __CPUIDLE_PSCI_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
