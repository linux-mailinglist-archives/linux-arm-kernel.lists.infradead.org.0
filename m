Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C64F476971
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 15:52:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CHSIB4vYpzxb5JEPnGepAGN3X6AN1t2PNWuUdtRFXsw=; b=Mj60wwqMISoe+uFHvB7vRkd24o
	nLH3F8E+rF2/Il/2eSf/nn8sD6YGjQiY6WAPASHLmd37a+17QBFTBDoMrV0SKiSizC72FviezI+il
	cZevf9unRV2lcIuqjnSLmonMwb8AU6E45ADBwHg5MXxIFhgDGmqq22Dk1YClCQEjqturJvmBlZmcF
	ZNDGL39+tangrAJlH7/fZVH39BmFeUm/xKDG2G8ieIqAYvYM0VkYblwM0xWvHtY1BgeCtQ94z22si
	D5vS0tLRqlPON8PCbOXgZ3NOFGy1yjAhZ+BYC29sWz+KoL/RcClcAV4CyKKieSCVv5OTBMjc9/y/N
	wIXS/ldA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0dx-0007mA-VI; Fri, 26 Jul 2019 13:52:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0dQ-0007YN-OD
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 13:51:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6B7C4152D;
 Fri, 26 Jul 2019 06:51:48 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 333DD3F694;
 Fri, 26 Jul 2019 06:51:47 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 01/10] firmware: arm_scmi: Reorder some functions to avoid
 forward declarations
Date: Fri, 26 Jul 2019 14:51:29 +0100
Message-Id: <20190726135138.9858-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190726135138.9858-1-sudeep.holla@arm.com>
References: <20190726135138.9858-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_065148_873431_61F725F3 
X-CRM114-Status: GOOD (  15.93  )
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
Cc: Peng Fan <peng.fan@nxp.com>, Etienne Carriere <etienne.carriere@linaro.org>,
 linux-kernel@vger.kernel.org, Bo Zhang <bozhang.zhang@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Gaku Inami <gaku.inami.xh@renesas.com>,
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
