Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C33D103007
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 00:22:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BRE1tJ/vR5R8S8CRkhI7RVOAHY/vell6QRPhErRxoV4=; b=U0+FdZ0+o9Zz1jk2WQAjJ9FUxI
	ETJ58Yc36vjAc7U8fGpZHpM01DpN2MLtl69ST9QxJXMs0L+AOwJFu7yzXeakwGmen9q1lIJiLSVzg
	RRglhuBuWTPl/ghBVgzw8B4E+jeb18k3Aa3ncl8btgv7nBjMkjkE1jnKNK+bbrrQfodMEJXXfNgkR
	kJvJlKL3F7N373og7IRnbUr8e6Ao9NjzjX3eSP+shkcQXezNaoUw2jsaR00BgAfzx7Ifs6LayXfq+
	Us1Ue3u9wV5YTvOlcFwPEE5PCC+Ti9L7iAjldLx60Aplq3hkzbgvptVL9AmNoeydKlntZhKvFb8Hn
	tF+6tS/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXCoh-0001rK-4O; Tue, 19 Nov 2019 23:21:51 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXCmO-0007Sl-Qy
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 23:19:32 +0000
Received: by mail-wr1-x442.google.com with SMTP id n1so25903702wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 15:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Gbbgv3A0qCxbF/q1YHbB1qckjwi7274prjE8bZ8akok=;
 b=oD/tt46NnDHLuEivCs7cUeatqgiP86se0aue8laeN6W3oElINvLAJ2UIpmhxda7w13
 TD0vWiWcYhIrQG6JzAuUQCfI4cOUMbgWBvlUa+UfdMDOjrXFvir9icr48qb82n+R4kn1
 wVpX0MacOAKak7garEvghDz19cv/GHpDWOQGyw1kvgsIa/dVBC9QG6E+aBqZyFh1xiNi
 0dPmgXu64cA6WuwEig+p3RFguDkT5CZFelBix7KvzWKoy5ANKV0a+JyLPzKqaXQCAfHd
 45ZCi1BkK8zuALmWckgUmC8SE2g5D+BjLR6+5Q7hJl7mocYc3sHsSjFdfn9SjtxzSZ/6
 Nlnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Gbbgv3A0qCxbF/q1YHbB1qckjwi7274prjE8bZ8akok=;
 b=n5GzPIiTBaOzftjLk2/cJMCIZv3mC9eisriS4hwDYlaFzHi+VF/agtxxHRDzzKAilF
 x8EZ9HQt4GCo5AUnJnkYyeY17jH4KWAbfd/FiyKxkxPP0d8AKi+Tm8qg/NvJ95K8cWr6
 iGWl/MPozfRBnUXielXuDZJPQ8CyO7+6n+Y4W3v3lUV+Bx9JJgSVom6KdFj2vLfnhYcA
 0i3LnaP5WgyMtp5ofL6/c7YVR/ZpShe167m/ZCEz+8+j6yynm4HVRzrUTulDe1B7hFJ0
 CadFyXHWr/Ivi5+8gP15/iqayQrfTmolUmUDTTwxchKgs5Gf3dI8I+aiMmhQo+ddy0fI
 Az7A==
X-Gm-Message-State: APjAAAVKW8D4vY5qCe93stIokNLF1f1j4rYrPvxIRBA5X1gMmCntDXHZ
 I3I06exeBmEDZvjmSKEZbdZnUSp8NSk=
X-Google-Smtp-Source: APXvYqyt99hhqGni6NMGAfMhrSLNq1mLyGM+LSY689SNMPlEsRvx7JkceAEugJsMCHCkmmnQrxpBBg==
X-Received: by 2002:adf:e58c:: with SMTP id l12mr18902383wrm.156.1574205566727; 
 Tue, 19 Nov 2019 15:19:26 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a19d:4139:292b:19a0])
 by smtp.gmail.com with ESMTPSA id m15sm15746717wrj.52.2019.11.19.15.19.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 15:19:26 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v5 07/14] coresight: cti: Add device tree support for custom
 CTI.
Date: Tue, 19 Nov 2019 23:19:05 +0000
Message-Id: <20191119231912.12768-8-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191119231912.12768-1-mike.leach@linaro.org>
References: <20191119231912.12768-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_151928_974489_4D896BB5 
X-CRM114-Status: GOOD (  22.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: mathieu.poirier@linaro.org, suzuki.poulose@arm.com
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
---
 .../coresight/coresight-cti-platform.c        | 250 +++++++++++++++++-
 .../hwtracing/coresight/coresight-cti-sysfs.c |  11 +
 2 files changed, 257 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti-platform.c b/drivers/hwtracing/coresight/coresight-cti-platform.c
index 790dd30b85f5..9c1ff432b487 100644
--- a/drivers/hwtracing/coresight/coresight-cti-platform.c
+++ b/drivers/hwtracing/coresight/coresight-cti-platform.c
@@ -13,9 +13,19 @@
 #define NR_V8PE_OUT_SIGS	3
 #define NR_V8ETM_INOUT_SIGS	4
 
+/* CTI device tree trigger connection node keyword */
+#define CTI_DT_CONNS		"trig-conns"
+
 /* CTI device tree connection property keywords */
 #define CTI_DT_V8ARCH		"arm,cti-v8-arch"
 #define CTI_DT_CSDEV_ASSOC	"arm,cs-dev-assoc"
+#define CTI_DT_TRIGIN_SIGS	"arm,trig-in-sigs"
+#define CTI_DT_TRIGOUT_SIGS	"arm,trig-out-sigs"
+#define CTI_DT_TRIGIN_TYPES	"arm,trig-in-types"
+#define CTI_DT_TRIGOUT_TYPES	"arm,trig-out-types"
+#define CTI_DT_FILTER_OUT_SIGS	"arm,trig-filters"
+#define CTI_DT_CONN_NAME	"arm,trig-conn-name"
+#define CTI_DT_CTM_ID		"arm,cti-ctm-id"
 
 /*
  * Find a registered coresight device from a device fwnode.
@@ -68,6 +78,12 @@ static const char *of_cti_get_node_name(const struct device_node *node)
 		return node->full_name;
 	return "unknown";
 }
+
+static bool of_cti_node_name_eq(const struct device_node *node,
+				const char *name)
+{
+	return of_node_name_eq(node, name);
+}
 #else
 static int of_cti_get_cpu_at_node(const struct device_node *node)
 {
@@ -78,6 +94,12 @@ static const char *of_cti_get_node_name(const struct device_node *node)
 {
 	return "unknown";
 }
+
+static bool of_cti_node_name_eq(const struct device_node *node,
+				const char *name)
+{
+	return false;
+}
 #endif
 
 static int cti_plat_get_cpu_at_node(struct fwnode_handle *fwnode)
@@ -94,6 +116,14 @@ static const char *cti_plat_get_node_name(struct fwnode_handle *fwnode)
 	return "unknown";
 }
 
+static bool cti_plat_node_name_eq(struct fwnode_handle *fwnode,
+				  const char *name)
+{
+	if (is_of_node(fwnode))
+		return of_cti_node_name_eq(to_of_node(fwnode), name);
+	return false;
+}
+
 static int cti_plat_create_v8_etm_connection(struct device *dev,
 					     struct cti_drvdata *drvdata)
 {
@@ -205,6 +235,214 @@ static int cti_plat_create_v8_connections(struct device *dev,
 	return ret;
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
+	int items, used = 0, err = 0, nr_sigs;
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
+		if (used < items) {
+			tgrp->sig_types[i] =
+				values[i] < CTI_TRIG_MAX ? values[i] : GEN_IO;
+			used++;
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
+			csdev = cti_get_assoc_csdev_by_fwnode(cs_fwnode);
+			if (csdev) /* use device name if csdev found */
+				assoc_name = dev_name(&csdev->dev);
+			else  /* otherwise node name for later association */
+				assoc_name = cti_plat_get_node_name(cs_fwnode);
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
+			rc = cti_plat_create_connection(dev, drvdata, child);
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
@@ -212,12 +450,16 @@ int cti_plat_get_hw_data(struct device *dev,
 	int rc = 0;
 	struct cti_device *cti_dev = &drvdata->ctidev;
 
+	/* get any CTM ID - defaults to 0 */
+	device_property_read_u32(dev, CTI_DT_CTM_ID, &cti_dev->ctm_id);
+
 	/* check for a v8 architectural CTI device */
-	if (device_property_read_bool(dev, CTI_DT_V8ARCH)) {
+	if (device_property_read_bool(dev, CTI_DT_V8ARCH))
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
index 98de8a4768fc..f800402f73da 100644
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
