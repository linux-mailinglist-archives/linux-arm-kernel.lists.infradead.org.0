Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2BAE8D3C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 17:48:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OtPg9U2UvClXXU9gmLjWph812Vq/ehmsCrAY08EDV9Q=; b=aIDdS8xpdC2s2HSf9rr7D7Bv93
	9iE6zh9v1J2/1yY4XXnzvIKx/zljtVKeIpRlKZvywbu5VrRD5xSTeqVFCzIaAZBnJG0J+aK7vkBzk
	Kv0UVh+H5mWlFlnew5BWWHivu0bL4dC7UiM+ffxQ2yladNPphRZsc4Z33VOnBFehLQbaU/fFpXoxm
	K6d4gDPqIdQu+f35SOcZNVn13d03jkI7ifSuSXKNutQMfhC0VAcHlQ3HvO8/urmN+0eZ4SrbPTp/S
	pAs92iaubEAtZT6CFfIfIyWBB+DxQi4FeGrszt46/33FUxQ2r1xgDRC5ukeDR1Mhk0G0MNc7YSoII
	DErdXA9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUfh-0006uY-T2; Tue, 29 Oct 2019 16:48:41 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUcD-00038C-5H
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:45:08 +0000
Received: by mail-lf1-x144.google.com with SMTP id v8so11036472lfa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 09:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=hmVZbRVz8KfqipbRYtbANumh10v6tAjJaji0EHXGY84=;
 b=HznpTk/vG4FRQpLwZBdp/3nPLWkeiSbtHevt+RbiHJ5IOYxUfN+Z8nNbK9gMnvRPU0
 35CzPAGhKlGamDfkOqyRRbr7rlky0uRnmlMAuR95JNTijILHaNzSnYnexmKW6cptc1Kr
 wAKfRwiaW8gJMpTkTwT+NeHIvcYPlrHNVZsXfVFlWR0ec0sGBIsUOHsupiuAdkM0pIas
 ReXYt9b6iHLTls5zne2GGj1cIt6dg/NIczv/P3RsYHBEE6+uLxe5naBl1X+2poWkNlXg
 KMd8PgKhbhwhNErij43G77eGUC2/1s6qilihm2rB/6tUqAzhlJ5sWMcFzKR15FGYe9J3
 7TJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=hmVZbRVz8KfqipbRYtbANumh10v6tAjJaji0EHXGY84=;
 b=lDyTUEfN5xLCT1Zw27qJgnCV5gfdBdMPP/Zf1GYDhpEChkvjjRn18rR+OeeV6IDH94
 b/jk8z0XHk4XeHwLAhIXBUmu1KHIKwzFWWhxeBLIm7//8hC3FRw2S1knt2mloplaRHns
 D/rVsA3I2Xt7sWcKgkmC3WSa7V6gbL8FsNV6coYa4iDZfBovbDFcT4zsu6S5Ix18zyFU
 l/oIB1GcCFjH6/hkZ/KgGLpu8pv2iQmuizvpY4LvNXCcVA/HTcVYgSF1g62uqSA/rlSj
 f50z3YSDF3LpWWKtaFe9EbbkG9TwYhXdDzWDdw0mUU2mufV9XpcUfjHN1/C4OOxLE8xn
 PRAw==
X-Gm-Message-State: APjAAAWGCRcP7zEtKTfK6KlSfuC03PdHBGszE8vbdorEParCu/Swzs4M
 9V9EUVsmOp3NCYmg8wstwec9qg==
X-Google-Smtp-Source: APXvYqxiq7MpKPb7BGxD4n3eN3TOCJ6hMOte+ZPBVA5EBKKD9zAUMosVJ9hM4ASOZT6kfy8CICykhw==
X-Received: by 2002:a19:a8b:: with SMTP id 133mr3162903lfk.136.1572367503191; 
 Tue, 29 Oct 2019 09:45:03 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id f28sm2048161lfh.35.2019.10.29.09.45.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 09:45:02 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-pm@vger.kernel.org
Subject: [PATCH v2 12/13] cpuidle: psci: Add support for PM domains by using
 genpd
Date: Tue, 29 Oct 2019 17:44:37 +0100
Message-Id: <20191029164438.17012-13-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029164438.17012-1-ulf.hansson@linaro.org>
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_094505_342894_B8238004 
X-CRM114-Status: GOOD (  24.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Lina Iyer <lina.iyer@linaro.org>,
 linux-arm-kernel@lists.infradead.org
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

Changes in v2:
	- Rebased.

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
index 937a8e450251..3e747a3b6264 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -33,7 +33,7 @@ struct psci_cpuidle_data {
 static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
 static DEFINE_PER_CPU(u32, domain_state);
 
-static inline void psci_set_domain_state(u32 state)
+void psci_set_domain_state(u32 state)
 {
 	__this_cpu_write(domain_state, state);
 }
@@ -118,7 +118,7 @@ static const struct of_device_id psci_idle_state_match[] __initconst = {
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
