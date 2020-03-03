Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA58E178424
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 21:37:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a40wlbqrn4SOYigbK/5eCGBobHIfPL/F6CXpv32Yf3U=; b=NRBSdCt8YkQMh4
	wCEV2lLsEWIuPOfiYcGuSYUjRKpSDXhLPJP4oDa7GAb9uSqP3dwMkeI6Pv1TmAkVuoGAuK+1l3ACP
	vMWJ1vJKmnK0cC9YG5sW3MT6+AqdwvsA5/JXA12a2VBpg6w+6dtgyPYvOyAB3TLOQIR4aNsF1f7AA
	K100FyNNDev196NoKpqyDsIK4sKv1TVfwW6bPhTzmsjXvwVmyJ4mHauS81Tvz85Pe4430sMIHM0Gk
	a7nUovsneaCijItuW01NJspXpIPlyEx/OuorHApwUxtHBCqf5Qb27GKVmv6unG+FEEhKWZuDV/Lg8
	7icbRhiwuZwdX6/6z+dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9EIJ-0005i5-U8; Tue, 03 Mar 2020 20:37:35 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9EHB-0004mi-18
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 20:36:26 +0000
Received: by mail-lj1-x244.google.com with SMTP id q19so4127000ljp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 12:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7PinDvT3vaZ+q6CFmJPa7CF8xALNvmK8t7KJc3O4ca4=;
 b=Fq/sp9HG47oR3mlEYYx860yS6y7Je9qVstoba2QSh8hz5l2dwmaB6g1W8Zk+yDHKzo
 1qmVSw2rUW2hmBPDL+w2zNpuAAZ8uwSywAn3K6o3SPEznX1iHxralqz2M+rB5FnYlN7/
 +OIDlP1SWny1pE5E8KQrWDkImEI/q7miYGDO0zz2JYVBbjJkoruHX5FRHM8RdYu5jFY7
 nsX1gCXhQewE0swh1cr5Sk+B4srQFVwSeBgahNvVvvVxuda36+DCxOVHHc0cCgdwVr8c
 0C3XZJEUdNwCWDAbp1hj6NVeL4kjQ62RTtg0zmYRmxAOucjwocHHMxEkQOT0Th0CTJgy
 XkHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7PinDvT3vaZ+q6CFmJPa7CF8xALNvmK8t7KJc3O4ca4=;
 b=g12PnQH1r81URmFSHpgc9xd/8nWYT8ntKFS8KXZ9vMuy6GUObj5/CljCczts5wP2dR
 s+F6XLMT8OY6VbSWYs+8KbOw0SYQk09BAJvNCEB+B1kgc+Lwe8AkJl8F2SjLIEeunHRj
 Svbd4Bmj1NkW0WrZsHdLZohRWnBGzf6S4odYJkgfs0vIwFOsLwJMIl9Chb1t1eCQbuup
 b0us8Nvz1gDa79v3mV62zJr7rGDRuePa1FAlDg1Mf37cpAu7izUihSo8iQNpl2JwXDtz
 ngv62FEWK10GLZSXndqE89fgQO5XekShGvsOqeGRGg2PeNVYlvZLFY4op7I084hiwVA2
 ClRA==
X-Gm-Message-State: ANhLgQ0CyzBR6syx0Q6Us/CK6Cbml2jk0LhASdT1OmqI8/TNKkD9D+rO
 eJC5PxjCBUGjlQuXwzVJYQ1taA==
X-Google-Smtp-Source: ADFU+vt6uuUl+iUGLAMABwb54VVP9bXXM8EH32uRgtLikEC1RAhEd/mfOswBvrjjq1aT9X1OAg20ig==
X-Received: by 2002:a2e:9e4c:: with SMTP id g12mr3324423ljk.15.1583267783555; 
 Tue, 03 Mar 2020 12:36:23 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id t195sm1339532lff.0.2020.03.03.12.36.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 12:36:23 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org
Subject: [PATCH v2 4/4] cpuidle: psci: Allow WFI to be the only state for the
 hierarchical topology
Date: Tue,  3 Mar 2020 21:35:59 +0100
Message-Id: <20200303203559.23995-5-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303203559.23995-1-ulf.hansson@linaro.org>
References: <20200303203559.23995-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_123625_108537_90C8FAF0 
X-CRM114-Status: GOOD (  22.59  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.4 FILL_THIS_FORM_SHORT   Fill in a short form with personal
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
cpuidle driver and instead relies on the default architectural back-end
(called via cpu_do_idle()). In other words, the shared idle state becomes
unused.

Let's fix this behaviour, by allowing the dt_init_idle_driver() to return 0
and then continue with the initialization. If it turns out that the
hierarchical topology is used and we have some additional states to manage,
then continue with the cpuidle driver registration, otherwise bail out as
before.

Reported-by: Benjamin Gaignard <benjamin.gaignard@st.com>
Fixes: a65a397f2451 ("cpuidle: psci: Add support for PM domains by using genpd")
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v2:
	- Convert the error code returned from psci_cpu_suspend_enter() into an
	expected error code by cpuidle core.

---
 drivers/cpuidle/cpuidle-psci.c | 48 +++++++++++++++++++++-------------
 1 file changed, 30 insertions(+), 18 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index bae9140a65a5..ae0fabec2742 100644
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
+		ret = psci_cpu_suspend_enter(state) ? -1 : idx;
+	else
+		cpu_do_idle();
 
 	pm_runtime_get_sync(pd_dev);
 
@@ -180,7 +183,7 @@ static int __init psci_dt_cpu_init_topology(struct cpuidle_driver *drv,
 	drv->states[state_count - 1].enter = psci_enter_domain_idle_state;
 	psci_cpuidle_use_cpuhp = true;
 
-	return 0;
+	return 1;
 }
 
 static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
@@ -192,6 +195,13 @@ static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
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
@@ -223,7 +233,7 @@ static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
 
 	/* Idle states parsed correctly, store them in the per-cpu struct. */
 	data->psci_states = psci_states;
-	return 0;
+	return state_count;
 
 free_mem:
 	kfree(psci_states);
@@ -282,33 +292,35 @@ static int __init psci_idle_init_cpu(int cpu)
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
