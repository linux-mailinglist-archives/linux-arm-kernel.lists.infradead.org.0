Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE4C1F9BEA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 17:22:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2qtx1ZXCXB/cETB5Sn0kBV6+AJL0VbQ9Xylrwn/76jw=; b=ZzeXHJyTQ0OiDk
	oiA5/bGr70DdxHnQFaBxvPtGPOjmmSCuBsTIzoaBHjGSL3l9QgzsoMbv425bGSoTP5RhgS6wo02eu
	D7PxZ5uLCZuIQR8g1bmqqNVj08muH+o2aNmarrcXQh5DrDcQLBj1nvIn+BkVW7eoZ2LU5uQaeDkA+
	o3eKBKMO/H6eZswQJ7OI5u133LU1belpAoRj8uEZ4KUVNXjCGjENf6Fgsc8VPAeY/emAL2XMJWT9I
	KfngkjJkMmUCkxTJWrs+b3/BMucVFRWoTs314lmeGj8ryQgpecncrp1+pMS21TwFKbeUf1R6FX1Zp
	QbncEaFW5B78OFAT3v+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqwN-00065k-EP; Mon, 15 Jun 2020 15:22:27 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqv6-000596-Fz
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 15:21:10 +0000
Received: by mail-lf1-x141.google.com with SMTP id u25so3298635lfm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 08:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GC70gu/KuM6k/D+t12MJpeTyl5aXSJlixkvFE052RDs=;
 b=JnL0VFDLFIILGO0nUCBh6p0+PJ00P5rFYB20L3+wdzaaf8acyU6+crOeQkjOcz8p/E
 NfwTDioK18cs92dba9RgtWPAcJDK+LIXfIhyOw3QuLi12wdFTNil8MGzDJchWaNQlfaa
 zFWw+iLfdLh3nXCfCUB0VlxhohW1EzmVJmRdCauuidUUtv7YYIXDeybeVxxORKB5vXnd
 Udwb7Ru4v7rRwdqK139qq9Jpmu+7RZ+IAxL8B44Pw/JCegI3nsv5BN+j6UFNiQeW24iX
 QDAOMGAC4aAlcWUSDRxGHPNdDzww078zeUC/8FqlNt7EVD3yO8oehMaZZ0FxB8sN/uAw
 P9iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GC70gu/KuM6k/D+t12MJpeTyl5aXSJlixkvFE052RDs=;
 b=uBloL22GAFbCZV1Yee+iEV9TGR3R6wUlJoaYUJ4ApCiEVglkjRlTM6o2TduafB5/BB
 VXkXX3CieJJvV4eSquj/16fbN9+79stYZa9ki+rdNpzxzzgI+GjrhKZekJhBLJKB6DmB
 3x0boPXWnVxZJlMbFSxTRAYQ0gAk/liuSdB976d4G2FqRkdNsL5dxL/UphAGNQxhz84H
 KYTS4l4l+oKOl6YF2f9SVGqupxmH+JFVxwgKDm/AnGRe9+3TyRXOHVXzC7A+UlXOVnvp
 Cp5rPwIVHNKyEk2om+A/CLFOt5Jg4goDAIB0kb06w24mhY8Wou6Hyfh1B8kWognwIqxR
 zuvA==
X-Gm-Message-State: AOAM531xiGWiIQedL+xAOt69206AI915DFd7J4nVnKuNTYlzulhvIBdP
 TyDcVNgmIe6dvgalmeLPNvDx1A==
X-Google-Smtp-Source: ABdhPJzuWrj4m6EK3EepgYnbI6CxPwGIQzFsWlLIN5e2ApsKrVZA6GxkeECekZVHmqtxdz1F/MtQnw==
X-Received: by 2002:ac2:48a6:: with SMTP id u6mr8375406lfg.49.1592234466371;
 Mon, 15 Jun 2020 08:21:06 -0700 (PDT)
Received: from localhost.localdomain (h-98-128-181-7.NA.cust.bahnhof.se.
 [98.128.181.7])
 by smtp.gmail.com with ESMTPSA id r13sm507045lfp.80.2020.06.15.08.21.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 08:21:05 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Saravana Kannan <saravanak@google.com>, linux-pm@vger.kernel.org
Subject: [PATCH 4/5] cpuidle: psci: Convert PM domain to platform driver
Date: Mon, 15 Jun 2020 17:20:53 +0200
Message-Id: <20200615152054.6819-5-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200615152054.6819-1-ulf.hansson@linaro.org>
References: <20200615152054.6819-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_082108_674297_AAAD57F2 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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

To enable support for deferred probing and to allow implementation of the
->sync_state() callback from subsequent changes, let's convert into a
platform driver.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/cpuidle/cpuidle-psci-domain.c | 45 +++++++++++++++++----------
 1 file changed, 28 insertions(+), 17 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
index e48e578aaa7d..bf527d2bb4b6 100644
--- a/drivers/cpuidle/cpuidle-psci-domain.c
+++ b/drivers/cpuidle/cpuidle-psci-domain.c
@@ -12,6 +12,7 @@
 #include <linux/cpu.h>
 #include <linux/device.h>
 #include <linux/kernel.h>
+#include <linux/platform_device.h>
 #include <linux/pm_domain.h>
 #include <linux/pm_runtime.h>
 #include <linux/psci.h>
@@ -42,8 +43,8 @@ static int psci_pd_power_off(struct generic_pm_domain *pd)
 	return 0;
 }
 
-static int __init psci_pd_parse_state_nodes(struct genpd_power_state *states,
-					int state_count)
+static int psci_pd_parse_state_nodes(struct genpd_power_state *states,
+				     int state_count)
 {
 	int i, ret;
 	u32 psci_state, *psci_state_buf;
@@ -72,7 +73,7 @@ static int __init psci_pd_parse_state_nodes(struct genpd_power_state *states,
 	return ret;
 }
 
-static int __init psci_pd_parse_states(struct device_node *np,
+static int psci_pd_parse_states(struct device_node *np,
 			struct genpd_power_state **states, int *state_count)
 {
 	int ret;
@@ -100,7 +101,7 @@ static void psci_pd_free_states(struct genpd_power_state *states,
 	kfree(states);
 }
 
-static int __init psci_pd_init(struct device_node *np)
+static int psci_pd_init(struct device_node *np)
 {
 	struct generic_pm_domain *pd;
 	struct psci_pd_provider *pd_provider;
@@ -167,7 +168,7 @@ static int __init psci_pd_init(struct device_node *np)
 	return ret;
 }
 
-static void __init psci_pd_remove(void)
+static void psci_pd_remove(void)
 {
 	struct psci_pd_provider *pd_provider, *it;
 	struct generic_pm_domain *genpd;
@@ -185,7 +186,7 @@ static void __init psci_pd_remove(void)
 	}
 }
 
-static int __init psci_pd_init_topology(struct device_node *np, bool add)
+static int psci_pd_init_topology(struct device_node *np, bool add)
 {
 	struct device_node *node;
 	struct of_phandle_args child, parent;
@@ -211,24 +212,24 @@ static int __init psci_pd_init_topology(struct device_node *np, bool add)
 	return 0;
 }
 
-static int __init psci_pd_add_topology(struct device_node *np)
+static int psci_pd_add_topology(struct device_node *np)
 {
 	return psci_pd_init_topology(np, true);
 }
 
-static void __init psci_pd_remove_topology(struct device_node *np)
+static void psci_pd_remove_topology(struct device_node *np)
 {
 	psci_pd_init_topology(np, false);
 }
 
-static const struct of_device_id psci_of_match[] __initconst = {
+static const struct of_device_id psci_of_match[] = {
 	{ .compatible = "arm,psci-1.0" },
 	{}
 };
 
-static int __init psci_idle_init_domains(void)
+static int psci_cpuidle_domain_probe(struct platform_device *pdev)
 {
-	struct device_node *np = of_find_matching_node(NULL, psci_of_match);
+	struct device_node *np = pdev->dev.of_node;
 	struct device_node *node;
 	int ret = 0, pd_count = 0;
 
@@ -237,7 +238,7 @@ static int __init psci_idle_init_domains(void)
 
 	/* Currently limit the hierarchical topology to be used in OSI mode. */
 	if (!psci_has_osi_support())
-		goto out;
+		return 0;
 
 	/*
 	 * Parse child nodes for the "#power-domain-cells" property and
@@ -256,7 +257,7 @@ static int __init psci_idle_init_domains(void)
 
 	/* Bail out if not using the hierarchical CPU topology. */
 	if (!pd_count)
-		goto out;
+		return 0;
 
 	/* Link genpd masters/subdomains to model the CPU topology. */
 	ret = psci_pd_add_topology(np);
@@ -271,9 +272,8 @@ static int __init psci_idle_init_domains(void)
 		goto remove_pd;
 	}
 
-	of_node_put(np);
 	pr_info("Initialized CPU PM domain topology\n");
-	return pd_count;
+	return 0;
 
 put_node:
 	of_node_put(node);
@@ -281,10 +281,21 @@ static int __init psci_idle_init_domains(void)
 	if (pd_count)
 		psci_pd_remove();
 	pr_err("failed to create CPU PM domains ret=%d\n", ret);
-out:
-	of_node_put(np);
 	return ret;
 }
+
+static struct platform_driver psci_cpuidle_domain_driver = {
+	.probe  = psci_cpuidle_domain_probe,
+	.driver = {
+		.name = "psci-cpuidle-domain",
+		.of_match_table = psci_of_match,
+	},
+};
+
+static int __init psci_idle_init_domains(void)
+{
+	return platform_driver_register(&psci_cpuidle_domain_driver);
+}
 subsys_initcall(psci_idle_init_domains);
 
 struct device *psci_dt_attach_cpu(int cpu)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
