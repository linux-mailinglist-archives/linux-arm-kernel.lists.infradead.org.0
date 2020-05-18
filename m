Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC171D8400
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:10:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8i07Rs2OgDjQV+aj8zn0NVcAVMaWrwagAPfI+4vX4QE=; b=HViqHon4izttKU
	bbQ3wH0zWayOU0yY2L8ukFv9W8ALDeW6+oS6lb7evskzartYrVe6FIGFRyPU6XNvZold/UEuy3R++
	bJpfmV60vgp1hHdrkBuhOcdA0iq+FyDqGgpH1+4dEdAXM6iyzEfFdS4lt8tR26wSYsnM7DFwS9e9Q
	WpVx5CXiApSimjvbAG4M5ZhEvRXsmNysTcbZbs37CRXFDLrcxs8fvMEhgNPRkqvd5/8Qa9cRskGCg
	rDS8wXGpj7T/hpQShchSuOUHCvC1/0Ts3HFZNCLmz63gOPg3aJLjwERGHEi1z+UklgnRpkvGOdkzq
	NLgK9i40vrSiFic2otzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jakD8-00037n-FX; Mon, 18 May 2020 18:09:58 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6T-0003We-Uq
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:03:07 +0000
Received: by mail-pf1-x443.google.com with SMTP id b190so5307810pfg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dq8B5i493pOtcT+TOE4LZPewgBRMXjn1BYe4NBtmAVw=;
 b=kwiG2DaYFYwGC4mYVBNRxgPJSCEynjYsLPLlusJkO2YkopPhauLwYOY2iFjCQL2b4q
 WeDLAUulKO0ZDZbjNWqGX27zghfaDZHM0aVX4oIJ99E8CoJGMoUORLq/0sNHydqzD3dT
 MS7tqq1KfO2GtdVO5teJQJQh3H4jMYxvv6/3M9083Kve+lH7HekrXR4neNCl+wTbptze
 oYO83gU3lrrAXSSHBdiUaIUY+zG9tU2mS1bImEBLav6bfFMPUbEMRlfwhgUY+Qgl3sXY
 nKh1555HZ/i0xZ3JOYAqQBNR19VMEqj0EQZiPLeOR99FWES58545CxqwCkLmbAUrE1A5
 vkhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dq8B5i493pOtcT+TOE4LZPewgBRMXjn1BYe4NBtmAVw=;
 b=oIFrA8QESpXtTi+qNtqbOkJNLlJcTITTA49jakxS1C5T5ozcA8d8ZT/j2OdWwPrp4g
 kkVvPTdAn3eJBb8M+fq2lXMYm/YKVjC3rWoi/3/bZCwt8D8cCSmxPWydryMCB9zb7UvC
 koZ+DqwjAhhXLxRHL1S3ge2FB8Xo067X+zMOY8taBzUTNQhX5UR169Bggsx+oKK9zPo8
 pFEM/1pOnfMj0KJnQ6pam3BiFSzyQX5c/Z1gGd/v+fnYDV0Rlojsq8Hok09O2uyrrPYF
 rG66V1fH7vGQy/jTxnA1hBdGsIONuTTyDmTNzVsh81U8HGxQCNaefK2TpXcs1pUIyme/
 tJ0w==
X-Gm-Message-State: AOAM533lWsAToOzs0SbNmwSO5hSu56o+bpssMntKXOIlMBUC/8YX9dVL
 tubNk6ELtaI3aXOkdEZUiTLG+IbzGR8=
X-Google-Smtp-Source: ABdhPJyZmcg9BxVanpdURFIT6L3+3OVgOgKdS/p4UZo9QOwZvN+bOXiG9eznhx2sFBxLRpQvbTqW3w==
X-Received: by 2002:a63:33ca:: with SMTP id
 z193mr16553439pgz.210.1589824984972; 
 Mon, 18 May 2020 11:03:04 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.03.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:03:04 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 22/23] coresight: cti: Add CPU Hotplug handling to CTI driver
Date: Mon, 18 May 2020 12:02:41 -0600
Message-Id: <20200518180242.7916-23-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110306_179401_4C423B3A 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Leach <mike.leach@linaro.org>

Adds registration of CPU start and stop functions to CPU hotplug
mechanisms - for any CPU bound CTI.

Sets CTI powered flag according to state.
Will enable CTI on CPU start if there are existing enable requests.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-cti.c | 92 +++++++++++++++++++++
 include/linux/cpuhotplug.h                  |  1 +
 2 files changed, 93 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
index be61c1705916..7e7ec6dd93c0 100644
--- a/drivers/hwtracing/coresight/coresight-cti.c
+++ b/drivers/hwtracing/coresight/coresight-cti.c
@@ -8,6 +8,7 @@
 #include <linux/atomic.h>
 #include <linux/bits.h>
 #include <linux/coresight.h>
+#include <linux/cpuhotplug.h>
 #include <linux/device.h>
 #include <linux/io.h>
 #include <linux/kernel.h>
@@ -40,6 +41,12 @@ static DEFINE_MUTEX(ect_mutex);
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
@@ -129,6 +136,35 @@ static int cti_enable_hw(struct cti_drvdata *drvdata)
 	return rc;
 }
 
+/* re-enable CTI on CPU when using CPU hotplug */
+static void cti_cpuhp_enable_hw(struct cti_drvdata *drvdata)
+{
+	struct cti_config *config = &drvdata->config;
+	struct device *dev = &drvdata->csdev->dev;
+
+	pm_runtime_get_sync(dev->parent);
+	spin_lock(&drvdata->spinlock);
+	config->hw_powered = true;
+
+	/* no need to do anything if no enable request */
+	if (!atomic_read(&drvdata->config.enable_req_count))
+		goto cti_hp_not_enabled;
+
+	/* try to claim the device */
+	if (coresight_claim_device(drvdata->base))
+		goto cti_hp_not_enabled;
+
+	cti_write_all_hw_regs(drvdata);
+	config->hw_enabled = true;
+	spin_unlock(&drvdata->spinlock);
+	return;
+
+	/* did not re-enable due to no claim / no request */
+cti_hp_not_enabled:
+	spin_unlock(&drvdata->spinlock);
+	pm_runtime_put(dev->parent);
+}
+
 /* disable hardware */
 static int cti_disable_hw(struct cti_drvdata *drvdata)
 {
@@ -620,6 +656,44 @@ static void cti_remove_conn_xrefs(struct cti_drvdata *drvdata)
 	}
 }
 
+/* CPU HP handlers */
+static int cti_starting_cpu(unsigned int cpu)
+{
+	struct cti_drvdata *drvdata = cti_cpu_drvdata[cpu];
+
+	if (!drvdata)
+		return 0;
+
+	cti_cpuhp_enable_hw(drvdata);
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
@@ -655,6 +729,7 @@ static void cti_device_release(struct device *dev)
 
 	mutex_lock(&ect_mutex);
 	cti_remove_conn_xrefs(drvdata);
+	cti_pm_release(drvdata);
 
 	/* remove from the list */
 	list_for_each_entry_safe(ect_item, ect_tmp, &ect_net, node) {
@@ -730,6 +805,22 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
 		goto err_out;
 	}
 
+	/* setup CPU power management handling for CPU bound CTI devices. */
+	if (drvdata->ctidev.cpu >= 0) {
+		cti_cpu_drvdata[drvdata->ctidev.cpu] = drvdata;
+		if (!nr_cti_cpu++) {
+			cpus_read_lock();
+			ret = cpuhp_setup_state_nocalls_cpuslocked(
+				CPUHP_AP_ARM_CORESIGHT_CTI_STARTING,
+				"arm/coresight_cti:starting",
+				cti_starting_cpu, cti_dying_cpu);
+
+			cpus_read_unlock();
+			if (ret)
+				goto err_out;
+		}
+	}
+
 	/* create dynamic attributes for connections */
 	ret = cti_create_cons_sysfs(dev, drvdata);
 	if (ret) {
@@ -768,6 +859,7 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
