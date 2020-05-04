Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C82D51C3F8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZWWQGnwhvx1j+bUPKl+Tlh89Zuk5NvRWfH/BAEZaegU=; b=fdO98CmUZ3DGo5BE8W8PqrA9cb
	hAyAE61nYBIhqttu8At94tOi+Qya2Dm29e3uCDG85RQ6545gQOUXN1hwQXXsTbC0+FEQik8zQNcPQ
	4EqUMWbTAoh3uEfkNwFL2JsQM0jKRplcy2hyQXTEstlCbH9vbTF3mAfwiTkfJ3xrimZAJZUdK8rLr
	2vugWsH84GbDdyYM7ZpJheQg672j5iuCqtUbGwJQVyM0lkrgWGslwlN8/oXiY4couuRAajha0Sd2M
	m89yRVr+m0EfVIu22xa40J/siT+Mcom0LAQ1/s91QFpEfVwtpfAyah8X7ArxWrKR4LAc1DY4uYWCc
	pLMfvDXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVdku-0000nC-6W; Mon, 04 May 2020 16:15:44 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVdkn-0000kt-1w
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:15:38 +0000
Received: by mail-wr1-x441.google.com with SMTP id x17so21661638wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 09:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QYuxyo+P/FDXBlWswgDMGcydsZxKqwcbScuDHGuVFFA=;
 b=cgb+So6bHGApjDA5+I8Lfo7O3ZspyQFAs8VprG67L22RhTsX5IWz16fVipQ5O9wtf1
 xCliOCMlDl3tXYf+NsOeIAFXslH2IMHwKTkmu+uIKW41h7PyZKMY1+cCATLBZbEipjs6
 2cxNEU8WfN887nYrQMK3wMsIPUgLMP6KdENezLhm7W8SZ0NV2a1wxXGvDwF4TrWsRZtY
 sZmS1Ku5JglZZTEKN+2bhXDOdrgHEVxgCjjz0vGLV3TPUXK6PIzhzSeJbnyeFeQALDvz
 +9nez3FxFxW8kzw8ZEKidz+AJnvf2Jqf+NqfGBiSLfuL9l9XFeKG0J3wZfQIZwgSNhZ5
 qB7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QYuxyo+P/FDXBlWswgDMGcydsZxKqwcbScuDHGuVFFA=;
 b=dwlPGteKDc90X6gfz21LLA8Z52SHpsoroZCXgbPCIUHeymkNqwNtXKZeqmN4eKwpvt
 QZzeb7Ngky33xmtiGSblXuxg6ZtWj2r11HmxNtBdb34Y/0paamm94PrSAGSKK7GzozdE
 SMVHaJDA5jZBfEe2NCsL1fnGGH9ZQ3qPAt8mnSrJxVsQfV35gfjaE1x5PG4+CdaOAH+l
 PwItnGrOHjFZFaeQT25QcLMbSWJ5srb2G/K6+sxtJWVlbB5Imj9wR780YAB9hI6yPw9R
 /FEaEAXuOxwqQxAxPqsjh4xPXfCtD+g+47U6vnWcw9AAmKREoGKi/iXUfZSvIzDuaImC
 kIFA==
X-Gm-Message-State: AGi0PuaNDcaIzG/XjjQA/wIlvf6eH+F3mdlCCNLX+DnjZiCt66SoJLoZ
 i2RcrZLue2pkDVzjyW008SFKs65+7tU=
X-Google-Smtp-Source: APiQypJ+OpYnlK5EQ9JdYdAOjglW9zOf9gMeUslPL5xlErD+UobqBX9/Wu1beSX9cJvbdtlgXQjiZQ==
X-Received: by 2002:adf:e74a:: with SMTP id c10mr29882wrn.109.1588608934609;
 Mon, 04 May 2020 09:15:34 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:bc12:b74:297d:dafc])
 by smtp.gmail.com with ESMTPSA id k6sm14623756wma.19.2020.05.04.09.15.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 09:15:34 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 mathieu.poirier@linaro.org
Subject: [PATCH v2 1/2] coresight: cti: Add CPU Hotplug handling to CTI driver.
Date: Mon,  4 May 2020 17:15:29 +0100
Message-Id: <20200504161530.9284-2-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504161530.9284-1-mike.leach@linaro.org>
References: <20200504161530.9284-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_091537_100831_D436A615 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Adds registration of CPU start and stop functions to CPU hotplug
mechanisms - for any CPU bound CTI.

Sets CTI powered flag according to state.
Will enable CTI on CPU start if there are existing enable requests.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 drivers/hwtracing/coresight/coresight-cti.c | 91 +++++++++++++++++++++
 include/linux/cpuhotplug.h                  |  1 +
 2 files changed, 92 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
index be61c1705916..9af66719ae5b 100644
--- a/drivers/hwtracing/coresight/coresight-cti.c
+++ b/drivers/hwtracing/coresight/coresight-cti.c
@@ -40,6 +40,12 @@ static DEFINE_MUTEX(ect_mutex);
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
@@ -129,6 +135,35 @@ static int cti_enable_hw(struct cti_drvdata *drvdata)
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
@@ -620,6 +655,44 @@ static void cti_remove_conn_xrefs(struct cti_drvdata *drvdata)
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
@@ -655,6 +728,7 @@ static void cti_device_release(struct device *dev)
 
 	mutex_lock(&ect_mutex);
 	cti_remove_conn_xrefs(drvdata);
+	cti_pm_release(drvdata);
 
 	/* remove from the list */
 	list_for_each_entry_safe(ect_item, ect_tmp, &ect_net, node) {
@@ -730,6 +804,22 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
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
+			cpus_read_unlock();
+			if (ret)
+				goto err_out;
+		}
+	}
+
 	/* create dynamic attributes for connections */
 	ret = cti_create_cons_sysfs(dev, drvdata);
 	if (ret) {
@@ -768,6 +858,7 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
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
