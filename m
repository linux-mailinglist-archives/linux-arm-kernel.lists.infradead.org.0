Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215D810ADC7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 11:33:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HNM2+zbuaDiS6ly16Nu6Ai06aZFaDGWa9osIK/5C/sA=; b=OXIKyyydjBqE5oNHx1EenOsRIq
	RfFW/6klGjzxaZvBVsRyR63KatMmXRA35jVC2xenjvC3KsK5hFGN+FVFqykSaMKeGh+UqL1P/ulM8
	zH67ZpzZpSo9WcB+Q6R9dSdi/+vrxL7nGEECapaJTGtlI0HOWTJlIC7in5k94uuFZ1A3jspK7aUtR
	JPzG4mHxRgVhWYRBZhO6a4B2A+vXeXV7i/5oPK/SNHpA92jtgxAxllco+0FsGuUhtQ25Mwu/FddJu
	yYsnrLZ3Q7YbbkXPwjVqsZ/4oJTiu4uFcY8OEfNi453GKeclDL1OO5OjS2sUpMPO0s5KOROChAYle
	F7yUBHGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZudG-0001Lz-3K; Wed, 27 Nov 2019 10:33:14 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZuZm-0005mz-3e
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 10:29:40 +0000
Received: by mail-lj1-x243.google.com with SMTP id m6so16481063ljc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 02:29:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ojwf4ly83xUW6dp5+GMXCBlvMV1YbXRntOyZUrl5OUs=;
 b=QgfDNcaWwKS5maCkGGbNpmSdSl/WAalIAc/5R/ZXnVBMsZZgArohJaxvBkhuNgmFdu
 x4fnF8qGa42tHrcucj7lYauL0So26pAO7RnIEAS5zm1scv1phGjPJxhWtnqJJUoEa/na
 EcdYO5kuPFju1CBlKVUcMbmG8ZE/MRGT9Yyl1sR2dfZppVVMKB97/2nVtptw2CTaKFjx
 dWxXLkziNsEwDI5R04CJIriYCSkzzNOpt68rzcQVnXaT1raB41QjBryDPzyy/gb5Hcuh
 VPE+LUs6LRkF5AtPpE9TV4qKFiMZZEiE3rHIRTAXw4f0H5asiFq8SetwbUP6Qs4ofVOx
 DYjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ojwf4ly83xUW6dp5+GMXCBlvMV1YbXRntOyZUrl5OUs=;
 b=S9PLKCgLqw/xDEuTaBGZfONA6abbqcaFK0DFalPEHdULFBq4eUv/Pj2ttrBQtCj+PQ
 +CboL9sM/Ra95w4WHnrk9mwWbQfj4CM7bM9AwcPULPc6j2E1EyvWGReqqFw8lBXDrw1M
 fKVdKXR4qOwEHIRwIjJfNLmKGZmf5xpTnBp1SLCrRYVD3YHnk2OQvkpFoumET8uY4Rm4
 ASLRAK05D9smjMSCKZe6i2se72H2HH1c64obktSP4KUuY+/2mDF9EOUj2chbjbV1gekX
 8qsdmqIupFWNgp9JgHpL4BiVo5A/2XUvRZClAcJTQgOwbgPwC2B5a7RK5BL0Vpm8WTYE
 JW3A==
X-Gm-Message-State: APjAAAUTKgsGysvRXY5e3dLSSQE/8F7o24RqSp7P3NtTuVSc+wYhDCU3
 5pQrtl+hJN49/bwLl4moOohnqA==
X-Google-Smtp-Source: APXvYqxSrADzY+DNQH6KW7/kvRcSzE/0+zwazwzkYrgGsO2J2TR75kSdIzocGBWy1mQNQ1Gtuf/ChQ==
X-Received: by 2002:a2e:8695:: with SMTP id l21mr29828905lji.53.1574850576223; 
 Wed, 27 Nov 2019 02:29:36 -0800 (PST)
Received: from uffe-XPS-13-9360.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id t9sm6868260ljj.19.2019.11.27.02.29.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 02:29:35 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v3 12/13] cpuidle: psci: Add support for PM domains by using
 genpd
Date: Wed, 27 Nov 2019 11:29:13 +0100
Message-Id: <20191127102914.18729-13-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191127102914.18729-1-ulf.hansson@linaro.org>
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_022938_428239_5AA740D7 
X-CRM114-Status: GOOD (  24.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the hierarchical CPU topology layout is used in DT and the PSCI OSI
mode is supported by the PSCI FW, let's initialize a corresponding PM
domain topology by using genpd. This enables a CPU and a group of CPUs,
when attached to the topology, to be power-managed accordingly.

To trigger the attempt to initialize the genpd data structures let's use a
subsys_initcall, which should be early enough to allow CPUs, but also other
devices to be attached.

The initialization consists of parsing the PSCI OF node for the topology
and the "domain idle states" DT bindings. In case the idle states are
compatible with "domain-idle-state", the initialized genpd becomes
responsible of selecting an idle state for the PM domain, via assigning it
a genpd governor.

Note that, a successful initialization of the genpd data structures, is
followed by a call to psci_set_osi_mode(), as to try to enable the OSI mode
in the PSCI FW. In case this fails, we fall back into a degraded mode
rather than bailing out and returning an error code.

Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v3:
	- None.

---
 drivers/cpuidle/cpuidle-psci-domain.c | 266 ++++++++++++++++++++++++++
 drivers/cpuidle/cpuidle-psci.c        |   4 +-
 drivers/cpuidle/cpuidle-psci.h        |   5 +
 3 files changed, 273 insertions(+), 2 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
index bc7df4dc0686..7429fd7626a1 100644
--- a/drivers/cpuidle/cpuidle-psci-domain.c
+++ b/drivers/cpuidle/cpuidle-psci-domain.c
@@ -7,15 +7,281 @@
  *
  */
 
+#define pr_fmt(fmt) "CPUidle PSCI: " fmt
+
 #include <linux/cpu.h>
 #include <linux/device.h>
 #include <linux/kernel.h>
 #include <linux/pm_domain.h>
 #include <linux/pm_runtime.h>
 #include <linux/psci.h>
+#include <linux/slab.h>
+#include <linux/string.h>
 
 #include "cpuidle-psci.h"
 
+struct psci_pd_provider {
+	struct list_head link;
+	struct device_node *node;
+};
+
+static LIST_HEAD(psci_pd_providers);
+static bool osi_mode_enabled;
+
+static int psci_pd_power_off(struct generic_pm_domain *pd)
+{
+	struct genpd_power_state *state = &pd->states[pd->state_idx];
+	u32 *pd_state;
+
+	/* If we have failed to enable OSI mode, then abort power off. */
+	if (!osi_mode_enabled)
+		return -EBUSY;
+
+	if (!state->data)
+		return 0;
+
+	/* OSI mode is enabled, set the corresponding domain state. */
+	pd_state = state->data;
+	psci_set_domain_state(*pd_state);
+
+	return 0;
+}
+
+static int __init psci_pd_parse_state_nodes(struct genpd_power_state *states,
+					int state_count)
+{
+	int i, ret;
+	u32 psci_state, *psci_state_buf;
+
+	for (i = 0; i < state_count; i++) {
+		ret = psci_dt_parse_state_node(to_of_node(states[i].fwnode),
+					&psci_state);
+		if (ret)
+			goto free_state;
+
+		psci_state_buf = kmalloc(sizeof(u32), GFP_KERNEL);
+		if (!psci_state_buf) {
+			ret = -ENOMEM;
+			goto free_state;
+		}
+		*psci_state_buf = psci_state;
+		states[i].data = psci_state_buf;
+	}
+
+	return 0;
+
+free_state:
+	i--;
+	for (; i >= 0; i--)
+		kfree(states[i].data);
+	return ret;
+}
+
+static int __init psci_pd_parse_states(struct device_node *np,
+			struct genpd_power_state **states, int *state_count)
+{
+	int ret;
+
+	/* Parse the domain idle states. */
+	ret = of_genpd_parse_idle_states(np, states, state_count);
+	if (ret)
+		return ret;
+
+	/* Fill out the PSCI specifics for each found state. */
+	ret = psci_pd_parse_state_nodes(*states, *state_count);
+	if (ret)
+		kfree(*states);
+
+	return ret;
+}
+
+static void psci_pd_free_states(struct genpd_power_state *states,
+				unsigned int state_count)
+{
+	int i;
+
+	for (i = 0; i < state_count; i++)
+		kfree(states[i].data);
+	kfree(states);
+}
+
+static int __init psci_pd_init(struct device_node *np)
+{
+	struct generic_pm_domain *pd;
+	struct psci_pd_provider *pd_provider;
+	struct dev_power_governor *pd_gov;
+	struct genpd_power_state *states = NULL;
+	int ret = -ENOMEM, state_count = 0;
+
+	pd = kzalloc(sizeof(*pd), GFP_KERNEL);
+	if (!pd)
+		goto out;
+
+	pd_provider = kzalloc(sizeof(*pd_provider), GFP_KERNEL);
+	if (!pd_provider)
+		goto free_pd;
+
+	pd->name = kasprintf(GFP_KERNEL, "%pOF", np);
+	if (!pd->name)
+		goto free_pd_prov;
+
+	/*
+	 * Parse the domain idle states and let genpd manage the state selection
+	 * for those being compatible with "domain-idle-state".
+	 */
+	ret = psci_pd_parse_states(np, &states, &state_count);
+	if (ret)
+		goto free_name;
+
+	pd->free_states = psci_pd_free_states;
+	pd->name = kbasename(pd->name);
+	pd->power_off = psci_pd_power_off;
+	pd->states = states;
+	pd->state_count = state_count;
+	pd->flags |= GENPD_FLAG_IRQ_SAFE | GENPD_FLAG_CPU_DOMAIN;
+
+	/* Use governor for CPU PM domains if it has some states to manage. */
+	pd_gov = state_count > 0 ? &pm_domain_cpu_gov : NULL;
+
+	ret = pm_genpd_init(pd, pd_gov, false);
+	if (ret) {
+		psci_pd_free_states(states, state_count);
+		goto free_name;
+	}
+
+	ret = of_genpd_add_provider_simple(np, pd);
+	if (ret)
+		goto remove_pd;
+
+	pd_provider->node = of_node_get(np);
+	list_add(&pd_provider->link, &psci_pd_providers);
+
+	pr_debug("init PM domain %s\n", pd->name);
+	return 0;
+
+remove_pd:
+	pm_genpd_remove(pd);
+free_name:
+	kfree(pd->name);
+free_pd_prov:
+	kfree(pd_provider);
+free_pd:
+	kfree(pd);
+out:
+	pr_err("failed to init PM domain ret=%d %pOF\n", ret, np);
+	return ret;
+}
+
+static void __init psci_pd_remove(void)
+{
+	struct psci_pd_provider *pd_provider, *it;
+	struct generic_pm_domain *genpd;
+
+	list_for_each_entry_safe(pd_provider, it, &psci_pd_providers, link) {
+		of_genpd_del_provider(pd_provider->node);
+
+		genpd = of_genpd_remove_last(pd_provider->node);
+		if (!IS_ERR(genpd))
+			kfree(genpd);
+
+		of_node_put(pd_provider->node);
+		list_del(&pd_provider->link);
+		kfree(pd_provider);
+	}
+}
+
+static int __init psci_pd_init_topology(struct device_node *np)
+{
+	struct device_node *node;
+	struct of_phandle_args child, parent;
+	int ret;
+
+	for_each_child_of_node(np, node) {
+		if (of_parse_phandle_with_args(node, "power-domains",
+					"#power-domain-cells", 0, &parent))
+			continue;
+
+		child.np = node;
+		child.args_count = 0;
+
+		ret = of_genpd_add_subdomain(&parent, &child);
+		of_node_put(parent.np);
+		if (ret) {
+			of_node_put(node);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+static const struct of_device_id psci_of_match[] __initconst = {
+	{ .compatible = "arm,psci" },
+	{ .compatible = "arm,psci-0.2" },
+	{ .compatible = "arm,psci-1.0" },
+	{}
+};
+
+static int __init psci_idle_init_domains(void)
+{
+	struct device_node *np = of_find_matching_node(NULL, psci_of_match);
+	struct device_node *node;
+	int ret = 0, pd_count = 0;
+
+	if (!np)
+		return -ENODEV;
+
+	/* Currently limit the hierarchical topology to be used in OSI mode. */
+	if (!psci_has_osi_support())
+		goto out;
+
+	/*
+	 * Parse child nodes for the "#power-domain-cells" property and
+	 * initialize a genpd/genpd-of-provider pair when it's found.
+	 */
+	for_each_child_of_node(np, node) {
+		if (!of_find_property(node, "#power-domain-cells", NULL))
+			continue;
+
+		ret = psci_pd_init(node);
+		if (ret)
+			goto put_node;
+
+		pd_count++;
+	}
+
+	/* Bail out if not using the hierarchical CPU topology. */
+	if (!pd_count)
+		goto out;
+
+	/* Link genpd masters/subdomains to model the CPU topology. */
+	ret = psci_pd_init_topology(np);
+	if (ret)
+		goto remove_pd;
+
+	/* Try to enable OSI mode. */
+	ret = psci_set_osi_mode();
+	if (ret)
+		pr_warn("failed to enable OSI mode: %d\n", ret);
+	else
+		osi_mode_enabled = true;
+
+	of_node_put(np);
+	pr_info("Initialized CPU PM domain topology\n");
+	return pd_count;
+
+put_node:
+	of_node_put(node);
+remove_pd:
+	if (pd_count)
+		psci_pd_remove();
+	pr_err("failed to create CPU PM domains ret=%d\n", ret);
+out:
+	of_node_put(np);
+	return ret;
+}
+subsys_initcall(psci_idle_init_domains);
+
 struct device *psci_dt_attach_cpu(int cpu)
 {
 	struct device *dev;
diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 0707222a40bd..835c7c3aa118 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -32,7 +32,7 @@ struct psci_cpuidle_data {
 static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
 static DEFINE_PER_CPU(u32, domain_state);
 
-static inline void psci_set_domain_state(u32 state)
+void psci_set_domain_state(u32 state)
 {
 	__this_cpu_write(domain_state, state);
 }
@@ -103,7 +103,7 @@ static const struct of_device_id psci_idle_state_match[] __initconst = {
 	{ },
 };
 
-static int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
+int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
 {
 	int err = of_property_read_u32(np, "arm,psci-suspend-param", state);
 
diff --git a/drivers/cpuidle/cpuidle-psci.h b/drivers/cpuidle/cpuidle-psci.h
index 0cadbb71dc55..d2e55cad9ac6 100644
--- a/drivers/cpuidle/cpuidle-psci.h
+++ b/drivers/cpuidle/cpuidle-psci.h
@@ -3,6 +3,11 @@
 #ifndef __CPUIDLE_PSCI_H
 #define __CPUIDLE_PSCI_H
 
+struct device_node;
+
+void psci_set_domain_state(u32 state);
+int __init psci_dt_parse_state_node(struct device_node *np, u32 *state);
+
 #ifdef CONFIG_PM_GENERIC_DOMAINS_OF
 struct device *psci_dt_attach_cpu(int cpu);
 #else
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
