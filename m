Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E91461AB250
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 22:11:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=e7hEc1zQY1yRi6RmLzNCJ1lWE/Omj7hqt0WvEM6QJxg=; b=upy
	YyGmb8D1tboJas6iJIGnqR9BqKkFOOpjRS0KfR4005iMflZamvEo/Dq0nFT/HfpA2dKZeqEdq3knK
	hYWxCNQaIQheids4o2/1ctI+ReGgrVIFw079yYhjYuS7PPBn6dGPk4rLJICmNKLIN9+G4EymVOL1u
	ByTnYRKw04AiFCDOLDYDoh3W0/ZdFG9lu2RJfvJ3MoIaPElvlwUwqXgV+xjFOvpJwUgxBUsrm0rmf
	kllc/w8/s/sIvv8/O9o997Xl2gGnLRdNVRkH0qOYppTY0IyAGEfV9TPbQhQk4RUWYJj2C/CY1e14C
	hNcJQuK/5MApuD3f+oklyCnjoV3RFPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOoNe-0005kb-F4; Wed, 15 Apr 2020 20:11:30 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOoNW-0005kF-RD
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 20:11:24 +0000
Received: by mail-wr1-x444.google.com with SMTP id i10so1588618wrv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 13:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Drr/yY+znlI8sEj9XabJUpYsUcwkiT2IGUcJLiV7vLQ=;
 b=q6XtY99+G6Zl/LTbKRE09pES+mIOPFa2LK+uAOGYHiyuUdX8WTKWCvz1wh9DiG8cql
 ax7bTf3MJIToKAss/raXGEoViKwVwjECm9dFVorsuCmr4kGkvkwYH4dzxQmVSvJsBhd+
 KQxnhJiwIUiaTY6UNNbJFLSHLs6L9ivCjIjrto7eP2jPvu2+F8PHDVsrGLVRNhFWqiq4
 VLebrSFOft+IsybZBfE4vuvotH4fYc/IwGj+MX/6FCbuiM1vbDdLYyofpTFFqUoPPHIY
 4bJhasT+jRClZXy92g7SSgmIQHmGU5+9TnwpZLFKVMcZ3doEVK2aCpIv91siRv0pqMW3
 3/6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Drr/yY+znlI8sEj9XabJUpYsUcwkiT2IGUcJLiV7vLQ=;
 b=T8l6fHxI/3io8EBCBM3JdvXjj57n5CHXBk/jpk+GN/N4nXc4oASAZUPJ5uh8cEsOgj
 nJhEmashgOhS+nV9mKtdqDXYuUFfXwrhZ6kSsnQG1UW1mOvilgLVHSGF2d7Dl8+Z7olS
 ykZP5OjhBNDPQQq/8yxwIBJfnP0X9hlqQxrEo/H8f+FXrZzWMu1g/ONW9oEm0JZAQRtT
 xSbmyKmK7g/3lIqd6FOwRoTlxvxVEUNKyeN5EQt7O+kwLmAV+uXmibdYhaxTkm7qfB/S
 4YFqYkkrvAlcYuaL7LL5r6n0AZGEthYcUKVQ0JpGq+YhWdOMtwa6UP8perEUsKUQQRnc
 6mCw==
X-Gm-Message-State: AGi0PuaiSmmL6X7gHuhp3HEMiXchAun2nuQ1x+FzB/4mOKVOUxlyGVC9
 3umnUUmsgkixc4JiiQNrV6sGyM34ZVIvJQ==
X-Google-Smtp-Source: APiQypILQy+OM+iic3hDIkb8HIpfx660UiErfpRFuB8lJpwNfGfHW1ZuImzRjty2mNhDMV99KYL5ew==
X-Received: by 2002:adf:d0ca:: with SMTP id z10mr24415390wrh.172.1586981480343; 
 Wed, 15 Apr 2020 13:11:20 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:8bee:312:6092:58f2])
 by smtp.gmail.com with ESMTPSA id t67sm751687wmg.40.2020.04.15.13.11.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 13:11:19 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 mathieu.poirier@linaro.org
Subject: [PATCH] coresight: cti: Add power management to CTI driver
Date: Wed, 15 Apr 2020 21:11:16 +0100
Message-Id: <20200415201116.15687-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_131122_879729_A7C60CFA 
X-CRM114-Status: GOOD (  20.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mike Leach <mike.leach@linaro.org>, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add in CPU hotplug and CPU idle power management handling to CTI driver.

Only CPU bound CTIs will register with the PM routines, to enable PM of
CTI alongside PM of ETM devices.

Need separate HP PM event CPUHP_AP_ARM_CORESIGHT_CTI_STARTING as events
can only be registered once.

Applies to Linux 5.7-rc1, tested on platforms Juno-r1 and DB410c.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 drivers/hwtracing/coresight/coresight-cti.c | 163 +++++++++++++++++++-
 include/linux/cpuhotplug.h                  |   1 +
 2 files changed, 156 insertions(+), 8 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
index aa6e0249bd70..31996a20ce69 100644
--- a/drivers/hwtracing/coresight/coresight-cti.c
+++ b/drivers/hwtracing/coresight/coresight-cti.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/property.h>
+#include <linux/cpu_pm.h>
 #include "coresight-cti.h"
 
 /**
@@ -27,6 +28,12 @@ static DEFINE_MUTEX(ect_mutex);
 #define csdev_to_cti_drvdata(csdev)	\
 	dev_get_drvdata(csdev->dev.parent)
 
+/* power management handling */
+static int nr_cti_cpu;
+
+/* quick lookup list for CPU bound CTIs when power handling */
+static struct cti_drvdata *cti_cpu_drvdata[NR_CPUS];
+
 /*
  * CTI naming. CTI bound to cores will have the name cti_cpu<N> where
  * N is the CPU ID. System CTIs will have the name cti_sys<I> where I
@@ -36,7 +43,7 @@ static DEFINE_MUTEX(ect_mutex);
  */
 DEFINE_CORESIGHT_DEVLIST(cti_sys_devs, "cti_sys");
 
-/* write set of regs to hardware - call with spinlock claimed */
+/* write set of regs to hardware - call with spinlock claimed / cpu context */
 void cti_write_all_hw_regs(struct cti_drvdata *drvdata)
 {
 	struct cti_config *config = &drvdata->config;
@@ -73,7 +80,7 @@ static void cti_enable_hw_smp_call(void *info)
 }
 
 /* write regs to hardware and enable */
-static int cti_enable_hw(struct cti_drvdata *drvdata)
+static int cti_enable_hw(struct cti_drvdata *drvdata, bool hp_re_enable)
 {
 	struct cti_config *config = &drvdata->config;
 	struct device *dev = &drvdata->csdev->dev;
@@ -82,8 +89,11 @@ static int cti_enable_hw(struct cti_drvdata *drvdata)
 	pm_runtime_get_sync(dev->parent);
 	spin_lock(&drvdata->spinlock);
 
-	/* no need to do anything if enabled or unpowered*/
-	if (config->hw_enabled || !config->hw_powered)
+	/* no need to do anything if enabled or unpowered */
+	if (!hp_re_enable) {
+		if (config->hw_enabled || !config->hw_powered)
+			goto cti_state_unchanged;
+	} else if (!atomic_read(&drvdata->config.enable_req_count))
 		goto cti_state_unchanged;
 
 	/* claim the device */
@@ -91,7 +101,7 @@ static int cti_enable_hw(struct cti_drvdata *drvdata)
 	if (rc)
 		goto cti_err_not_enabled;
 
-	if (drvdata->ctidev.cpu >= 0) {
+	if (drvdata->ctidev.cpu >= 0 && !hp_re_enable) {
 		rc = smp_call_function_single(drvdata->ctidev.cpu,
 					      cti_enable_hw_smp_call,
 					      drvdata, 1);
@@ -102,12 +112,15 @@ static int cti_enable_hw(struct cti_drvdata *drvdata)
 	}
 
 	config->hw_enabled = true;
-	atomic_inc(&drvdata->config.enable_req_count);
+	if (!hp_re_enable)
+		atomic_inc(&drvdata->config.enable_req_count);
+
 	spin_unlock(&drvdata->spinlock);
 	return rc;
 
 cti_state_unchanged:
-	atomic_inc(&drvdata->config.enable_req_count);
+	if (!hp_re_enable)
+		atomic_inc(&drvdata->config.enable_req_count);
 
 	/* cannot enable due to error */
 cti_err_not_enabled:
@@ -563,12 +576,127 @@ static void cti_remove_conn_xrefs(struct cti_drvdata *drvdata)
 	}
 }
 
+/** cti PM callbacks **/
+static int cti_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
+			     void *v)
+{
+	struct cti_drvdata *drvdata;
+	unsigned int cpu = smp_processor_id();
+
+	if (!cti_cpu_drvdata[cpu])
+		return NOTIFY_OK;
+
+	drvdata = cti_cpu_drvdata[cpu];
+
+	if (WARN_ON_ONCE(drvdata->ctidev.cpu != cpu))
+		return NOTIFY_BAD;
+
+	switch (cmd) {
+	case CPU_PM_ENTER:
+		/* CTI regs all static - we have a copy & nothing to save */
+		drvdata->config.hw_powered = false;
+		if (drvdata->config.hw_enabled)
+			coresight_disclaim_device(drvdata->base);
+		break;
+
+	case CPU_PM_ENTER_FAILED:
+		drvdata->config.hw_powered = true;
+		if (drvdata->config.hw_enabled) {
+			if (coresight_claim_device(drvdata->base))
+				drvdata->config.hw_enabled = false;
+		}
+		break;
+
+	case CPU_PM_EXIT:
+		/* write hardware registers to re-enable. */
+		drvdata->config.hw_powered = true;
+		drvdata->config.hw_enabled = false;
+
+		/* check enable reference count to enable HW */
+		if (atomic_read(&drvdata->config.enable_req_count)) {
+			/* check we can claim the device as we re-power */
+			if (coresight_claim_device(drvdata->base))
+				return NOTIFY_OK;
+
+			drvdata->config.hw_enabled = true;
+			cti_write_all_hw_regs(drvdata);
+		}
+		break;
+	default:
+		return NOTIFY_DONE;
+	}
+
+	return NOTIFY_OK;
+}
+
+static struct notifier_block cti_cpu_pm_nb = {
+	.notifier_call = cti_cpu_pm_notify,
+};
+
+static int cti_cpu_pm_register(void)
+{
+	if (IS_ENABLED(CONFIG_CPU_PM))
+		return cpu_pm_register_notifier(&cti_cpu_pm_nb);
+
+	return 0;
+}
+
+static void cti_cpu_pm_unregister(void)
+{
+	if (IS_ENABLED(CONFIG_CPU_PM))
+		cpu_pm_unregister_notifier(&cti_cpu_pm_nb);
+}
+
+/* CPU HP handlers */
+static int cti_starting_cpu(unsigned int cpu)
+{
+	struct cti_drvdata *drvdata = cti_cpu_drvdata[cpu];
+
+	if (!drvdata)
+		return 0;
+
+	spin_lock(&drvdata->spinlock);
+	drvdata->config.hw_powered = true;
+	spin_unlock(&drvdata->spinlock);
+
+	cti_enable_hw(drvdata, true);
+	return 0;
+}
+
+static int cti_dying_cpu(unsigned int cpu)
+{
+	struct cti_drvdata *drvdata = cti_cpu_drvdata[cpu];
+
+	if (!drvdata)
+		return 0;
+
+	spin_lock(&drvdata->spinlock);
+	drvdata->config.hw_powered = false;
+	coresight_disclaim_device(drvdata->base);
+	spin_unlock(&drvdata->spinlock);
+	return 0;
+}
+
+/* release PM registrations */
+static void cti_pm_release(struct cti_drvdata *drvdata)
+{
+	if (drvdata->ctidev.cpu >= 0) {
+		if (--nr_cti_cpu == 0) {
+			cti_cpu_pm_unregister();
+
+			cpuhp_remove_state_nocalls(
+				CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
+		}
+		cti_cpu_drvdata[drvdata->ctidev.cpu] = NULL;
+	}
+}
+
 /** cti ect operations **/
 int cti_enable(struct coresight_device *csdev)
 {
 	struct cti_drvdata *drvdata = csdev_to_cti_drvdata(csdev);
 
-	return cti_enable_hw(drvdata);
+	return cti_enable_hw(drvdata, false);
 }
 
 int cti_disable(struct coresight_device *csdev)
@@ -598,6 +726,7 @@ static void cti_device_release(struct device *dev)
 
 	mutex_lock(&ect_mutex);
 	cti_remove_conn_xrefs(drvdata);
+	cti_pm_release(drvdata);
 
 	/* remove from the list */
 	list_for_each_entry_safe(ect_item, ect_tmp, &ect_net, node) {
@@ -673,6 +802,23 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
 		goto err_out;
 	}
 
+	/* setup CPU power management handling for CPU bound CTI devices. */
+	if (drvdata->ctidev.cpu >= 0) {
+		cti_cpu_drvdata[drvdata->ctidev.cpu] = drvdata;
+		if (!nr_cti_cpu++) {
+			cpus_read_lock();
+			cpuhp_setup_state_nocalls_cpuslocked(
+				CPUHP_AP_ARM_CORESIGHT_CTI_STARTING,
+				"arm/coresight_cti:starting",
+				cti_starting_cpu, cti_dying_cpu);
+
+			ret = cti_cpu_pm_register();
+			cpus_read_unlock();
+			if (ret)
+				goto err_out;
+		}
+	}
+
 	/* create dynamic attributes for connections */
 	ret = cti_create_cons_sysfs(dev, drvdata);
 	if (ret) {
@@ -711,6 +857,7 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
 	return 0;
 
 err_out:
+	cti_pm_release(drvdata);
 	return ret;
 }
 
diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
index 77d70b633531..6dc7332307ca 100644
--- a/include/linux/cpuhotplug.h
+++ b/include/linux/cpuhotplug.h
@@ -142,6 +142,7 @@ enum cpuhp_state {
 	CPUHP_AP_ARM_XEN_STARTING,
 	CPUHP_AP_ARM_KVMPV_STARTING,
 	CPUHP_AP_ARM_CORESIGHT_STARTING,
+	CPUHP_AP_ARM_CORESIGHT_CTI_STARTING,
 	CPUHP_AP_ARM64_ISNDEP_STARTING,
 	CPUHP_AP_SMPCFD_DYING,
 	CPUHP_AP_X86_TBOOT_DYING,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
