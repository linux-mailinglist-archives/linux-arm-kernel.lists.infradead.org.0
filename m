Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C04E1A43BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 10:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ax5pFZ0I4m1EdI1sVqOiucC7Wd3yOaFutEsRhudh/Vc=; b=Rjj1GMKpnF86RLY7TIUIv8+3Va
	BwvSqa5uoCdZcc0efCDo6BNuL1tQOd92q8tYjTU+dxvBVCNCCt3fcWFn8RorJpRCx0zg7jBZU7wrm
	tSr3y+tPGVMpmk9FQ/aatIxkp8EMdJrISvaZW3B53HWm6OAZ8JdVElbHAaxlNTogg2RUfC4UtO+Td
	PGgFBDCC0sW/G8jbbGBLpy5J0t15wRNC0IqpTsOVaRs2Vs6UVHvnxWMtbcWT5CCuVzsbFeebX3Bvr
	pHIBaxqIpwdpGPqqPsCaRf7XCCpxVoa915cLe35Cvi/BmBUqo/rXu4DjCEAQ45258FBuTPSvHyml3
	Ko2qEeIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMpG8-0004lR-8O; Fri, 10 Apr 2020 08:43:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMpFT-0004Sf-9I; Fri, 10 Apr 2020 08:42:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1F63D1063;
 Fri, 10 Apr 2020 01:42:50 -0700 (PDT)
Received: from e123648.arm.com (unknown [10.37.12.30])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DD1D83F68F;
 Fri, 10 Apr 2020 01:42:39 -0700 (PDT)
From: Lukasz Luba <lukasz.luba@arm.com>
To: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-omap@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-imx@nxp.com
Subject: [PATCH v6 02/10] PM / EM: introduce em_dev_register_perf_domain
 function
Date: Fri, 10 Apr 2020 09:42:02 +0100
Message-Id: <20200410084210.24932-3-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200410084210.24932-1-lukasz.luba@arm.com>
References: <20200410084210.24932-1-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_014251_423321_7686A055 
X-CRM114-Status: GOOD (  16.60  )
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

Add now function in the Energy Model framework which is going to support
new devices. This function will help in transition and make it smoother.
For now it still checks if the cpumask is a valid pointer, which will be
removed later when the new structures and infrastructure will be ready.

Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
---
 include/linux/energy_model.h | 13 ++++++++++--
 kernel/power/energy_model.c  | 40 ++++++++++++++++++++++++++++++------
 2 files changed, 45 insertions(+), 8 deletions(-)

diff --git a/include/linux/energy_model.h b/include/linux/energy_model.h
index fe336a9eb5d4..7c048df98447 100644
--- a/include/linux/energy_model.h
+++ b/include/linux/energy_model.h
@@ -2,6 +2,7 @@
 #ifndef _LINUX_ENERGY_MODEL_H
 #define _LINUX_ENERGY_MODEL_H
 #include <linux/cpumask.h>
+#include <linux/device.h>
 #include <linux/jump_label.h>
 #include <linux/kobject.h>
 #include <linux/rcupdate.h>
@@ -42,7 +43,7 @@ struct em_perf_domain {
 #define em_span_cpus(em) (to_cpumask((em)->cpus))
 
 #ifdef CONFIG_ENERGY_MODEL
-#define EM_CPU_MAX_POWER 0xFFFF
+#define EM_MAX_POWER 0xFFFF
 
 struct em_data_callback {
 	/**
@@ -59,7 +60,7 @@ struct em_data_callback {
 	 * and frequency.
 	 *
 	 * The power is the one of a single CPU in the domain, expressed in
-	 * milli-watts. It is expected to fit in the [0, EM_CPU_MAX_POWER]
+	 * milli-watts. It is expected to fit in the [0, EM_MAX_POWER]
 	 * range.
 	 *
 	 * Return 0 on success.
@@ -71,6 +72,8 @@ struct em_data_callback {
 struct em_perf_domain *em_cpu_get(int cpu);
 int em_register_perf_domain(cpumask_t *span, unsigned int nr_states,
 						struct em_data_callback *cb);
+int em_dev_register_perf_domain(struct device *dev, unsigned int nr_states,
+				struct em_data_callback *cb, cpumask_t *span);
 
 /**
  * em_pd_energy() - Estimates the energy consumed by the CPUs of a perf. domain
@@ -174,6 +177,12 @@ static inline int em_register_perf_domain(cpumask_t *span,
 {
 	return -EINVAL;
 }
+static inline
+int em_dev_register_perf_domain(struct device *dev, unsigned int nr_states,
+				struct em_data_callback *cb, cpumask_t *span)
+{
+	return -EINVAL;
+}
 static inline struct em_perf_domain *em_cpu_get(int cpu)
 {
 	return NULL;
diff --git a/kernel/power/energy_model.c b/kernel/power/energy_model.c
index 9892d548a0fa..875b163e54ab 100644
--- a/kernel/power/energy_model.c
+++ b/kernel/power/energy_model.c
@@ -125,7 +125,7 @@ static struct em_perf_domain *em_create_pd(cpumask_t *span, int nr_states,
 		 * The power returned by active_state() is expected to be
 		 * positive, in milli-watts and to fit into 16 bits.
 		 */
-		if (!power || power > EM_CPU_MAX_POWER) {
+		if (!power || power > EM_MAX_POWER) {
 			pr_err("pd%d: invalid power: %lu\n", cpu, power);
 			goto free_ps_table;
 		}
@@ -183,10 +183,13 @@ struct em_perf_domain *em_cpu_get(int cpu)
 EXPORT_SYMBOL_GPL(em_cpu_get);
 
 /**
- * em_register_perf_domain() - Register the Energy Model of a performance domain
- * @span	: Mask of CPUs in the performance domain
+ * em_dev_register_perf_domain() - Register the Energy Model (EM) for a device
+ * @dev		: Device for which the EM is to register
  * @nr_states	: Number of performance states to register
  * @cb		: Callback functions providing the data of the Energy Model
+ * @span	: Pointer to cpumask_t, which in case of a CPU device is
+ *		obligatory. It can be taken from i.e. 'policy->cpus'. For other
+ *		type of devices this should be set to NULL.
  *
  * Create Energy Model tables for a performance domain using the callbacks
  * defined in cb.
@@ -196,14 +199,14 @@ EXPORT_SYMBOL_GPL(em_cpu_get);
  *
  * Return 0 on success
  */
-int em_register_perf_domain(cpumask_t *span, unsigned int nr_states,
-						struct em_data_callback *cb)
+int em_dev_register_perf_domain(struct device *dev, unsigned int nr_states,
+				struct em_data_callback *cb, cpumask_t *span)
 {
 	unsigned long cap, prev_cap = 0;
 	struct em_perf_domain *pd;
 	int cpu, ret = 0;
 
-	if (!span || !nr_states || !cb)
+	if (!dev || !span || !nr_states || !cb)
 		return -EINVAL;
 
 	/*
@@ -255,4 +258,29 @@ int em_register_perf_domain(cpumask_t *span, unsigned int nr_states,
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(em_dev_register_perf_domain);
+
+/**
+ * em_register_perf_domain() - Register the Energy Model of a performance domain
+ * @span	: Mask of CPUs in the performance domain
+ * @nr_states	: Number of capacity states to register
+ * @cb		: Callback functions providing the data of the Energy Model
+ *
+ * Create Energy Model tables for a performance domain using the callbacks
+ * defined in cb.
+ *
+ * If multiple clients register the same performance domain, all but the first
+ * registration will be ignored.
+ *
+ * Return 0 on success
+ */
+int em_register_perf_domain(cpumask_t *span, unsigned int nr_states,
+						struct em_data_callback *cb)
+{
+	struct device *cpu_dev;
+
+	cpu_dev = get_cpu_device(cpumask_first(span));
+
+	return em_dev_register_perf_domain(cpu_dev, nr_states, cb, span);
+}
 EXPORT_SYMBOL_GPL(em_register_perf_domain);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
