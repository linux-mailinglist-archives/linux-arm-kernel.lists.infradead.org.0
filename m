Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 261491717CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:47:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TfrT++6+0m1YPvCIq89euHwbeJ3HgsUN8/9g7+G0bNk=; b=hHYZkG4F7Uz6zd
	OQi9GR/BQkOy+q+dmzMSo1yTntE9/zPOi93PzoavdVQ+rH4SpIIeemqYMm100akv2uCEEJz6YL0h3
	2cKtcSmBw4jCAfQK5o3l2n3mf1XxPRGLIMBG9dXES9wq9g40Z3c+tiXjn1ntloGnlnN7vzA77ykgV
	7KAmo4cGDpzQLykbapm1Slye3DHKHpgQRhgWkTl/iEwBfTVtmO2JLVgUkv9SEPsO23DPU4Kznu5nJ
	lCub//KbTWjbljpQPykeV8CC2n77QD+emANRPuD8mRN3+8CQ2eaouqYO5AYkrvaOyAldtAqGsOVx/
	8RjrqcQ8FmZjNEhhvEjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7IZa-0001Fm-ER; Thu, 27 Feb 2020 12:47:26 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7IYf-0000Vl-9u
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 12:46:31 +0000
Received: by mail-lj1-x243.google.com with SMTP id e3so3215637lja.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 04:46:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QTt6UBxA6W5SX+1ICKiklMI9uA6M1ZbDrJNq6V8cSwg=;
 b=xFBxcPAEgZhFSYaozHLmDlFYl2fFzeMwv0JES7iXa4HWNnguu8lRelP1AwlGXLi4Qy
 PXZ2IGeC7mCYSD4xntHc/sAo8J5Xel+aewoQbyw+hhIROWcalIsqchcyI/nUDI7+Ezjn
 gRfLnTl1Dnu9W+EwekxM1i0OuJAZi1egMepLusHNJCyyyYFrfOM6GaB87hkHSQ2rX5k3
 wZs1KJyTfwGRQadAaYQh24FuXwXLM4Xy/JcfzQbiH+NNGi6AVVG2pqzCOzf75aKeuNSz
 H7aSSCv2FmrbgwHqn/ZfbZIxSpHqAmmzzMwLxN5arR4pyQyUL8ZB24l1u39rCDrlIDGz
 UqZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QTt6UBxA6W5SX+1ICKiklMI9uA6M1ZbDrJNq6V8cSwg=;
 b=DuTRsFxIMMVL5SaZ3M33Rb0GTH0ic4AT6vlvzX6afPWkUVTMgYxN3TXOwTVQ1J3lSP
 UwTevSPp3Pj3tb1LyknhaA7DKDyI6HaS983JhPEJyDNCi/Ti3W+YPXSsURrSjUSAw8Ky
 kjvdqusx3sFR/A2hQT+2jL67wVZpl0qULqqgvmX44UVCGHGIRFETNO3DeMRRTG1w5TAg
 9oKErylkFdcdjlGCNYYlc4iQh3O2k6xIHVhRZ56BNi5dnRZcwpRdzRwsVX8uIa7ZBkOA
 CpfbzQ/wChBDe1rLwVtj3jno2SN8A+TDtizjactLViQVKS8wFcq3Ot3cVXATZynIuzI5
 eFDw==
X-Gm-Message-State: ANhLgQ07wGHsB++uGU8lOfYtQYWIfPKCMxhx2rFqdMeRDv8tyjS/JzfV
 r8aRUXAchhIzm4bT3QzGPfGFNA==
X-Google-Smtp-Source: ADFU+vtahVhqQemAkBHrVNd22ZkStLpI5Lit/jghKpl6hbLD66xlZ/d/3Okl8cC8HxMB8genhlJvdg==
X-Received: by 2002:a2e:81c7:: with SMTP id s7mr2781657ljg.3.1582807586339;
 Thu, 27 Feb 2020 04:46:26 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id l16sm2669334lfh.74.2020.02.27.04.46.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 04:46:24 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org
Subject: [PATCH 4/4] cpuidle: psci: Allow WFI to be the only state for the
 hierarchical topology
Date: Thu, 27 Feb 2020 13:45:51 +0100
Message-Id: <20200227124551.31860-5-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227124551.31860-1-ulf.hansson@linaro.org>
References: <20200227124551.31860-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_044629_792566_BF535CA5 
X-CRM114-Status: GOOD (  21.90  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.0 FILL_THIS_FORM_SHORT   Fill in a short form with personal
 information
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

It's possible that only the WFI state is supported for the CPU, while also
a shared idle state exists for a group of CPUs.

When the hierarchical topology is used, the shared idle state may not be
compatible with arm,idle-state, rather with "domain-idle-state", which
makes dt_init_idle_driver() to return zero. This leads to that the
cpuidle-psci driver bails out during initialization, avoiding to register a
cpuidle driver and instead relies on the default architectural
back-end (called via cpu_do_idle()). In other words, the shared idle state
becomes unused.

Let's fix this behaviour, by allowing the dt_init_idle_driver() to return 0
and then continue with the initialization. If it turns out that the
hierarchical topology is used and we have some additional states to manage,
then continue with the cpuidle driver registration, otherwise bail out, as
we did before.

Reported-by: Benjamin Gaignard <benjamin.gaignard@st.com>
Fixes: a65a397f2451 ("cpuidle: psci: Add support for PM domains by using genpd")
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/cpuidle/cpuidle-psci.c | 47 ++++++++++++++++++++++------------
 1 file changed, 30 insertions(+), 17 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index 7b459f987c50..7699b2dab622 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -56,16 +56,19 @@ static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
 	u32 *states = data->psci_states;
 	struct device *pd_dev = data->dev;
 	u32 state;
-	int ret;
+	int ret = 0;
 
 	/* Do runtime PM to manage a hierarchical CPU toplogy. */
 	pm_runtime_put_sync_suspend(pd_dev);
 
 	state = psci_get_domain_state();
-	if (!state)
+	if (!state && states)
 		state = states[idx];
 
-	ret = psci_enter_state(idx, state);
+	if (state)
+		ret = psci_cpu_suspend_enter(state);
+	else
+		cpu_do_idle();
 
 	pm_runtime_get_sync(pd_dev);
 
@@ -181,6 +184,7 @@ static int __init psci_dt_cpu_init_topology(struct cpuidle_driver *drv,
 		drv->states[state_count - 1].enter =
 			psci_enter_domain_idle_state;
 		psci_cpuidle_use_cpuhp = true;
+		return 1;
 	}
 
 	return 0;
@@ -195,6 +199,13 @@ static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
 	struct device_node *state_node;
 	struct psci_cpuidle_data *data = per_cpu_ptr(&psci_cpuidle_data, cpu);
 
+	/*
+	 * Special case when WFI is the only state, as we may still need to
+	 * initialize data, if the hierarchical topology is used.
+	 */
+	if (!state_count)
+		return psci_dt_cpu_init_topology(drv, data, 1, cpu);
+
 	state_count++; /* Add WFI state too */
 	psci_states = kcalloc(state_count, sizeof(*psci_states), GFP_KERNEL);
 	if (!psci_states)
@@ -226,7 +237,7 @@ static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
 
 	/* Idle states parsed correctly, store them in the per-cpu struct. */
 	data->psci_states = psci_states;
-	return 0;
+	return state_count;
 
 free_mem:
 	kfree(psci_states);
@@ -285,33 +296,35 @@ static int __init psci_idle_init_cpu(int cpu)
 		return -ENOMEM;
 
 	drv->cpumask = (struct cpumask *)cpumask_of(cpu);
+	drv->state_count = 1;
 
 	/*
-	 * Initialize idle states data, starting at index 1, since
-	 * by default idle state 0 is the quiescent state reached
-	 * by the cpu by executing the wfi instruction.
-	 *
-	 * If no DT idle states are detected (ret == 0) let the driver
-	 * initialization fail accordingly since there is no reason to
-	 * initialize the idle driver if only wfi is supported, the
-	 * default archictectural back-end already executes wfi
-	 * on idle entry.
+	 * Initialize idle states data, starting at index 1, since by default
+	 * idle state 0 is the quiescent state reached by the cpu by executing
+	 * the wfi instruction. If no DT idle states are detected (ret == 0),
+	 * we may still use the hierarchical topology.
 	 */
 	ret = dt_init_idle_driver(drv, psci_idle_state_match, 1);
-	if (ret <= 0) {
-		ret = ret ? : -ENODEV;
+	if (ret < 0)
 		goto out_kfree_drv;
-	}
 
 	/*
 	 * Initialize PSCI idle states.
 	 */
 	ret = psci_cpu_init_idle(drv, cpu, ret);
-	if (ret) {
+	if (ret < 0) {
 		pr_err("CPU %d failed to PSCI idle\n", cpu);
 		goto out_kfree_drv;
 	}
 
+	/* If there are no idle states to manage, but the wfi state and we also
+	 * don't use the hierarchical topology, let the driver initialization
+	 * fail. Instead, let's rely on the default architectural back-end to
+	 * execute wfi on idle entry.
+	 */
+	if (!ret)
+		goto out_kfree_drv;
+
 	ret = cpuidle_register(drv, NULL);
 	if (ret)
 		goto out_kfree_drv;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
