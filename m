Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83ED112D233
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 17:43:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WBVEh+vJ18Cz4iu8IeY/cBa+BFGExoMAoq7DFhlpyKo=; b=knu
	EYno5txeoSZrijhwp+rY2r18vrpPUvMEUxHYG0J/e6xmCtaQ1l23wV6khffiyOerrTU7dF95WKRDu
	vg/lrmbAfSTE2IqptRDEp6PdYjsX0CjN2pJtTGO7rCG9T9IqlOnx/aVjNuFJNq9ENGQjmIahVLnij
	I986W6u0hUZhM4i5XNT26+ZMsXNIY2aMO053cpzHQxFWO+o7ElzprHV8jcCRPdBQdEm6YwlpKk8or
	Dvym/LunD9hkfiQK8jT6cJZMXbpCNL/hEuRPrWFCxz3mZBLlXRWebZI6MZ4nczKZrFzYnFDHndiYO
	q/NICUuIFWTC8Hv/TWPFFct1oh6AGJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ily8s-0007CQ-DD; Mon, 30 Dec 2019 16:43:42 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ily8Q-00073r-Lp
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 16:43:17 +0000
Received: by mail-wm1-x343.google.com with SMTP id b19so14345033wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 08:43:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Dz/cJdELPmJrnmCn4UxPzGvH13yuPY2C0/ICULwwhGw=;
 b=VQtYagzM+yngF/L3lu+6OWySz8XhGj9QJXNjO7n4SI2NACfab3gHcY9dpraXEVcRTF
 sCjrOJ1eVIUS/ctaYUVYr1HE2226+JDDyP3jha91PJz2saAznh8ou0G4tgnbntYO52Xe
 9BDGvXgXNMe/il5vdU2lWFGeCuu3Ki2i1DV1wVpWXqIaTa73hikM6kbXDh2zUfdYDZl2
 naS07tF+163cNdsMqXMdvNKWjpg1KntebN+qTz249Q5veOM9WtZ8A34/NXTl+rbtGULC
 ezExgVtbU8EPP0xpAdK2p+bStwgXp8YDD7NRIwCX01PYg8kvKi6h8rHPyKnMFlKx43oZ
 sIjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Dz/cJdELPmJrnmCn4UxPzGvH13yuPY2C0/ICULwwhGw=;
 b=LATQ2cqbCoNvTx3UbXXXPgslSXEve7Y5hxheyib0vlCJyKXii1y1S0DWWr7OZwzT5c
 z0PPk3482Al5Aw0kTS9Z+2KkXgF7r/vTi/mEeEVCwnKTtEIGulz3c1bnWuAvB9R/zT2v
 PRn8lz5WgseIxCe/94Cb1+GWFuKFerCnnDcRMIJS+TxXiuA/WT1ROlz2yVInLEulgapV
 ZHCMHs2/hfZYdHtX+Q9LV7IwYUEFXBkW3Zp36TiAIhPB7N9U/v8FDbaI+z7IpVRo4Uoe
 gfzX+aNGACa6HSKyTOnFUReJ0FnHeAsfedaQ2SgFyC7iA+60YHmv6kgMfASvF3YFs1ZR
 71GQ==
X-Gm-Message-State: APjAAAUQAEtG8NiNVLNdx+VKNZUb48HAxP7mPCne/m74UQR71rpPVVKC
 1RuqXFxNWUqhCQp+r7Bflg1bRy6sTgOQxA==
X-Google-Smtp-Source: APXvYqwRG/WlTGLP1dHk5Ge3KQvtzeQvIHSp7+2CmF8ZN51JwZNpWMvrxLkdkhHerWEBERFe/ykp5Q==
X-Received: by 2002:a1c:b3d4:: with SMTP id c203mr36787122wmf.30.1577724192886; 
 Mon, 30 Dec 2019 08:43:12 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a1cf:b00b:5683:ed40])
 by smtp.gmail.com with ESMTPSA id g25sm344901wmh.3.2019.12.30.08.43.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 08:43:12 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 coresight@lists.linaro.org
Subject: [PATCH v7 09/15] coresight: cti: Add connection information to sysfs
Date: Mon, 30 Dec 2019 16:43:05 +0000
Message-Id: <20191230164306.28259-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_084314_892000_D3E15C3A 
X-CRM114-Status: GOOD (  23.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org, liviu.dudau@arm.com,
 agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech, sudeep.holla@arm.com,
 Mike Leach <mike.leach@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dynamically adds sysfs attributes for all connections defined in the CTI.

Each connection has a triggers<N> sub-directory with name, in_signals,
in_types, out_signals and out_types as read-only parameters in the
directory. in_ or out_ parameters may be omitted if there are no in or
out signals for the connection.

Additionally each device has a nr_cons in the connections sub-directory.

This allows clients to explore the connection and trigger signal details
without needing to refer to device tree or specification of the device.

Standardised type information is provided for certain common functions -
e.g. snk_full for a trigger from a sink indicating full. Otherwise type
defaults to genio.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../hwtracing/coresight/coresight-cti-sysfs.c | 333 +++++++++++++++++-
 drivers/hwtracing/coresight/coresight-cti.c   |  10 +-
 drivers/hwtracing/coresight/coresight-cti.h   |   8 +
 3 files changed, 348 insertions(+), 3 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
index 8af1986ed69f..db3395c46f51 100644
--- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
@@ -8,6 +8,67 @@
 
 #include "coresight-cti.h"
 
+/*
+ * Declare the number of static declared attribute groups
+ * Value includes groups + NULL value at end of table.
+ */
+#define CORESIGHT_CTI_STATIC_GROUPS_MAX 5
+
+/*
+ * List of trigger signal type names. Match the constants declared in
+ * include\dt-bindings\arm\coresight-cti-dt.h
+ */
+static const char * const sig_type_names[] = {
+	"genio",	/* GEN_IO */
+	"intreq",	/* GEN_INTREQ */
+	"intack",	/* GEN_INTACK */
+	"haltreq",	/* GEN_HALTREQ */
+	"restartreq",	/* GEN_RESTARTREQ */
+	"pe_edbgreq",	/* PE_EDBGREQ */
+	"pe_dbgrestart",/* PE_DBGRESTART */
+	"pe_ctiirq",	/* PE_CTIIRQ */
+	"pe_pmuirq",	/* PE_PMUIRQ */
+	"pe_dbgtrigger",/* PE_DBGTRIGGER */
+	"etm_extout",	/* ETM_EXTOUT */
+	"etm_extin",	/* ETM_EXTIN */
+	"snk_full",	/* SNK_FULL */
+	"snk_acqcomp",	/* SNK_ACQCOMP */
+	"snk_flushcomp",/* SNK_FLUSHCOMP */
+	"snk_flushin",	/* SNK_FLUSHIN */
+	"snk_trigin",	/* SNK_TRIGIN */
+	"stm_asyncout",	/* STM_ASYNCOUT */
+	"stm_tout_spte",/* STM_TOUT_SPTE */
+	"stm_tout_sw",	/* STM_TOUT_SW */
+	"stm_tout_hete",/* STM_TOUT_HETE */
+	"stm_hwevent",	/* STM_HWEVENT */
+	"ela_tstart",	/* ELA_TSTART */
+	"ela_tstop",	/* ELA_TSTOP */
+	"ela_dbgreq",	/* ELA_DBGREQ */
+};
+
+/* Show function pointer used in the connections dynamic declared attributes*/
+typedef ssize_t (*p_show_fn)(struct device *dev, struct device_attribute *attr,
+			     char *buf);
+
+/* Connection attribute types */
+enum cti_conn_attr_type {
+	CTI_CON_ATTR_NAME,
+	CTI_CON_ATTR_TRIGIN_SIG,
+	CTI_CON_ATTR_TRIGOUT_SIG,
+	CTI_CON_ATTR_TRIGIN_TYPES,
+	CTI_CON_ATTR_TRIGOUT_TYPES,
+	CTI_CON_ATTR_MAX,
+};
+
+/* Names for the connection attributes */
+static const char * const con_attr_names[CTI_CON_ATTR_MAX] = {
+	"name",
+	"in_signals",
+	"out_signals",
+	"in_types",
+	"out_types",
+};
+
 /* basic attributes */
 static ssize_t enable_show(struct device *dev,
 			   struct device_attribute *attr,
@@ -66,10 +127,21 @@ static ssize_t ctmid_show(struct device *dev,
 }
 static DEVICE_ATTR_RO(ctmid);
 
+static ssize_t nr_trigger_cons_show(struct device *dev,
+				    struct device_attribute *attr,
+				    char *buf)
+{
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+
+	return scnprintf(buf, PAGE_SIZE, "%d\n", drvdata->ctidev.nr_trig_con);
+}
+static DEVICE_ATTR_RO(nr_trigger_cons);
+
 /* attribute and group sysfs tables. */
 static struct attribute *coresight_cti_attrs[] = {
 	&dev_attr_enable.attr,
 	&dev_attr_ctmid.attr,
+	&dev_attr_nr_trigger_cons.attr,
 	NULL,
 };
 
@@ -817,7 +889,263 @@ static struct attribute *coresight_cti_channel_attrs[] = {
 	NULL,
 };
 
-/* sysfs groups */
+/* Create the connections trigger groups and attrs dynamically */
+/*
+ * Each connection has dynamic group triggers<N> + name, trigin/out sigs/types
+ * attributes, + each device has static nr_trigger_cons giving the number
+ * of groups. e.g. in sysfs:-
+ * /cti_<name>/triggers0
+ * /cti_<name>/triggers1
+ * /cti_<name>/nr_trigger_cons
+ * where nr_trigger_cons = 2
+ */
+static ssize_t con_name_show(struct device *dev,
+			     struct device_attribute *attr,
+			     char *buf)
+{
+	struct dev_ext_attribute *ext_attr =
+		container_of(attr, struct dev_ext_attribute, attr);
+	struct cti_trig_con *con = (struct cti_trig_con *)ext_attr->var;
+
+	return scnprintf(buf, PAGE_SIZE, "%s\n", con->con_dev_name);
+}
+
+static ssize_t trigin_sig_show(struct device *dev,
+			       struct device_attribute *attr,
+			       char *buf)
+{
+	struct dev_ext_attribute *ext_attr =
+		container_of(attr, struct dev_ext_attribute, attr);
+	struct cti_trig_con *con = (struct cti_trig_con *)ext_attr->var;
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct cti_config *cfg = &drvdata->config;
+	unsigned long mask = con->con_in->used_mask;
+
+	return bitmap_print_to_pagebuf(true, buf, &mask, cfg->nr_trig_max);
+}
+
+static ssize_t trigout_sig_show(struct device *dev,
+				struct device_attribute *attr,
+				char *buf)
+{
+	struct dev_ext_attribute *ext_attr =
+		container_of(attr, struct dev_ext_attribute, attr);
+	struct cti_trig_con *con = (struct cti_trig_con *)ext_attr->var;
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct cti_config *cfg = &drvdata->config;
+	unsigned long mask = con->con_out->used_mask;
+
+	return bitmap_print_to_pagebuf(true, buf, &mask, cfg->nr_trig_max);
+}
+
+/* convert a sig type id to a name */
+static const char *
+cti_sig_type_name(struct cti_trig_con *con, int used_count, bool in)
+{
+	int idx = 0;
+	struct cti_trig_grp *grp = in ? con->con_in : con->con_out;
+
+	if (grp->sig_types) {
+		if (used_count < grp->nr_sigs)
+			idx = grp->sig_types[used_count];
+	}
+	return sig_type_names[idx];
+}
+
+static ssize_t trigin_type_show(struct device *dev,
+				struct device_attribute *attr,
+				char *buf)
+{
+	struct dev_ext_attribute *ext_attr =
+		container_of(attr, struct dev_ext_attribute, attr);
+	struct cti_trig_con *con = (struct cti_trig_con *)ext_attr->var;
+	int sig_idx, used = 0, b_sz = PAGE_SIZE;
+	const char *name;
+
+	for (sig_idx = 0; sig_idx < con->con_in->nr_sigs; sig_idx++) {
+		name = cti_sig_type_name(con, sig_idx, true);
+		used += scnprintf(buf + used, b_sz - used, "%s ", name);
+	}
+	used += scnprintf(buf + used, b_sz - used, "\n");
+	return used;
+}
+
+static ssize_t trigout_type_show(struct device *dev,
+				 struct device_attribute *attr,
+				 char *buf)
+{
+	struct dev_ext_attribute *ext_attr =
+		container_of(attr, struct dev_ext_attribute, attr);
+	struct cti_trig_con *con = (struct cti_trig_con *)ext_attr->var;
+	int sig_idx, used = 0, b_sz = PAGE_SIZE;
+	const char *name;
+
+	for (sig_idx = 0; sig_idx < con->con_out->nr_sigs; sig_idx++) {
+		name = cti_sig_type_name(con, sig_idx, false);
+		used += scnprintf(buf + used, b_sz - used, "%s ", name);
+	}
+	used += scnprintf(buf + used, b_sz - used, "\n");
+	return used;
+}
+
+/*
+ * Array of show function names declared above to allow selection
+ * for the connection attributes
+ */
+static p_show_fn show_fns[CTI_CON_ATTR_MAX] = {
+	con_name_show,
+	trigin_sig_show,
+	trigout_sig_show,
+	trigin_type_show,
+	trigout_type_show,
+};
+
+static int cti_create_con_sysfs_attr(struct device *dev,
+				     struct cti_trig_con *con,
+				     enum cti_conn_attr_type attr_type,
+				     int attr_idx)
+{
+	struct dev_ext_attribute *eattr = 0;
+	char *name = 0;
+
+	eattr = devm_kzalloc(dev, sizeof(struct dev_ext_attribute),
+				    GFP_KERNEL);
+	if (eattr) {
+		name = devm_kstrdup(dev, con_attr_names[attr_type],
+				    GFP_KERNEL);
+		if (name) {
+			/* fill out the underlying attribute struct */
+			eattr->attr.attr.name = name;
+			eattr->attr.attr.mode = 0444;
+
+			/* now the device_attribute struct */
+			eattr->attr.show = show_fns[attr_type];
+		} else {
+			return -ENOMEM;
+		}
+	} else {
+		return -ENOMEM;
+	}
+	eattr->var = con;
+	con->con_attrs[attr_idx] = &eattr->attr.attr;
+	return 0;
+}
+
+static struct attribute_group *
+cti_create_con_sysfs_group(struct device *dev, struct cti_device *ctidev,
+			   int con_idx, struct cti_trig_con *tc)
+{
+	struct attribute_group *group = NULL;
+	int grp_idx;
+
+	group = devm_kzalloc(dev, sizeof(struct attribute_group), GFP_KERNEL);
+	if (!group)
+		return NULL;
+
+	group->name = devm_kasprintf(dev, GFP_KERNEL, "triggers%d", con_idx);
+	if (!group->name)
+		return NULL;
+
+	grp_idx = con_idx + CORESIGHT_CTI_STATIC_GROUPS_MAX - 1;
+	ctidev->con_groups[grp_idx] = group;
+	tc->attr_group = group;
+	return group;
+}
+
+/* create a triggers connection group and the attributes for that group */
+static int cti_create_con_attr_set(struct device *dev, int con_idx,
+				   struct cti_device *ctidev,
+				   struct cti_trig_con *tc)
+{
+	struct attribute_group *attr_group = NULL;
+	int attr_idx = 0;
+	int err = -ENOMEM;
+
+	attr_group = cti_create_con_sysfs_group(dev, ctidev, con_idx, tc);
+	if (!attr_group)
+		return -ENOMEM;
+
+	/* allocate NULL terminated array of attributes */
+	tc->con_attrs = devm_kcalloc(dev, CTI_CON_ATTR_MAX + 1,
+				     sizeof(struct attribute *), GFP_KERNEL);
+	if (!tc->con_attrs)
+		return -ENOMEM;
+
+	err = cti_create_con_sysfs_attr(dev, tc, CTI_CON_ATTR_NAME,
+					attr_idx++);
+	if (err)
+		return err;
+
+	if (tc->con_in->nr_sigs > 0) {
+		err = cti_create_con_sysfs_attr(dev, tc,
+						CTI_CON_ATTR_TRIGIN_SIG,
+						attr_idx++);
+		if (err)
+			return err;
+
+		err = cti_create_con_sysfs_attr(dev, tc,
+						CTI_CON_ATTR_TRIGIN_TYPES,
+						attr_idx++);
+		if (err)
+			return err;
+	}
+
+	if (tc->con_out->nr_sigs > 0) {
+		err = cti_create_con_sysfs_attr(dev, tc,
+						CTI_CON_ATTR_TRIGOUT_SIG,
+						attr_idx++);
+		if (err)
+			return err;
+
+		err = cti_create_con_sysfs_attr(dev, tc,
+						CTI_CON_ATTR_TRIGOUT_TYPES,
+						attr_idx++);
+		if (err)
+			return err;
+	}
+	attr_group->attrs = tc->con_attrs;
+	return 0;
+}
+
+/* create the array of group pointers for the CTI sysfs groups */
+int cti_create_cons_groups(struct device *dev, struct cti_device *ctidev)
+{
+	int nr_groups;
+
+	/* nr groups - dynamic + static + NULL terminator */
+	nr_groups = ctidev->nr_trig_con + CORESIGHT_CTI_STATIC_GROUPS_MAX;
+	ctidev->con_groups = devm_kcalloc(dev, nr_groups,
+					  sizeof(struct attribute_group *),
+					  GFP_KERNEL);
+	if (!ctidev->con_groups)
+		return -ENOMEM;
+	return 0;
+}
+
+int cti_create_cons_sysfs(struct device *dev, struct cti_drvdata *drvdata)
+{
+	struct cti_device *ctidev = &drvdata->ctidev;
+	int err = 0, con_idx = 0, i;
+	struct cti_trig_con *tc = NULL;
+
+	err = cti_create_cons_groups(dev, ctidev);
+	if (err)
+		return err;
+
+	/* populate first locations with the static set of groups */
+	for (i = 0; i < (CORESIGHT_CTI_STATIC_GROUPS_MAX - 1); i++)
+		ctidev->con_groups[i] = coresight_cti_groups[i];
+
+	/* add dynamic set for each connection */
+	list_for_each_entry(tc, &ctidev->trig_cons, node) {
+		err = cti_create_con_attr_set(dev, con_idx++, ctidev, tc);
+		if (err)
+			break;
+	}
+	return err;
+}
+
+/* attribute and group sysfs tables. */
 static const struct attribute_group coresight_cti_group = {
 	.attrs = coresight_cti_attrs,
 };
@@ -837,7 +1165,8 @@ static const struct attribute_group coresight_cti_channels_group = {
 	.name = "channels",
 };
 
-const struct attribute_group *coresight_cti_groups[] = {
+const struct attribute_group *
+coresight_cti_groups[CORESIGHT_CTI_STATIC_GROUPS_MAX] = {
 	&coresight_cti_group,
 	&coresight_cti_mgmt_group,
 	&coresight_cti_regs_group,
diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
index 2be1b310e854..9d27dea1625f 100644
--- a/drivers/hwtracing/coresight/coresight-cti.c
+++ b/drivers/hwtracing/coresight/coresight-cti.c
@@ -676,12 +676,20 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
 		goto err_out;
 	}
 
+	/* create dynamic attributes for connections */
+	ret = cti_create_cons_sysfs(dev, drvdata);
+	if (ret) {
+		dev_err(dev, "%s: create dynamic sysfs entries failed\n",
+			cti_desc.name);
+		goto err_out;
+	}
+
 	/* set up coresight component description */
 	cti_desc.pdata = pdata;
 	cti_desc.type = CORESIGHT_DEV_TYPE_ECT;
 	cti_desc.subtype.ect_subtype = CORESIGHT_DEV_SUBTYPE_ECT_CTI;
 	cti_desc.ops = &cti_ops;
-	cti_desc.groups = coresight_cti_groups;
+	cti_desc.groups = drvdata->ctidev.con_groups;
 	cti_desc.dev = dev;
 	drvdata->csdev = coresight_register(&cti_desc);
 	if (IS_ERR(drvdata->csdev)) {
diff --git a/drivers/hwtracing/coresight/coresight-cti.h b/drivers/hwtracing/coresight/coresight-cti.h
index 578d7e9ac67e..14d1b8933c18 100644
--- a/drivers/hwtracing/coresight/coresight-cti.h
+++ b/drivers/hwtracing/coresight/coresight-cti.h
@@ -74,6 +74,8 @@ struct cti_trig_grp {
  * @con_dev: coresight device connected to the CTI, NULL if not CS device
  * @con_dev_name: name of connected device (CS or CPU)
  * @node: entry node in list of connections.
+ * @con_attrs: Dynamic sysfs attributes specific to this connection.
+ * @attr_group: Dynamic attribute group created for this connection.
  */
 struct cti_trig_con {
 	struct cti_trig_grp *con_in;
@@ -81,6 +83,8 @@ struct cti_trig_con {
 	struct coresight_device *con_dev;
 	char *con_dev_name;
 	struct list_head node;
+	struct attribute **con_attrs;
+	struct attribute_group *attr_group;
 };
 
 /**
@@ -91,12 +95,15 @@ struct cti_trig_con {
  *          assumed there is a single CTM per SoC, ID 0).
  * @trig_cons: list of connections to this device.
  * @cpu: CPU ID if associated with CPU, -1 otherwise.
+ * @con_groups: combined static and dynamic sysfs groups for trigger
+ *		connections.
  */
 struct cti_device {
 	int nr_trig_con;
 	u32 ctm_id;
 	struct list_head trig_cons;
 	int cpu;
+	const struct attribute_group **con_groups;
 };
 
 /**
@@ -214,6 +221,7 @@ int cti_channel_gate_op(struct device *dev, enum cti_chan_gate_op op,
 			u32 channel_idx);
 int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
 		      u32 channel_idx);
+int cti_create_cons_sysfs(struct device *dev, struct cti_drvdata *drvdata);
 struct coresight_platform_data *
 coresight_cti_get_platform_data(struct device *dev);
 const char *cti_plat_get_node_name(struct fwnode_handle *fwnode);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
