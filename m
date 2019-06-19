Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DFF4C1DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 21:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WIY40HEG3iCC0568H3WgpX+5dVnERhAXe4ti4TqeBRA=; b=YrHTnb5J8VM8bx2wdlozM+lBmI
	t3BKEVf1FHUNp62WQglCv2lCoHSm2QzIpfLQsqQMEcYTAPIICn4wX8ZywhrkQdb4glxxSawc1NCSZ
	RFuBR5wVlpSiY1ahaNdgLumM5VKKr5jmeGYQB1ai1E9WKoncwyIzHT6iA1FEPQxisB4HlE5qJk3Pv
	MNYR6C3fTgjZYA+o/oJBK86b6qi/GbxEhMWN1GMBbnEx9FAI6pHy46hftiP+0uu9qqtBVGt/sQW7Z
	gssjWB25FCtID/QjchFGBXgs1jRkGi2JrJLNHbnnjLWnLRt/P8ty0BnO/0IqD/rzUq9Rw+AFj8Ec0
	Zpx/q2Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdghs-000237-MW; Wed, 19 Jun 2019 19:57:20 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgeA-0006Ss-7O
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:32 +0000
Received: by mail-pg1-x543.google.com with SMTP id n2so223149pgp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pmZGtu9c56+4otJiRtfFe6AyaYLdUN7Nh4ydmav+H4A=;
 b=yGLfkp9PoutYGNNcQgrY9yBrDunjl9EisUsop8PZR0qX4rf4t+vQBnWTc/d8D+sQBD
 j6Os77ev298L9xsybI1+sehtlnmOyyqkiUCqtaX1R84BzIB7VHtQqSN5ZcX3H7SH86mE
 diCNIVcFvLGE8cn8d1zq/BMLwfXy81z6bN/zeMyJcowWlBz6+er8RoPuwoBxLta1xs27
 +4NkJi8AWeXcdvJI/YZI4QT6H+Ja0JYCh+1n7mdZhYNtMWSYvWRostMvTpKEvq4PQS/r
 QkLUpdXvOMNOALKmxMlV34Ka8j5+i9gUcS2h5Sx4PoNbTD9bo4xEr2hUc6bydOwWjnWw
 0oeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pmZGtu9c56+4otJiRtfFe6AyaYLdUN7Nh4ydmav+H4A=;
 b=BKIOrR56rHRkgZvENH5IthhaXSJ6A2pIQSFvgRvJw5PNjuok6jZArRFmmXXu0aezUl
 jSX/x4iKWQlDEtkNOXujaT27Su/UJ7dHXKWIOQolVaiSODFGnLkhFbD8LHuJZg2w2a1q
 DmwzkmZr5ZnkLOqOQPIZ74FQKygn2Z2ZLH6Fu0QPQW6zJONgmQ2eiIPDCRqih3bhwSGl
 llnHJj51lh1Qgg+7PDTgx8IGKbMaivCS0dc0elevFsfUElTb4oLzM0usrvlH8R1zgyaE
 QtnE6GrtBa/7I0wsKULafiffwG5XyCqRN3zRAKVOfI/GCWPxXY5kZZx/2ay7giR0iObn
 5HCQ==
X-Gm-Message-State: APjAAAWyD9aDwyXleB78h/gXdJJ+Vsv9/gEN9aS6e1mSHPmE0FkDC5fF
 tJdfDk059R642BZ1cxYXo/juZw==
X-Google-Smtp-Source: APXvYqyam3bvIBZmWDRsgA11BRt8ZkYtlQlF8NcV/fs1Z4gKMXfo/CwPt9wP5dZGVyx9OLy50OGcZA==
X-Received: by 2002:a65:6383:: with SMTP id h3mr9213475pgv.452.1560974009139; 
 Wed, 19 Jun 2019 12:53:29 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:28 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 09/28] coresight: Reuse platform data structure for connection
 tracking
Date: Wed, 19 Jun 2019 13:52:59 -0600
Message-Id: <20190619195318.19254-10-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125330_424104_44676DAA 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

The platform specific information describes the connections and
the ports of a given coresigh device. This information is also
recorded in the coresight device as separate fields. Let us reuse
the original platform description to streamline the handling
of the data.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../hwtracing/coresight/coresight-tmc-etr.c   |  4 +-
 drivers/hwtracing/coresight/coresight.c       | 46 +++++++++----------
 include/linux/coresight.h                     |  8 +---
 3 files changed, 27 insertions(+), 31 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 709448cf2dff..ce0114a5435c 100644
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
index 068bd2fc0985..96e15154a566 100644
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
index 298db20ba8ce..b67d5074ece0 100644
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
