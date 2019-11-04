Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA2BEE726
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:16:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Qvm13AHDOY1AZbfo0HhIPbzTD+IOhMdVS0i20TsGZ/E=; b=bS/Osx4m9uFBNLlHR7iahYlwJm
	4I9guIdh9PgmyKuNfI/c+IpFLY24zqWW0rXmY5hMZ3Yxlc4NxnfKjf/j1OgHChizLw8ebEtZhhqN5
	PAkB9W8zkeBrXpjEqujzHoMOCaWv9Scrun1iJ4Ds5m0YZx+CCYyGxxNkTCCN6lgzOC/2cAW9dKBI1
	nWDaoUUtsau7AIEE4IQ0/yXF4M8wqTVydYb/tRAGD7DaMcCOui7YdVGpgoiS9b92/rpBL0Zjs1U90
	H7bZONZ+ITOrPRz93x4tmMUv1SNbQk8yNo+anT4Ai37x2cFNkmPCQ7HF4Se7DjopNULOnlc/P61yc
	njhmd7yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRguA-00030J-U4; Mon, 04 Nov 2019 18:16:43 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgqg-00076A-5L
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:13:08 +0000
Received: by mail-pf1-x443.google.com with SMTP id x28so9627783pfo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 10:13:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RUUAX/bpgKOoYdqsMy2RyiY7Jv3TB4H8rCWJgZ2XPlo=;
 b=fzAlnjmVK1lVZ+kMaVRUiNKIXpyjmmer9EJQAHLy3om7kOc//Dw0QjKBlo+Qkuxfz1
 9BlvWNnTl5cGV1eiwV72LMhbuYuCLLzzgeVNOKmiWVl0gXN1kBwWYrm9/H2wzt02CBnj
 FRNHkDp0l/bHlMdgpXySUFc6a/blQzLkpIBsfY9cjfNQm5VrkK4A7yYAzjJj1C4gA0r5
 uvd3lDuSnFmyMCqYgl/SYeySyOusNl616qlz2HV+Vqz+OUbiheNDoA+A6BP4vSQ3Du3N
 +uqK+x6DPCsuU1LcWjmFnSluDXnf3B4n5hecGAXrwJQBepxa4xOqEzrsgs02tmFC/+Nn
 MCIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RUUAX/bpgKOoYdqsMy2RyiY7Jv3TB4H8rCWJgZ2XPlo=;
 b=XzuxNT9avXJlOR1+jKga6I6JVFX2BPxNJBWqLy4y2nSAY0elKL7Wl/gY0gXB+Hc53h
 vzfP4HSU+sCbePhTMeu9LnB3MnVr/R5HKV1XfJ4Ib8oZ1b4MZPH5lIQbaAZMGPzyyq2/
 EAOCBu/4/rhFaBJaQOc3M1y/omhQNRYAE8U9i5ymAhMX9cy8lJyoq9QgWYF9jDPT1r+k
 nH1a6W3Sx6FOfxGWTwZPQeundqGHPvWfxsl6sNS27YvafQZcFUt6Z9Z7EofX1iRaEEop
 TSUwXlvW6S8XV9sxo/tgcJsaiSRF0JfJfY1PIGnedaNuVN9BO4sXYuj9SpYrkTHW2OuO
 xa9Q==
X-Gm-Message-State: APjAAAVBN5pZc9NoB+Lz5BSwKqdGpU4RqbdqUeTVMMp0ioYukFJ/sP+U
 ZOGklRkNXW6jr4wIW3PCmDsmlA==
X-Google-Smtp-Source: APXvYqzXrKr8ouhsNu6T2yuCtriF0tQdcHbc4EkyBX+mKYjS9ZZJkwMpWdOhaYp5FV/RpgxsVwSAkQ==
X-Received: by 2002:a63:b909:: with SMTP id z9mr31246808pge.136.1572891185130; 
 Mon, 04 Nov 2019 10:13:05 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id o12sm16149520pgl.86.2019.11.04.10.13.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 10:13:04 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 11/14] coresight: etm4x: Add missing single-shot control API
 to sysfs
Date: Mon,  4 Nov 2019 11:12:48 -0700
Message-Id: <20191104181251.26732-12-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104181251.26732-1-mathieu.poirier@linaro.org>
References: <20191104181251.26732-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_101306_426414_E0A0AE45 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Leach <mike.leach@linaro.org>

An API to control single-shot comparator operation was missing from sysfs.
This adds the parameters to sysfs to allow programming of this feature.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../coresight/coresight-etm4x-sysfs.c         | 122 ++++++++++++++++++
 drivers/hwtracing/coresight/coresight-etm4x.c |  26 +++-
 drivers/hwtracing/coresight/coresight-etm4x.h |   2 +
 3 files changed, 149 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index 1768e7286a9e..3fc12ac44270 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
@@ -239,6 +239,7 @@ static ssize_t reset_store(struct device *dev,
 	for (i = 0; i < drvdata->nr_resource; i++)
 		config->res_ctrl[i] = 0x0;
 
+	config->ss_idx = 0x0;
 	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
 		config->ss_ctrl[i] = 0x0;
 		config->ss_pe_cmp[i] = 0x0;
@@ -1717,6 +1718,123 @@ static ssize_t res_ctrl_store(struct device *dev,
 }
 static DEVICE_ATTR_RW(res_ctrl);
 
+static ssize_t sshot_idx_show(struct device *dev,
+			      struct device_attribute *attr, char *buf)
+{
+	unsigned long val;
+	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct etmv4_config *config = &drvdata->config;
+
+	val = config->ss_idx;
+	return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
+}
+
+static ssize_t sshot_idx_store(struct device *dev,
+			       struct device_attribute *attr,
+			       const char *buf, size_t size)
+{
+	unsigned long val;
+	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct etmv4_config *config = &drvdata->config;
+
+	if (kstrtoul(buf, 16, &val))
+		return -EINVAL;
+	if (val >= drvdata->nr_ss_cmp)
+		return -EINVAL;
+
+	spin_lock(&drvdata->spinlock);
+	config->ss_idx = val;
+	spin_unlock(&drvdata->spinlock);
+	return size;
+}
+static DEVICE_ATTR_RW(sshot_idx);
+
+static ssize_t sshot_ctrl_show(struct device *dev,
+			       struct device_attribute *attr,
+			       char *buf)
+{
+	unsigned long val;
+	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct etmv4_config *config = &drvdata->config;
+
+	spin_lock(&drvdata->spinlock);
+	val = config->ss_ctrl[config->ss_idx];
+	spin_unlock(&drvdata->spinlock);
+	return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
+}
+
+static ssize_t sshot_ctrl_store(struct device *dev,
+				struct device_attribute *attr,
+				const char *buf, size_t size)
+{
+	u8 idx;
+	unsigned long val;
+	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct etmv4_config *config = &drvdata->config;
+
+	if (kstrtoul(buf, 16, &val))
+		return -EINVAL;
+
+	spin_lock(&drvdata->spinlock);
+	idx = config->ss_idx;
+	config->ss_ctrl[idx] = val & GENMASK(24, 0);
+	/* must clear bit 31 in related status register on programming */
+	config->ss_status[idx] &= ~BIT(31);
+	spin_unlock(&drvdata->spinlock);
+	return size;
+}
+static DEVICE_ATTR_RW(sshot_ctrl);
+
+static ssize_t sshot_status_show(struct device *dev,
+				 struct device_attribute *attr, char *buf)
+{
+	unsigned long val;
+	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct etmv4_config *config = &drvdata->config;
+
+	spin_lock(&drvdata->spinlock);
+	val = config->ss_status[config->ss_idx];
+	spin_unlock(&drvdata->spinlock);
+	return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
+}
+static DEVICE_ATTR_RO(sshot_status);
+
+static ssize_t sshot_pe_ctrl_show(struct device *dev,
+				  struct device_attribute *attr,
+				  char *buf)
+{
+	unsigned long val;
+	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct etmv4_config *config = &drvdata->config;
+
+	spin_lock(&drvdata->spinlock);
+	val = config->ss_pe_cmp[config->ss_idx];
+	spin_unlock(&drvdata->spinlock);
+	return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
+}
+
+static ssize_t sshot_pe_ctrl_store(struct device *dev,
+				   struct device_attribute *attr,
+				   const char *buf, size_t size)
+{
+	u8 idx;
+	unsigned long val;
+	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct etmv4_config *config = &drvdata->config;
+
+	if (kstrtoul(buf, 16, &val))
+		return -EINVAL;
+
+	spin_lock(&drvdata->spinlock);
+	idx = config->ss_idx;
+	config->ss_pe_cmp[idx] = val & GENMASK(7, 0);
+	/* must clear bit 31 in related status register on programming */
+	config->ss_status[idx] &= ~BIT(31);
+	spin_unlock(&drvdata->spinlock);
+	return size;
+}
+static DEVICE_ATTR_RW(sshot_pe_ctrl);
+
 static ssize_t ctxid_idx_show(struct device *dev,
 			      struct device_attribute *attr,
 			      char *buf)
@@ -2173,6 +2291,10 @@ static struct attribute *coresight_etmv4_attrs[] = {
 	&dev_attr_addr_exlevel_s_ns.attr,
 	&dev_attr_addr_cmp_view.attr,
 	&dev_attr_vinst_pe_cmp_start_stop.attr,
+	&dev_attr_sshot_idx.attr,
+	&dev_attr_sshot_ctrl.attr,
+	&dev_attr_sshot_pe_ctrl.attr,
+	&dev_attr_sshot_status.attr,
 	&dev_attr_seq_idx.attr,
 	&dev_attr_seq_state.attr,
 	&dev_attr_seq_event.attr,
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index d5148afdbe80..dc3f507e7562 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -168,6 +168,9 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
 			       drvdata->base + TRCRSCTLRn(i));
 
 	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
+		/* always clear status bit on restart if using single-shot */
+		if (config->ss_ctrl[i] || config->ss_pe_cmp[i])
+			config->ss_status[i] &= ~BIT(31);
 		writel_relaxed(config->ss_ctrl[i],
 			       drvdata->base + TRCSSCCRn(i));
 		writel_relaxed(config->ss_status[i],
@@ -467,6 +470,9 @@ static void etm4_disable_hw(void *info)
 {
 	u32 control;
 	struct etmv4_drvdata *drvdata = info;
+	struct etmv4_config *config = &drvdata->config;
+	struct device *etm_dev = &drvdata->csdev->dev;
+	int i;
 
 	CS_UNLOCK(drvdata->base);
 
@@ -489,6 +495,18 @@ static void etm4_disable_hw(void *info)
 	isb();
 	writel_relaxed(control, drvdata->base + TRCPRGCTLR);
 
+	/* wait for TRCSTATR.PMSTABLE to go to '1' */
+	if (coresight_timeout(drvdata->base, TRCSTATR,
+			      TRCSTATR_PMSTABLE_BIT, 1))
+		dev_err(etm_dev,
+			"timeout while waiting for PM stable Trace Status\n");
+
+	/* read the status of the single shot comparators */
+	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
+		config->ss_status[i] =
+			readl_relaxed(drvdata->base + TRCSSCSRn(i));
+	}
+
 	coresight_disclaim_device_unlocked(drvdata->base);
 
 	CS_LOCK(drvdata->base);
@@ -595,6 +613,7 @@ static void etm4_init_arch_data(void *info)
 	u32 etmidr4;
 	u32 etmidr5;
 	struct etmv4_drvdata *drvdata = info;
+	int i;
 
 	/* Make sure all registers are accessible */
 	etm4_os_unlock(drvdata);
@@ -718,9 +737,14 @@ static void etm4_init_arch_data(void *info)
 	drvdata->nr_resource = BMVAL(etmidr4, 16, 19) + 1;
 	/*
 	 * NUMSSCC, bits[23:20] the number of single-shot
-	 * comparator control for tracing
+	 * comparator control for tracing. Read any status regs as these
+	 * also contain RO capability data.
 	 */
 	drvdata->nr_ss_cmp = BMVAL(etmidr4, 20, 23);
+	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
+		drvdata->config.ss_status[i] =
+			readl_relaxed(drvdata->base + TRCSSCSRn(i));
+	}
 	/* NUMCIDC, bits[27:24] number of Context ID comparators for tracing */
 	drvdata->numcidc = BMVAL(etmidr4, 24, 27);
 	/* NUMVMIDC, bits[31:28] number of VMID comparators for tracing */
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h b/drivers/hwtracing/coresight/coresight-etm4x.h
index b873df38e7d8..4a695bf90582 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.h
+++ b/drivers/hwtracing/coresight/coresight-etm4x.h
@@ -227,6 +227,7 @@
  * @cntr_val:	Sets or returns the value for a counter.
  * @res_idx:	Resource index selector.
  * @res_ctrl:	Controls the selection of the resources in the trace unit.
+ * @ss_idx:	Single-shot index selector.
  * @ss_ctrl:	Controls the corresponding single-shot comparator resource.
  * @ss_status:	The status of the corresponding single-shot comparator.
  * @ss_pe_cmp:	Selects the PE comparator inputs for Single-shot control.
@@ -270,6 +271,7 @@ struct etmv4_config {
 	u32				cntr_val[ETMv4_MAX_CNTR];
 	u8				res_idx;
 	u32				res_ctrl[ETM_MAX_RES_SEL];
+	u8				ss_idx;
 	u32				ss_ctrl[ETM_MAX_SS_CMP];
 	u32				ss_status[ETM_MAX_SS_CMP];
 	u32				ss_pe_cmp[ETM_MAX_SS_CMP];
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
