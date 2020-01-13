Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBAC139BA7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:33:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XrfDnJGybbJxjHG+pyXeh6i23rwMl3dQZNtd8gPkYl4=; b=sZIe5ven8BItvM2a1RjY/ABMCY
	7chey4yuUSBqqFpv6UsA7YF2wOwvwwx/iY/SRexj684ynM1t4+h9hi8fZAvGSKYSc/L8FItZUv9IC
	HBGl6q7JIGJtDf0aUBF6cooWu0PTXBLtINVWlVBXcNEU6egPwimpKQzjT0MmzCuRxLMu+vy9AT59O
	i+QI4dRswTeFlbKrCYzdaRe8p6qGPencXNATImXpM8FFDPz2hUfqmxFWBt+6Ud/raN+unuqvuRppp
	iF61ziyCeMwAj7LtvgQTuLQgbOSC/4/Vdk+rNyQDNB+/2r+jFHv/yKD9IvXqRHUgF820vGb9iceN5
	PaxrPsfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir7Kq-0004Ya-H4; Mon, 13 Jan 2020 21:33:20 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir7JZ-0003my-Ue
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:32:04 +0000
Received: by mail-wm1-x344.google.com with SMTP id q9so11469081wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 13:32:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eLWMJdwZj01mzBzf88CpXX0Cwjf0T438tK6Cu9CHzzg=;
 b=ms5tZL17+n89WvjjDj7mBIBN9zdVjuP+Lcl2K6r9W8iPPd2G1UgyhSuMqONl/EDbLN
 FM5yhpYJJkGI+Lad0tcwpKjXHvfzp4nrIigJMoBNpi0ppC4Wxs+8b4XiVbTCcwIxHLz2
 qCnKPBYkTRY+Lad+hRoNd0GoDf7X49sTRSqarzU8V9XNsfmOtaeZ/PnKAbIbV/CeG4Z2
 udaeGBH6oEdvXtDucsklF0flVOAN6nz/rAkCF6AD6BwCp2kXtjVR/e8bGpvJbrGcqZqw
 1AjrqISGnxuh1cWZKfwqoI+D8x9+jgjyhAhlTQuWeUwQC8N1EX7q8VqPVTcz2uVfZ7Dg
 A4KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=eLWMJdwZj01mzBzf88CpXX0Cwjf0T438tK6Cu9CHzzg=;
 b=Cg4OtAvXalb9JZjG4nUSUypbe6Ewop7UTHrjrnMSguy2DI1JKfjT0wyx5/aUekI/HU
 9WvKLhUGXzPFgyp+DeT223eJ5CA/4EBclVLeDa8TvGiDwpxfRiywHwgH9lc5VNIZa76Z
 MbhNd2HIDGx4XHVwnq4N8YLdyxFZmWi+t8aV0iPSyuVbrsAEWTKVSlpyP8y/Jwv4mrgh
 Gt+8mCh5pmwAL3EPSK2qNeXHYWQreRRBEAegwGS75+szEv0kel8HpJ6ppXeQd25Qo3mq
 9wrolzzDv21bMB9bcXKtwslMEATenzRHXKU9Vfe+90/C3306a5oHXoghNzEmbDO7sRM3
 Smig==
X-Gm-Message-State: APjAAAXAgEsT7M20sw2e8i1onD/UMekcDBwNJYlUtcG5mBXp+ajlsBL3
 pOY0JZmzl2JqTsJwRClXaSvBmg==
X-Google-Smtp-Source: APXvYqysJYi9lI5bF9B42oQEZ7f/XddG84AvevwSzsglzLIVfLuG5VF62+R6SHyI03Pr7iSjg4yZbA==
X-Received: by 2002:a1c:6485:: with SMTP id y127mr23192538wmb.11.1578951120434; 
 Mon, 13 Jan 2020 13:32:00 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a1cf:b00b:5683:ed40])
 by smtp.gmail.com with ESMTPSA id j12sm16725120wrt.55.2020.01.13.13.31.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 13:31:58 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v8 03/15] coresight: cti: Add sysfs access to program function
 regs
Date: Mon, 13 Jan 2020 21:31:37 +0000
Message-Id: <20200113213149.25599-4-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200113213149.25599-1-mike.leach@linaro.org>
References: <20200113213149.25599-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_133202_047040_0A81038C 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org, corbet@lwn.net,
 liviu.dudau@arm.com, agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech,
 sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds in sysfs programming support for the CTI function register sets.
Allows direct manipulation of channel / trigger association registers.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/Kconfig           |   9 +
 .../hwtracing/coresight/coresight-cti-sysfs.c | 361 ++++++++++++++++++
 drivers/hwtracing/coresight/coresight-cti.c   |  19 +
 drivers/hwtracing/coresight/coresight-cti.h   |   8 +
 4 files changed, 397 insertions(+)

diff --git a/drivers/hwtracing/coresight/Kconfig b/drivers/hwtracing/coresight/Kconfig
index 45d3822c8c8c..83e841be1081 100644
--- a/drivers/hwtracing/coresight/Kconfig
+++ b/drivers/hwtracing/coresight/Kconfig
@@ -122,4 +122,13 @@ config CORESIGHT_CTI
 	  halt compared to disabling sources and sinks normally in driver
 	  software.
 
+config CORESIGHT_CTI_INTEGRATION_REGS
+	bool "Access CTI CoreSight Integration Registers"
+	depends on CORESIGHT_CTI
+	help
+	  This option adds support for the CoreSight integration registers on
+	  this device. The integration registers allow the exploration of the
+	  CTI trigger connections between this and other devices.These
+	  registers are not used in normal operation and can leave devices in
+	  an inconsistent state.
 endif
diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
index 507f8eb487fe..f687e07b68b0 100644
--- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
@@ -109,6 +109,361 @@ static struct attribute *coresight_cti_mgmt_attrs[] = {
 	NULL,
 };
 
+/* CTI low level programming registers */
+
+/*
+ * Show a simple 32 bit value if enabled and powered.
+ * If inaccessible & pcached_val not NULL then show cached value.
+ */
+static ssize_t cti_reg32_show(struct device *dev, char *buf,
+			      u32 *pcached_val, int reg_offset)
+{
+	u32 val = 0;
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct cti_config *config = &drvdata->config;
+
+	spin_lock(&drvdata->spinlock);
+	if ((reg_offset >= 0) && cti_active(config)) {
+		CS_UNLOCK(drvdata->base);
+		val = readl_relaxed(drvdata->base + reg_offset);
+		if (pcached_val)
+			*pcached_val = val;
+		CS_LOCK(drvdata->base);
+	} else if (pcached_val) {
+		val = *pcached_val;
+	}
+	spin_unlock(&drvdata->spinlock);
+	return scnprintf(buf, PAGE_SIZE, "%#x\n", val);
+}
+
+/*
+ * Store a simple 32 bit value.
+ * If pcached_val not NULL, then copy to here too,
+ * if reg_offset >= 0 then write through if enabled.
+ */
+static ssize_t cti_reg32_store(struct device *dev, const char *buf,
+			       size_t size, u32 *pcached_val, int reg_offset)
+{
+	unsigned long val;
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct cti_config *config = &drvdata->config;
+
+	if (kstrtoul(buf, 0, &val))
+		return -EINVAL;
+
+	spin_lock(&drvdata->spinlock);
+	/* local store */
+	if (pcached_val)
+		*pcached_val = (u32)val;
+
+	/* write through if offset and enabled */
+	if ((reg_offset >= 0) && cti_active(config))
+		cti_write_single_reg(drvdata, reg_offset, val);
+	spin_unlock(&drvdata->spinlock);
+	return size;
+}
+
+/* Standard macro for simple rw cti config registers */
+#define cti_config_reg32_rw(name, cfgname, offset)			\
+static ssize_t name##_show(struct device *dev,				\
+			   struct device_attribute *attr,		\
+			   char *buf)					\
+{									\
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);	\
+	return cti_reg32_show(dev, buf,					\
+			      &drvdata->config.cfgname, offset);	\
+}									\
+									\
+static ssize_t name##_store(struct device *dev,				\
+			    struct device_attribute *attr,		\
+			    const char *buf, size_t size)		\
+{									\
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);	\
+	return cti_reg32_store(dev, buf, size,				\
+			       &drvdata->config.cfgname, offset);	\
+}									\
+static DEVICE_ATTR_RW(name)
+
+static ssize_t inout_sel_show(struct device *dev,
+			      struct device_attribute *attr,
+			      char *buf)
+{
+	u32 val;
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+
+	val = (u32)drvdata->config.ctiinout_sel;
+	return scnprintf(buf, PAGE_SIZE, "%d\n", val);
+}
+
+static ssize_t inout_sel_store(struct device *dev,
+			       struct device_attribute *attr,
+			       const char *buf, size_t size)
+{
+	unsigned long val;
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+
+	if (kstrtoul(buf, 0, &val))
+		return -EINVAL;
+	if (val > (CTIINOUTEN_MAX - 1))
+		return -EINVAL;
+
+	spin_lock(&drvdata->spinlock);
+	drvdata->config.ctiinout_sel = val;
+	spin_unlock(&drvdata->spinlock);
+	return size;
+}
+static DEVICE_ATTR_RW(inout_sel);
+
+static ssize_t inen_show(struct device *dev,
+			 struct device_attribute *attr,
+			 char *buf)
+{
+	unsigned long val;
+	int index;
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+
+	spin_lock(&drvdata->spinlock);
+	index = drvdata->config.ctiinout_sel;
+	val = drvdata->config.ctiinen[index];
+	spin_unlock(&drvdata->spinlock);
+	return scnprintf(buf, PAGE_SIZE, "INEN%d %#lx\n", index, val);
+}
+
+static ssize_t inen_store(struct device *dev,
+			  struct device_attribute *attr,
+			  const char *buf, size_t size)
+{
+	unsigned long val;
+	int index;
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct cti_config *config = &drvdata->config;
+
+	if (kstrtoul(buf, 0, &val))
+		return -EINVAL;
+
+	spin_lock(&drvdata->spinlock);
+	index = config->ctiinout_sel;
+	config->ctiinen[index] = val;
+
+	/* write through if enabled */
+	if (cti_active(config))
+		cti_write_single_reg(drvdata, CTIINEN(index), val);
+	spin_unlock(&drvdata->spinlock);
+	return size;
+}
+static DEVICE_ATTR_RW(inen);
+
+static ssize_t outen_show(struct device *dev,
+			  struct device_attribute *attr,
+			  char *buf)
+{
+	unsigned long val;
+	int index;
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+
+	spin_lock(&drvdata->spinlock);
+	index = drvdata->config.ctiinout_sel;
+	val = drvdata->config.ctiouten[index];
+	spin_unlock(&drvdata->spinlock);
+	return scnprintf(buf, PAGE_SIZE, "OUTEN%d %#lx\n", index, val);
+}
+
+static ssize_t outen_store(struct device *dev,
+			   struct device_attribute *attr,
+			   const char *buf, size_t size)
+{
+	unsigned long val;
+	int index;
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct cti_config *config = &drvdata->config;
+
+	if (kstrtoul(buf, 0, &val))
+		return -EINVAL;
+
+	spin_lock(&drvdata->spinlock);
+	index = config->ctiinout_sel;
+	config->ctiouten[index] = val;
+
+	/* write through if enabled */
+	if (cti_active(config))
+		cti_write_single_reg(drvdata, CTIOUTEN(index), val);
+	spin_unlock(&drvdata->spinlock);
+	return size;
+}
+static DEVICE_ATTR_RW(outen);
+
+static ssize_t intack_store(struct device *dev,
+			    struct device_attribute *attr,
+			    const char *buf, size_t size)
+{
+	unsigned long val;
+
+	if (kstrtoul(buf, 0, &val))
+		return -EINVAL;
+
+	cti_write_intack(dev, val);
+	return size;
+}
+static DEVICE_ATTR_WO(intack);
+
+cti_config_reg32_rw(gate, ctigate, CTIGATE);
+cti_config_reg32_rw(asicctl, asicctl, ASICCTL);
+cti_config_reg32_rw(appset, ctiappset, CTIAPPSET);
+
+static ssize_t appclear_store(struct device *dev,
+			      struct device_attribute *attr,
+			      const char *buf, size_t size)
+{
+	unsigned long val;
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct cti_config *config = &drvdata->config;
+
+	if (kstrtoul(buf, 0, &val))
+		return -EINVAL;
+
+	spin_lock(&drvdata->spinlock);
+
+	/* a 1'b1 in appclr clears down the same bit in appset*/
+	config->ctiappset &= ~val;
+
+	/* write through if enabled */
+	if (cti_active(config))
+		cti_write_single_reg(drvdata, CTIAPPCLEAR, val);
+	spin_unlock(&drvdata->spinlock);
+	return size;
+}
+static DEVICE_ATTR_WO(appclear);
+
+static ssize_t apppulse_store(struct device *dev,
+			      struct device_attribute *attr,
+			      const char *buf, size_t size)
+{
+	unsigned long val;
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct cti_config *config = &drvdata->config;
+
+	if (kstrtoul(buf, 0, &val))
+		return -EINVAL;
+
+	spin_lock(&drvdata->spinlock);
+
+	/* write through if enabled */
+	if (cti_active(config))
+		cti_write_single_reg(drvdata, CTIAPPPULSE, val);
+	spin_unlock(&drvdata->spinlock);
+	return size;
+}
+static DEVICE_ATTR_WO(apppulse);
+
+coresight_cti_reg(triginstatus, CTITRIGINSTATUS);
+coresight_cti_reg(trigoutstatus, CTITRIGOUTSTATUS);
+coresight_cti_reg(chinstatus, CTICHINSTATUS);
+coresight_cti_reg(choutstatus, CTICHOUTSTATUS);
+
+/*
+ * Define CONFIG_CORESIGHT_CTI_INTEGRATION_REGS to enable the access to the
+ * integration control registers. Normally only used to investigate connection
+ * data.
+ */
+#ifdef CONFIG_CORESIGHT_CTI_INTEGRATION_REGS
+
+/* macro to access RW registers with power check only (no enable check). */
+#define coresight_cti_reg_rw(name, offset)				\
+static ssize_t name##_show(struct device *dev,				\
+			   struct device_attribute *attr, char *buf)	\
+{									\
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);	\
+	u32 val = 0;							\
+	pm_runtime_get_sync(dev->parent);				\
+	spin_lock(&drvdata->spinlock);					\
+	if (drvdata->config.hw_powered)					\
+		val = readl_relaxed(drvdata->base + offset);		\
+	spin_unlock(&drvdata->spinlock);				\
+	pm_runtime_put_sync(dev->parent);				\
+	return scnprintf(buf, PAGE_SIZE, "0x%x\n", val);		\
+}									\
+									\
+static ssize_t name##_store(struct device *dev,				\
+			    struct device_attribute *attr,		\
+			    const char *buf, size_t size)		\
+{									\
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);	\
+	unsigned long val = 0;						\
+	if (kstrtoul(buf, 0, &val))					\
+		return -EINVAL;						\
+									\
+	pm_runtime_get_sync(dev->parent);				\
+	spin_lock(&drvdata->spinlock);					\
+	if (drvdata->config.hw_powered)					\
+		cti_write_single_reg(drvdata, offset, val);		\
+	spin_unlock(&drvdata->spinlock);				\
+	pm_runtime_put_sync(dev->parent);				\
+	return size;							\
+}									\
+static DEVICE_ATTR_RW(name)
+
+/* macro to access WO registers with power check only (no enable check). */
+#define coresight_cti_reg_wo(name, offset)				\
+static ssize_t name##_store(struct device *dev,				\
+			    struct device_attribute *attr,		\
+			    const char *buf, size_t size)		\
+{									\
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);	\
+	unsigned long val = 0;						\
+	if (kstrtoul(buf, 0, &val))					\
+		return -EINVAL;						\
+									\
+	pm_runtime_get_sync(dev->parent);				\
+	spin_lock(&drvdata->spinlock);					\
+	if (drvdata->config.hw_powered)					\
+		cti_write_single_reg(drvdata, offset, val);		\
+	spin_unlock(&drvdata->spinlock);				\
+	pm_runtime_put_sync(dev->parent);				\
+	return size;							\
+}									\
+static DEVICE_ATTR_WO(name)
+
+coresight_cti_reg_rw(itchout, ITCHOUT);
+coresight_cti_reg_rw(ittrigout, ITTRIGOUT);
+coresight_cti_reg_rw(itctrl, CORESIGHT_ITCTRL);
+coresight_cti_reg_wo(itchinack, ITCHINACK);
+coresight_cti_reg_wo(ittriginack, ITTRIGINACK);
+coresight_cti_reg(ittrigin, ITTRIGIN);
+coresight_cti_reg(itchin, ITCHIN);
+coresight_cti_reg(itchoutack, ITCHOUTACK);
+coresight_cti_reg(ittrigoutack, ITTRIGOUTACK);
+
+#endif /* CORESIGHT_CTI_INTEGRATION_REGS */
+
+static struct attribute *coresight_cti_regs_attrs[] = {
+	&dev_attr_inout_sel.attr,
+	&dev_attr_inen.attr,
+	&dev_attr_outen.attr,
+	&dev_attr_gate.attr,
+	&dev_attr_asicctl.attr,
+	&dev_attr_intack.attr,
+	&dev_attr_appset.attr,
+	&dev_attr_appclear.attr,
+	&dev_attr_apppulse.attr,
+	&dev_attr_triginstatus.attr,
+	&dev_attr_trigoutstatus.attr,
+	&dev_attr_chinstatus.attr,
+	&dev_attr_choutstatus.attr,
+#ifdef CONFIG_CORESIGHT_CTI_INTEGRATION_REGS
+	&dev_attr_itctrl.attr,
+	&dev_attr_ittrigin.attr,
+	&dev_attr_itchin.attr,
+	&dev_attr_ittrigout.attr,
+	&dev_attr_itchout.attr,
+	&dev_attr_itchoutack.attr,
+	&dev_attr_ittrigoutack.attr,
+	&dev_attr_ittriginack.attr,
+	&dev_attr_itchinack.attr,
+#endif
+	NULL,
+};
+
+/* sysfs groups */
 static const struct attribute_group coresight_cti_group = {
 	.attrs = coresight_cti_attrs,
 };
@@ -118,8 +473,14 @@ static const struct attribute_group coresight_cti_mgmt_group = {
 	.name = "mgmt",
 };
 
+static const struct attribute_group coresight_cti_regs_group = {
+	.attrs = coresight_cti_regs_attrs,
+	.name = "regs",
+};
+
 const struct attribute_group *coresight_cti_groups[] = {
 	&coresight_cti_group,
 	&coresight_cti_mgmt_group,
+	&coresight_cti_regs_group,
 	NULL,
 };
diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
index f4b47761ae74..0f88b9bc2774 100644
--- a/drivers/hwtracing/coresight/coresight-cti.c
+++ b/drivers/hwtracing/coresight/coresight-cti.c
@@ -149,6 +149,25 @@ static int cti_disable_hw(struct cti_drvdata *drvdata)
 	return 0;
 }
 
+void cti_write_single_reg(struct cti_drvdata *drvdata, int offset, u32 value)
+{
+	CS_UNLOCK(drvdata->base);
+	writel_relaxed(value, drvdata->base + offset);
+	CS_LOCK(drvdata->base);
+}
+
+void cti_write_intack(struct device *dev, u32 ackval)
+{
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct cti_config *config = &drvdata->config;
+
+	spin_lock(&drvdata->spinlock);
+	/* write if enabled */
+	if (cti_active(config))
+		cti_write_single_reg(drvdata, CTIINTACK, ackval);
+	spin_unlock(&drvdata->spinlock);
+}
+
 /*
  * Look at the HW DEVID register for some of the HW settings.
  * DEVID[15:8] - max number of in / out triggers.
diff --git a/drivers/hwtracing/coresight/coresight-cti.h b/drivers/hwtracing/coresight/coresight-cti.h
index 0719221c7071..6f6f6773cd3b 100644
--- a/drivers/hwtracing/coresight/coresight-cti.h
+++ b/drivers/hwtracing/coresight/coresight-cti.h
@@ -180,7 +180,15 @@ struct cti_trig_con *cti_allocate_trig_con(struct device *dev, int in_sigs,
 					   int out_sigs);
 int cti_enable(struct coresight_device *csdev);
 int cti_disable(struct coresight_device *csdev);
+void cti_write_intack(struct device *dev, u32 ackval);
+void cti_write_single_reg(struct cti_drvdata *drvdata, int offset, u32 value);
 struct coresight_platform_data *
 coresight_cti_get_platform_data(struct device *dev);
 
+/* cti powered and enabled */
+static inline bool cti_active(struct cti_config *cfg)
+{
+	return cfg->hw_powered && cfg->hw_enabled;
+}
+
 #endif  /* _CORESIGHT_CORESIGHT_CTI_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
