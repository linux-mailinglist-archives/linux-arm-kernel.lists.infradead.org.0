Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE0E150782
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 14:38:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GraTKSNAiJXx58P6k2RrwGBCg5u+qO5WcQRpzcsxxIg=; b=hsfrDG3LoNX9xQi46d4eCM58BM
	DJ4c1kBLWL8TffMX9i9vNF+ZNCgsb8xQQ2kRDuifpMu6nJN+WgdOm/bYqgf1z6iBokjC4z3DXxjjM
	ZwWC/G70JmKrlXDIsPOMJfVi2yDv0ECulh7vwE61aNvW5mk6++k8cVhbxnafc43xug4UeJxtWEJEa
	fETPH0ez8hKNEiXVSu+SW4xzH0zRQ2UgDsdCP9Df/hecVoNPHm0wgQy7gpHDDF/qTlPUZv0ueIr8/
	ADU7nZI4LGRQOG4g0iHINiTl5ANyUjOQvwa+CkfbBDIyZEbtgN8HJ9ml4h/2R1ri4MO5ADYY4ZWUc
	fA3LZ+Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iybvf-0005K1-LL; Mon, 03 Feb 2020 13:38:19 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iybv2-00045X-8w
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 13:37:45 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580737061; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=aLFDGybZrzGdybXPAc2wN0CFTeQ3z1VmJVG5c8eNtJs=;
 b=HA9biHMCm4WDcABFyqrZkEePlKRIpJycX9A6IGJCqSWa3f9021aR7kr9xU6uuS+BwwAhbVtT
 CIcQBCD22c0Cr9yPIKXn1XjanOMLSdJYignUcx6e4she5dvjyzynGVI8ENG5tZL0giXObuaT
 MHggCC16/yH5sBv/7HQmn02AqRM=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e382220.7f291f9ead18-smtp-out-n03;
 Mon, 03 Feb 2020 13:37:36 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 51D6DC447AC; Mon,  3 Feb 2020 13:37:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mkshah-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: mkshah)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id ED9A4C447A3;
 Mon,  3 Feb 2020 13:37:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org ED9A4C447A3
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=mkshah@codeaurora.org
From: Maulik Shah <mkshah@codeaurora.org>
To: swboyd@chromium.org, agross@kernel.org, david.brown@linaro.org,
 sudeep.holla@arm.com, Lorenzo.Pieralisi@arm.com
Subject: [PATCH v3 5/7] drivers: firmware: psci: Add hierarchical domain idle
 states converter
Date: Mon,  3 Feb 2020 19:05:38 +0530
Message-Id: <1580736940-6985-6-git-send-email-mkshah@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580736940-6985-1-git-send-email-mkshah@codeaurora.org>
References: <1580736940-6985-1-git-send-email-mkshah@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_053742_141130_DDAA4FEF 
X-CRM114-Status: GOOD (  22.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Maulik Shah <mkshah@codeaurora.org>, lsrao@codeaurora.org,
 dianders@chromium.org, rnayak@codeaurora.org, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 evgreen@chromium.org, bjorn.andersson@linaro.org, ilina@codeaurora.org,
 ulf.hansson@linaro.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ulf Hansson <ulf.hansson@linaro.org>

If the hierarchical CPU topology is used, but the OS initiated mode isn't
supported, we need to rely solely on the regular cpuidle framework to
manage the idle state selection, rather than using genpd and its
governor.

For this reason, introduce a new PSCI DT helper function,
psci_dt_pm_domains_parse_states(), which parses and converts the
hierarchically described domain idle states from DT, into regular flattened
cpuidle states. The converted states are added to the existing cpuidle
driver's array of idle states, which make them available for cpuidle.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
[applied to new path, resolved conflicts]
Signed-off-by: Maulik Shah <mkshah@codeaurora.org>
---
 drivers/cpuidle/cpuidle-psci-domain.c | 137 +++++++++++++++++++++++++++++-----
 drivers/cpuidle/cpuidle-psci.c        |  41 +++++-----
 drivers/cpuidle/cpuidle-psci.h        |  11 +++
 3 files changed, 153 insertions(+), 36 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
index 423f03b..3c417f7 100644
--- a/drivers/cpuidle/cpuidle-psci-domain.c
+++ b/drivers/cpuidle/cpuidle-psci-domain.c
@@ -26,13 +26,17 @@ struct psci_pd_provider {
 };
 
 static LIST_HEAD(psci_pd_providers);
-static bool osi_mode_enabled __initdata;
+static bool osi_mode_enabled;
 
 static int psci_pd_power_off(struct generic_pm_domain *pd)
 {
 	struct genpd_power_state *state = &pd->states[pd->state_idx];
 	u32 *pd_state;
 
+	/* If we have failed to enable OSI mode, then abort power off. */
+	if ((psci_has_osi_support()) && !osi_mode_enabled)
+		return -EBUSY;
+
 	if (!state->data)
 		return 0;
 
@@ -101,6 +105,105 @@ static void psci_pd_free_states(struct genpd_power_state *states,
 	kfree(states);
 }
 
+static void psci_pd_convert_states(struct cpuidle_state *idle_state,
+			u32 *psci_state, struct genpd_power_state *state)
+{
+	u32 *state_data = state->data;
+	u64 target_residency_us = state->residency_ns;
+	u64 exit_latency_us = state->power_on_latency_ns +
+			state->power_off_latency_ns;
+
+	*psci_state = *state_data;
+	do_div(target_residency_us, 1000);
+	idle_state->target_residency = target_residency_us;
+	do_div(exit_latency_us, 1000);
+	idle_state->exit_latency = exit_latency_us;
+	idle_state->enter = &psci_enter_domain_idle_state;
+	idle_state->flags |= CPUIDLE_FLAG_TIMER_STOP;
+
+	strncpy(idle_state->name, to_of_node(state->fwnode)->name,
+		CPUIDLE_NAME_LEN - 1);
+	strncpy(idle_state->desc, to_of_node(state->fwnode)->name,
+		CPUIDLE_NAME_LEN - 1);
+}
+
+static bool psci_pd_is_provider(struct device_node *np)
+{
+	struct psci_pd_provider *pd_prov, *it;
+
+	list_for_each_entry_safe(pd_prov, it, &psci_pd_providers, link) {
+		if (pd_prov->node == np)
+			return true;
+	}
+
+	return false;
+}
+
+int __init psci_dt_pm_domains_parse_states(struct cpuidle_driver *drv,
+			struct device_node *cpu_node, u32 *psci_states)
+{
+	struct genpd_power_state *pd_states;
+	struct of_phandle_args args;
+	int ret, pd_state_count, i, state_idx, psci_idx;
+	u32 cpu_psci_state = psci_states[drv->state_count - 1];
+	struct device_node *np = of_node_get(cpu_node);
+
+	/* Walk the CPU topology to find compatible domain idle states. */
+	while (np) {
+		ret = of_parse_phandle_with_args(np, "power-domains",
+					"#power-domain-cells", 0, &args);
+		of_node_put(np);
+		if (ret)
+			return 0;
+
+		np = args.np;
+
+		/* Verify that the node represents a psci pd provider. */
+		if (!psci_pd_is_provider(np)) {
+			of_node_put(np);
+			return 0;
+		}
+
+		/* Parse for compatible domain idle states. */
+		ret = psci_pd_parse_states(np, &pd_states, &pd_state_count);
+		if (ret) {
+			of_node_put(np);
+			return ret;
+		}
+
+		i = 0;
+		while (i < pd_state_count) {
+
+			state_idx = drv->state_count;
+			if (state_idx >= CPUIDLE_STATE_MAX) {
+				pr_warn("exceeding max cpuidle states\n");
+				of_node_put(np);
+				return 0;
+			}
+
+			psci_idx = state_idx + i;
+			psci_pd_convert_states(&drv->states[state_idx + i],
+					&psci_states[psci_idx], &pd_states[i]);
+
+			/*
+			 * In the hierarchical CPU topology the master PM domain
+			 * idle state's DT property, "arm,psci-suspend-param",
+			 * don't contain the bits for the idle state of the CPU,
+			 * let's add those here.
+			 */
+			psci_states[psci_idx] |= cpu_psci_state;
+			pr_debug("psci-power-state %#x index %d\n",
+				psci_states[psci_idx], psci_idx);
+
+			drv->state_count++;
+			i++;
+		}
+		psci_pd_free_states(pd_states, pd_state_count);
+	}
+
+	return 0;
+}
+
 static int __init psci_pd_init(struct device_node *np)
 {
 	struct generic_pm_domain *pd;
@@ -125,11 +228,14 @@ static int __init psci_pd_init(struct device_node *np)
 	 * Parse the domain idle states and let genpd manage the state selection
 	 * for those being compatible with "domain-idle-state".
 	 */
-	ret = psci_pd_parse_states(np, &states, &state_count);
-	if (ret)
-		goto free_name;
 
-	pd->free_states = psci_pd_free_states;
+	if (psci_has_osi_support()) {
+		ret = psci_pd_parse_states(np, &states, &state_count);
+		if (ret)
+			goto free_name;
+		pd->free_states = psci_pd_free_states;
+	}
+
 	pd->name = kbasename(pd->name);
 	pd->power_off = psci_pd_power_off;
 	pd->states = states;
@@ -236,10 +342,6 @@ static int __init psci_idle_init_domains(void)
 	if (!np)
 		return -ENODEV;
 
-	/* Currently limit the hierarchical topology to be used in OSI mode. */
-	if (!psci_has_osi_support())
-		goto out;
-
 	/*
 	 * Parse child nodes for the "#power-domain-cells" property and
 	 * initialize a genpd/genpd-of-provider pair when it's found.
@@ -265,14 +367,16 @@ static int __init psci_idle_init_domains(void)
 		goto remove_pd;
 
 	/* Try to enable OSI mode. */
-	ret = psci_set_osi_mode();
-	if (ret) {
-		pr_warn("failed to enable OSI mode: %d\n", ret);
-		psci_pd_remove_topology(np);
-		goto remove_pd;
+	if (psci_has_osi_support()) {
+		ret = psci_set_osi_mode();
+		if (ret) {
+			pr_warn("failed to enable OSI mode: %d\n", ret);
+			psci_pd_remove_topology(np);
+			goto remove_pd;
+		} else
+			osi_mode_enabled = true;
 	}
 
-	osi_mode_enabled = true;
 	of_node_put(np);
 	pr_info("Initialized CPU PM domain topology\n");
 	return pd_count;
@@ -293,9 +397,6 @@ struct device __init *psci_dt_attach_cpu(int cpu)
 {
 	struct device *dev;
 
-	if (!osi_mode_enabled)
-		return NULL;
-
 	dev = dev_pm_domain_attach_by_name(get_cpu_device(cpu), "psci");
 	if (IS_ERR_OR_NULL(dev))
 		return dev;
diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index edd7a54..3fa2aee 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -49,7 +49,7 @@ static inline int psci_enter_state(int idx, u32 state)
 	return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter, idx, state);
 }
 
-static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
+int psci_enter_domain_idle_state(struct cpuidle_device *dev,
 					struct cpuidle_driver *drv, int idx)
 {
 	struct psci_cpuidle_data *data = this_cpu_ptr(&psci_cpuidle_data);
@@ -193,24 +193,29 @@ static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
 		goto free_mem;
 	}
 
-	/* Currently limit the hierarchical topology to be used in OSI mode. */
-	if (psci_has_osi_support()) {
-		data->dev = psci_dt_attach_cpu(cpu);
-		if (IS_ERR(data->dev)) {
-			ret = PTR_ERR(data->dev);
+	if (!psci_has_osi_support()) {
+		ret = psci_dt_pm_domains_parse_states(drv, cpu_node,
+					      psci_states);
+		if (ret)
 			goto free_mem;
-		}
-
-		/*
-		 * Using the deepest state for the CPU to trigger a potential
-		 * selection of a shared state for the domain, assumes the
-		 * domain states are all deeper states.
-		 */
-		if (data->dev) {
-			drv->states[state_count - 1].enter =
-				psci_enter_domain_idle_state;
-			psci_cpuidle_use_cpuhp = true;
-		}
+	}
+
+	data->dev = psci_dt_attach_cpu(cpu);
+	if (IS_ERR(data->dev)) {
+		ret = PTR_ERR(data->dev);
+		goto free_mem;
+	}
+
+	/*
+	 * Using the deepest state for the CPU to trigger a potential
+	 * selection of a shared state for the domain, assumes the
+	 * domain states are all deeper states.
+	 */
+
+	if (data->dev) {
+		drv->states[state_count - 1].enter =
+			psci_enter_domain_idle_state;
+		psci_cpuidle_use_cpuhp = true;
 	}
 
 	/* Idle states parsed correctly, store them in the per-cpu struct. */
diff --git a/drivers/cpuidle/cpuidle-psci.h b/drivers/cpuidle/cpuidle-psci.h
index 7299a04..18c93d7 100644
--- a/drivers/cpuidle/cpuidle-psci.h
+++ b/drivers/cpuidle/cpuidle-psci.h
@@ -3,15 +3,26 @@
 #ifndef __CPUIDLE_PSCI_H
 #define __CPUIDLE_PSCI_H
 
+#include <linux/cpuidle.h>
+
 struct device_node;
 
 void psci_set_domain_state(u32 state);
 int __init psci_dt_parse_state_node(struct device_node *np, u32 *state);
+int psci_enter_domain_idle_state(struct cpuidle_device *dev,
+			  struct cpuidle_driver *drv, int idx);
 
 #ifdef CONFIG_PM_GENERIC_DOMAINS_OF
 struct device __init *psci_dt_attach_cpu(int cpu);
+int psci_dt_pm_domains_parse_states(struct cpuidle_driver *drv,
+				    struct device_node *cpu_node,
+				    u32 *psci_states);
 #else
 static inline struct device __init *psci_dt_attach_cpu(int cpu) { return NULL; }
+static inline int psci_dt_pm_domains_parse_states(
+					struct cpuidle_driver *drv,
+					struct device_node *cpu_node,
+					u32 *psci_states) { return 0; }
 #endif
 
 #endif /* __CPUIDLE_PSCI_H */
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
