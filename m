Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C37A32620A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:39:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HwiTPiPhW8rwUiXMKVTERJnWoPVLowEu4BXf4LEf820=; b=REQh7reF+RU//7LFrBBxah7kwj
	mcH814xcy8vyVoZGVuYuXreYs8hvOa1x1kTvOWk4WKzaYSEe9Y5z7LkXRz+wldw8D6fjdLf/vwa6R
	l/n0x8IC6qcJK3c8ZNUTyaxMZ2psXG2AjMD4jbKypEseER2WnnvJx3SldX8oUyejVKPB+4mm8KdIz
	DYguPONTm5b+YLvmHGRIvafQkhf7c3Fkqa2cNVgzIf3Gma078wk6JqO4JNTSsTSY9WewPDPYoilt6
	MWUR/+zIhaNCN2PEAIclwLM87eRcu5DM45nO0AxEjk9BBhYxm36JYBsVbkFTiPNimaulD5vK90BKw
	cj1aicSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTOeH-0000Kr-88; Wed, 22 May 2019 10:39:05 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTOb3-0005Bh-Ox
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:36:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 97E621688;
 Wed, 22 May 2019 03:35:45 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 881573F575; Wed, 22 May 2019 03:35:44 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 21/30] coresight: Reuse platform data structure for
 connection tracking
Date: Wed, 22 May 2019 11:34:54 +0100
Message-Id: <1558521304-27469-22-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_033546_588292_4CDBFFC0 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 mathieu.poirier@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The platform specific information describes the connections and
the ports of a given coresigh device. This information is also
recorded in the coresight device as separate fields. Let us reuse
the original platform description to streamline the handling
of the data.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c |  4 +--
 drivers/hwtracing/coresight/coresight.c         | 46 ++++++++++++-------------
 include/linux/coresight.h                       |  8 ++---
 3 files changed, 27 insertions(+), 31 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 01718cb..793639f 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -756,8 +756,8 @@ tmc_etr_get_catu_device(struct tmc_drvdata *drvdata)
 	if (!IS_ENABLED(CONFIG_CORESIGHT_CATU))
 		return NULL;
 
-	for (i = 0; i < etr->nr_outport; i++) {
-		tmp = etr->conns[i].child_dev;
+	for (i = 0; i < etr->pdata->nr_outport; i++) {
+		tmp = etr->pdata->conns[i].child_dev;
 		if (tmp && coresight_is_catu_device(tmp))
 			return tmp;
 	}
diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index 068bd2f..96e1515 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -100,8 +100,8 @@ static int coresight_find_link_inport(struct coresight_device *csdev,
 	int i;
 	struct coresight_connection *conn;
 
-	for (i = 0; i < parent->nr_outport; i++) {
-		conn = &parent->conns[i];
+	for (i = 0; i < parent->pdata->nr_outport; i++) {
+		conn = &parent->pdata->conns[i];
 		if (conn->child_dev == csdev)
 			return conn->child_port;
 	}
@@ -118,8 +118,8 @@ static int coresight_find_link_outport(struct coresight_device *csdev,
 	int i;
 	struct coresight_connection *conn;
 
-	for (i = 0; i < csdev->nr_outport; i++) {
-		conn = &csdev->conns[i];
+	for (i = 0; i < csdev->pdata->nr_outport; i++) {
+		conn = &csdev->pdata->conns[i];
 		if (conn->child_dev == child)
 			return conn->outport;
 	}
@@ -306,10 +306,10 @@ static void coresight_disable_link(struct coresight_device *csdev,
 
 	if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_MERG) {
 		refport = inport;
-		nr_conns = csdev->nr_inport;
+		nr_conns = csdev->pdata->nr_inport;
 	} else if (link_subtype == CORESIGHT_DEV_SUBTYPE_LINK_SPLIT) {
 		refport = outport;
-		nr_conns = csdev->nr_outport;
+		nr_conns = csdev->pdata->nr_outport;
 	} else {
 		refport = 0;
 		nr_conns = 1;
@@ -595,9 +595,10 @@ static void coresight_grab_device(struct coresight_device *csdev)
 {
 	int i;
 
-	for (i = 0; i < csdev->nr_outport; i++) {
-		struct coresight_device *child = csdev->conns[i].child_dev;
+	for (i = 0; i < csdev->pdata->nr_outport; i++) {
+		struct coresight_device *child;
 
+		child  = csdev->pdata->conns[i].child_dev;
 		if (child && child->type == CORESIGHT_DEV_TYPE_HELPER)
 			pm_runtime_get_sync(child->dev.parent);
 	}
@@ -613,9 +614,10 @@ static void coresight_drop_device(struct coresight_device *csdev)
 	int i;
 
 	pm_runtime_put(csdev->dev.parent);
-	for (i = 0; i < csdev->nr_outport; i++) {
-		struct coresight_device *child = csdev->conns[i].child_dev;
+	for (i = 0; i < csdev->pdata->nr_outport; i++) {
+		struct coresight_device *child;
 
+		child  = csdev->pdata->conns[i].child_dev;
 		if (child && child->type == CORESIGHT_DEV_TYPE_HELPER)
 			pm_runtime_put(child->dev.parent);
 	}
@@ -645,9 +647,10 @@ static int _coresight_build_path(struct coresight_device *csdev,
 		goto out;
 
 	/* Not a sink - recursively explore each port found on this element */
-	for (i = 0; i < csdev->nr_outport; i++) {
-		struct coresight_device *child_dev = csdev->conns[i].child_dev;
+	for (i = 0; i < csdev->pdata->nr_outport; i++) {
+		struct coresight_device *child_dev;
 
+		child_dev = csdev->pdata->conns[i].child_dev;
 		if (child_dev &&
 		    _coresight_build_path(child_dev, sink, path) == 0) {
 			found = true;
@@ -1000,8 +1003,8 @@ static int coresight_orphan_match(struct device *dev, void *data)
 	 * Circle throuch all the connection of that component.  If we find
 	 * an orphan connection whose name matches @csdev, link it.
 	 */
-	for (i = 0; i < i_csdev->nr_outport; i++) {
-		conn = &i_csdev->conns[i];
+	for (i = 0; i < i_csdev->pdata->nr_outport; i++) {
+		conn = &i_csdev->pdata->conns[i];
 
 		/* We have found at least one orphan connection */
 		if (conn->child_dev == NULL) {
@@ -1040,8 +1043,8 @@ static void coresight_fixup_device_conns(struct coresight_device *csdev)
 {
 	int i;
 
-	for (i = 0; i < csdev->nr_outport; i++) {
-		struct coresight_connection *conn = &csdev->conns[i];
+	for (i = 0; i < csdev->pdata->nr_outport; i++) {
+		struct coresight_connection *conn = &csdev->pdata->conns[i];
 		struct device *dev = NULL;
 
 		if (conn->child_name)
@@ -1075,8 +1078,8 @@ static int coresight_remove_match(struct device *dev, void *data)
 	 * Circle throuch all the connection of that component.  If we find
 	 * a connection whose name matches @csdev, remove it.
 	 */
-	for (i = 0; i < iterator->nr_outport; i++) {
-		conn = &iterator->conns[i];
+	for (i = 0; i < iterator->pdata->nr_outport; i++) {
+		conn = &iterator->pdata->conns[i];
 
 		if (conn->child_dev == NULL)
 			continue;
@@ -1108,7 +1111,7 @@ static void coresight_remove_conns(struct coresight_device *csdev)
 	 * doesn't have at least one input port, there is no point
 	 * in searching all the devices.
 	 */
-	if (csdev->nr_inport)
+	if (csdev->pdata->nr_inport)
 		bus_for_each_dev(&coresight_bustype, NULL,
 				 csdev, coresight_remove_match);
 }
@@ -1195,10 +1198,7 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
 
 	csdev->refcnt = refcnts;
 
-	csdev->nr_inport = desc->pdata->nr_inport;
-	csdev->nr_outport = desc->pdata->nr_outport;
-
-	csdev->conns = desc->pdata->conns;
+	csdev->pdata = desc->pdata;
 
 	csdev->type = desc->type;
 	csdev->subtype = desc->subtype;
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index 298db20..b67d507 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -140,9 +140,7 @@ struct coresight_connection {
 
 /**
  * struct coresight_device - representation of a device as used by the framework
- * @conns:	array of coresight_connections associated to this component.
- * @nr_inport:	number of input port associated to this component.
- * @nr_outport:	number of output port associated to this component.
+ * @pdata:	Platform data with device connections associated to this device.
  * @type:	as defined by @coresight_dev_type.
  * @subtype:	as defined by @coresight_dev_subtype.
  * @ops:	generic operations for this component, as defined
@@ -157,9 +155,7 @@ struct coresight_connection {
  * @ea:		Device attribute for sink representation under PMU directory.
  */
 struct coresight_device {
-	struct coresight_connection *conns;
-	int nr_inport;
-	int nr_outport;
+	struct coresight_platform_data *pdata;
 	enum coresight_dev_type type;
 	union coresight_dev_subtype subtype;
 	const struct coresight_ops *ops;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
