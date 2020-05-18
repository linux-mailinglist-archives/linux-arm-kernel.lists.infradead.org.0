Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A661D8360
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:04:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1bKy+4vnzMBhFFHYvUIlpRmpE9BKN8tKkEb5gohCi0=; b=TRyTt3v448vJCI
	TMDbhoEZCOlC1DNuWVs2ZM96b68uOS7ne+j/UzBIvJfMSb/NFsGAxALKQjh9RU/HSwJtyOgMFw9/N
	yUfK8DitEwNOZCOKQYco6zUwIe+ZC1rVSA5/NBZ8fiwJefLqNJ21LpEhcp789tF5tcIOgqkxY8qKC
	kisHaVBoJLI+90OMRRDOX3fTdVM3TqXsvWtLsFQSvA/H574HAU/PiILwDZ4VnyopJxFZKc/HlaZrC
	dgngo52DASOYMICTIgbgmhFujgWQNXw0uLyHAnOVAzBozpSSESMKhJFnRvMwNKsCKF9XhEFeN2rUm
	9d2xyzxjtHCn1KJkab6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jak85-0004Yq-1n; Mon, 18 May 2020 18:04:45 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6D-0003FV-J2
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:02:53 +0000
Received: by mail-pl1-x644.google.com with SMTP id w19so2755145ply.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iT88ubFxc6ED1UBnLQRgzXhnhZ/8N9RhHlYl+rHKEcA=;
 b=cYGjP76VcLAjmPAMn61/zWvs9tckW9X4UfwVw9AzxPvGINi0M2WGdc5codf6Cy67yG
 41fSGWxRzMbQGA87DK2SA3sKW2erfu9YCjlkHCDCqq4Dn1JQVScWHqmaqpbxGYuVy1YR
 u1E0+9g0bzluKL0rr8SOPvCt74P2+VCQ5EIqCLMBBCXeKTN0tk3A2cglFq4hU0p78kg1
 uTXFOSpyvSc7VT8kZODAoIxNCcWDn3zuBBBT99Fkh4BBmtBZZPqO17+Yy8xIUfLdUdO4
 xUlWZ9muUVLB0KKgx0mzKxfC1+y1ClQ2D0yi1QxxQTgcCO5dOW081a2rHIePNBSX7W8T
 2eZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iT88ubFxc6ED1UBnLQRgzXhnhZ/8N9RhHlYl+rHKEcA=;
 b=NOfuUyR52+vRcgtiBxx5o+wAWzuAVkajDR3K0192uR3mRn0CgTwhd9hZv4jA0jdoQs
 5EJ2EGECFIb6XBzLsmKByZQuOBrLKGUw/P7HSKgoOjc84EBhg5F3ZD28+lWOw+T8nELL
 /w2lKRCkxXxQpSvWE/jd/p8hEjroLMa1Om3r9zHY0uJ60GTbSb/3bYCTFXKXWB7ujjmz
 1TmzWtc364uDvYLLLyfmMfOVPb3NUGYsyRyEwEfgDVcISE+OGfLe2cfn1taR1v2x2622
 eJ6C4O8pcQN5YD5QdUCgZwFNZrrwEISYcY5hI8yFrJUxPMS8oea0a7v37+Wi4bmIA22G
 sDWA==
X-Gm-Message-State: AOAM530Gvb2p0rDfxjZtfGCIsufgXASuhzuVXRHQnSp0jjdaUuktmFK+
 YIV3BUedIDjnjW+gonszoPIXmjGQH1g=
X-Google-Smtp-Source: ABdhPJwqnEQorsm11raCyLat+BB/aNgTV4e77OluQtYY1BcBAo8rP9vKplPRQRfJra/zJAKPn/LC6Q==
X-Received: by 2002:a17:902:8342:: with SMTP id
 z2mr8023549pln.112.1589824967103; 
 Mon, 18 May 2020 11:02:47 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.02.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:02:46 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 03/23] coresight: Add generic sysfs link creation functions
Date: Mon, 18 May 2020 12:02:22 -0600
Message-Id: <20200518180242.7916-4-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110249_627046_4DB06003 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Leach <mike.leach@linaro.org>

To allow the connections between coresight components to be represented
in sysfs, generic methods for creating sysfs links between two coresight
devices are added.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/Makefile          |   3 +-
 drivers/hwtracing/coresight/coresight-priv.h  |   4 +
 drivers/hwtracing/coresight/coresight-sysfs.c | 124 ++++++++++++++++++
 include/linux/coresight.h                     |  20 +++
 4 files changed, 150 insertions(+), 1 deletion(-)
 create mode 100644 drivers/hwtracing/coresight/coresight-sysfs.c

diff --git a/drivers/hwtracing/coresight/Makefile b/drivers/hwtracing/coresight/Makefile
index 0e3e72f0f510..19497d1d92bf 100644
--- a/drivers/hwtracing/coresight/Makefile
+++ b/drivers/hwtracing/coresight/Makefile
@@ -2,7 +2,8 @@
 #
 # Makefile for CoreSight drivers.
 #
-obj-$(CONFIG_CORESIGHT) += coresight.o coresight-etm-perf.o coresight-platform.o
+obj-$(CONFIG_CORESIGHT) += coresight.o coresight-etm-perf.o \
+			   coresight-platform.o coresight-sysfs.o
 obj-$(CONFIG_CORESIGHT_LINK_AND_SINK_TMC) += coresight-tmc.o \
 					     coresight-tmc-etf.o \
 					     coresight-tmc-etr.o
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index 1cad642f27aa..a4a658d46045 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -153,6 +153,10 @@ struct coresight_device *coresight_get_sink_by_id(u32 id);
 struct list_head *coresight_build_path(struct coresight_device *csdev,
 				       struct coresight_device *sink);
 void coresight_release_path(struct list_head *path);
+int coresight_add_sysfs_link(struct coresight_sysfs_link *info);
+void coresight_remove_sysfs_link(struct coresight_sysfs_link *info);
+int coresight_create_conns_sysfs_group(struct coresight_device *csdev);
+void coresight_remove_conns_sysfs_group(struct coresight_device *csdev);
 
 #ifdef CONFIG_CORESIGHT_SOURCE_ETM3X
 extern int etm_readl_cp14(u32 off, unsigned int *val);
diff --git a/drivers/hwtracing/coresight/coresight-sysfs.c b/drivers/hwtracing/coresight/coresight-sysfs.c
new file mode 100644
index 000000000000..6759f78733ab
--- /dev/null
+++ b/drivers/hwtracing/coresight/coresight-sysfs.c
@@ -0,0 +1,124 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019, Linaro Limited, All rights reserved.
+ * Author: Mike Leach <mike.leach@linaro.org>
+ */
+
+#include <linux/device.h>
+#include <linux/kernel.h>
+
+#include "coresight-priv.h"
+
+/*
+ * Connections group - links attribute.
+ * Count of created links between coresight components in the group.
+ */
+static ssize_t nr_links_show(struct device *dev,
+			     struct device_attribute *attr,
+			     char *buf)
+{
+	struct coresight_device *csdev = to_coresight_device(dev);
+
+	return sprintf(buf, "%d\n", csdev->nr_links);
+}
+static DEVICE_ATTR_RO(nr_links);
+
+static struct attribute *coresight_conns_attrs[] = {
+	&dev_attr_nr_links.attr,
+	NULL,
+};
+
+static struct attribute_group coresight_conns_group = {
+	.attrs = coresight_conns_attrs,
+	.name = "connections",
+};
+
+/*
+ * Create connections group for CoreSight devices.
+ * This group will then be used to collate the sysfs links between
+ * devices.
+ */
+int coresight_create_conns_sysfs_group(struct coresight_device *csdev)
+{
+	int ret = 0;
+
+	if (!csdev)
+		return -EINVAL;
+
+	ret = sysfs_create_group(&csdev->dev.kobj, &coresight_conns_group);
+	if (ret)
+		return ret;
+
+	csdev->has_conns_grp = true;
+	return ret;
+}
+
+void coresight_remove_conns_sysfs_group(struct coresight_device *csdev)
+{
+	if (!csdev)
+		return;
+
+	if (csdev->has_conns_grp) {
+		sysfs_remove_group(&csdev->dev.kobj, &coresight_conns_group);
+		csdev->has_conns_grp = false;
+	}
+}
+
+int coresight_add_sysfs_link(struct coresight_sysfs_link *info)
+{
+	int ret = 0;
+
+	if (!info)
+		return -EINVAL;
+	if (!info->orig || !info->target ||
+	    !info->orig_name || !info->target_name)
+		return -EINVAL;
+	if (!info->orig->has_conns_grp || !info->target->has_conns_grp)
+		return -EINVAL;
+
+	/* first link orig->target */
+	ret = sysfs_add_link_to_group(&info->orig->dev.kobj,
+				      coresight_conns_group.name,
+				      &info->target->dev.kobj,
+				      info->orig_name);
+	if (ret)
+		return ret;
+
+	/* second link target->orig */
+	ret = sysfs_add_link_to_group(&info->target->dev.kobj,
+				      coresight_conns_group.name,
+				      &info->orig->dev.kobj,
+				      info->target_name);
+
+	/* error in second link - remove first - otherwise inc counts */
+	if (ret) {
+		sysfs_remove_link_from_group(&info->orig->dev.kobj,
+					     coresight_conns_group.name,
+					     info->orig_name);
+	} else {
+		info->orig->nr_links++;
+		info->target->nr_links++;
+	}
+
+	return ret;
+}
+
+void coresight_remove_sysfs_link(struct coresight_sysfs_link *info)
+{
+	if (!info)
+		return;
+	if (!info->orig || !info->target ||
+	    !info->orig_name || !info->target_name)
+		return;
+
+	sysfs_remove_link_from_group(&info->orig->dev.kobj,
+				     coresight_conns_group.name,
+				     info->orig_name);
+
+	sysfs_remove_link_from_group(&info->target->dev.kobj,
+				     coresight_conns_group.name,
+				     info->target_name);
+
+	info->orig->nr_links--;
+	info->target->nr_links--;
+}
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index 193cc9dbf448..a2ec25e02ca9 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -148,6 +148,20 @@ struct coresight_connection {
 	struct coresight_device *child_dev;
 };
 
+/**
+ * struct coresight_sysfs_link - representation of a connection in sysfs.
+ * @orig:		Originating (master) coresight device for the link.
+ * @orig_name:		Name to use for the link orig->target.
+ * @target:		Target (slave) coresight device for the link.
+ * @target_name:	Name to use for the link target->orig.
+ */
+struct coresight_sysfs_link {
+	struct coresight_device *orig;
+	const char *orig_name;
+	struct coresight_device *target;
+	const char *target_name;
+};
+
 /**
  * struct coresight_device - representation of a device as used by the framework
  * @pdata:	Platform data with device connections associated to this device.
@@ -165,6 +179,9 @@ struct coresight_connection {
  * @ea:		Device attribute for sink representation under PMU directory.
  * @ect_dev:	Associated cross trigger device. Not part of the trace data
  *		path or connections.
+ * @nr_links:   number of sysfs links created to other components from this
+ *		device. These will appear in the "connections" group.
+ * @has_conns_grp: Have added a "connections" group for sysfs links.
  */
 struct coresight_device {
 	struct coresight_platform_data *pdata;
@@ -180,6 +197,9 @@ struct coresight_device {
 	struct dev_ext_attribute *ea;
 	/* cross trigger handling */
 	struct coresight_device *ect_dev;
+	/* sysfs links between components */
+	int nr_links;
+	bool has_conns_grp;
 };
 
 /*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
