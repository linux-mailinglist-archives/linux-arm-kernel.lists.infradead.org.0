Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB286250E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 17:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CHSIB4vYpzxb5JEPnGepAGN3X6AN1t2PNWuUdtRFXsw=; b=rBeDUTf+LDCxu/8S5uHasJZSyy
	VzxdDCv0Z6DJlmz38um3DwuU1Rmd+fowVVLZQTy2r621R3gCEdmNDduJkoTBbjUpdLwZIFP0DmKXV
	5Z7Apz35j2tuAHw3Uvh5cj7jzCkkGH6UfFNPARihTml2YoQtHRF8JXAmN8TTpGPPphU2I3yJorrBd
	CZm9Tm71zxx7gkJ9q/V18wTr/V+iRwilzeMHYbjuwQRYg2v6efcXgYsRS/fsPGxN78W7YJ14ctAU+
	xn/MvRh5uEQ8T8dZByeAi5mpHW9+dAnezQ5zhHz7odRF6fOe53vIt/Z+zuTgL/OusyjRrZ0NYfUBd
	vO9o0YSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkVsE-0004LV-Bk; Mon, 08 Jul 2019 15:48:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkVrj-00045x-3j
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 15:47:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8EB79CFC;
 Mon,  8 Jul 2019 08:47:42 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8BF583F59C;
 Mon,  8 Jul 2019 08:47:41 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 01/11] firmware: arm_scmi: Reorder some functions to avoid
 forward declarations
Date: Mon,  8 Jul 2019 16:47:20 +0100
Message-Id: <20190708154730.16643-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190708154730.16643-1-sudeep.holla@arm.com>
References: <20190708154730.16643-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_084743_237072_AB683C0F 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Peng Fan <peng.fan@nxp.com>, linux-kernel@vger.kernel.org,
 Bo Zhang <bozhang.zhang@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Re-shuffling few functions to keep definitions and their usages close.
This is also needed to avoid too many unnecessary forward declarations
while adding new features(delayed response and notifications).

Keeping this separate to avoid mixing up of these trivial change that
doesn't affect functionality into the ones that does.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/driver.c | 180 ++++++++++++++---------------
 1 file changed, 90 insertions(+), 90 deletions(-)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 765573756987..0bd2af0a008f 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -197,44 +197,6 @@ static void scmi_fetch_response(struct scmi_xfer *xfer,
 	memcpy_fromio(xfer->rx.buf, mem->msg_payload + 4, xfer->rx.len);
 }
 
-/**
- * scmi_rx_callback() - mailbox client callback for receive messages
- *
- * @cl: client pointer
- * @m: mailbox message
- *
- * Processes one received message to appropriate transfer information and
- * signals completion of the transfer.
- *
- * NOTE: This function will be invoked in IRQ context, hence should be
- * as optimal as possible.
- */
-static void scmi_rx_callback(struct mbox_client *cl, void *m)
-{
-	u16 xfer_id;
-	struct scmi_xfer *xfer;
-	struct scmi_chan_info *cinfo = client_to_scmi_chan_info(cl);
-	struct device *dev = cinfo->dev;
-	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
-	struct scmi_xfers_info *minfo = &info->minfo;
-	struct scmi_shared_mem __iomem *mem = cinfo->payload;
-
-	xfer_id = MSG_XTRACT_TOKEN(ioread32(&mem->msg_header));
-
-	/* Are we even expecting this? */
-	if (!test_bit(xfer_id, minfo->xfer_alloc_table)) {
-		dev_err(dev, "message for %d is not expected!\n", xfer_id);
-		return;
-	}
-
-	xfer = &minfo->xfer_block[xfer_id];
-
-	scmi_dump_header_dbg(dev, &xfer->hdr);
-
-	scmi_fetch_response(xfer, mem);
-	complete(&xfer->done);
-}
-
 /**
  * pack_scmi_header() - packs and returns 32-bit header
  *
@@ -349,6 +311,44 @@ void scmi_xfer_put(const struct scmi_handle *handle, struct scmi_xfer *xfer)
 	spin_unlock_irqrestore(&minfo->xfer_lock, flags);
 }
 
+/**
+ * scmi_rx_callback() - mailbox client callback for receive messages
+ *
+ * @cl: client pointer
+ * @m: mailbox message
+ *
+ * Processes one received message to appropriate transfer information and
+ * signals completion of the transfer.
+ *
+ * NOTE: This function will be invoked in IRQ context, hence should be
+ * as optimal as possible.
+ */
+static void scmi_rx_callback(struct mbox_client *cl, void *m)
+{
+	u16 xfer_id;
+	struct scmi_xfer *xfer;
+	struct scmi_chan_info *cinfo = client_to_scmi_chan_info(cl);
+	struct device *dev = cinfo->dev;
+	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
+	struct scmi_xfers_info *minfo = &info->minfo;
+	struct scmi_shared_mem __iomem *mem = cinfo->payload;
+
+	xfer_id = MSG_XTRACT_TOKEN(ioread32(&mem->msg_header));
+
+	/* Are we even expecting this? */
+	if (!test_bit(xfer_id, minfo->xfer_alloc_table)) {
+		dev_err(dev, "message for %d is not expected!\n", xfer_id);
+		return;
+	}
+
+	xfer = &minfo->xfer_block[xfer_id];
+
+	scmi_dump_header_dbg(dev, &xfer->hdr);
+
+	scmi_fetch_response(xfer, mem);
+	complete(&xfer->done);
+}
+
 static bool
 scmi_xfer_poll_done(const struct scmi_chan_info *cinfo, struct scmi_xfer *xfer)
 {
@@ -599,20 +599,6 @@ int scmi_handle_put(const struct scmi_handle *handle)
 	return 0;
 }
 
-static const struct scmi_desc scmi_generic_desc = {
-	.max_rx_timeout_ms = 30,	/* We may increase this if required */
-	.max_msg = 20,		/* Limited by MBOX_TX_QUEUE_LEN */
-	.max_msg_size = 128,
-};
-
-/* Each compatible listed below must have descriptor associated with it */
-static const struct of_device_id scmi_of_match[] = {
-	{ .compatible = "arm,scmi", .data = &scmi_generic_desc },
-	{ /* Sentinel */ },
-};
-
-MODULE_DEVICE_TABLE(of, scmi_of_match);
-
 static int scmi_xfer_info_init(struct scmi_info *sinfo)
 {
 	int i;
@@ -659,44 +645,6 @@ static int scmi_mailbox_check(struct device_node *np)
 	return of_parse_phandle_with_args(np, "mboxes", "#mbox-cells", 0, NULL);
 }
 
-static int scmi_mbox_free_channel(int id, void *p, void *data)
-{
-	struct scmi_chan_info *cinfo = p;
-	struct idr *idr = data;
-
-	if (!IS_ERR_OR_NULL(cinfo->chan)) {
-		mbox_free_channel(cinfo->chan);
-		cinfo->chan = NULL;
-	}
-
-	idr_remove(idr, id);
-
-	return 0;
-}
-
-static int scmi_remove(struct platform_device *pdev)
-{
-	int ret = 0;
-	struct scmi_info *info = platform_get_drvdata(pdev);
-	struct idr *idr = &info->tx_idr;
-
-	mutex_lock(&scmi_list_mutex);
-	if (info->users)
-		ret = -EBUSY;
-	else
-		list_del(&info->node);
-	mutex_unlock(&scmi_list_mutex);
-
-	if (ret)
-		return ret;
-
-	/* Safe to free channels since no more users */
-	ret = idr_for_each(idr, scmi_mbox_free_channel, idr);
-	idr_destroy(&info->tx_idr);
-
-	return ret;
-}
-
 static inline int
 scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev, int prot_id)
 {
@@ -856,6 +804,58 @@ static int scmi_probe(struct platform_device *pdev)
 	return 0;
 }
 
+static int scmi_mbox_free_channel(int id, void *p, void *data)
+{
+	struct scmi_chan_info *cinfo = p;
+	struct idr *idr = data;
+
+	if (!IS_ERR_OR_NULL(cinfo->chan)) {
+		mbox_free_channel(cinfo->chan);
+		cinfo->chan = NULL;
+	}
+
+	idr_remove(idr, id);
+
+	return 0;
+}
+
+static int scmi_remove(struct platform_device *pdev)
+{
+	int ret = 0;
+	struct scmi_info *info = platform_get_drvdata(pdev);
+	struct idr *idr = &info->tx_idr;
+
+	mutex_lock(&scmi_list_mutex);
+	if (info->users)
+		ret = -EBUSY;
+	else
+		list_del(&info->node);
+	mutex_unlock(&scmi_list_mutex);
+
+	if (ret)
+		return ret;
+
+	/* Safe to free channels since no more users */
+	ret = idr_for_each(idr, scmi_mbox_free_channel, idr);
+	idr_destroy(&info->tx_idr);
+
+	return ret;
+}
+
+static const struct scmi_desc scmi_generic_desc = {
+	.max_rx_timeout_ms = 30,	/* We may increase this if required */
+	.max_msg = 20,		/* Limited by MBOX_TX_QUEUE_LEN */
+	.max_msg_size = 128,
+};
+
+/* Each compatible listed below must have descriptor associated with it */
+static const struct of_device_id scmi_of_match[] = {
+	{ .compatible = "arm,scmi", .data = &scmi_generic_desc },
+	{ /* Sentinel */ },
+};
+
+MODULE_DEVICE_TABLE(of, scmi_of_match);
+
 static struct platform_driver scmi_driver = {
 	.driver = {
 		   .name = "arm-scmi",
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
