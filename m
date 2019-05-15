Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B257E1EC3E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 12:41:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c2ApafiNkJi+fiuyKe1Zj1YR5Jfi4ITFex6jpKVDS04=; b=swRDHZs8ZGwz1Q
	QGvtdw0a5g3mM+z3WdqwH4XOqtasaBt6y28JBHjP3eaY3vqii+e05JybpPG61BCwIcFk8Q8R+VYfn
	xlq8iRHnh0IlS2RRdxCUaNlZ7PFEhDmLW8NOdb5bsmArXiq42Du/v+J1M0Xf7HN1r/2LAHeL/bFW9
	RPvtAIIic2KEBKV9dm0Y0fXAlb9j2ma2oayrUv50eXMGYSZ8FufMDwPw/y464GvP4cztRVjZehq7M
	+Bpglmr7qo8KxOEjG/+RWPUUKutlowm2nFpnzDsUwxubqHPgckm/ov7ch8ehGIatYawZlKdi2E/c/
	szRUCCh/46KfTp2MW44w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQrLG-0001MU-Te; Wed, 15 May 2019 10:40:58 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQrL8-0001Lw-E8
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 10:40:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9E81B80D;
 Wed, 15 May 2019 03:40:49 -0700 (PDT)
Received: from queper01-lin (queper01-lin.cambridge.arm.com [10.1.195.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1F4153F703;
 Wed, 15 May 2019 03:40:46 -0700 (PDT)
Date: Wed, 15 May 2019 11:40:45 +0100
From: Quentin Perret <quentin.perret@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v4 2/3] PM / EM: Expose perf domain struct
Message-ID: <20190515104043.vogspxgkapp6qsny@queper01-lin>
References: <20190515082318.7993-1-quentin.perret@arm.com>
 <20190515082318.7993-3-quentin.perret@arm.com>
 <0ced18eb-e424-fe6b-b11e-165a3c108170@linaro.org>
 <20190515091658.sbpg6qiovhtblqyr@queper01-lin>
 <698400c0-e0a4-4a86-b9df-cdb9bd683c0f@linaro.org>
 <20190515100748.q3t4kt72h2akdpcs@queper01-lin>
 <cf1474cb-7e31-7070-b988-a0c4d3f6f081@linaro.org>
 <20190515102200.s6uq63qnwea6xtpl@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515102200.s6uq63qnwea6xtpl@vireshk-i7>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_034050_490606_925837E3 
X-CRM114-Status: GOOD (  21.53  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pm@vger.kernel.org, will.deacon@arm.com, amit.kachhap@gmail.com,
 Daniel Lezcano <daniel.lezcano@linaro.org>, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, edubezval@gmail.com, mka@chromium.org,
 catalin.marinas@arm.com, rui.zhang@intel.com, javi.merino@kernel.org,
 ionela.voinescu@arm.com, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wednesday 15 May 2019 at 15:52:00 (+0530), Viresh Kumar wrote:
> On 15-05-19, 12:16, Daniel Lezcano wrote:
> > Viresh what do you think ?
> 
> I agree with your last suggestions. They do make sense.

Good :-)

So, FWIW, the below compiles w/ or w/o THERMAL_GOV_POWER_ALLOCATOR. I'll
test it and clean it up some more and put it as patch 1 in the series if
that's OK.

Thanks,
Quentin


diff --git a/drivers/thermal/cpu_cooling.c b/drivers/thermal/cpu_cooling.c
index f7c1f49ec87f..ee431848ef71 100644
--- a/drivers/thermal/cpu_cooling.c
+++ b/drivers/thermal/cpu_cooling.c
@@ -58,7 +58,9 @@
  */
 struct freq_table {
        u32 frequency;
+#ifdef CONFIG_THERMAL_GOV_POWER_ALLOCATOR
        u32 power;
+#endif
 };
 
 /**
@@ -109,28 +111,6 @@ static DEFINE_IDA(cpufreq_ida);
 static DEFINE_MUTEX(cooling_list_lock);
 static LIST_HEAD(cpufreq_cdev_list);
 
-/* Below code defines functions to be used for cpufreq as cooling device */
-
-/**
- * get_level: Find the level for a particular frequency
- * @cpufreq_cdev: cpufreq_cdev for which the property is required
- * @freq: Frequency
- *
- * Return: level corresponding to the frequency.
- */
-static unsigned long get_level(struct cpufreq_cooling_device *cpufreq_cdev,
-                              unsigned int freq)
-{
-       struct freq_table *freq_table = cpufreq_cdev->freq_table;
-       unsigned long level;
-
-       for (level = 1; level <= cpufreq_cdev->max_level; level++)
-               if (freq > freq_table[level].frequency)
-                       break;
-
-       return level - 1;
-}
-
 /**
  * cpufreq_thermal_notifier - notifier callback for cpufreq policy change.
  * @nb:        struct notifier_block * with callback info.
@@ -184,6 +164,27 @@ static int cpufreq_thermal_notifier(struct notifier_block *nb,
        return NOTIFY_OK;
 }
 
+#ifdef CONFIG_THERMAL_GOV_POWER_ALLOCATOR
+/**
+ * get_level: Find the level for a particular frequency
+ * @cpufreq_cdev: cpufreq_cdev for which the property is required
+ * @freq: Frequency
+ *
+ * Return: level corresponding to the frequency.
+ */
+static unsigned long get_level(struct cpufreq_cooling_device *cpufreq_cdev,
+                              unsigned int freq)
+{
+       struct freq_table *freq_table = cpufreq_cdev->freq_table;
+       unsigned long level;
+
+       for (level = 1; level <= cpufreq_cdev->max_level; level++)
+               if (freq > freq_table[level].frequency)
+                       break;
+
+       return level - 1;
+}
+
 /**
  * update_freq_table() - Update the freq table with power numbers
  * @cpufreq_cdev:      the cpufreq cooling device in which to update the table
@@ -333,80 +334,6 @@ static u32 get_dynamic_power(struct cpufreq_cooling_device *cpufreq_cdev,
        return (raw_cpu_power * cpufreq_cdev->last_load) / 100;
 }
 
-/* cpufreq cooling device callback functions are defined below */
-
-/**
- * cpufreq_get_max_state - callback function to get the max cooling state.
- * @cdev: thermal cooling device pointer.
- * @state: fill this variable with the max cooling state.
- *
- * Callback for the thermal cooling device to return the cpufreq
- * max cooling state.
- *
- * Return: 0 on success, an error code otherwise.
- */
-static int cpufreq_get_max_state(struct thermal_cooling_device *cdev,
-                                unsigned long *state)
-{
-       struct cpufreq_cooling_device *cpufreq_cdev = cdev->devdata;
-
-       *state = cpufreq_cdev->max_level;
-       return 0;
-}
-
-/**
- * cpufreq_get_cur_state - callback function to get the current cooling state.
- * @cdev: thermal cooling device pointer.
- * @state: fill this variable with the current cooling state.
- *
- * Callback for the thermal cooling device to return the cpufreq
- * current cooling state.
- *
- * Return: 0 on success, an error code otherwise.
- */
-static int cpufreq_get_cur_state(struct thermal_cooling_device *cdev,
-                                unsigned long *state)
-{
-       struct cpufreq_cooling_device *cpufreq_cdev = cdev->devdata;
-
-       *state = cpufreq_cdev->cpufreq_state;
-
-       return 0;
-}
-
-/**
- * cpufreq_set_cur_state - callback function to set the current cooling state.
- * @cdev: thermal cooling device pointer.
- * @state: set this variable to the current cooling state.
- *
- * Callback for the thermal cooling device to change the cpufreq
- * current cooling state.
- *
- * Return: 0 on success, an error code otherwise.
- */
-static int cpufreq_set_cur_state(struct thermal_cooling_device *cdev,
-                                unsigned long state)
-{
-       struct cpufreq_cooling_device *cpufreq_cdev = cdev->devdata;
-       unsigned int clip_freq;
-
-       /* Request state should be less than max_level */
-       if (WARN_ON(state > cpufreq_cdev->max_level))
-               return -EINVAL;
-
-       /* Check if the old cooling action is same as new cooling action */
-       if (cpufreq_cdev->cpufreq_state == state)
-               return 0;
-
-       clip_freq = cpufreq_cdev->freq_table[state].frequency;
-       cpufreq_cdev->cpufreq_state = state;
-       cpufreq_cdev->clipped_freq = clip_freq;
-
-       cpufreq_update_policy(cpufreq_cdev->policy->cpu);
-
-       return 0;
-}
-
 /**
  * cpufreq_get_requested_power() - get the current power
  * @cdev:      &thermal_cooling_device pointer
@@ -551,22 +478,93 @@ static int cpufreq_power2state(struct thermal_cooling_device *cdev,
                                      power);
        return 0;
 }
+#endif /* CONFIG_THERMAL_GOV_POWER_ALLOCATOR */
+
+/* cpufreq cooling device callback functions are defined below */
+
+/**
+ * cpufreq_get_max_state - callback function to get the max cooling state.
+ * @cdev: thermal cooling device pointer.
+ * @state: fill this variable with the max cooling state.
+ *
+ * Callback for the thermal cooling device to return the cpufreq
+ * max cooling state.
+ *
+ * Return: 0 on success, an error code otherwise.
+ */
+static int cpufreq_get_max_state(struct thermal_cooling_device *cdev,
+                                unsigned long *state)
+{
+       struct cpufreq_cooling_device *cpufreq_cdev = cdev->devdata;
+
+       *state = cpufreq_cdev->max_level;
+       return 0;
+}
+
+/**
+ * cpufreq_get_cur_state - callback function to get the current cooling state.
+ * @cdev: thermal cooling device pointer.
+ * @state: fill this variable with the current cooling state.
+ *
+ * Callback for the thermal cooling device to return the cpufreq
+ * current cooling state.
+ *
+ * Return: 0 on success, an error code otherwise.
+ */
+static int cpufreq_get_cur_state(struct thermal_cooling_device *cdev,
+                                unsigned long *state)
+{
+       struct cpufreq_cooling_device *cpufreq_cdev = cdev->devdata;
+
+       *state = cpufreq_cdev->cpufreq_state;
+
+       return 0;
+}
+
+/**
+ * cpufreq_set_cur_state - callback function to set the current cooling state.
+ * @cdev: thermal cooling device pointer.
+ * @state: set this variable to the current cooling state.
+ *
+ * Callback for the thermal cooling device to change the cpufreq
+ * current cooling state.
+ *
+ * Return: 0 on success, an error code otherwise.
+ */
+static int cpufreq_set_cur_state(struct thermal_cooling_device *cdev,
+                                unsigned long state)
+{
+       struct cpufreq_cooling_device *cpufreq_cdev = cdev->devdata;
+       unsigned int clip_freq;
+
+       /* Request state should be less than max_level */
+       if (WARN_ON(state > cpufreq_cdev->max_level))
+               return -EINVAL;
+
+       /* Check if the old cooling action is same as new cooling action */
+       if (cpufreq_cdev->cpufreq_state == state)
+               return 0;
+
+       clip_freq = cpufreq_cdev->freq_table[state].frequency;
+       cpufreq_cdev->cpufreq_state = state;
+       cpufreq_cdev->clipped_freq = clip_freq;
+
+       cpufreq_update_policy(cpufreq_cdev->policy->cpu);
+
+       return 0;
+}
 
 /* Bind cpufreq callbacks to thermal cooling device ops */
 
 static struct thermal_cooling_device_ops cpufreq_cooling_ops = {
-       .get_max_state = cpufreq_get_max_state,
-       .get_cur_state = cpufreq_get_cur_state,
-       .set_cur_state = cpufreq_set_cur_state,
-};
-
-static struct thermal_cooling_device_ops cpufreq_power_cooling_ops = {
        .get_max_state          = cpufreq_get_max_state,
        .get_cur_state          = cpufreq_get_cur_state,
        .set_cur_state          = cpufreq_set_cur_state,
+#ifdef CONFIG_THERMAL_GOV_POWER_ALLOCATOR
        .get_requested_power    = cpufreq_get_requested_power,
        .state2power            = cpufreq_state2power,
        .power2state            = cpufreq_power2state,
+#endif
 };
 
 /* Notifier for cpufreq policy change */
@@ -674,17 +672,16 @@ __cpufreq_cooling_register(struct device_node *np,
                        pr_debug("%s: freq:%u KHz\n", __func__, freq);
        }
 
+#ifdef CONFIG_THERMAL_GOV_POWER_ALLOCATOR
        if (capacitance) {
                ret = update_freq_table(cpufreq_cdev, capacitance);
                if (ret) {
                        cdev = ERR_PTR(ret);
                        goto remove_ida;
                }
-
-               cooling_ops = &cpufreq_power_cooling_ops;
-       } else {
-               cooling_ops = &cpufreq_cooling_ops;
        }
+#endif
+       cooling_ops = &cpufreq_cooling_ops;
 
        cdev = thermal_of_cooling_device_register(np, dev_name, cpufreq_cdev,
                                                  cooling_ops);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
