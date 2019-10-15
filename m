Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9B2D821A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 23:23:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YaeM1YaWq+ugjUQgR96LiPpSkl/yerw8OO0NhDIQlCM=; b=RzngCFAYKZNprZLIrsaPzNyJIl
	InZfsz5QkBLE4HAvyVOSxUU/elhEXQoSIf8PwPW6jgUMny1QxHC9yMxDTqGi84TIOKrdh8B6dhmN3
	WJVOYHXHvV/9Kl8xmIW3FH1j4UlrTQAUll8Q6hBwc3kgfyOlcS431Agaz3lNKAHV6uq7FiSm6pyDo
	Cd4IsALrKZyWu+pYeEJ4IMJaC0JD48aplOIsyX4jfJTus+yihw2eeDfx0nw+VlCveqCs+FBz5hZLA
	O6CsAJCrsKFtxvcvdEAWaua+mZVm5sTiK7IVTVNB6o03jpS4XjYYtJAueTSw+D9aKY1qN+Uahzpcg
	lXJmfSow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKUHl-0004vI-E7; Tue, 15 Oct 2019 21:23:17 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKUFY-000357-Le
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 21:21:02 +0000
Received: by mail-wm1-x342.google.com with SMTP id y135so3201651wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 14:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9CcXkND/loPHwB/0IZNErSLM2EUjzrpfm9HiXP45pXY=;
 b=b2vQVEAaEbr7dtIjqS634fBexGd6fJsvn38Qq+x6YBwgw+FnV1xNQ+q1NawAr3lrGp
 6EPI4J40sfzk6lM4BAnI4BiPQDpbPW075bx3J1dir9Unw32cw7tuhvklkXaA9XNYoukb
 4oX2i7ItlhAmCFPNMIuF8VQrwrz4rCfjS5jXhnQp7xf0AqeyqqPvHINM4rGfkLpabVyx
 fROFV5m1jocu7afgkJAqDT8VocPMtg2ZB8C460/7zz4rkGUAxPjZsKsEygz4o/bfcPkS
 R+fiyauxnk5rk+WLF/TmM372a3AMUW6jpKcItbhawSi1F1JrV2Gt4gx6cmYGV+yKRs9M
 W1Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9CcXkND/loPHwB/0IZNErSLM2EUjzrpfm9HiXP45pXY=;
 b=gznXzEx/+/em8HjhM/OWNpeoPTEs4lzW6sbMoHSARJtmKXJ3UCnrd34XCIkIzJStv4
 w8EyzOKTd3T/sfM2XyoOUus0/3BXohVftXvAB+u4OgudJKNSStcAbd2daOz/SpxePn2c
 zcM0dgx0vEzGtfa3Fg8CqmD/huZUx926j8vecgAO+W/85bM1UHUl8pVWxxkrbabG8oI8
 /lOJBTZkR4O2+MX9ZP68lrbKXyoxaVb62lRE56GitHwXifN6j1q374uC5Z7ENnJy/YOu
 OLpxZUMTFcQaGwZFzyaMO8Zb5IR6EcXiU30jr7SJ/d2AlCRlMGSApAPsZE8PhaeRhvmS
 BdUA==
X-Gm-Message-State: APjAAAU12hyajOH4YHlTLOe83oVKXPN5QEQZ+bzBBnWkLMROtMBEMnTU
 TVPnB875IkSEhGFYMiblOKJBVw==
X-Google-Smtp-Source: APXvYqwEoEg6Td0hp924Qe5H3qf/s1UqPbK7OY4uRMBUJN8+TLbAC7gpR320jOm1B6Eah76TdshzFA==
X-Received: by 2002:a1c:7401:: with SMTP id p1mr430900wmc.144.1571174459118;
 Tue, 15 Oct 2019 14:20:59 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:39d2:21a2:678a:9501])
 by smtp.gmail.com with ESMTPSA id g185sm517649wme.10.2019.10.15.14.20.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 14:20:58 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org
Subject: [PATCH v3 08/11] coresight: etm4x: Add missing single-shot control
 API to sysfs
Date: Tue, 15 Oct 2019 22:20:01 +0100
Message-Id: <20191015212004.24748-9-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015212004.24748-1-mike.leach@linaro.org>
References: <20191015212004.24748-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_142100_732226_372CEF8E 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: gregkh@linuxfoundation.org, suzuki.poulose@arm.com,
 mathieu.poirier@linaro.org, corbet@lwn.net
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
 drivers/hwtracing/coresight/coresight-etm4x.h |   2 +
 3 files changed, 149 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index ca1a54411225..43b3f0976034 100644
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
