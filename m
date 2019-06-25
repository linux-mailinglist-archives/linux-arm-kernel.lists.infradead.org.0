Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EBB54DB5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 13:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZDwHC2AAWVZ1qB+uu446EOeCj0gg9JnSP7E+4Km+wVM=; b=Ek9Gg3YzDczSEzh6ZiEp5B1qTk
	UBip+YhisfSNVhpLCFl7wQIjoNYcsud2M0QIi8Ioz8a0Kh1EhS1y94hW7LaHiDWaODDgTvQTLliiz
	Y1jc8CezAbpRqk5mI4f2VX4ELGcRx5fj45B5VnOAnW+RrF9sjrlLmdggo8ZZ2xXSp7WOYlLiyg1db
	iegUUpVqoxSXT6Ea/FEqcWwQFk92y2azSiEYJ9dT5lC8RazqLYlammb7xksES9FbqHpb/FfStzMjN
	OsftXD105L3jkbvCQZhOB+ARHmBPzfE8+RPkjw3VMYaUe7JIWuSmVMqlMZ0DZfrnhBNt0dIx4QVEJ
	xQzRd28g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfjhh-0004dI-P6; Tue, 25 Jun 2019 11:33:37 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfjhD-0004UW-AX
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 11:33:09 +0000
Received: by mail-wm1-x341.google.com with SMTP id c6so2625706wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 04:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1GRtxbvJ7zQMEAzf5USjpOzydVY/5kmGwkIlpaLrADw=;
 b=Ehnr0RmwjLMD+uPoNHV4VCT4BrNvFINrvm11Jwmp0X8vbmx+CNYN+Xzx2gu/xT8lpq
 8aedQccZjAUzVVMTUpA2k7EY0zEoQiuPm3+MTjSSCmKUCD4qEZah+MCAkZR/lkTRJI8S
 qbsbqrNVmVADWjyODTHoz5RjwGacaOvrPpOG9n+D2mTLbfYQ+6cyWLYZ1IFurqUM8G8C
 QxbXLEpXQHL1AOl5edMeAfrg6YT3BRmCXl7xMkLLqi8CqiM/UM97yFjN2PyGg9ciwVU4
 QcDd6ai+2zpnXnbhsqFUf9fFfPiyk2XA1hse2h4u2/A/9o0zmmOSN14PBIHatZNybjvJ
 Cfpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1GRtxbvJ7zQMEAzf5USjpOzydVY/5kmGwkIlpaLrADw=;
 b=Y4GKyEg6Mn2N7CkotEfHpB178A58nrDhGDyoffi7xi7FVl+gvYimgMiL8pRfMZyiYa
 FNaW2xmwHG1bssaD1oxH2TtTgcP0Cn0CbXfucZEL4f/Z4/Re/oU4dBoZ1oExASwFpzZa
 2U3qIwZeC3+TiFklW4EWHtTWf/+vfx09ynoeEz44wVHYZVVmvi/I9P/KvqphL2P9Rrkn
 6tkHxl3XCrE0yPZpysRQzZDI1AFsajxV4oPgveO3Zn9o050q5hfndZaQNGGsIB231FPk
 oTbM5lwWtk+WbvxmAS5gDGkBqwS366UF7RZcW5eGxJI4bwZ2qjsK5TeUwgFuVSQBTN/J
 cDvw==
X-Gm-Message-State: APjAAAUKdNbNTa1jspnFZ2ipUXk5Knja7iM8j1pEwE2bkPKK2nSqHnQr
 N34IoAcAVCcBzjK6340mMteq+w==
X-Google-Smtp-Source: APXvYqyEyB2lNfbV8SJL0HSWaizGxaMKeN5Sw5X3E86zHZQ+GTc3cszJfeHxfYNey1cdGehMbHxjSg==
X-Received: by 2002:a05:600c:28d:: with SMTP id
 13mr19743593wmk.5.1561462385508; 
 Tue, 25 Jun 2019 04:33:05 -0700 (PDT)
Received: from clegane.local (191.184.66.86.rev.sfr.net. [86.66.184.191])
 by smtp.gmail.com with ESMTPSA id j7sm19254284wru.54.2019.06.25.04.33.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 04:33:04 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: viresh.kumar@linaro.org
Subject: [PATCH V3 3/3] thermal/drivers/cpu_cooling: cpufreq_cooling_register
 returns an int
Date: Tue, 25 Jun 2019 13:32:43 +0200
Message-Id: <20190625113244.18146-3-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190625113244.18146-1-daniel.lezcano@linaro.org>
References: <20190625113244.18146-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_043307_364988_78AF82D6 
X-CRM114-Status: GOOD (  21.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>,
 "open list:THERMAL/CPU_COOLING" <linux-pm@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, edubezval@gmail.com,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Keerthy <j-keerthy@ti.com>,
 Zhang Rui <rui.zhang@intel.com>, Javi Merino <javi.merino@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It looks like after the changes in the patch the only reason for
returning (struct thermal_cooling_device *) from
cpufreq_cooling_register() is error checking, but it would be much
more straightforward to return int for this purpose.

Moreover, that would prevent the callers of it from doing incorrect
things with the returned pointers (like using it to unregister the
cooling device).

Replace the returned value an integer instead of a pointer to a
thermal cooling device structure.

Suggested-by: Rafael J. Wysocki <rafael@kernel.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/thermal/cpu_cooling.c                 | 63 +++++++++----------
 drivers/thermal/imx_thermal.c                 |  6 +-
 .../ti-soc-thermal/ti-thermal-common.c        |  7 +--
 include/linux/cpu_cooling.h                   | 16 ++---
 4 files changed, 40 insertions(+), 52 deletions(-)

diff --git a/drivers/thermal/cpu_cooling.c b/drivers/thermal/cpu_cooling.c
index 007c7c6bf845..f5fa31a57658 100644
--- a/drivers/thermal/cpu_cooling.c
+++ b/drivers/thermal/cpu_cooling.c
@@ -530,13 +530,12 @@ static struct notifier_block thermal_cpufreq_notifier_block = {
  * cooling devices. It also gives the opportunity to link the cooling device
  * with a device tree node, in order to bind it via the thermal DT code.
  *
- * Return: a valid struct thermal_cooling_device pointer on success,
- * on failure, it returns a corresponding ERR_PTR().
+ * Return: zero on success, less than zero corresponding to the
+ * negative error code.
  */
-static struct thermal_cooling_device *
-__cpufreq_cooling_register(struct device_node *np,
-			struct cpufreq_policy *policy,
-			struct em_perf_domain *em)
+static int __cpufreq_cooling_register(struct device_node *np,
+				      struct cpufreq_policy *policy,
+				      struct em_perf_domain *em)
 {
 	struct thermal_cooling_device *cdev;
 	struct cpufreq_cooling_device *cpufreq_cdev;
@@ -548,19 +547,19 @@ __cpufreq_cooling_register(struct device_node *np,
 
 	if (IS_ERR_OR_NULL(policy)) {
 		pr_err("%s: cpufreq policy isn't valid: %p\n", __func__, policy);
-		return ERR_PTR(-EINVAL);
+		return -EINVAL;
 	}
 
 	i = cpufreq_table_count_valid_entries(policy);
 	if (!i) {
 		pr_debug("%s: CPUFreq table not found or has no valid entries\n",
 			 __func__);
-		return ERR_PTR(-ENODEV);
+		return -ENODEV;
 	}
 
 	cpufreq_cdev = kzalloc(sizeof(*cpufreq_cdev), GFP_KERNEL);
 	if (!cpufreq_cdev)
-		return ERR_PTR(-ENOMEM);
+		return -ENOMEM;
 
 	cpufreq_cdev->policy = policy;
 	num_cpus = cpumask_weight(policy->related_cpus);
@@ -568,7 +567,7 @@ __cpufreq_cooling_register(struct device_node *np,
 					 sizeof(*cpufreq_cdev->idle_time),
 					 GFP_KERNEL);
 	if (!cpufreq_cdev->idle_time) {
-		cdev = ERR_PTR(-ENOMEM);
+		ret = -ENOMEM;
 		goto free_cdev;
 	}
 
@@ -576,10 +575,8 @@ __cpufreq_cooling_register(struct device_node *np,
 	cpufreq_cdev->max_level = i - 1;
 
 	ret = ida_simple_get(&cpufreq_ida, 0, 0, GFP_KERNEL);
-	if (ret < 0) {
-		cdev = ERR_PTR(ret);
+	if (ret < 0)
 		goto free_idle_time;
-	}
 	cpufreq_cdev->id = ret;
 
 	snprintf(dev_name, sizeof(dev_name), "thermal-cpufreq-%d",
@@ -597,14 +594,16 @@ __cpufreq_cooling_register(struct device_node *np,
 	if (policy->freq_table_sorted == CPUFREQ_TABLE_UNSORTED) {
 		pr_err("%s: unsorted frequency tables are not supported\n",
 				__func__);
-		cdev = ERR_PTR(-EINVAL);
+		ret = -EINVAL;
 		goto remove_ida;
 	}
 
 	cdev = thermal_of_cooling_device_register(np, dev_name, cpufreq_cdev,
 						  cooling_ops);
-	if (IS_ERR(cdev))
+	if (IS_ERR(cdev)) {
+		ret = PTR_ERR(cdev);
 		goto remove_ida;
+	}
 
 	cpufreq_cdev->clipped_freq = get_state_freq(cpufreq_cdev, 0);
 	cpufreq_cdev->cdev = cdev;
@@ -619,7 +618,7 @@ __cpufreq_cooling_register(struct device_node *np,
 		cpufreq_register_notifier(&thermal_cpufreq_notifier_block,
 					  CPUFREQ_POLICY_NOTIFIER);
 
-	return cdev;
+	return 0;
 
 remove_ida:
 	ida_simple_remove(&cpufreq_ida, cpufreq_cdev->id);
@@ -627,7 +626,7 @@ __cpufreq_cooling_register(struct device_node *np,
 	kfree(cpufreq_cdev->idle_time);
 free_cdev:
 	kfree(cpufreq_cdev);
-	return cdev;
+	return ret;
 }
 
 /**
@@ -638,11 +637,10 @@ __cpufreq_cooling_register(struct device_node *np,
  * "thermal-cpufreq-%x". This api can support multiple instances of cpufreq
  * cooling devices.
  *
- * Return: a valid struct thermal_cooling_device pointer on success,
- * on failure, it returns a corresponding ERR_PTR().
+ * Return: zero on success, less than zero corresponding to the
+ * negative error code.
  */
-struct thermal_cooling_device *
-cpufreq_cooling_register(struct cpufreq_policy *policy)
+int cpufreq_cooling_register(struct cpufreq_policy *policy)
 {
 	return __cpufreq_cooling_register(NULL, policy, NULL);
 }
@@ -664,34 +662,31 @@ EXPORT_SYMBOL_GPL(cpufreq_cooling_register);
  * It also takes into account, if property present in policy CPU node, the
  * static power consumed by the cpu.
  *
- * Return: a valid struct thermal_cooling_device pointer on success,
- * and NULL on failure.
+ * Return: zero on success, less than zero corresponding to the
+ * negative error code.
  */
-struct thermal_cooling_device *
-of_cpufreq_cooling_register(struct cpufreq_policy *policy)
+int of_cpufreq_cooling_register(struct cpufreq_policy *policy)
 {
 	struct device_node *np = of_get_cpu_node(policy->cpu, NULL);
-	struct thermal_cooling_device *cdev = NULL;
+	int ret = -EINVAL;
 
 	if (!np) {
 		pr_err("cpu_cooling: OF node not available for cpu%d\n",
 		       policy->cpu);
-		return NULL;
+		return -EINVAL;
 	}
 
 	if (of_find_property(np, "#cooling-cells", NULL)) {
 		struct em_perf_domain *em = em_cpu_get(policy->cpu);
 
-		cdev = __cpufreq_cooling_register(np, policy, em);
-		if (IS_ERR(cdev)) {
-			pr_err("cpu_cooling: cpu%d failed to register as cooling device: %ld\n",
-			       policy->cpu, PTR_ERR(cdev));
-			cdev = NULL;
-		}
+		ret = __cpufreq_cooling_register(np, policy, em);
+		if (ret)
+			pr_err("cpu_cooling: cpu%d failed to register as cooling device: %d\n",
+			       policy->cpu, ret);
 	}
 
 	of_node_put(np);
-	return cdev;
+	return ret;
 }
 EXPORT_SYMBOL_GPL(of_cpufreq_cooling_register);
 
diff --git a/drivers/thermal/imx_thermal.c b/drivers/thermal/imx_thermal.c
index 021c0948b740..1c4b49b583bc 100644
--- a/drivers/thermal/imx_thermal.c
+++ b/drivers/thermal/imx_thermal.c
@@ -655,7 +655,6 @@ MODULE_DEVICE_TABLE(of, of_imx_thermal_match);
 static int imx_thermal_register_legacy_cooling(struct imx_thermal_data *data)
 {
 	struct device_node *np;
-	struct thermal_cooling_device *cdev;
 	int ret;
 
 	data->policy = cpufreq_cpu_get(0);
@@ -667,9 +666,8 @@ static int imx_thermal_register_legacy_cooling(struct imx_thermal_data *data)
 	np = of_get_cpu_node(data->policy->cpu, NULL);
 
 	if (!np || !of_find_property(np, "#cooling-cells", NULL)) {
-		cdev = cpufreq_cooling_register(data->policy);
-		if (IS_ERR(cdev)) {
-			ret = PTR_ERR(cdev);
+		ret = cpufreq_cooling_register(data->policy);
+		if (ret) {
 			cpufreq_cpu_put(data->policy);
 			return ret;
 		}
diff --git a/drivers/thermal/ti-soc-thermal/ti-thermal-common.c b/drivers/thermal/ti-soc-thermal/ti-thermal-common.c
index 170b70b6ec61..eacc46d7bd1c 100644
--- a/drivers/thermal/ti-soc-thermal/ti-thermal-common.c
+++ b/drivers/thermal/ti-soc-thermal/ti-thermal-common.c
@@ -232,7 +232,7 @@ int ti_thermal_register_cpu_cooling(struct ti_bandgap *bgp, int id)
 {
 	struct ti_thermal_data *data;
 	struct device_node *np = bgp->dev->of_node;
-	struct thermal_cooling_device *cdev;
+	int ret;
 
 	/*
 	 * We are assuming here that if one deploys the zone
@@ -256,9 +256,8 @@ int ti_thermal_register_cpu_cooling(struct ti_bandgap *bgp, int id)
 	}
 
 	/* Register cooling device */
-	cdev = cpufreq_cooling_register(data->policy);
-	if (IS_ERR(cdev)) {
-		int ret = PTR_ERR(cdev);
+	ret = cpufreq_cooling_register(data->policy);
+	if (ret) {
 		dev_err(bgp->dev, "Failed to register cpu cooling device %d\n",
 			ret);
 		cpufreq_cpu_put(data->policy);
diff --git a/include/linux/cpu_cooling.h b/include/linux/cpu_cooling.h
index 89f469ee4be4..98f7c8a9cab6 100644
--- a/include/linux/cpu_cooling.h
+++ b/include/linux/cpu_cooling.h
@@ -24,8 +24,7 @@ struct cpufreq_policy;
  * cpufreq_cooling_register - function to create cpufreq cooling device.
  * @policy: cpufreq policy.
  */
-struct thermal_cooling_device *
-cpufreq_cooling_register(struct cpufreq_policy *policy);
+int cpufreq_cooling_register(struct cpufreq_policy *policy);
 
 /**
  * cpufreq_cooling_unregister - function to remove cpufreq cooling device.
@@ -34,10 +33,9 @@ cpufreq_cooling_register(struct cpufreq_policy *policy);
 void cpufreq_cooling_unregister(struct cpufreq_policy *policy);
 
 #else /* !CONFIG_CPU_THERMAL */
-static inline struct thermal_cooling_device *
-cpufreq_cooling_register(struct cpufreq_policy *policy)
+static inline int cpufreq_cooling_register(struct cpufreq_policy *policy)
 {
-	return ERR_PTR(-ENOSYS);
+	return -ENOSYS;
 }
 
 static inline
@@ -52,13 +50,11 @@ void cpufreq_cooling_unregister(struct cpufreq_policy *policy)
  * of_cpufreq_cooling_register - create cpufreq cooling device based on DT.
  * @policy: cpufreq policy.
  */
-struct thermal_cooling_device *
-of_cpufreq_cooling_register(struct cpufreq_policy *policy);
+int of_cpufreq_cooling_register(struct cpufreq_policy *policy);
 #else
-static inline struct thermal_cooling_device *
-of_cpufreq_cooling_register(struct cpufreq_policy *policy)
+static inline int of_cpufreq_cooling_register(struct cpufreq_policy *policy)
 {
-	return NULL;
+	return -ENOSYS;
 }
 #endif /* defined(CONFIG_THERMAL_OF) && defined(CONFIG_CPU_THERMAL) */
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
