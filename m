Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7301A43C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 10:44:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cvV3VrdvojnmYhH7U9Ww10POJzC0AZwK3eXcKsemTV8=; b=UuiHYmgZAp2gH+gmmPd3AkWQnN
	RUMdAzDAfPXrfzgo/NoaYXpRfV7tjPyxhJjtIYD6FKx/b6nB+TX95oAGdQh291SzD2aVRauAf8sX6
	C9wno/QA00phMcMuYGIrUe6WuSuVrvon3GoZnfrWN3HWjwaru9qK3twLpydvfCWZNU13jQtkVtSZ1
	obtAKT2DZpZQshN4aeIeKl8Jrtl1HctRD7hAPQhhgVmMJsODqiQhgiMzpHRWoMj+fvM/XWv26UIsl
	ZwRlDzCPgGn20ijgvdfvmqKrOZc0n1kQDroAhF0KjGoGBH0Hi1/eGCSjCdxdglAmQBBeHn6Q+qcLv
	63k40tlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMpGT-000575-TH; Fri, 10 Apr 2020 08:43:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMpFd-0004bK-GJ; Fri, 10 Apr 2020 08:43:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7345931B;
 Fri, 10 Apr 2020 01:43:00 -0700 (PDT)
Received: from e123648.arm.com (unknown [10.37.12.30])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 866D73F68F;
 Fri, 10 Apr 2020 01:42:50 -0700 (PDT)
From: Lukasz Luba <lukasz.luba@arm.com>
To: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-omap@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-imx@nxp.com
Subject: [PATCH v6 03/10] PM / EM: update callback structure and add device
 pointer
Date: Fri, 10 Apr 2020 09:42:03 +0100
Message-Id: <20200410084210.24932-4-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200410084210.24932-1-lukasz.luba@arm.com>
References: <20200410084210.24932-1-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_014301_697746_5C6CF6EF 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, bjorn.andersson@linaro.org,
 bsegall@google.com, festevam@gmail.com, mka@chromium.org, robh@kernel.org,
 amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com, khilman@kernel.org,
 daniel.lezcano@linaro.org, steven.price@arm.com, cw00.choi@samsung.com,
 mingo@redhat.com, mgorman@suse.de, rui.zhang@intel.com,
 alyssa.rosenzweig@collabora.com, orjan.eide@arm.com, daniel@ffwll.ch,
 b.zolnierkie@samsung.com, s.hauer@pengutronix.de, rostedt@goodmis.org,
 matthias.bgg@gmail.com, Dietmar.Eggemann@arm.com, airlied@linux.ie,
 tomeu.vizoso@collabora.com, qperret@google.com, sboyd@kernel.org,
 rdunlap@infradead.org, rjw@rjwysocki.net, agross@kernel.org,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org, lukasz.luba@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Energy Model framework is going to support devices other that CPUs. In
order to make this happen change the callback function and add pointer to
a device as an argument.

Update the related users to use new function and new callback from the
Energy Model.

Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
---
 drivers/cpufreq/scmi-cpufreq.c | 11 +++--------
 drivers/opp/of.c               |  9 ++-------
 include/linux/energy_model.h   | 15 ++++++++-------
 kernel/power/energy_model.c    |  9 +++++----
 4 files changed, 18 insertions(+), 26 deletions(-)

diff --git a/drivers/cpufreq/scmi-cpufreq.c b/drivers/cpufreq/scmi-cpufreq.c
index 61623e2ff149..11ee24e06d12 100644
--- a/drivers/cpufreq/scmi-cpufreq.c
+++ b/drivers/cpufreq/scmi-cpufreq.c
@@ -103,17 +103,12 @@ scmi_get_sharing_cpus(struct device *cpu_dev, struct cpumask *cpumask)
 }
 
 static int __maybe_unused
-scmi_get_cpu_power(unsigned long *power, unsigned long *KHz, int cpu)
+scmi_get_cpu_power(unsigned long *power, unsigned long *KHz,
+		   struct device *cpu_dev)
 {
-	struct device *cpu_dev = get_cpu_device(cpu);
 	unsigned long Hz;
 	int ret, domain;
 
-	if (!cpu_dev) {
-		pr_err("failed to get cpu%d device\n", cpu);
-		return -ENODEV;
-	}
-
 	domain = handle->perf_ops->device_domain_id(cpu_dev);
 	if (domain < 0)
 		return domain;
@@ -200,7 +195,7 @@ static int scmi_cpufreq_init(struct cpufreq_policy *policy)
 
 	policy->fast_switch_possible = true;
 
-	em_register_perf_domain(policy->cpus, nr_opp, &em_cb);
+	em_dev_register_perf_domain(cpu_dev, nr_opp, &em_cb, policy->cpus);
 
 	return 0;
 
diff --git a/drivers/opp/of.c b/drivers/opp/of.c
index 9cd8f0adacae..5b75829a915d 100644
--- a/drivers/opp/of.c
+++ b/drivers/opp/of.c
@@ -1047,9 +1047,8 @@ EXPORT_SYMBOL_GPL(dev_pm_opp_get_of_node);
  * calculation failed because of missing parameters, 0 otherwise.
  */
 static int __maybe_unused _get_cpu_power(unsigned long *mW, unsigned long *kHz,
-					 int cpu)
+					 struct device *cpu_dev)
 {
-	struct device *cpu_dev;
 	struct dev_pm_opp *opp;
 	struct device_node *np;
 	unsigned long mV, Hz;
@@ -1057,10 +1056,6 @@ static int __maybe_unused _get_cpu_power(unsigned long *mW, unsigned long *kHz,
 	u64 tmp;
 	int ret;
 
-	cpu_dev = get_cpu_device(cpu);
-	if (!cpu_dev)
-		return -ENODEV;
-
 	np = of_node_get(cpu_dev->of_node);
 	if (!np)
 		return -EINVAL;
@@ -1128,6 +1123,6 @@ void dev_pm_opp_of_register_em(struct cpumask *cpus)
 	if (ret || !cap)
 		return;
 
-	em_register_perf_domain(cpus, nr_opp, &em_cb);
+	em_dev_register_perf_domain(cpu_dev, nr_opp, &em_cb, cpus);
 }
 EXPORT_SYMBOL_GPL(dev_pm_opp_of_register_em);
diff --git a/include/linux/energy_model.h b/include/linux/energy_model.h
index 7c048df98447..7076cb22b247 100644
--- a/include/linux/energy_model.h
+++ b/include/linux/energy_model.h
@@ -48,24 +48,25 @@ struct em_perf_domain {
 struct em_data_callback {
 	/**
 	 * active_power() - Provide power at the next performance state of
-	 *		a CPU
+	 *		a device
 	 * @power	: Active power at the performance state in mW
 	 *		(modified)
 	 * @freq	: Frequency at the performance state in kHz
 	 *		(modified)
-	 * @cpu		: CPU for which we do this operation
+	 * @dev		: Device for which we do this operation (can be a CPU)
 	 *
-	 * active_power() must find the lowest performance state of 'cpu' above
+	 * active_power() must find the lowest performance state of 'dev' above
 	 * 'freq' and update 'power' and 'freq' to the matching active power
 	 * and frequency.
 	 *
-	 * The power is the one of a single CPU in the domain, expressed in
-	 * milli-watts. It is expected to fit in the [0, EM_MAX_POWER]
-	 * range.
+	 * In case of CPUs, the power is the one of a single CPU in the domain,
+	 * expressed in milli-watts. It is expected to fit in the
+	 * [0, EM_MAX_POWER] range.
 	 *
 	 * Return 0 on success.
 	 */
-	int (*active_power)(unsigned long *power, unsigned long *freq, int cpu);
+	int (*active_power)(unsigned long *power, unsigned long *freq,
+			    struct device *dev);
 };
 #define EM_DATA_CB(_active_power_cb) { .active_power = &_active_power_cb }
 
diff --git a/kernel/power/energy_model.c b/kernel/power/energy_model.c
index 875b163e54ab..5b8a1566526a 100644
--- a/kernel/power/energy_model.c
+++ b/kernel/power/energy_model.c
@@ -78,8 +78,9 @@ core_initcall(em_debug_init);
 #else /* CONFIG_DEBUG_FS */
 static void em_debug_create_pd(struct em_perf_domain *pd, int cpu) {}
 #endif
-static struct em_perf_domain *em_create_pd(cpumask_t *span, int nr_states,
-						struct em_data_callback *cb)
+static struct em_perf_domain *
+em_create_pd(struct device *dev, int nr_states, struct em_data_callback *cb,
+	     cpumask_t *span)
 {
 	unsigned long opp_eff, prev_opp_eff = ULONG_MAX;
 	unsigned long power, freq, prev_freq = 0;
@@ -106,7 +107,7 @@ static struct em_perf_domain *em_create_pd(cpumask_t *span, int nr_states,
 		 * lowest performance state of 'cpu' above 'freq' and updates
 		 * 'power' and 'freq' accordingly.
 		 */
-		ret = cb->active_power(&power, &freq, cpu);
+		ret = cb->active_power(&power, &freq, dev);
 		if (ret) {
 			pr_err("pd%d: invalid perf. state: %d\n", cpu, ret);
 			goto free_ps_table;
@@ -237,7 +238,7 @@ int em_dev_register_perf_domain(struct device *dev, unsigned int nr_states,
 	}
 
 	/* Create the performance domain and add it to the Energy Model. */
-	pd = em_create_pd(span, nr_states, cb);
+	pd = em_create_pd(dev, nr_states, cb, span);
 	if (!pd) {
 		ret = -EINVAL;
 		goto unlock;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
