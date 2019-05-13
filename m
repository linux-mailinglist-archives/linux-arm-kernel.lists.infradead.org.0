Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EA31BDBF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 21:25:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZDwO1o/h3w6vY7pyBX0CaMAS6imo2gdxztugwhVRIdM=; b=jW9ntHbjYs4hyqkiSZwTYlKQ0I
	lUITZHusdUZJrZvXA1Fni2ppdAHqapGTfwvZUg4EiipNgQf+9McAFjXn2CVpxN+/IqVkLCFoJ3PRf
	Az0LlKo2Htad+vcDeT7h3DzIOzK/Ecib6LypDZDASxuMEN58C9eJadC4mJgdTHri05Zuq5suYDjBf
	clyjnFKYiegYsh59uOR1PO018pQDw/FR3Sl37D9IUbUh3FfClPruCqrVaz8Z/KYWz80zmgvCp19l8
	iy+jDOVd1kQb2i1VTObMjmZkFBZaD/kljdAD45BX12icSsMprguLrxOs7hKOFqqqaqn4Pi/uQC3mi
	7YtlphqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQGZI-00032P-S7; Mon, 13 May 2019 19:25:00 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQGXk-00018f-70
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 19:23:40 +0000
Received: by mail-lj1-x241.google.com with SMTP id a10so4096481ljf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 12:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0Bq5498AOcSF9nWVNbhGQT9xwPiaFsmcqnV/fxv1rlk=;
 b=W4GhQnl8ZsdBUVqc7l5KLussGmwg71kqOstSI+0Ph1Lr8vtPu9C8+icwujP0k7qwj9
 5TvlopE+qiKZV7fIhJrr2LcsOWK4knRqcbjI3G606AbC5uurrDPc2GBqBm2Z8X7wFqcb
 xuy2+GAFpVZPm3a4PgV1+kuQcOFBsu5X8EQf3CLRm/NY65JX12Jphpgy0BQ+ErCA8MCX
 XsgxxvmN9Z8ltKyBNnDzlSHpbzkBWLl35VLjd/y7Rf4k97Vd2ckc3dCg4vydyK0sZ/nj
 C2KJHlpK/BuH7Z72z3Gs9vGq81hQW/3d8xcMAg7uKl8L8MYlYOGjQS9YqTX6hTirdBD6
 +zBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0Bq5498AOcSF9nWVNbhGQT9xwPiaFsmcqnV/fxv1rlk=;
 b=KUfhQZfazFafLkRyB86KjcyPJTOR5YTPGiyhivupau+lXSI9/yaxfc2kNwo6J++lir
 cPNnrZiad1+1GCz2sVNFu6E+0mKjKrJirVB6F97sGAPHgsnj/6fhYmQnXx2v/b6QWPJY
 sBrsmSKzFkmOpz46ILAc3atY6PVqj4zn84q5comn76DlSuUI6sPCPF4ASZ/EjHZK3TCf
 mlbx0hEQiYCaB5yLNvAmxH5pcKiusUv4KxbfO6KvZr7H6r+TOVXnpHI4DI/qwGUHv3nj
 J2Xgw3QPEt0OiAC6cYYw59404puXUJiKMvsgG40DX7A2Y21q+YHWxBvqIdGKQCP5Frqh
 RjhQ==
X-Gm-Message-State: APjAAAUreWECcm7hvB93z1xzOoEaxS2kzXj5ERuEzYDp8IPHeGCc0EmW
 KFgwsjLlDW//Dm8kdd+csF6mmw==
X-Google-Smtp-Source: APXvYqw7+OiJXxfFee31pCrymAeYS08U5pee+00MkBLRYZuV1nu61St5Md6HOWASXzRRprmmKqAw5g==
X-Received: by 2002:a2e:92ce:: with SMTP id k14mr14559128ljh.83.1557775402543; 
 Mon, 13 May 2019 12:23:22 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id q21sm3449365lfa.84.2019.05.13.12.23.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 12:23:21 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 09/18] drivers: firmware: psci: Add support for PM domains
 using genpd
Date: Mon, 13 May 2019 21:22:51 +0200
Message-Id: <20190513192300.653-10-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513192300.653-1-ulf.hansson@linaro.org>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_122324_913331_8A491B3B 
X-CRM114-Status: GOOD (  28.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Lina Iyer <lina.iyer@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the hierarchical CPU topology layout is used in DT, we need to setup
the corresponding PM domain data structures, as to allow a CPU and a group
of CPUs to be power managed accordingly. Let's enable this by deploying
support through the genpd interface.

Additionally, when the OS initiated mode is supported by the PSCI FW, let's
also parse the domain idle states DT bindings as to make genpd responsible
for the state selection, when the states are compatible with
"domain-idle-state". Otherwise, when only Platform Coordinated mode is
supported, we rely solely on the state selection to be managed through the
regular cpuidle framework.

If the initialization of the PM domain data structures succeeds and the OS
initiated mode is supported, we try to switch to it. In case it fails,
let's fall back into a degraded mode, rather than bailing out and returning
an error code.

Due to that the OS initiated mode may become enabled, we need to adjust to
maintain backwards compatibility for a kernel started through a kexec call.
Do this by explicitly switch to Platform Coordinated mode during boot.

Finally, the actual initialization of the PM domain data structures, is
done via calling the new shared function, psci_dt_init_pm_domains().
However, this is implemented by subsequent changes.

Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes:
	- Simplify code setting domain_state at power off.
	- Use the genpd ->free_state() callback to manage freeing of states.
	- Fixup a bogus while loop.

---
 drivers/firmware/psci/Makefile         |   2 +-
 drivers/firmware/psci/psci.c           |   7 +-
 drivers/firmware/psci/psci.h           |   5 +
 drivers/firmware/psci/psci_pm_domain.c | 268 +++++++++++++++++++++++++
 4 files changed, 280 insertions(+), 2 deletions(-)
 create mode 100644 drivers/firmware/psci/psci_pm_domain.c

diff --git a/drivers/firmware/psci/Makefile b/drivers/firmware/psci/Makefile
index 1956b882470f..ff300f1fec86 100644
--- a/drivers/firmware/psci/Makefile
+++ b/drivers/firmware/psci/Makefile
@@ -1,4 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 #
-obj-$(CONFIG_ARM_PSCI_FW)	+= psci.o
+obj-$(CONFIG_ARM_PSCI_FW)	+= psci.o psci_pm_domain.o
 obj-$(CONFIG_ARM_PSCI_CHECKER)	+= psci_checker.o
diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 0e91d864e346..bfef300b7ebe 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -721,9 +721,14 @@ static int __init psci_1_0_init(struct device_node *np)
 	if (err)
 		return err;
 
-	if (psci_has_osi_support())
+	if (psci_has_osi_support()) {
 		pr_info("OSI mode supported.\n");
 
+		/* Make sure we default to PC mode. */
+		invoke_psci_fn(PSCI_1_0_FN_SET_SUSPEND_MODE,
+			       PSCI_1_0_SUSPEND_MODE_PC, 0, 0);
+	}
+
 	return 0;
 }
 
diff --git a/drivers/firmware/psci/psci.h b/drivers/firmware/psci/psci.h
index f2277c3ad405..00d2e3dcef49 100644
--- a/drivers/firmware/psci/psci.h
+++ b/drivers/firmware/psci/psci.h
@@ -11,6 +11,11 @@ bool psci_has_osi_support(void);
 #ifdef CONFIG_CPU_IDLE
 void psci_set_domain_state(u32 state);
 int psci_dt_parse_state_node(struct device_node *np, u32 *state);
+#ifdef CONFIG_PM_GENERIC_DOMAINS_OF
+int psci_dt_init_pm_domains(struct device_node *np);
+#else
+static inline int psci_dt_init_pm_domains(struct device_node *np) { return 0; }
+#endif
 #endif
 
 #endif /* __PSCI_H */
diff --git a/drivers/firmware/psci/psci_pm_domain.c b/drivers/firmware/psci/psci_pm_domain.c
new file mode 100644
index 000000000000..3c6ca846caf4
--- /dev/null
+++ b/drivers/firmware/psci/psci_pm_domain.c
@@ -0,0 +1,268 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * PM domains for CPUs via genpd - managed by PSCI.
+ *
+ * Copyright (C) 2019 Linaro Ltd.
+ * Author: Ulf Hansson <ulf.hansson@linaro.org>
+ *
+ */
+
+#define pr_fmt(fmt) "psci: " fmt
+
+#include <linux/device.h>
+#include <linux/kernel.h>
+#include <linux/pm_domain.h>
+#include <linux/slab.h>
+#include <linux/string.h>
+
+#include "psci.h"
+
+#if defined(CONFIG_CPU_IDLE) && defined(CONFIG_PM_GENERIC_DOMAINS_OF)
+
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
+	if (psci_has_osi_support() && !osi_mode_enabled)
+		return -EBUSY;
+
+	if (!state->data)
+		return 0;
+
+	/* When OSI mode is enabled, set the corresponding domain state. */
+	pd_state = state->data;
+	psci_set_domain_state(*pd_state);
+
+	return 0;
+}
+
+static int psci_pd_parse_state_nodes(struct genpd_power_state *states,
+				int state_count)
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
+static int psci_pd_parse_states(struct device_node *np,
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
+static int psci_pd_init(struct device_node *np)
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
+	 * For OSI mode, parse the domain idle states and let genpd manage the
+	 * state selection for those being compatible with "domain-idle-state".
+	 */
+	if (psci_has_osi_support()) {
+		ret = psci_pd_parse_states(np, &states, &state_count);
+		if (ret)
+			goto free_name;
+		pd->free_states = psci_pd_free_states;
+	}
+
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
+static void psci_pd_remove(void)
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
+static int psci_pd_init_topology(struct device_node *np)
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
+int psci_dt_init_pm_domains(struct device_node *np)
+{
+	struct device_node *node;
+	int ret, pd_count = 0;
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
+		return 0;
+
+	/* Link genpd masters/subdomains to model the CPU topology. */
+	ret = psci_pd_init_topology(np);
+	if (ret)
+		goto remove_pd;
+
+	/* Try to enable OSI mode if supported. */
+	if (psci_has_osi_support()) {
+		ret = psci_set_osi_mode();
+		if (ret)
+			pr_warn("failed to enable OSI mode: %d\n", ret);
+		else
+			osi_mode_enabled = true;
+	}
+
+	pr_info("Initialized CPU PM domain topology\n");
+	return pd_count;
+
+put_node:
+	of_node_put(node);
+remove_pd:
+	if (pd_count)
+		psci_pd_remove();
+	pr_err("failed to create CPU PM domains ret=%d\n", ret);
+	return ret;
+}
+#endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
