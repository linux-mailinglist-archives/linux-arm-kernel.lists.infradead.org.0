Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A69B41D832C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HG1oEyhXYhsN3vMZs9xzX/+r1Se8Q9yKg0AxeJ2DRyY=; b=ch3rYlQk1hQi0l
	yzjlPcAV09OArBUgu3CrAzvLNXQNQgL7Rr7Akb5bV2167eDbfIPd3Sk2wJR3o9Wi1ha+bl61dWmaD
	lw2r16DVUbsGVvjqePefdvyrBFBqe8BzDwiejK6Q8DM90z3J30+Wvej4myJ9YXEI3zn6gA14Xy1qh
	iyEIHXLlFwoHWNLcKrP9RCCpEckP12UOH6C86lsmxnaq0Df34Sq/BqfOXmxRYCV4HProkmDnRQqur
	7gIpbvlU8H/d18JhqsLzHuLFqVxCIGwvNXrBKxAEq6RGziesySLi8M+eFGWYzKl2PK/dKqqMSYr5X
	gd9LJeBR3oKMn7uM8GYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jak73-0003p5-TF; Mon, 18 May 2020 18:03:41 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6D-0003Fq-8i
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:02:51 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ci23so179991pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YHBmS70VV3hNYhi2EuyscotqPn7h5GQLIPiCIgqJv4M=;
 b=w8lpPzR582yARXrSQ2QMBXF7ZWDI7yMbkepKXCJTPu+nnoULR+gujjc+YTdhAKN4CD
 Jk+yIL/ta3BvxSrA6+b3rogcj5JJjxuRIC8JRE9DFvFS98TNq4HhYeZ8YMVD3jq+xkds
 MYT7gsIxTV6f0iSHc6qDLM4TCtrAgpjFUM5+w9r4rSFGdvDrnnGcs9Uy14bV61cVWraN
 Yih3LcdL970d1es3zV9EdZw01alPfz4IaYpKGaaoyJJBIV7pOh5pDLdhLL2V+k7D8T9M
 mvpAU8FTWxVggFkLI0hu2HtziJXIeZP1ERhh3pEx95Yg/Ah01HEksOjAtoQPDoyFrAoh
 hoAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YHBmS70VV3hNYhi2EuyscotqPn7h5GQLIPiCIgqJv4M=;
 b=o9zC4fltEyn2Nr4waQc7ifOrSAnVh1+UHmAEca9BiaHeJA1H/YSa4ekyuSDPWAH9+O
 nWH/k/3OCj7299F7bE5gRJEG2cshj/INbsnKnqoNYl7WGQ8z51smBaZax7vhoTvTmUl+
 772+Uv9ifIHyk1L9xXBXmYP213ek9u0lZwfmHHRb0VvecSolYCJeTyhis8jE+6Z/BlOi
 O4Lmp0HUd2Er32TPVBeTxYo7P3MMFWgBpFcCK90srWGnsu3gjDPk+V6SxMw+DsOacW0r
 jbL5Z4ZHhM6DG70dcKhV8HtQQFxo4dkmyn012hpK3cv8n61PlzsaovFdbIjI4FPhz/8J
 8mPQ==
X-Gm-Message-State: AOAM530HIAWBeGUWmD+gvNsUFW4fjj2lw0gbXdS8IDqnATovYiTUZVRJ
 /kLbVhD4Fi6E45fe4MwXeI6lfK69f38=
X-Google-Smtp-Source: ABdhPJw8WdbKLKrqGGXCTFvYMNe3lc1VoBzcBIk7PYXD39x0+GsKNQYtt3zX+rUgd2ej/o5WOiWrLA==
X-Received: by 2002:a17:90a:2ac2:: with SMTP id i2mr636698pjg.80.1589824968553; 
 Mon, 18 May 2020 11:02:48 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.02.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:02:47 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 04/23] coresight: Expose device connections via sysfs
Date: Mon, 18 May 2020 12:02:23 -0600
Message-Id: <20200518180242.7916-5-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110249_309737_45FBC60D 
X-CRM114-Status: GOOD (  23.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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

From: Suzuki K Poulose <suzuki.poulose@arm.com>

Coresight device connections are a bit complicated and is not
exposed currently to the user. One has to look at the platform
descriptions (DT bindings or ACPI bindings) to make an understanding.
Given the new naming scheme, it will be helpful to have this information
to choose the appropriate devices for tracing. This patch exposes
the device connections via links in the sysfs directories.

e.g, for a connection devA[OutputPort_X] -> devB[InputPort_Y]
is represented as two symlinks:

  /sys/bus/coresight/.../devA/out:X -> /sys/bus/coresight/.../devB
  /sys/bus/coresight/.../devB/in:Y  -> /sys/bus/coresight/.../devA

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
[Revised to use the generic sysfs links functions & link structures.
Provides a connections sysfs group in each device to hold the links.]
Co-developed-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-priv.h  |  5 ++
 drivers/hwtracing/coresight/coresight-sysfs.c | 80 +++++++++++++++++++
 drivers/hwtracing/coresight/coresight.c       | 46 ++++++++---
 include/linux/coresight.h                     |  2 +
 4 files changed, 121 insertions(+), 12 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index a4a658d46045..5a36f0f50899 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -157,6 +157,11 @@ int coresight_add_sysfs_link(struct coresight_sysfs_link *info);
 void coresight_remove_sysfs_link(struct coresight_sysfs_link *info);
 int coresight_create_conns_sysfs_group(struct coresight_device *csdev);
 void coresight_remove_conns_sysfs_group(struct coresight_device *csdev);
+int coresight_make_links(struct coresight_device *orig,
+			 struct coresight_connection *conn,
+			 struct coresight_device *target);
+void coresight_remove_links(struct coresight_device *orig,
+			    struct coresight_connection *conn);
 
 #ifdef CONFIG_CORESIGHT_SOURCE_ETM3X
 extern int etm_readl_cp14(u32 off, unsigned int *val);
diff --git a/drivers/hwtracing/coresight/coresight-sysfs.c b/drivers/hwtracing/coresight/coresight-sysfs.c
index 6759f78733ab..82afeaf2ccc4 100644
--- a/drivers/hwtracing/coresight/coresight-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-sysfs.c
@@ -122,3 +122,83 @@ void coresight_remove_sysfs_link(struct coresight_sysfs_link *info)
 	info->orig->nr_links--;
 	info->target->nr_links--;
 }
+
+/*
+ * coresight_make_links: Make a link for a connection from a @orig
+ * device to @target, represented by @conn.
+ *
+ *   e.g, for devOrig[output_X] -> devTarget[input_Y] is represented
+ *   as two symbolic links :
+ *
+ *	/sys/.../devOrig/out:X	-> /sys/.../devTarget/
+ *	/sys/.../devTarget/in:Y	-> /sys/.../devOrig/
+ *
+ * The link names are allocated for a device where it appears. i.e, the
+ * "out" link on the master and "in" link on the slave device.
+ * The link info is stored in the connection record for avoiding
+ * the reconstruction of names for removal.
+ */
+int coresight_make_links(struct coresight_device *orig,
+			 struct coresight_connection *conn,
+			 struct coresight_device *target)
+{
+	int ret = -ENOMEM;
+	char *outs = NULL, *ins = NULL;
+	struct coresight_sysfs_link *link = NULL;
+
+	do {
+		outs = devm_kasprintf(&orig->dev, GFP_KERNEL,
+				      "out:%d", conn->outport);
+		if (!outs)
+			break;
+		ins = devm_kasprintf(&target->dev, GFP_KERNEL,
+				     "in:%d", conn->child_port);
+		if (!ins)
+			break;
+		link = devm_kzalloc(&orig->dev,
+				    sizeof(struct coresight_sysfs_link),
+				    GFP_KERNEL);
+		if (!link)
+			break;
+
+		link->orig = orig;
+		link->target = target;
+		link->orig_name = outs;
+		link->target_name = ins;
+
+		ret = coresight_add_sysfs_link(link);
+		if (ret)
+			break;
+
+		conn->link = link;
+
+		/*
+		 * Install the device connection. This also indicates that
+		 * the links are operational on both ends.
+		 */
+		conn->child_dev = target;
+		return 0;
+	} while (0);
+
+	return ret;
+}
+
+/*
+ * coresight_remove_links: Remove the sysfs links for a given connection @conn,
+ * from @orig device to @target device. See coresight_make_links() for more
+ * details.
+ */
+void coresight_remove_links(struct coresight_device *orig,
+			    struct coresight_connection *conn)
+{
+	if (!orig || !conn->link)
+		return;
+
+	coresight_remove_sysfs_link(conn->link);
+
+	devm_kfree(&conn->child_dev->dev, conn->link->target_name);
+	devm_kfree(&orig->dev, conn->link->orig_name);
+	devm_kfree(&orig->dev, conn->link);
+	conn->link = NULL;
+	conn->child_dev = NULL;
+}
diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index 07f66a3968f1..4f10cfa9dc18 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -1031,7 +1031,7 @@ static void coresight_device_release(struct device *dev)
 
 static int coresight_orphan_match(struct device *dev, void *data)
 {
-	int i;
+	int i, ret = 0;
 	bool still_orphan = false;
 	struct coresight_device *csdev, *i_csdev;
 	struct coresight_connection *conn;
@@ -1056,19 +1056,23 @@ static int coresight_orphan_match(struct device *dev, void *data)
 		/* We have found at least one orphan connection */
 		if (conn->child_dev == NULL) {
 			/* Does it match this newly added device? */
-			if (conn->child_fwnode == csdev->dev.fwnode)
-				conn->child_dev = csdev;
-			else
+			if (conn->child_fwnode == csdev->dev.fwnode) {
+				ret = coresight_make_links(i_csdev,
+							   conn, csdev);
+				if (ret)
+					return ret;
+			} else {
 				/* This component still has an orphan */
 				still_orphan = true;
+			}
 		}
 	}
 
 	i_csdev->orphan = still_orphan;
 
 	/*
-	 * Returning '0' ensures that all known component on the
-	 * bus will be checked.
+	 * Returning '0' in case we didn't encounter any error,
+	 * ensures that all known component on the bus will be checked.
 	 */
 	return 0;
 }
@@ -1082,15 +1086,21 @@ static int coresight_fixup_orphan_conns(struct coresight_device *csdev)
 
 static int coresight_fixup_device_conns(struct coresight_device *csdev)
 {
-	int i;
+	int i, ret = 0;
 
 	for (i = 0; i < csdev->pdata->nr_outport; i++) {
 		struct coresight_connection *conn = &csdev->pdata->conns[i];
 
 		conn->child_dev =
 			coresight_find_csdev_by_fwnode(conn->child_fwnode);
-		if (!conn->child_dev)
+		if (conn->child_dev) {
+			ret = coresight_make_links(csdev, conn,
+						   conn->child_dev);
+			if (ret)
+				break;
+		} else {
 			csdev->orphan = true;
+		}
 	}
 
 	return 0;
@@ -1121,7 +1131,7 @@ static int coresight_remove_match(struct device *dev, void *data)
 
 		if (csdev->dev.fwnode == conn->child_fwnode) {
 			iterator->orphan = true;
-			conn->child_dev = NULL;
+			coresight_remove_links(iterator, conn);
 			/*
 			 * Drop the reference to the handle for the remote
 			 * device acquired in parsing the connections from
@@ -1215,13 +1225,23 @@ void coresight_release_platform_data(struct coresight_device *csdev,
 				     struct coresight_platform_data *pdata)
 {
 	int i;
+	struct coresight_connection *conns = pdata->conns;
 
 	for (i = 0; i < pdata->nr_outport; i++) {
-		if (pdata->conns[i].child_fwnode) {
-			fwnode_handle_put(pdata->conns[i].child_fwnode);
+		/* If we have made the links, remove them now */
+		if (csdev && conns[i].child_dev)
+			coresight_remove_links(csdev, &conns[i]);
+		/*
+		 * Drop the refcount and clear the handle as this device
+		 * is going away
+		 */
+		if (conns[i].child_fwnode) {
+			fwnode_handle_put(conns[i].child_fwnode);
 			pdata->conns[i].child_fwnode = NULL;
 		}
 	}
+	if (csdev)
+		coresight_remove_conns_sysfs_group(csdev);
 }
 
 struct coresight_device *coresight_register(struct coresight_desc *desc)
@@ -1303,7 +1323,9 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
 
 	mutex_lock(&coresight_mutex);
 
-	ret = coresight_fixup_device_conns(csdev);
+	ret = coresight_create_conns_sysfs_group(csdev);
+	if (!ret)
+		ret = coresight_fixup_device_conns(csdev);
 	if (!ret)
 		ret = coresight_fixup_orphan_conns(csdev);
 	if (!ret)
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index a2ec25e02ca9..ccd17304d7bd 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -140,12 +140,14 @@ struct coresight_desc {
  * @chid_fwnode: remote component's fwnode handle.
  * @child_dev:	a @coresight_device representation of the component
 		connected to @outport.
+ * @link: Representation of the connection as a sysfs link.
  */
 struct coresight_connection {
 	int outport;
 	int child_port;
 	struct fwnode_handle *child_fwnode;
 	struct coresight_device *child_dev;
+	struct coresight_sysfs_link *link;
 };
 
 /**
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
