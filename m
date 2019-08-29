Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9810BA2914
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 23:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=smJ8snVW8iresOpQ0xeGVvXYieGNSq2Wt+GFBuaHyEs=; b=NUkOfg0ru4+/F0v2hP9GAL/iyp
	4ug81WI6UwEqlP6HNppDW9iGJtmNrm3+Z69MCiZEDdELU8M2GAfUNSApzk5tv4V2HdxknoklPSrq1
	T3M688GS1ir4Y1zMyZ78zm4wRiHBhCOP8J1xqIx90+QZZ3JTRKD51e/ZCfujrEMBYIu7857Jf12XQ
	3m0lSBX7K+wdYgRaK1kMoFonXacwWz0TjW5u8l/r+ZNaQnAozt3QZTbCqlyGwmZqlmFUReBPAfgfU
	mnVWKYDrDLnyFk/btlXqdkse0hOlC193GKknq7rlkj+pxFehcvKrrlk9cR1NgwYM0BNFacCgTZawN
	X7fz5P0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3S4z-0005gJ-Vm; Thu, 29 Aug 2019 21:35:42 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3S31-0002oD-Ji
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 21:33:41 +0000
Received: by mail-wr1-x443.google.com with SMTP id e16so4890381wro.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 14:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=IUpxdBbuyh3a87gcEoHyMqzcVkq4Eq6NtvG2AC20Paw=;
 b=L+WiNHs7Ar5T2FcY+OQ8QSFVfB27JQ8Ci5pTghYtrwLrF99qLo8D5nEfdzGjsZx3OO
 fw0tTvTGi1Q/l8AQn8LzTesMJ3HYan3/ZbAHFBhdTbGbJupyzy7nC0gFADWNCodJJZ7N
 S9pnRqMnink0Z0OQlQ70bEib7+bvwudvFrQ31CEX8CAikEsFKfjwmb1hndcUPDLk2muJ
 kSXY3Z9bkQ8kICJawZQT6/A6s5UPO4OSlyHpQ1P/MWUjnu2BQgONK3E176qMNwFOMFiO
 pSU30xWzY16wRnmmTIVfewThVdDPsv0eskX6C3DKyrJsDf7U4Zn02sAWHVaWhOhWc4fc
 EwBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=IUpxdBbuyh3a87gcEoHyMqzcVkq4Eq6NtvG2AC20Paw=;
 b=lHK0gzLFxLdaMgRzFQ5m+e86/NECXeQIVP6Q5ot5N2L2gk8UCh0/5C58zyhlv6J6jE
 anq9jnOuKYSbbFhkdACTQHGghILbvnV0QQgZu+W05T0j+9olqvb5fEYTyc5QoVvSH/H6
 V4EWNBizYvkrvYdkyfYZfdBzsoiNmupKR7WccEJSy6FfuVE4pRJUsavGy3vZ6SkTJrQJ
 gUkf8F63Og2VD2YkOPlcXBFMDXLDNZiWsp6IHric6V4H1sSJn52V3K1mx+2FeJCLXMOx
 b/LXDZ2ABwVbA3r2hWq6g+v+EwkyjdrtXEmGq11aHvaRCOnDPxQUV0MQMcymY4RSfeAG
 PVyg==
X-Gm-Message-State: APjAAAXsuB10BfFaNJIU0mOQVlpOWRsUK0uDgJMA7zYurU3C1keED1A1
 N7vdtk6SzWDw0fpx+RYrjM9Cpw==
X-Google-Smtp-Source: APXvYqzgvs1l98ZXVHNo45s6lXnRm9PCGXid+lBiuCLG6tFMFspiSK/GnWYWysz8SivbpFqYDJkvLw==
X-Received: by 2002:a5d:68c9:: with SMTP id p9mr6836282wrw.95.1567114418358;
 Thu, 29 Aug 2019 14:33:38 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:c44b:1415:84d1:2692])
 by smtp.gmail.com with ESMTPSA id o17sm4515711wrx.60.2019.08.29.14.33.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 14:33:37 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, mathieu.poirier@linaro.org,
 linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v2 08/11] coresight: etm4x: Add missing single-shot control
 API to sysfs
Date: Thu, 29 Aug 2019 22:33:18 +0100
Message-Id: <20190829213321.4092-9-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829213321.4092-1-mike.leach@linaro.org>
References: <20190829213321.4092-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_143339_752418_0678B618 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: gregkh@linuxfoundation.org, corbet@lwn.net, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

An API to control single-shot comparator operation was missing from sysfs.
This adds the parameters to sysfs to allow programming of this feature.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 .../coresight/coresight-etm4x-sysfs.c         | 122 ++++++++++++++++++
 drivers/hwtracing/coresight/coresight-etm4x.c |  26 +++-
 drivers/hwtracing/coresight/coresight-etm4x.h |   3 +
 3 files changed, 150 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index a8c9eadfe56f..14be3274f8d9 100644
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
index d8b078d0cc7f..fb7083218410 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -149,6 +149,9 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
 			       drvdata->base + TRCRSCTLRn(i));
 
 	for (i = 0; i < drvdata->nr_ss_cmp; i++) {
+		/* always clear status bit on restart if using single-shot */
+		if (config->ss_ctrl[i] || config->ss_pe_cmp[i])
+			config->ss_status[i] &= ~BIT(31);
 		writel_relaxed(config->ss_ctrl[i],
 			       drvdata->base + TRCSSCCRn(i));
 		writel_relaxed(config->ss_status[i],
@@ -448,6 +451,9 @@ static void etm4_disable_hw(void *info)
 {
 	u32 control;
 	struct etmv4_drvdata *drvdata = info;
+	struct etmv4_config *config = &drvdata->config;
+	struct device *etm_dev = &drvdata->csdev->dev;
+	int i;
 
 	CS_UNLOCK(drvdata->base);
 
@@ -470,6 +476,18 @@ static void etm4_disable_hw(void *info)
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
@@ -576,6 +594,7 @@ static void etm4_init_arch_data(void *info)
 	u32 etmidr4;
 	u32 etmidr5;
 	struct etmv4_drvdata *drvdata = info;
+	int i;
 
 	/* Make sure all registers are accessible */
 	etm4_os_unlock(drvdata);
@@ -699,9 +718,14 @@ static void etm4_init_arch_data(void *info)
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
index 60bc2fb5159b..be8b32ea1654 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.h
+++ b/drivers/hwtracing/coresight/coresight-etm4x.h
@@ -175,6 +175,7 @@
 					 ETM_MODE_EXCL_USER)
 
 #define TRCSTATR_IDLE_BIT		0
+#define TRCSTATR_PMSTABLE_BIT		1
 #define ETM_DEFAULT_ADDR_COMP		0
 
 /* PowerDown Control Register bits */
@@ -226,6 +227,7 @@
  * @cntr_val:	Sets or returns the value for a counter.
  * @res_idx:	Resource index selector.
  * @res_ctrl:	Controls the selection of the resources in the trace unit.
+ * @ss_idx:	Single-shot index selector.
  * @ss_ctrl:	Controls the corresponding single-shot comparator resource.
  * @ss_status:	The status of the corresponding single-shot comparator.
  * @ss_pe_cmp:	Selects the PE comparator inputs for Single-shot control.
@@ -269,6 +271,7 @@ struct etmv4_config {
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
