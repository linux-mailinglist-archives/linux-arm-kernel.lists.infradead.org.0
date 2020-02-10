Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC7F158515
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 22:41:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=82XG+p8xaJmLzNcJvQ0eBfXkIZQUydOptKgHcPGYRBk=; b=U+qNfX4uspGhX4bfrpRRCyAYtQ
	kM11+oWW3M+Nw8JcHGoplFlW/Q7pBsGWvjlkirj1RTxHglHlkXpOEeEsBusCPp/EQvgjojwensAMG
	cJDjmIQrUdPtWWrHr7rZQg8iqlcTE7TxMSOE7RdbgU50WyMXhGgEb6/U8CP+9VXBETn3iMQyYjHn/
	dYTpvRk/uegjq0ujJQM+EJ4bmsYBSCjAereS/rjU9nEyOyygxHVpywnsOWrYsjCzfUBkT3h3IemEi
	VFQeHAWe4hxxggXZA4L+Ci1IokWEBEgc5ffRTuxp/KDFD7m67mDVRS8hMs+8L/fCeiC8rlnrq2R3l
	Ky/LvnAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Gni-0004hy-6H; Mon, 10 Feb 2020 21:41:06 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Gma-0002kl-MD
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 21:40:00 +0000
Received: by mail-wm1-x342.google.com with SMTP id a9so956166wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 13:39:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3Grj2SS0vp292vU3FwtxchBlgdFN1dwzO2tOZXLACRY=;
 b=DcgWR4zAea/NlRV34tHVVO2TdxnVPuYF9P800Jna49NLOWCMdAR5D/zDJz4bJ6/XDM
 FAhTSUKIZbuKbBxXJmCPSvNDWqxa01qiWueXQVwedTC+I0Nnwgo2Ifn1uFVGUS2G41TG
 juvvvJuZlr0ylj9R9Q1hHC8CsFQyPdDOTpNF2iAVlJaljInCjJaXRh+q6sOaTBHkUHkL
 LkB2GqW0OiRaE0eUK6MpZ7c1A2KeGH2iLUqmqJgNQek6hhQVxc6rmUpUaBVlI0A2EA5z
 /MQ6bVkHdMVlXYzru+moOPUizVDRHjeCzekxJZu0URm4ytOtmGoVociUX207VxF8VpWD
 XuIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3Grj2SS0vp292vU3FwtxchBlgdFN1dwzO2tOZXLACRY=;
 b=KEAgT8lXQwT24LAVdysbM3iTDtVvpWiDLeDKm9lKQoEnHijNyDvOAR0TOvQNFDXV3I
 Xa+3M8+UGy8BJ6g7czg35h+bbWo2VWwkm8rMMLTM50VYB1XlqBpwNP0mb8KWioRJkSbU
 3bRvQXrx3+RA2SJnrY07vomr3T3uglFdAYIkEvX+UKwJvFB2tzeOr46SzUOq7YZx1n54
 V1yqA9Rg84lyPlLk/avDatb2+8aCoBqApzJmiR61OhanKrljIGsOc0eRPlyv76hBSalf
 oeE1NXsSsQBdW90VW+NqoiKzzhYp6rmxrQ04k4M2AX4o5paaJqOetHFoB9+lHxA9YDJz
 kyMg==
X-Gm-Message-State: APjAAAUhX9zzAbtq7bRAap7WvDHF3H+Dkifk8/9a4+4rXAWOKkDXjgwL
 RZcvPLHAH3qpfsBuER19ByWlHw==
X-Google-Smtp-Source: APXvYqzUE8EujXM++IpOo/ionwanjNJlJgediU1FayIW5mAJnRP4NRH0G2saVexc7iNyDyTspSvK6w==
X-Received: by 2002:a1c:7d8b:: with SMTP id y133mr1020328wmc.165.1581370794571; 
 Mon, 10 Feb 2020 13:39:54 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a1cf:b00b:5683:ed40])
 by smtp.gmail.com with ESMTPSA id u14sm2118582wrm.51.2020.02.10.13.39.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 13:39:54 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v9 04/15] coresight: cti: Add sysfs trigger / channel
 programming API
Date: Mon, 10 Feb 2020 21:39:13 +0000
Message-Id: <20200210213924.20037-5-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200210213924.20037-1-mike.leach@linaro.org>
References: <20200210213924.20037-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_133956_752228_D23EBCC3 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org, corbet@lwn.net,
 liviu.dudau@arm.com, agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech,
 sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds a user API to allow programming of CTI by trigger ID and
channel number. This will take the channel and trigger ID supplied
by the user and program the appropriate register values.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 .../hwtracing/coresight/coresight-cti-sysfs.c | 349 ++++++++++++++++++
 drivers/hwtracing/coresight/coresight-cti.c   | 147 ++++++++
 drivers/hwtracing/coresight/coresight-cti.h   |  32 ++
 3 files changed, 528 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
index f687e07b68b0..37e71724b67b 100644
--- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
@@ -463,6 +463,349 @@ static struct attribute *coresight_cti_regs_attrs[] = {
 	NULL,
 };
 
+/* CTI channel x-trigger programming */
+static int
+cti_trig_op_parse(struct device *dev, enum cti_chan_op op,
+		  enum cti_trig_dir dir, const char *buf, size_t size)
+{
+	u32 chan_idx;
+	u32 trig_idx;
+	int items, err = -EINVAL;
+
+	/* extract chan idx and trigger idx */
+	items = sscanf(buf, "%d %d", &chan_idx, &trig_idx);
+	if (items == 2) {
+		err = cti_channel_trig_op(dev, op, dir, chan_idx, trig_idx);
+		if (!err)
+			err = size;
+	}
+	return err;
+}
+
+static ssize_t trigin_attach_store(struct device *dev,
+				   struct device_attribute *attr,
+				   const char *buf, size_t size)
+{
+	return cti_trig_op_parse(dev, CTI_CHAN_ATTACH, CTI_TRIG_IN,
+				 buf, size);
+}
+static DEVICE_ATTR_WO(trigin_attach);
+
+static ssize_t trigin_detach_store(struct device *dev,
+				   struct device_attribute *attr,
+				   const char *buf, size_t size)
+{
+	return cti_trig_op_parse(dev, CTI_CHAN_DETACH, CTI_TRIG_IN,
+				 buf, size);
+}
+static DEVICE_ATTR_WO(trigin_detach);
+
+static ssize_t trigout_attach_store(struct device *dev,
+				    struct device_attribute *attr,
+				    const char *buf, size_t size)
+{
+	return cti_trig_op_parse(dev, CTI_CHAN_ATTACH, CTI_TRIG_OUT,
+				 buf, size);
+}
+static DEVICE_ATTR_WO(trigout_attach);
+
+static ssize_t trigout_detach_store(struct device *dev,
+				    struct device_attribute *attr,
+				    const char *buf, size_t size)
+{
+	return cti_trig_op_parse(dev, CTI_CHAN_DETACH, CTI_TRIG_OUT,
+				 buf, size);
+}
+static DEVICE_ATTR_WO(trigout_detach);
+
+
+static ssize_t chan_gate_enable_store(struct device *dev,
+				      struct device_attribute *attr,
+				      const char *buf, size_t size)
+{
+	int err = 0, channel = 0;
+
+	if (kstrtoint(buf, 0, &channel))
+		return -EINVAL;
+
+	err = cti_channel_gate_op(dev, CTI_GATE_CHAN_ENABLE, channel);
+	return err ? err : size;
+}
+
+static ssize_t chan_gate_enable_show(struct device *dev,
+				     struct device_attribute *attr,
+				     char *buf)
+{
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct cti_config *cfg = &drvdata->config;
+	unsigned long ctigate_bitmask = cfg->ctigate;
+	int size = 0;
+
+	if (cfg->ctigate == 0)
+		size = scnprintf(buf, PAGE_SIZE, "\n");
+	else
+		size = bitmap_print_to_pagebuf(true, buf, &ctigate_bitmask,
+					       cfg->nr_ctm_channels);
+	return size;
+}
+static DEVICE_ATTR_RW(chan_gate_enable);
+
+static ssize_t chan_gate_disable_store(struct device *dev,
+				       struct device_attribute *attr,
+				       const char *buf, size_t size)
+{
+	int err = 0, channel = 0;
+
+	if (kstrtoint(buf, 0, &channel))
+		return -EINVAL;
+
+	err = cti_channel_gate_op(dev, CTI_GATE_CHAN_DISABLE, channel);
+	return err ? err : size;
+}
+static DEVICE_ATTR_WO(chan_gate_disable);
+
+static int
+chan_op_parse(struct device *dev, enum cti_chan_set_op op, const char *buf)
+{
+	int err = 0, channel = 0;
+
+	if (kstrtoint(buf, 0, &channel))
+		return -EINVAL;
+
+	err = cti_channel_setop(dev, op, channel);
+	return err;
+
+}
+
+static ssize_t chan_set_store(struct device *dev,
+			      struct device_attribute *attr,
+			      const char *buf, size_t size)
+{
+	int err = chan_op_parse(dev, CTI_CHAN_SET, buf);
+
+	return err ? err : size;
+}
+static DEVICE_ATTR_WO(chan_set);
+
+static ssize_t chan_clear_store(struct device *dev,
+				struct device_attribute *attr,
+				const char *buf, size_t size)
+{
+	int err = chan_op_parse(dev, CTI_CHAN_CLR, buf);
+
+	return err ? err : size;
+}
+static DEVICE_ATTR_WO(chan_clear);
+
+static ssize_t chan_pulse_store(struct device *dev,
+				struct device_attribute *attr,
+				const char *buf, size_t size)
+{
+	int err = chan_op_parse(dev, CTI_CHAN_PULSE, buf);
+
+	return err ? err : size;
+}
+static DEVICE_ATTR_WO(chan_pulse);
+
+static ssize_t trig_filter_enable_show(struct device *dev,
+				       struct device_attribute *attr,
+				       char *buf)
+{
+	u32 val;
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+
+	spin_lock(&drvdata->spinlock);
+	val = drvdata->config.trig_filter_enable;
+	spin_unlock(&drvdata->spinlock);
+	return scnprintf(buf, PAGE_SIZE, "%d\n", val);
+}
+
+static ssize_t trig_filter_enable_store(struct device *dev,
+					struct device_attribute *attr,
+					const char *buf, size_t size)
+{
+	unsigned long val;
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+
+	if (kstrtoul(buf, 0, &val))
+		return -EINVAL;
+
+	spin_lock(&drvdata->spinlock);
+	drvdata->config.trig_filter_enable = !!val;
+	spin_unlock(&drvdata->spinlock);
+	return size;
+}
+static DEVICE_ATTR_RW(trig_filter_enable);
+
+static ssize_t trigout_filtered_show(struct device *dev,
+				     struct device_attribute *attr,
+				     char *buf)
+{
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct cti_config *cfg = &drvdata->config;
+	int size = 0, nr_trig_max = cfg->nr_trig_max;
+	unsigned long mask = cfg->trig_out_filter;
+
+	if (mask)
+		size = bitmap_print_to_pagebuf(true, buf, &mask, nr_trig_max);
+	return size;
+}
+static DEVICE_ATTR_RO(trigout_filtered);
+
+/* clear all xtrigger / channel programming */
+static ssize_t chan_xtrigs_reset_store(struct device *dev,
+				       struct device_attribute *attr,
+				       const char *buf, size_t size)
+{
+	int i;
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct cti_config *config = &drvdata->config;
+
+	spin_lock(&drvdata->spinlock);
+
+	/* clear the CTI trigger / channel programming registers */
+	for (i = 0; i < config->nr_trig_max; i++) {
+		config->ctiinen[i] = 0;
+		config->ctiouten[i] = 0;
+	}
+
+	/* clear the other regs */
+	config->ctigate = GENMASK(config->nr_ctm_channels - 1, 0);
+	config->asicctl = 0;
+	config->ctiappset = 0;
+	config->ctiinout_sel = 0;
+	config->xtrig_rchan_sel = 0;
+
+	/* if enabled then write through */
+	if (cti_active(config))
+		cti_write_all_hw_regs(drvdata);
+
+	spin_unlock(&drvdata->spinlock);
+	return size;
+}
+static DEVICE_ATTR_WO(chan_xtrigs_reset);
+
+/*
+ * Write to select a channel to view, read to display the
+ * cross triggers for the selected channel.
+ */
+static ssize_t chan_xtrigs_view_store(struct device *dev,
+				      struct device_attribute *attr,
+				      const char *buf, size_t size)
+{
+	unsigned long val;
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+
+	if (kstrtoul(buf, 0, &val))
+		return -EINVAL;
+	if (val > (drvdata->config.nr_ctm_channels - 1))
+		return -EINVAL;
+
+	spin_lock(&drvdata->spinlock);
+	drvdata->config.xtrig_rchan_sel = val;
+	spin_unlock(&drvdata->spinlock);
+	return size;
+}
+
+static ssize_t chan_xtrigs_view_show(struct device *dev,
+				     struct device_attribute *attr,
+				     char *buf)
+{
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct cti_config *cfg = &drvdata->config;
+	int used = 0, reg_idx;
+	int buf_sz = PAGE_SIZE;
+	u32 chan_mask = BIT(cfg->xtrig_rchan_sel);
+
+	used += scnprintf(buf, buf_sz, "[%d] IN: ", cfg->xtrig_rchan_sel);
+	for (reg_idx = 0;
+	     reg_idx < drvdata->config.nr_trig_max;
+	     reg_idx++) {
+		if (chan_mask & cfg->ctiinen[reg_idx]) {
+			used += scnprintf(buf + used, buf_sz - used, "%d ",
+					  reg_idx);
+		}
+	}
+
+	used += scnprintf(buf + used, buf_sz - used, "OUT: ");
+	for (reg_idx = 0;
+	     reg_idx < drvdata->config.nr_trig_max;
+	     reg_idx++) {
+		if (chan_mask & cfg->ctiouten[reg_idx]) {
+			used += scnprintf(buf + used, buf_sz - used, "%d ",
+					  reg_idx);
+		}
+	}
+	used += scnprintf(buf + used, buf_sz - used, "\n");
+	return used;
+}
+static DEVICE_ATTR_RW(chan_xtrigs_view);
+
+static ssize_t print_chan_list(struct device *dev,
+			       char *buf, bool inuse)
+{
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct cti_config *config = &drvdata->config;
+	int size, i;
+	unsigned long inuse_bits = 0, chan_mask;
+
+	/* scan regs to get bitmap of channels in use. */
+	spin_lock(&drvdata->spinlock);
+	for (i = 0; i < config->nr_trig_max; i++) {
+		inuse_bits |= config->ctiinen[i];
+		inuse_bits |= config->ctiouten[i];
+	}
+	spin_unlock(&drvdata->spinlock);
+
+	/* inverse bits if printing free channels */
+	if (!inuse)
+		inuse_bits = ~inuse_bits;
+
+	/* list of channels, or 'none' */
+	chan_mask = GENMASK(config->nr_ctm_channels - 1, 0);
+	if (inuse_bits & chan_mask)
+		size = bitmap_print_to_pagebuf(true, buf, &inuse_bits,
+					       config->nr_ctm_channels);
+	else
+		size = scnprintf(buf, PAGE_SIZE, "\n");
+	return size;
+}
+
+static ssize_t chan_inuse_show(struct device *dev,
+			       struct device_attribute *attr,
+			       char *buf)
+{
+	return print_chan_list(dev, buf, true);
+}
+static DEVICE_ATTR_RO(chan_inuse);
+
+static ssize_t chan_free_show(struct device *dev,
+			      struct device_attribute *attr,
+			      char *buf)
+{
+	return print_chan_list(dev, buf, false);
+}
+static DEVICE_ATTR_RO(chan_free);
+
+static struct attribute *coresight_cti_channel_attrs[] = {
+	&dev_attr_trigin_attach.attr,
+	&dev_attr_trigin_detach.attr,
+	&dev_attr_trigout_attach.attr,
+	&dev_attr_trigout_detach.attr,
+	&dev_attr_trig_filter_enable.attr,
+	&dev_attr_trigout_filtered.attr,
+	&dev_attr_chan_gate_enable.attr,
+	&dev_attr_chan_gate_disable.attr,
+	&dev_attr_chan_set.attr,
+	&dev_attr_chan_clear.attr,
+	&dev_attr_chan_pulse.attr,
+	&dev_attr_chan_inuse.attr,
+	&dev_attr_chan_free.attr,
+	&dev_attr_chan_xtrigs_view.attr,
+	&dev_attr_chan_xtrigs_reset.attr,
+	NULL,
+};
+
 /* sysfs groups */
 static const struct attribute_group coresight_cti_group = {
 	.attrs = coresight_cti_attrs,
@@ -478,9 +821,15 @@ static const struct attribute_group coresight_cti_regs_group = {
 	.name = "regs",
 };
 
+static const struct attribute_group coresight_cti_channels_group = {
+	.attrs = coresight_cti_channel_attrs,
+	.name = "channels",
+};
+
 const struct attribute_group *coresight_cti_groups[] = {
 	&coresight_cti_group,
 	&coresight_cti_mgmt_group,
 	&coresight_cti_regs_group,
+	&coresight_cti_channels_group,
 	NULL,
 };
diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
index 0f88b9bc2774..77c2af247917 100644
--- a/drivers/hwtracing/coresight/coresight-cti.c
+++ b/drivers/hwtracing/coresight/coresight-cti.c
@@ -293,6 +293,153 @@ int cti_add_default_connection(struct device *dev, struct cti_drvdata *drvdata)
 	return ret;
 }
 
+/** cti channel api **/
+/* attach/detach channel from trigger - write through if enabled. */
+int cti_channel_trig_op(struct device *dev, enum cti_chan_op op,
+			enum cti_trig_dir direction, u32 channel_idx,
+			u32 trigger_idx)
+{
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct cti_config *config = &drvdata->config;
+	u32 trig_bitmask;
+	u32 chan_bitmask;
+	u32 reg_value;
+	int reg_offset;
+
+	/* ensure indexes in range */
+	if ((channel_idx >= config->nr_ctm_channels) ||
+	   (trigger_idx >= config->nr_trig_max))
+		return -EINVAL;
+
+	trig_bitmask = BIT(trigger_idx);
+
+	/* ensure registered triggers and not out filtered */
+	if (direction == CTI_TRIG_IN)	{
+		if (!(trig_bitmask & config->trig_in_use))
+			return -EINVAL;
+	} else {
+		if (!(trig_bitmask & config->trig_out_use))
+			return -EINVAL;
+
+		if ((config->trig_filter_enable) &&
+		    (config->trig_out_filter & trig_bitmask))
+			return -EINVAL;
+	}
+
+	/* update the local register values */
+	chan_bitmask = BIT(channel_idx);
+	reg_offset = (direction == CTI_TRIG_IN ? CTIINEN(trigger_idx) :
+		      CTIOUTEN(trigger_idx));
+
+	spin_lock(&drvdata->spinlock);
+
+	/* read - modify write - the trigger / channel enable value */
+	reg_value = direction == CTI_TRIG_IN ? config->ctiinen[trigger_idx] :
+		     config->ctiouten[trigger_idx];
+	if (op == CTI_CHAN_ATTACH)
+		reg_value |= chan_bitmask;
+	else
+		reg_value &= ~chan_bitmask;
+
+	/* write local copy */
+	if (direction == CTI_TRIG_IN)
+		config->ctiinen[trigger_idx] = reg_value;
+	else
+		config->ctiouten[trigger_idx] = reg_value;
+
+	/* write through if enabled */
+	if (cti_active(config))
+		cti_write_single_reg(drvdata, reg_offset, reg_value);
+	spin_unlock(&drvdata->spinlock);
+	return 0;
+}
+
+int cti_channel_gate_op(struct device *dev, enum cti_chan_gate_op op,
+			u32 channel_idx)
+{
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct cti_config *config = &drvdata->config;
+	u32 chan_bitmask;
+	u32 reg_value;
+	int err = 0;
+
+	if (channel_idx >= config->nr_ctm_channels)
+		return -EINVAL;
+
+	chan_bitmask = BIT(channel_idx);
+
+	spin_lock(&drvdata->spinlock);
+	reg_value = config->ctigate;
+	switch (op) {
+	case CTI_GATE_CHAN_ENABLE:
+		reg_value |= chan_bitmask;
+		break;
+
+	case CTI_GATE_CHAN_DISABLE:
+		reg_value &= ~chan_bitmask;
+		break;
+
+	default:
+		err = -EINVAL;
+		break;
+	}
+	if (err == 0) {
+		config->ctigate = reg_value;
+		if (cti_active(config))
+			cti_write_single_reg(drvdata, CTIGATE, reg_value);
+	}
+	spin_unlock(&drvdata->spinlock);
+	return err;
+}
+
+int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
+		      u32 channel_idx)
+{
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct cti_config *config = &drvdata->config;
+	u32 chan_bitmask;
+	u32 reg_value;
+	u32 reg_offset;
+	int err = 0;
+
+	if (channel_idx >= config->nr_ctm_channels)
+		return -EINVAL;
+
+	chan_bitmask = BIT(channel_idx);
+
+	spin_lock(&drvdata->spinlock);
+	reg_value = config->ctiappset;
+	switch (op) {
+	case CTI_CHAN_SET:
+		config->ctiappset |= chan_bitmask;
+		reg_value  = config->ctiappset;
+		reg_offset = CTIAPPSET;
+		break;
+
+	case CTI_CHAN_CLR:
+		config->ctiappset &= ~chan_bitmask;
+		reg_value = chan_bitmask;
+		reg_offset = CTIAPPCLEAR;
+		break;
+
+	case CTI_CHAN_PULSE:
+		config->ctiappset &= ~chan_bitmask;
+		reg_value = chan_bitmask;
+		reg_offset = CTIAPPPULSE;
+		break;
+
+	default:
+		err = -EINVAL;
+		break;
+	}
+
+	if ((err == 0) && cti_active(config))
+		cti_write_single_reg(drvdata, reg_offset, reg_value);
+	spin_unlock(&drvdata->spinlock);
+
+	return err;
+}
+
 /** cti ect operations **/
 int cti_enable(struct coresight_device *csdev)
 {
diff --git a/drivers/hwtracing/coresight/coresight-cti.h b/drivers/hwtracing/coresight/coresight-cti.h
index 6f6f6773cd3b..469a06a1bb78 100644
--- a/drivers/hwtracing/coresight/coresight-cti.h
+++ b/drivers/hwtracing/coresight/coresight-cti.h
@@ -168,6 +168,30 @@ struct cti_drvdata {
 	void (*csdev_release)(struct device *dev);
 };
 
+/*
+ * Channel operation types.
+ */
+enum cti_chan_op {
+	CTI_CHAN_ATTACH,
+	CTI_CHAN_DETACH,
+};
+
+enum cti_trig_dir {
+	CTI_TRIG_IN,
+	CTI_TRIG_OUT,
+};
+
+enum cti_chan_gate_op {
+	CTI_GATE_CHAN_ENABLE,
+	CTI_GATE_CHAN_DISABLE,
+};
+
+enum cti_chan_set_op {
+	CTI_CHAN_SET,
+	CTI_CHAN_CLR,
+	CTI_CHAN_PULSE,
+};
+
 /* private cti driver fns & vars */
 extern const struct attribute_group *coresight_cti_groups[];
 int cti_add_default_connection(struct device *dev,
@@ -180,8 +204,16 @@ struct cti_trig_con *cti_allocate_trig_con(struct device *dev, int in_sigs,
 					   int out_sigs);
 int cti_enable(struct coresight_device *csdev);
 int cti_disable(struct coresight_device *csdev);
+void cti_write_all_hw_regs(struct cti_drvdata *drvdata);
 void cti_write_intack(struct device *dev, u32 ackval);
 void cti_write_single_reg(struct cti_drvdata *drvdata, int offset, u32 value);
+int cti_channel_trig_op(struct device *dev, enum cti_chan_op op,
+			enum cti_trig_dir direction, u32 channel_idx,
+			u32 trigger_idx);
+int cti_channel_gate_op(struct device *dev, enum cti_chan_gate_op op,
+			u32 channel_idx);
+int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
+		      u32 channel_idx);
 struct coresight_platform_data *
 coresight_cti_get_platform_data(struct device *dev);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
