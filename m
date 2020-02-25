Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0749216F3CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 00:49:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0kHWL3cZexZfcZLYtGAHgI5HChdys2itD25Y1pxM8kU=; b=djM/B/lOnQPCl+D/lMhhBFIOOd
	0rspjerlT9qsWb0hgHMVBiokvBn0ZzFK7iLpANvjFg6MUQoQYJHfdMdl3uLdmry7XBbjSem9Yderi
	diXPG5HOoVqRzxtD7ASIWA6+dkbHm/YQ1xBxG6d0P6WwAZBOvTW8ye9So79tQhExpGWcl8g4t4Pms
	Mc9cj2HqZNFtlgRb1VP0RmEqo6h9Z5BFOBX0f6zY2aurkjBJBt0CqKRwG8OV/vHLfVS32fowv6hbU
	DuleYeWcbMtoUAgdPLkR/CxWLUGXGNjE5phSKZ3BaZ6eiamGPc5U6UYLrDUyimdpxUcoymS4cFXYL
	LPdg5HqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6jwn-0000Vg-4O; Tue, 25 Feb 2020 23:49:06 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6juS-0007CG-Ks
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 23:46:43 +0000
Received: by mail-wr1-x441.google.com with SMTP id e8so767328wrm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 15:46:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=IlHE1TPPaatr6L2aGQ0CeRRs3v4udZLopKfPEEns2S4=;
 b=JwrTW+NZcTFIA5N3SktvYN3UBhFwNlu07WRZl0En4IMZWlIUDZkIuIT7r5izynS5+P
 1stqFPYge89bkl7cqkhZD0XGUWLOCjRbZcLOkqye+lwFg5iswz1aVKMwxv0BfdHuzF4o
 n+xIC8P7vtuBH+BEYP/hCLRa1BJjgXB+jQZiVWb0HVezJU8nlmVZZYxEy1gS6rh9ePJX
 8Q4o9WjLNncoB55yW7QGjN/GDz4mzvX1C4AG5oydlFXmF93SObyqHE8A/9rNbxSS43r7
 buQkYyUj/zqHL1pH5SHjdkMUew7PWSBA5VPLGyPWP49VcMS3Tn68gwyS69LK79++zaIx
 3HnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=IlHE1TPPaatr6L2aGQ0CeRRs3v4udZLopKfPEEns2S4=;
 b=RVWVQo9agNF4O9SiODKTFSN+fclZBgk/4k/fJkS2AikT6/EY/335vK0ztKPjDmU5Yx
 adgMij4Xa/2pH7lOmVZ13DmuYEpFa9Lq8Ezs7OnW2YEPzGsUiu/S1CEBhcv058fzn/GU
 RYNjDPCHqeSQ05WybqM+aZFtDQ2e7gQHp1Rohspcx+klngyRZ3NmS6JhaJXsoiIoZ5GJ
 yfWCcQXcHeHULGfXjSeGJP9Cp3K6yirSyvhHlPoYawJ8G1lpTVtmbQz5VwNBBhAVcyW/
 Oi4w0uPMZ/drhyVAZRvEL8BjEIfYzkEF93JxufUjpehAo4IBeRJfp0+WD2gCULXwhhmT
 kvWQ==
X-Gm-Message-State: APjAAAVs83+hEDQmWqgQODZwAbtrSy4wU2y3bF3c28pQ9r3wGvTMVMVs
 I1WH2GZyRO42mAWK1WKt6ps3asZIgJw=
X-Google-Smtp-Source: APXvYqyqZX1+jH7rjl21aePSLaWzWGhd0N49gtekJchip0l+aXY8PxMgUfktMdj83L864q2A+Hi14Q==
X-Received: by 2002:adf:ea42:: with SMTP id j2mr1439978wrn.377.1582674398750; 
 Tue, 25 Feb 2020 15:46:38 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:186c:5f6c:221d:5ce])
 by smtp.gmail.com with ESMTPSA id t133sm356278wmf.31.2020.02.25.15.46.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 15:46:38 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 coresight@lists.linaro.org, linux-doc@vger.kernel.org
Subject: [PATCH v10 07/15] coresight: cti: Add device tree support for custom
 CTI
Date: Tue, 25 Feb 2020 23:46:03 +0000
Message-Id: <20200225234611.11067-8-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200225234611.11067-1-mike.leach@linaro.org>
References: <20200225234611.11067-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_154640_757413_3E7D7A59 
X-CRM114-Status: GOOD (  22.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org, corbet@lwn.net,
 liviu.dudau@arm.com, agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech,
 sudeep.holla@arm.com, Mike Leach <mike.leach@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds support for CTIs whose connections are implementation defined at
hardware design time, and not constrained by v8 architecture.

These CTIs have no standard connection setup, all the settings have to
be defined in the device tree files. The patch creates a set of connections
and trigger signals based on the information provided.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 .../coresight/coresight-cti-platform.c        | 235 +++++++++++++++++-
 .../hwtracing/coresight/coresight-cti-sysfs.c |  11 +
 2 files changed, 242 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti-platform.c b/drivers/hwtracing/coresight/coresight-cti-platform.c
index 36a276eda50a..b44d83142b62 100644
--- a/drivers/hwtracing/coresight/coresight-cti-platform.c
+++ b/drivers/hwtracing/coresight/coresight-cti-platform.c
@@ -13,9 +13,19 @@
 #define NR_V8PE_OUT_SIGS	3
 #define NR_V8ETM_INOUT_SIGS	4
 
+/* CTI device tree trigger connection node keyword */
+#define CTI_DT_CONNS		"trig-conns"
+
 /* CTI device tree connection property keywords */
 #define CTI_DT_V8ARCH_COMPAT	"arm,coresight-cti-v8-arch"
 #define CTI_DT_CSDEV_ASSOC	"arm,cs-dev-assoc"
+#define CTI_DT_TRIGIN_SIGS	"arm,trig-in-sigs"
+#define CTI_DT_TRIGOUT_SIGS	"arm,trig-out-sigs"
+#define CTI_DT_TRIGIN_TYPES	"arm,trig-in-types"
+#define CTI_DT_TRIGOUT_TYPES	"arm,trig-out-types"
+#define CTI_DT_FILTER_OUT_SIGS	"arm,trig-filters"
+#define CTI_DT_CONN_NAME	"arm,trig-conn-name"
+#define CTI_DT_CTM_ID		"arm,cti-ctm-id"
 
 #ifdef CONFIG_OF
 /*
@@ -87,6 +97,14 @@ cti_plat_get_csdev_or_node_name(struct fwnode_handle *fwnode,
 	return name;
 }
 
+static bool cti_plat_node_name_eq(struct fwnode_handle *fwnode,
+				  const char *name)
+{
+	if (is_of_node(fwnode))
+		return of_node_name_eq(to_of_node(fwnode), name);
+	return false;
+}
+
 static int cti_plat_create_v8_etm_connection(struct device *dev,
 					     struct cti_drvdata *drvdata)
 {
@@ -205,6 +223,211 @@ static int cti_plat_check_v8_arch_compatible(struct device *dev)
 	return 0;
 }
 
+static int cti_plat_count_sig_elements(const struct fwnode_handle *fwnode,
+				       const char *name)
+{
+	int nr_elem = fwnode_property_count_u32(fwnode, name);
+
+	return (nr_elem < 0 ? 0 : nr_elem);
+}
+
+static int cti_plat_read_trig_group(struct cti_trig_grp *tgrp,
+				    const struct fwnode_handle *fwnode,
+				    const char *grp_name)
+{
+	int idx, err = 0;
+	u32 *values;
+
+	if (!tgrp->nr_sigs)
+		return 0;
+
+	values = kcalloc(tgrp->nr_sigs, sizeof(u32), GFP_KERNEL);
+	if (!values)
+		return -ENOMEM;
+
+	err = fwnode_property_read_u32_array(fwnode, grp_name,
+					     values, tgrp->nr_sigs);
+
+	if (!err) {
+		/* set the signal usage mask */
+		for (idx = 0; idx < tgrp->nr_sigs; idx++)
+			tgrp->used_mask |= BIT(values[idx]);
+	}
+
+	kfree(values);
+	return err;
+}
+
+static int cti_plat_read_trig_types(struct cti_trig_grp *tgrp,
+				    const struct fwnode_handle *fwnode,
+				    const char *type_name)
+{
+	int items, err = 0, nr_sigs;
+	u32 *values = NULL, i;
+
+	/* allocate an array according to number of signals in connection */
+	nr_sigs = tgrp->nr_sigs;
+	if (!nr_sigs)
+		return 0;
+
+	/* see if any types have been included in the device description */
+	items = cti_plat_count_sig_elements(fwnode, type_name);
+	if (items > nr_sigs)
+		return -EINVAL;
+
+	/* need an array to store the values iff there are any */
+	if (items) {
+		values = kcalloc(items, sizeof(u32), GFP_KERNEL);
+		if (!values)
+			return -ENOMEM;
+
+		err = fwnode_property_read_u32_array(fwnode, type_name,
+						     values, items);
+		if (err)
+			goto read_trig_types_out;
+	}
+
+	/*
+	 * Match type id to signal index, 1st type to 1st index etc.
+	 * If fewer types than signals default remainder to GEN_IO.
+	 */
+	for (i = 0; i < nr_sigs; i++) {
+		if (i < items) {
+			tgrp->sig_types[i] =
+				values[i] < CTI_TRIG_MAX ? values[i] : GEN_IO;
+		} else {
+			tgrp->sig_types[i] = GEN_IO;
+		}
+	}
+
+read_trig_types_out:
+	kfree(values);
+	return err;
+}
+
+static int cti_plat_process_filter_sigs(struct cti_drvdata *drvdata,
+					const struct fwnode_handle *fwnode)
+{
+	struct cti_trig_grp *tg = NULL;
+	int err = 0, nr_filter_sigs;
+
+	nr_filter_sigs = cti_plat_count_sig_elements(fwnode,
+						     CTI_DT_FILTER_OUT_SIGS);
+	if (nr_filter_sigs == 0)
+		return 0;
+
+	if (nr_filter_sigs > drvdata->config.nr_trig_max)
+		return -EINVAL;
+
+	tg = kzalloc(sizeof(*tg), GFP_KERNEL);
+	if (!tg)
+		return -ENOMEM;
+
+	err = cti_plat_read_trig_group(tg, fwnode, CTI_DT_FILTER_OUT_SIGS);
+	if (!err)
+		drvdata->config.trig_out_filter |= tg->used_mask;
+
+	kfree(tg);
+	return err;
+}
+
+static int cti_plat_create_connection(struct device *dev,
+				      struct cti_drvdata *drvdata,
+				      struct fwnode_handle *fwnode)
+{
+	struct cti_trig_con *tc = NULL;
+	int cpuid = -1, err = 0;
+	struct fwnode_handle *cs_fwnode = NULL;
+	struct coresight_device *csdev = NULL;
+	const char *assoc_name = "unknown";
+	char cpu_name_str[16];
+	int nr_sigs_in, nr_sigs_out;
+
+	/* look to see how many in and out signals we have */
+	nr_sigs_in = cti_plat_count_sig_elements(fwnode, CTI_DT_TRIGIN_SIGS);
+	nr_sigs_out = cti_plat_count_sig_elements(fwnode, CTI_DT_TRIGOUT_SIGS);
+
+	if ((nr_sigs_in > drvdata->config.nr_trig_max) ||
+	    (nr_sigs_out > drvdata->config.nr_trig_max))
+		return -EINVAL;
+
+	tc = cti_allocate_trig_con(dev, nr_sigs_in, nr_sigs_out);
+	if (!tc)
+		return -ENOMEM;
+
+	/* look for the signals properties. */
+	err = cti_plat_read_trig_group(tc->con_in, fwnode,
+				       CTI_DT_TRIGIN_SIGS);
+	if (err)
+		goto create_con_err;
+
+	err = cti_plat_read_trig_types(tc->con_in, fwnode,
+				       CTI_DT_TRIGIN_TYPES);
+	if (err)
+		goto create_con_err;
+
+	err = cti_plat_read_trig_group(tc->con_out, fwnode,
+				       CTI_DT_TRIGOUT_SIGS);
+	if (err)
+		goto create_con_err;
+
+	err = cti_plat_read_trig_types(tc->con_out, fwnode,
+				       CTI_DT_TRIGOUT_TYPES);
+	if (err)
+		goto create_con_err;
+
+	err = cti_plat_process_filter_sigs(drvdata, fwnode);
+	if (err)
+		goto create_con_err;
+
+	/* read the connection name if set - may be overridden by later */
+	fwnode_property_read_string(fwnode, CTI_DT_CONN_NAME, &assoc_name);
+
+	/* associated cpu ? */
+	cpuid = cti_plat_get_cpu_at_node(fwnode);
+	if (cpuid >= 0) {
+		drvdata->ctidev.cpu = cpuid;
+		scnprintf(cpu_name_str, sizeof(cpu_name_str), "cpu%d", cpuid);
+		assoc_name = cpu_name_str;
+	} else {
+		/* associated device ? */
+		cs_fwnode = fwnode_find_reference(fwnode,
+						  CTI_DT_CSDEV_ASSOC, 0);
+		if (!IS_ERR_OR_NULL(cs_fwnode)) {
+			assoc_name = cti_plat_get_csdev_or_node_name(cs_fwnode,
+								     &csdev);
+			fwnode_handle_put(cs_fwnode);
+		}
+	}
+	/* set up a connection */
+	err = cti_add_connection_entry(dev, drvdata, tc, csdev, assoc_name);
+
+create_con_err:
+	return err;
+}
+
+static int cti_plat_create_impdef_connections(struct device *dev,
+					      struct cti_drvdata *drvdata)
+{
+	int rc = 0;
+	struct fwnode_handle *fwnode = dev_fwnode(dev);
+	struct fwnode_handle *child = NULL;
+
+	if (IS_ERR_OR_NULL(fwnode))
+		return -EINVAL;
+
+	fwnode_for_each_child_node(fwnode, child) {
+		if (cti_plat_node_name_eq(child, CTI_DT_CONNS))
+			rc = cti_plat_create_connection(dev, drvdata,
+							child);
+		if (rc != 0)
+			break;
+	}
+	fwnode_handle_put(child);
+
+	return rc;
+}
+
 /* get the hardware configuration & connection data. */
 int cti_plat_get_hw_data(struct device *dev,
 			 struct cti_drvdata *drvdata)
@@ -212,12 +435,16 @@ int cti_plat_get_hw_data(struct device *dev,
 	int rc = 0;
 	struct cti_device *cti_dev = &drvdata->ctidev;
 
+	/* get any CTM ID - defaults to 0 */
+	device_property_read_u32(dev, CTI_DT_CTM_ID, &cti_dev->ctm_id);
+
 	/* check for a v8 architectural CTI device */
-	if (cti_plat_check_v8_arch_compatible(dev)) {
+	if (cti_plat_check_v8_arch_compatible(dev))
 		rc = cti_plat_create_v8_connections(dev, drvdata);
-		if (rc)
-			return rc;
-	}
+	else
+		rc = cti_plat_create_impdef_connections(dev, drvdata);
+	if (rc)
+		return rc;
 
 	/* if no connections, just add a single default based on max IN-OUT */
 	if (cti_dev->nr_trig_con == 0)
diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
index 37e71724b67b..8af1986ed69f 100644
--- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
@@ -56,9 +56,20 @@ static ssize_t enable_store(struct device *dev,
 }
 static DEVICE_ATTR_RW(enable);
 
+static ssize_t ctmid_show(struct device *dev,
+			  struct device_attribute *attr,
+			  char *buf)
+{
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+
+	return scnprintf(buf, PAGE_SIZE, "%d\n", drvdata->ctidev.ctm_id);
+}
+static DEVICE_ATTR_RO(ctmid);
+
 /* attribute and group sysfs tables. */
 static struct attribute *coresight_cti_attrs[] = {
 	&dev_attr_enable.attr,
+	&dev_attr_ctmid.attr,
 	NULL,
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
