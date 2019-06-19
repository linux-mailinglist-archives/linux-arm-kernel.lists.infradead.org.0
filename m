Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D22A4BFBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:35:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fOp2/oOk7Zz9ZjAZ6Zc2e0BwUlGOhM3hQYY0PAKzhxk=; b=n4kMNRjYTVFm3OMAKirzcqV/IS
	qf2i3XMTODCpoPBodhe+urx/vzFN+ONe4+hvGGpJELk+msGKzrobAVg1BY81Gbx2/l3uuVVrDUT/I
	eRse1FJxgMmx3WvyxjDwwvf0u7m+53hfWAONqV7g1x9IP2FRlnoj9pbVoixOq1oTH+ed9+vaRqjsx
	WhR6fyXode0ZssOac0SXlAegWz3JKO6pIyWerbofU/5gFpNDQT5gIlXRfuYsbNx0exefAKW6GoPJd
	dOBCyFxlr6VlszzSooub5KzYKeK5XH0fbQKVPhZ5siyV2sihXmEIQxqGnqG/uvAlRaRUlLaNUVheD
	m+s9xQgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeUa-0004xX-H8; Wed, 19 Jun 2019 17:35:28 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePO-0007Kz-Dr
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:12 +0000
Received: by mail-pl1-x641.google.com with SMTP id cl9so83930plb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lvgzx4njTfDigJ2kDesfu5Opq/+bwO83R2/El41gk9k=;
 b=BBSQ3HqJUV596JN2ghSG7u3nSDPnDYJ4RUAwuEsBZtCqlY8a3O5uHlXcaZzPDkuv0v
 UHH2WPAzHFN+oWktHIxdZRw2Ry2ABen/htfSbtbjvpycPyh+QqoMXtlqjkBOz2L+ojSB
 /viY3iA0yp69rkLprs+1B/GTjtoVt8RQWdAaMSEgA9B5kdaDc1OUnWgNvLa6FLrdL58N
 8xMewUb9Vu26H3HYObmk4tgEnDctjUwUiW2MkbI2p2Ih2TPhS3dZKta0vpFsgznK808x
 5cHkGDgxRaCs7ay0Da2/39vcUAWxsHfOnC566iyChsv0bR71VaUAedFhkOGX8pmeMdxD
 86vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lvgzx4njTfDigJ2kDesfu5Opq/+bwO83R2/El41gk9k=;
 b=mVAE/RCwtYvrUcxw2Yd04le+UepOJoa1A3C8Hd+MlTaZsXadknu1IGl9EVMWvTOOnL
 sGnKFjGt7O2TAnudzmDOu38KGHpB4v7CzxFvPvH9zqhcDwkxSGzM6zW8bQXq+Bpg+wAZ
 MVYYMjD0p4/p1R9NHNX+RZ2GXkhH/27kRQQwf+XSrwGIlwPTyJ2FV9N+pa2DUsYPUzGe
 EBHk6ZJENfp4nV63bWqTxn61piBKHYiDmNPBJOPGO8A67zErXXtcwBNFv3Qgb3wEGqqz
 fpcX2wDfZ1ZbJsdvX6EB7oGtiDEtZKTW2Dx8x7aFKxJKZ/JAXTMK0wIDYXusbgHDE044
 1F7Q==
X-Gm-Message-State: APjAAAUf4wlCKeTMavcsvky60StSebGXXc7Jld6GjRTkGopoKPsbcd8O
 IIWq2IGFAA2ylxV0bnCnoA0OS/ZHGTbz8Q==
X-Google-Smtp-Source: APXvYqwuz+047K8HunEGAwBw4iwyc7Yi6l3Q33Sj6LWkGDDL9MU0GSxPrru0h+RvJAtEGtyQeIeOew==
X-Received: by 2002:a17:902:2a69:: with SMTP id
 i96mr111387111plb.108.1560965402940; 
 Wed, 19 Jun 2019 10:30:02 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:02 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 12/45] coresight: etm: Clean up device specific data
Date: Wed, 19 Jun 2019 11:29:16 -0600
Message-Id: <20190619172949.4522-13-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103006_804197_0E7CE154 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

Track the coresight device instead of the real device.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm.h   |  6 ++---
 .../coresight/coresight-etm3x-sysfs.c         | 12 +++++-----
 drivers/hwtracing/coresight/coresight-etm3x.c | 22 ++++++++++---------
 drivers/hwtracing/coresight/coresight-etm4x.c | 17 +++++++-------
 drivers/hwtracing/coresight/coresight-etm4x.h |  2 --
 5 files changed, 29 insertions(+), 30 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm.h b/drivers/hwtracing/coresight/coresight-etm.h
index 79e1ad860d8a..f3ab96eaf44e 100644
--- a/drivers/hwtracing/coresight/coresight-etm.h
+++ b/drivers/hwtracing/coresight/coresight-etm.h
@@ -208,7 +208,6 @@ struct etm_config {
 /**
  * struct etm_drvdata - specifics associated to an ETM component
  * @base:	memory mapped base address for this component.
- * @dev:	the device entity associated to this component.
  * @atclk:	optional clock for the core parts of the ETM.
  * @csdev:	component vitals needed by the framework.
  * @spinlock:	only one at a time pls.
@@ -232,7 +231,6 @@ struct etm_config {
  */
 struct etm_drvdata {
 	void __iomem			*base;
-	struct device			*dev;
 	struct clk			*atclk;
 	struct coresight_device		*csdev;
 	spinlock_t			spinlock;
@@ -260,7 +258,7 @@ static inline void etm_writel(struct etm_drvdata *drvdata,
 {
 	if (drvdata->use_cp14) {
 		if (etm_writel_cp14(off, val)) {
-			dev_err(drvdata->dev,
+			dev_err(&drvdata->csdev->dev,
 				"invalid CP14 access to ETM reg: %#x", off);
 		}
 	} else {
@@ -274,7 +272,7 @@ static inline unsigned int etm_readl(struct etm_drvdata *drvdata, u32 off)
 
 	if (drvdata->use_cp14) {
 		if (etm_readl_cp14(off, &val)) {
-			dev_err(drvdata->dev,
+			dev_err(&drvdata->csdev->dev,
 				"invalid CP14 access to ETM reg: %#x", off);
 		}
 	} else {
diff --git a/drivers/hwtracing/coresight/coresight-etm3x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm3x-sysfs.c
index 75487b3fad86..e8c7649f123e 100644
--- a/drivers/hwtracing/coresight/coresight-etm3x-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-etm3x-sysfs.c
@@ -48,7 +48,7 @@ static ssize_t etmsr_show(struct device *dev,
 	unsigned long flags, val;
 	struct etm_drvdata *drvdata = dev_get_drvdata(dev->parent);
 
-	pm_runtime_get_sync(drvdata->dev);
+	pm_runtime_get_sync(dev->parent);
 	spin_lock_irqsave(&drvdata->spinlock, flags);
 	CS_UNLOCK(drvdata->base);
 
@@ -56,7 +56,7 @@ static ssize_t etmsr_show(struct device *dev,
 
 	CS_LOCK(drvdata->base);
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
-	pm_runtime_put(drvdata->dev);
+	pm_runtime_put(dev->parent);
 
 	return sprintf(buf, "%#lx\n", val);
 }
@@ -131,7 +131,7 @@ static ssize_t mode_store(struct device *dev,
 
 	if (config->mode & ETM_MODE_STALL) {
 		if (!(drvdata->etmccr & ETMCCR_FIFOFULL)) {
-			dev_warn(drvdata->dev, "stall mode not supported\n");
+			dev_warn(dev, "stall mode not supported\n");
 			ret = -EINVAL;
 			goto err_unlock;
 		}
@@ -141,7 +141,7 @@ static ssize_t mode_store(struct device *dev,
 
 	if (config->mode & ETM_MODE_TIMESTAMP) {
 		if (!(drvdata->etmccer & ETMCCER_TIMESTAMP)) {
-			dev_warn(drvdata->dev, "timestamp not supported\n");
+			dev_warn(dev, "timestamp not supported\n");
 			ret = -EINVAL;
 			goto err_unlock;
 		}
@@ -945,7 +945,7 @@ static ssize_t seq_curr_state_show(struct device *dev,
 		goto out;
 	}
 
-	pm_runtime_get_sync(drvdata->dev);
+	pm_runtime_get_sync(dev->parent);
 	spin_lock_irqsave(&drvdata->spinlock, flags);
 
 	CS_UNLOCK(drvdata->base);
@@ -953,7 +953,7 @@ static ssize_t seq_curr_state_show(struct device *dev,
 	CS_LOCK(drvdata->base);
 
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
-	pm_runtime_put(drvdata->dev);
+	pm_runtime_put(dev->parent);
 out:
 	return sprintf(buf, "%#lx\n", val);
 }
diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
index be302ec5f66b..9c92491d3fb2 100644
--- a/drivers/hwtracing/coresight/coresight-etm3x.c
+++ b/drivers/hwtracing/coresight/coresight-etm3x.c
@@ -165,7 +165,7 @@ static void etm_set_prog(struct etm_drvdata *drvdata)
 	 */
 	isb();
 	if (coresight_timeout_etm(drvdata, ETMSR, ETMSR_PROG_BIT, 1)) {
-		dev_err(drvdata->dev,
+		dev_err(&drvdata->csdev->dev,
 			"%s: timeout observed when probing at offset %#x\n",
 			__func__, ETMSR);
 	}
@@ -184,7 +184,7 @@ static void etm_clr_prog(struct etm_drvdata *drvdata)
 	 */
 	isb();
 	if (coresight_timeout_etm(drvdata, ETMSR, ETMSR_PROG_BIT, 0)) {
-		dev_err(drvdata->dev,
+		dev_err(&drvdata->csdev->dev,
 			"%s: timeout observed when probing at offset %#x\n",
 			__func__, ETMSR);
 	}
@@ -425,7 +425,7 @@ static int etm_enable_hw(struct etm_drvdata *drvdata)
 done:
 	CS_LOCK(drvdata->base);
 
-	dev_dbg(drvdata->dev, "cpu: %d enable smp call done: %d\n",
+	dev_dbg(&drvdata->csdev->dev, "cpu: %d enable smp call done: %d\n",
 		drvdata->cpu, rc);
 	return rc;
 }
@@ -455,6 +455,7 @@ int etm_get_trace_id(struct etm_drvdata *drvdata)
 {
 	unsigned long flags;
 	int trace_id = -1;
+	struct device *etm_dev = drvdata->csdev->dev.parent;
 
 	if (!drvdata)
 		goto out;
@@ -462,7 +463,7 @@ int etm_get_trace_id(struct etm_drvdata *drvdata)
 	if (!local_read(&drvdata->mode))
 		return drvdata->traceid;
 
-	pm_runtime_get_sync(drvdata->dev);
+	pm_runtime_get_sync(etm_dev);
 
 	spin_lock_irqsave(&drvdata->spinlock, flags);
 
@@ -471,7 +472,7 @@ int etm_get_trace_id(struct etm_drvdata *drvdata)
 	CS_LOCK(drvdata->base);
 
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
-	pm_runtime_put(drvdata->dev);
+	pm_runtime_put(etm_dev);
 
 out:
 	return trace_id;
@@ -526,7 +527,7 @@ static int etm_enable_sysfs(struct coresight_device *csdev)
 	spin_unlock(&drvdata->spinlock);
 
 	if (!ret)
-		dev_dbg(drvdata->dev, "ETM tracing enabled\n");
+		dev_dbg(&csdev->dev, "ETM tracing enabled\n");
 	return ret;
 }
 
@@ -581,7 +582,8 @@ static void etm_disable_hw(void *info)
 
 	CS_LOCK(drvdata->base);
 
-	dev_dbg(drvdata->dev, "cpu: %d disable smp call done\n", drvdata->cpu);
+	dev_dbg(&drvdata->csdev->dev,
+		"cpu: %d disable smp call done\n", drvdata->cpu);
 }
 
 static void etm_disable_perf(struct coresight_device *csdev)
@@ -628,7 +630,7 @@ static void etm_disable_sysfs(struct coresight_device *csdev)
 	spin_unlock(&drvdata->spinlock);
 	cpus_read_unlock();
 
-	dev_dbg(drvdata->dev, "ETM tracing disabled\n");
+	dev_dbg(&csdev->dev, "ETM tracing disabled\n");
 }
 
 static void etm_disable(struct coresight_device *csdev,
@@ -803,7 +805,6 @@ static int etm_probe(struct amba_device *adev, const struct amba_id *id)
 		drvdata->use_cp14 = of_property_read_bool(np, "arm,cp14");
 	}
 
-	drvdata->dev = &adev->dev;
 	dev_set_drvdata(dev, drvdata);
 
 	/* Validity for the resource is already checked by the AMBA core */
@@ -871,7 +872,8 @@ static int etm_probe(struct amba_device *adev, const struct amba_id *id)
 	}
 
 	pm_runtime_put(&adev->dev);
-	dev_info(dev, "%s initialized\n", (char *)coresight_get_uci_data(id));
+	dev_info(&drvdata->csdev->dev,
+		 "%s initialized\n", (char *)coresight_get_uci_data(id));
 	if (boot_enable) {
 		coresight_enable(drvdata->csdev);
 		drvdata->boot_enable = true;
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 8bb0092c7ec2..77d1d837da52 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -88,6 +88,7 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
 {
 	int i, rc;
 	struct etmv4_config *config = &drvdata->config;
+	struct device *etm_dev = &drvdata->csdev->dev;
 
 	CS_UNLOCK(drvdata->base);
 
@@ -102,7 +103,7 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
 
 	/* wait for TRCSTATR.IDLE to go up */
 	if (coresight_timeout(drvdata->base, TRCSTATR, TRCSTATR_IDLE_BIT, 1))
-		dev_err(drvdata->dev,
+		dev_err(etm_dev,
 			"timeout while waiting for Idle Trace Status\n");
 
 	writel_relaxed(config->pe_sel, drvdata->base + TRCPROCSELR);
@@ -184,13 +185,13 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
 
 	/* wait for TRCSTATR.IDLE to go back down to '0' */
 	if (coresight_timeout(drvdata->base, TRCSTATR, TRCSTATR_IDLE_BIT, 0))
-		dev_err(drvdata->dev,
+		dev_err(etm_dev,
 			"timeout while waiting for Idle Trace Status\n");
 
 done:
 	CS_LOCK(drvdata->base);
 
-	dev_dbg(drvdata->dev, "cpu: %d enable smp call done: %d\n",
+	dev_dbg(etm_dev, "cpu: %d enable smp call done: %d\n",
 		drvdata->cpu, rc);
 	return rc;
 }
@@ -400,7 +401,7 @@ static int etm4_enable_sysfs(struct coresight_device *csdev)
 	spin_unlock(&drvdata->spinlock);
 
 	if (!ret)
-		dev_dbg(drvdata->dev, "ETM tracing enabled\n");
+		dev_dbg(&csdev->dev, "ETM tracing enabled\n");
 	return ret;
 }
 
@@ -461,7 +462,8 @@ static void etm4_disable_hw(void *info)
 
 	CS_LOCK(drvdata->base);
 
-	dev_dbg(drvdata->dev, "cpu: %d disable smp call done\n", drvdata->cpu);
+	dev_dbg(&drvdata->csdev->dev,
+		"cpu: %d disable smp call done\n", drvdata->cpu);
 }
 
 static int etm4_disable_perf(struct coresight_device *csdev,
@@ -511,7 +513,7 @@ static void etm4_disable_sysfs(struct coresight_device *csdev)
 	spin_unlock(&drvdata->spinlock);
 	cpus_read_unlock();
 
-	dev_dbg(drvdata->dev, "ETM tracing disabled\n");
+	dev_dbg(&csdev->dev, "ETM tracing disabled\n");
 }
 
 static void etm4_disable(struct coresight_device *csdev,
@@ -1095,7 +1097,6 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
 		adev->dev.platform_data = pdata;
 	}
 
-	drvdata->dev = &adev->dev;
 	dev_set_drvdata(dev, drvdata);
 
 	/* Validity for the resource is already checked by the AMBA core */
@@ -1157,7 +1158,7 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
 	}
 
 	pm_runtime_put(&adev->dev);
-	dev_info(dev, "CPU%d: ETM v%d.%d initialized\n",
+	dev_info(&drvdata->csdev->dev, "CPU%d: ETM v%d.%d initialized\n",
 		 drvdata->cpu, drvdata->arch >> 4, drvdata->arch & 0xf);
 
 	if (boot_enable) {
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h b/drivers/hwtracing/coresight/coresight-etm4x.h
index 52786e9d8926..4523f10ddd0f 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.h
+++ b/drivers/hwtracing/coresight/coresight-etm4x.h
@@ -284,7 +284,6 @@ struct etmv4_config {
 /**
  * struct etm4_drvdata - specifics associated to an ETM component
  * @base:       Memory mapped base address for this component.
- * @dev:        The device entity associated to this component.
  * @csdev:      Component vitals needed by the framework.
  * @spinlock:   Only one at a time pls.
  * @mode:	This tracer's mode, i.e sysFS, Perf or disabled.
@@ -340,7 +339,6 @@ struct etmv4_config {
  */
 struct etmv4_drvdata {
 	void __iomem			*base;
-	struct device			*dev;
 	struct coresight_device		*csdev;
 	spinlock_t			spinlock;
 	local_t				mode;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
