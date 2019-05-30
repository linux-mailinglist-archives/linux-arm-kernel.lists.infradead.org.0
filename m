Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D736D3004F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 18:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ViZoTpL/yg7ox8T1xwVNowBFZ5gnyC5C/Zsst/qbrW0=; b=LLDo+9BJFpLR++3yhQEpQXyo0/
	SFT9ubDZZ7SvVqn9n8sKc8z28+ilWpZ5guuhbFuFxpfK7oKBOH6u20svah/fj6B76ZC2xH+Aiy7cq
	Hd/L3kVW0RJeaFqRsFWC3A13ks9rujQT4HjRPJHtSWtY+5OSu4lToCIFHHkI46EO5aQpOPoKwR3BS
	+CaUKPrscc67UiEQpapuBt3dbCo+f8guE7ug3Tcjkehx3iXg4nfIFzLgNjEiP3phSdKaB7eWos4+M
	0DAXNZqQqooJ2Mg5r6GRmIaK3ycmxfbE27mwE9Pgk3te9tIkSVj55qmOKCPzWfL9vLXMTYGoFyvbZ
	+YxaXjmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWOBZ-0003m3-OD; Thu, 30 May 2019 16:45:49 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWOAw-00032N-R9
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 16:45:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A956015AD;
 Thu, 30 May 2019 09:45:10 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 7651C3F5AF; Thu, 30 May 2019 09:45:09 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] coresight: Expose device connections via sysfs
Date: Thu, 30 May 2019 17:44:57 +0100
Message-Id: <1559234697-15743-4-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559234697-15743-1-git-send-email-suzuki.poulose@arm.com>
References: <1559234697-15743-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_094511_177746_96F3E7EB 
X-CRM114-Status: GOOD (  24.30  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: coresight@lists.linaro.org, leo.yan@linaro.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, mathieu.poirier@linaro.org,
 mike.leach@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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

We could have segregated the links to separate directories aka
attribute_groups, for input_ports and output_ports. But the sysfs won't
let you create empty attribute_groups and thus it becomes complicated to
dynamically create the attribute_groups.

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight.c | 120 +++++++++++++++++++++++++++++---
 include/linux/coresight.h               |   4 ++
 2 files changed, 113 insertions(+), 11 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index 8836acb..8f062ab 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -983,9 +983,92 @@ static void coresight_device_release(struct device *dev)
 	kfree(csdev);
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
+ * The link names are stored in the connection record for avoiding
+ * the reconstruction of names for removal.
+ */
+static int coresight_make_links(struct coresight_device *orig,
+				struct coresight_connection *conn,
+				struct coresight_device *target)
+{
+	int ret = -ENOMEM;
+	char *outs = NULL, *ins = NULL;
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
+		ret = sysfs_create_link(&orig->dev.kobj,
+					&target->dev.kobj, outs);
+		if (ret)
+			break;
+
+		ret = sysfs_create_link(&target->dev.kobj,
+					&orig->dev.kobj, ins);
+		if (ret) {
+			sysfs_remove_link(&orig->dev.kobj, outs);
+			break;
+		}
+
+		conn->inlink_name = ins;
+		conn->outlink_name = outs;
+		/*
+		 * Install the device connection. This also indicates that
+		 * the links are operational on both ends.
+		 */
+		conn->child_dev = target;
+		return 0;
+	} while (0);
+
+	if (outs)
+		devm_kfree(&orig->dev, outs);
+	if (ins)
+		devm_kfree(&target->dev, ins);
+	return ret;
+}
+
+/*
+ * coresight_remove_links: Remove the sysfs links for a given connection @conn,
+ * from @orig device to @target device. See coresight_make_links() for more
+ * details.
+ */
+static void coresight_remove_links(struct coresight_device *orig,
+				   struct coresight_connection *conn)
+{
+	struct coresight_device *target = conn->child_dev;
+
+	if (!orig || !target)
+		return;
+
+	sysfs_remove_link(&orig->dev.kobj, conn->outlink_name);
+	sysfs_remove_link(&target->dev.kobj, conn->inlink_name);
+
+	devm_kfree(&target->dev, conn->inlink_name);
+	devm_kfree(&orig->dev, conn->outlink_name);
+	conn->inlink_name = conn->outlink_name = NULL;
+	conn->child_dev = NULL;
+}
+
 static int coresight_orphan_match(struct device *dev, void *data)
 {
-	int i;
+	int i, ret = 0;
 	bool still_orphan = false;
 	struct coresight_device *csdev, *i_csdev;
 	struct coresight_connection *conn;
@@ -1010,19 +1093,23 @@ static int coresight_orphan_match(struct device *dev, void *data)
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
@@ -1036,7 +1123,7 @@ static int coresight_fixup_orphan_conns(struct coresight_device *csdev)
 
 static int coresight_fixup_device_conns(struct coresight_device *csdev)
 {
-	int i;
+	int i, ret = 0;
 
 	for (i = 0; i < csdev->pdata->nr_outport; i++) {
 		struct coresight_connection *conn = &csdev->pdata->conns[i];
@@ -1046,9 +1133,12 @@ static int coresight_fixup_device_conns(struct coresight_device *csdev)
 				      (void *)conn->child_fwnode,
 				      coresight_device_fwnode_match);
 		if (dev) {
-			conn->child_dev = to_coresight_device(dev);
+			ret = coresight_make_links(csdev, conn,
+						   to_coresight_device(dev));
 			/* and put reference from 'bus_find_device()' */
 			put_device(dev);
+			if (ret)
+				break;
 		} else {
 			csdev->orphan = true;
 			conn->child_dev = NULL;
@@ -1083,7 +1173,7 @@ static int coresight_remove_match(struct device *dev, void *data)
 
 		if (csdev->dev.fwnode == conn->child_fwnode) {
 			iterator->orphan = true;
-			conn->child_dev = NULL;
+			coresight_remove_links(iterator, conn);
 			/*
 			 * Drop the reference to the handle for the remote
 			 * device acquired in parsing the connections from
@@ -1177,10 +1267,18 @@ void coresight_release_platform_data(struct coresight_device *csdev,
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
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index a2b6882..057c7d8 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -130,12 +130,16 @@ struct coresight_desc {
  * @chid_fwnode: remote component's fwnode handle.
  * @child_dev:	a @coresight_device representation of the component
 		connected to @outport.
+ * @inlink_name: Name for the "input" link
+ * @outlink_name: Name for the "output" link
  */
 struct coresight_connection {
 	int outport;
 	int child_port;
 	struct fwnode_handle *child_fwnode;
 	struct coresight_device *child_dev;
+	const char *inlink_name;
+	const char *outlink_name;
 };
 
 /**
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
