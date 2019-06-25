Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFE254DB4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 13:33:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UwEv2R7yQWFi4TEPZpgQC+G2NILI0FlX5X1qeCreMr0=; b=ZPtdpPiK6xNShxBPDd9K/MaSSf
	8ZICJBQ0cS4tSiTlxfLFS5WOAFW2tPlvTsy4ldI9/HRbum1DKurq5u4vgYDWrekl5rQJKJ9oBN7qX
	To4KEupLSqgXO9rw6xL5Tzkwfqx8RVFa2jhnMZvRiarPomDpXhuIucUSIC53dYb2GWnTtgcMLZzBP
	vu65y2mQZZTwZJovdqdV+VBl5RBzq/A/+wSHUCbAWAKh3JUAaFXwiAmc29Zp3iHGU8o6HPnYOVUuh
	bY/CVP0Bq2uhsjmDhFYAvToRYYy2ph2qTglmTH/FZMKZroU4i6yZZbw0cwsRYx29uuiNZ8SAEeNp6
	njklbRJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfjhL-0004V0-7M; Tue, 25 Jun 2019 11:33:15 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfjhC-0004Tf-3w
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 11:33:07 +0000
Received: by mail-wm1-x344.google.com with SMTP id 207so2444214wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 04:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=c7CCpWI+/OeSnAZNxPcSfFi2CB+szsEQQpfXaxE/tl0=;
 b=qTMHxC9CeRpqDHLaZy4aGrM7ERq5C4/zgdN78ZYqZkF/g3sAqz0sAtrwa2SJHXL32D
 PEcGuBK+OAehSU7WFB2nNBNTlwvQC0/RLJevxjYrX4EJOPhJWdfEtGih+16h8xLr53y0
 ImwdJZYQKD5S4bcWfgtBjcghLHc82l2+cqGJV2ETQvylCnUoyyBg8x2naSt5fMIIi686
 uecJ20VM+OoYhOFP0EPxo6Uv7feHcJR7IbpQ9IQ7UK4cHitnpFLWDFUQdyzjr+Z/9BO/
 JvDAXjh1zuV+pf5Z4bH49r8bkgDoycap9B7nVIGgWWc6JOQdOwoP7+4M9fNW44SThawA
 2Q3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=c7CCpWI+/OeSnAZNxPcSfFi2CB+szsEQQpfXaxE/tl0=;
 b=PrNQpZUEglMNtHKZKs0VjynWSP9P1QSGulBZFilA6k0HIXKSwBmjVoA+qB0ZeWxMdQ
 jsHsBSZ758lqICNxGa7xg8CxFXt9MFSsycQrwcTANcycV7PgJ5mBg3Kj6jSLZwwykOBr
 x9is/NZW5ueYdfkLpDBLXNbb9Uqz3+ym3beMqOsBEnba7v4WaJHoZiwT/WmEZtA36qGb
 XQ/JWKbbnr1QQhjqm0Ov1HdjUykJ8R43uU8CaPcYzZwhBeJ6QtiRJ4qlB4sf+8g32JAP
 HcIGXoe6ocon4/2ZLfh8nl1cmYZeNxGmJvtpsASCmcp+PVB3KRJH5ZQVdcJFYVoSp7fI
 N3Lg==
X-Gm-Message-State: APjAAAU8rB3vjrwrCUOcqhxuUke+vSj5wMXkZYu9LJIcZToWApGloxnS
 ZKZwOfxo9JrJkyQCks4GVxtTnw==
X-Google-Smtp-Source: APXvYqzGBHjREnM1+Mi60WYorrfx/XrPYYhLH+0gdkA2uB6ETc2yn3RU2mGl0wIKbC4qfQbRrha7aQ==
X-Received: by 2002:a1c:5f87:: with SMTP id
 t129mr20868074wmb.150.1561462382516; 
 Tue, 25 Jun 2019 04:33:02 -0700 (PDT)
Received: from clegane.local (191.184.66.86.rev.sfr.net. [86.66.184.191])
 by smtp.gmail.com with ESMTPSA id j7sm19254284wru.54.2019.06.25.04.33.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 04:33:01 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: viresh.kumar@linaro.org
Subject: [PATCH V3 2/3] thermal/drivers/cpu_cooling: Unregister with the policy
Date: Tue, 25 Jun 2019 13:32:42 +0200
Message-Id: <20190625113244.18146-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190625113244.18146-1-daniel.lezcano@linaro.org>
References: <20190625113244.18146-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_043306_170234_B3F5CB69 
X-CRM114-Status: GOOD (  22.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: Keerthy <j-keerthy@ti.com>,
 "open list:CPU FREQUENCY DRIVERS - ARM BIG LITTLE"
 <linux-pm@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, edubezval@gmail.com,
 "open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Zhang Rui <rui.zhang@intel.com>,
 Javi Merino <javi.merino@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the function cpufreq_cooling_register() returns a cooling
device pointer which is used back as a pointer to call the function
cpufreq_cooling_unregister(). Even if it is correct, it would make
sense to not leak the structure inside a cpufreq driver and keep the
code thermal code self-encapsulate. Moreover, that forces to add an
extra variable in each driver using this function.

Instead of passing the cooling device to unregister, pass the policy.

Because the cpufreq_cooling_unregister() function uses the policy to
unregister itself. The only purpose of the cooling device pointer is
to unregister the cpu cooling device.

As there is no more need of this pointer, remove it.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 drivers/cpufreq/arm_big_little.c               |  9 +++------
 drivers/cpufreq/cpufreq.c                      | 10 ++++------
 drivers/thermal/cpu_cooling.c                  | 18 ++++++++++--------
 drivers/thermal/imx_thermal.c                  | 12 ++++++------
 .../thermal/ti-soc-thermal/ti-thermal-common.c | 10 +++++-----
 include/linux/cpu_cooling.h                    |  6 +++---
 include/linux/cpufreq.h                        |  3 ---
 7 files changed, 31 insertions(+), 37 deletions(-)

diff --git a/drivers/cpufreq/arm_big_little.c b/drivers/cpufreq/arm_big_little.c
index 7fe52fcddcf1..718c63231e66 100644
--- a/drivers/cpufreq/arm_big_little.c
+++ b/drivers/cpufreq/arm_big_little.c
@@ -56,7 +56,6 @@ static bool bL_switching_enabled;
 #define ACTUAL_FREQ(cluster, freq)  ((cluster == A7_CLUSTER) ? freq << 1 : freq)
 #define VIRT_FREQ(cluster, freq)    ((cluster == A7_CLUSTER) ? freq >> 1 : freq)
 
-static struct thermal_cooling_device *cdev[MAX_CLUSTERS];
 static const struct cpufreq_arm_bL_ops *arm_bL_ops;
 static struct clk *clk[MAX_CLUSTERS];
 static struct cpufreq_frequency_table *freq_table[MAX_CLUSTERS + 1];
@@ -501,10 +500,8 @@ static int bL_cpufreq_exit(struct cpufreq_policy *policy)
 	struct device *cpu_dev;
 	int cur_cluster = cpu_to_cluster(policy->cpu);
 
-	if (cur_cluster < MAX_CLUSTERS) {
-		cpufreq_cooling_unregister(cdev[cur_cluster]);
-		cdev[cur_cluster] = NULL;
-	}
+	if (cur_cluster < MAX_CLUSTERS)
+		cpufreq_cooling_unregister(policy);
 
 	cpu_dev = get_cpu_device(policy->cpu);
 	if (!cpu_dev) {
@@ -527,7 +524,7 @@ static void bL_cpufreq_ready(struct cpufreq_policy *policy)
 	if (cur_cluster >= MAX_CLUSTERS)
 		return;
 
-	cdev[cur_cluster] = of_cpufreq_cooling_register(policy);
+	of_cpufreq_cooling_register(policy);
 }
 
 static struct cpufreq_driver bL_cpufreq_driver = {
diff --git a/drivers/cpufreq/cpufreq.c b/drivers/cpufreq/cpufreq.c
index aee024e42618..f07454249fbc 100644
--- a/drivers/cpufreq/cpufreq.c
+++ b/drivers/cpufreq/cpufreq.c
@@ -1379,8 +1379,8 @@ static int cpufreq_online(unsigned int cpu)
 		cpufreq_driver->ready(policy);
 
 	if (cpufreq_thermal_control_enabled(cpufreq_driver))
-		policy->cdev = of_cpufreq_cooling_register(policy);
-
+		of_cpufreq_cooling_register(policy);
+	
 	pr_debug("initialization complete\n");
 
 	return 0;
@@ -1468,10 +1468,8 @@ static int cpufreq_offline(unsigned int cpu)
 		goto unlock;
 	}
 
-	if (cpufreq_thermal_control_enabled(cpufreq_driver)) {
-		cpufreq_cooling_unregister(policy->cdev);
-		policy->cdev = NULL;
-	}
+	if (cpufreq_thermal_control_enabled(cpufreq_driver))
+		cpufreq_cooling_unregister(policy);
 
 	if (cpufreq_driver->stop_cpu)
 		cpufreq_driver->stop_cpu(policy);
diff --git a/drivers/thermal/cpu_cooling.c b/drivers/thermal/cpu_cooling.c
index 83486775e593..007c7c6bf845 100644
--- a/drivers/thermal/cpu_cooling.c
+++ b/drivers/thermal/cpu_cooling.c
@@ -78,6 +78,7 @@ struct cpufreq_cooling_device {
 	struct cpufreq_policy *policy;
 	struct list_head node;
 	struct time_in_idle *idle_time;
+	struct thermal_cooling_device *cdev;
 };
 
 static DEFINE_IDA(cpufreq_ida);
@@ -606,6 +607,7 @@ __cpufreq_cooling_register(struct device_node *np,
 		goto remove_ida;
 
 	cpufreq_cdev->clipped_freq = get_state_freq(cpufreq_cdev, 0);
+	cpufreq_cdev->cdev = cdev;
 
 	mutex_lock(&cooling_list_lock);
 	/* Register the notifier for first cpufreq cooling device */
@@ -699,18 +701,18 @@ EXPORT_SYMBOL_GPL(of_cpufreq_cooling_register);
  *
  * This interface function unregisters the "thermal-cpufreq-%x" cooling device.
  */
-void cpufreq_cooling_unregister(struct thermal_cooling_device *cdev)
+void cpufreq_cooling_unregister(struct cpufreq_policy *policy)
 {
 	struct cpufreq_cooling_device *cpufreq_cdev;
 	bool last;
 
-	if (!cdev)
-		return;
-
-	cpufreq_cdev = cdev->devdata;
-
 	mutex_lock(&cooling_list_lock);
-	list_del(&cpufreq_cdev->node);
+	list_for_each_entry(cpufreq_cdev, &cpufreq_cdev_list, node) {
+		if (cpufreq_cdev->policy == policy) {
+			list_del(&cpufreq_cdev->node);
+			break;
+		}
+	}
 	/* Unregister the notifier for the last cpufreq cooling device */
 	last = list_empty(&cpufreq_cdev_list);
 	mutex_unlock(&cooling_list_lock);
@@ -719,7 +721,7 @@ void cpufreq_cooling_unregister(struct thermal_cooling_device *cdev)
 		cpufreq_unregister_notifier(&thermal_cpufreq_notifier_block,
 					    CPUFREQ_POLICY_NOTIFIER);
 
-	thermal_cooling_device_unregister(cdev);
+	thermal_cooling_device_unregister(cpufreq_cdev->cdev);
 	ida_simple_remove(&cpufreq_ida, cpufreq_cdev->id);
 	kfree(cpufreq_cdev->idle_time);
 	kfree(cpufreq_cdev);
diff --git a/drivers/thermal/imx_thermal.c b/drivers/thermal/imx_thermal.c
index bb6754a5342c..021c0948b740 100644
--- a/drivers/thermal/imx_thermal.c
+++ b/drivers/thermal/imx_thermal.c
@@ -203,7 +203,6 @@ static struct thermal_soc_data thermal_imx7d_data = {
 struct imx_thermal_data {
 	struct cpufreq_policy *policy;
 	struct thermal_zone_device *tz;
-	struct thermal_cooling_device *cdev;
 	enum thermal_device_mode mode;
 	struct regmap *tempmon;
 	u32 c1, c2; /* See formula in imx_init_calib() */
@@ -656,6 +655,7 @@ MODULE_DEVICE_TABLE(of, of_imx_thermal_match);
 static int imx_thermal_register_legacy_cooling(struct imx_thermal_data *data)
 {
 	struct device_node *np;
+	struct thermal_cooling_device *cdev;
 	int ret;
 
 	data->policy = cpufreq_cpu_get(0);
@@ -667,9 +667,9 @@ static int imx_thermal_register_legacy_cooling(struct imx_thermal_data *data)
 	np = of_get_cpu_node(data->policy->cpu, NULL);
 
 	if (!np || !of_find_property(np, "#cooling-cells", NULL)) {
-		data->cdev = cpufreq_cooling_register(data->policy);
-		if (IS_ERR(data->cdev)) {
-			ret = PTR_ERR(data->cdev);
+		cdev = cpufreq_cooling_register(data->policy);
+		if (IS_ERR(cdev)) {
+			ret = PTR_ERR(cdev);
 			cpufreq_cpu_put(data->policy);
 			return ret;
 		}
@@ -680,7 +680,7 @@ static int imx_thermal_register_legacy_cooling(struct imx_thermal_data *data)
 
 static void imx_thermal_unregister_legacy_cooling(struct imx_thermal_data *data)
 {
-	cpufreq_cooling_unregister(data->cdev);
+	cpufreq_cooling_unregister(data->policy);
 	cpufreq_cpu_put(data->policy);
 }
 
@@ -872,7 +872,7 @@ static int imx_thermal_remove(struct platform_device *pdev)
 		clk_disable_unprepare(data->thermal_clk);
 
 	thermal_zone_device_unregister(data->tz);
-	cpufreq_cooling_unregister(data->cdev);
+	cpufreq_cooling_unregister(data->policy);
 	cpufreq_cpu_put(data->policy);
 
 	return 0;
diff --git a/drivers/thermal/ti-soc-thermal/ti-thermal-common.c b/drivers/thermal/ti-soc-thermal/ti-thermal-common.c
index b4f981daeaf2..170b70b6ec61 100644
--- a/drivers/thermal/ti-soc-thermal/ti-thermal-common.c
+++ b/drivers/thermal/ti-soc-thermal/ti-thermal-common.c
@@ -41,7 +41,6 @@ struct ti_thermal_data {
 	struct cpufreq_policy *policy;
 	struct thermal_zone_device *ti_thermal;
 	struct thermal_zone_device *pcb_tz;
-	struct thermal_cooling_device *cool_dev;
 	struct ti_bandgap *bgp;
 	enum thermal_device_mode mode;
 	struct work_struct thermal_wq;
@@ -233,6 +232,7 @@ int ti_thermal_register_cpu_cooling(struct ti_bandgap *bgp, int id)
 {
 	struct ti_thermal_data *data;
 	struct device_node *np = bgp->dev->of_node;
+	struct thermal_cooling_device *cdev;
 
 	/*
 	 * We are assuming here that if one deploys the zone
@@ -256,9 +256,9 @@ int ti_thermal_register_cpu_cooling(struct ti_bandgap *bgp, int id)
 	}
 
 	/* Register cooling device */
-	data->cool_dev = cpufreq_cooling_register(data->policy);
-	if (IS_ERR(data->cool_dev)) {
-		int ret = PTR_ERR(data->cool_dev);
+	cdev = cpufreq_cooling_register(data->policy);
+	if (IS_ERR(cdev)) {
+		int ret = PTR_ERR(cdev);
 		dev_err(bgp->dev, "Failed to register cpu cooling device %d\n",
 			ret);
 		cpufreq_cpu_put(data->policy);
@@ -277,7 +277,7 @@ int ti_thermal_unregister_cpu_cooling(struct ti_bandgap *bgp, int id)
 	data = ti_bandgap_get_sensor_data(bgp, id);
 
 	if (data) {
-		cpufreq_cooling_unregister(data->cool_dev);
+		cpufreq_cooling_unregister(data->policy);
 		if (data->policy)
 			cpufreq_cpu_put(data->policy);
 	}
diff --git a/include/linux/cpu_cooling.h b/include/linux/cpu_cooling.h
index bae54bb7c048..89f469ee4be4 100644
--- a/include/linux/cpu_cooling.h
+++ b/include/linux/cpu_cooling.h
@@ -29,9 +29,9 @@ cpufreq_cooling_register(struct cpufreq_policy *policy);
 
 /**
  * cpufreq_cooling_unregister - function to remove cpufreq cooling device.
- * @cdev: thermal cooling device pointer.
+ * @policy: cpufreq policy
  */
-void cpufreq_cooling_unregister(struct thermal_cooling_device *cdev);
+void cpufreq_cooling_unregister(struct cpufreq_policy *policy);
 
 #else /* !CONFIG_CPU_THERMAL */
 static inline struct thermal_cooling_device *
@@ -41,7 +41,7 @@ cpufreq_cooling_register(struct cpufreq_policy *policy)
 }
 
 static inline
-void cpufreq_cooling_unregister(struct thermal_cooling_device *cdev)
+void cpufreq_cooling_unregister(struct cpufreq_policy *policy)
 {
 	return;
 }
diff --git a/include/linux/cpufreq.h b/include/linux/cpufreq.h
index a1467aa7f58b..ce13204df972 100644
--- a/include/linux/cpufreq.h
+++ b/include/linux/cpufreq.h
@@ -144,9 +144,6 @@ struct cpufreq_policy {
 
 	/* For cpufreq driver's internal use */
 	void			*driver_data;
-
-	/* Pointer to the cooling device if used for thermal mitigation */
-	struct thermal_cooling_device *cdev;
 };
 
 struct cpufreq_freqs {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
