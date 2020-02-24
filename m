Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 356E016A8B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 15:43:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y8yita2hSDEii/2p5lCM4iLYuaRnfjEGW5Il0lYY6bU=; b=Zm6QBnHX3fpG4Qr8pBDbSxgUPN
	pEs/H1wPkd/4mRSGF1CMwHTilUwB7up6es7pugQ0iRDM2tvESZpLktNhcsKW1thQiKFeu8iEueUV+
	dEg654nALi1qixrBeYtOzwLdb58ep0zcw5IFaEEEfrYxH8bMZONK8kZhHMT/d3e/n4MBRWCa2hEHC
	KNSpUwC7MiS73b3WaLNKU3QJyGn9KcvfGJNOFdEARUorJOTqRJ/7qb7U+4SpV91F9OmH83Vb2B9f2
	xmvT1+f0/sBbumiRGsB8s5980MLrE3msVEGDV1haCX9V4R/eai8Y6xnsAqJaS/YStTH/o7JIfUAIb
	juLjsTVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ExO-00047z-PZ; Mon, 24 Feb 2020 14:43:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Evz-000384-KI
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 14:42:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 30112113E;
 Mon, 24 Feb 2020 06:42:11 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 305743F534;
 Mon, 24 Feb 2020 06:42:10 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v3 04/13] firmware: arm_scmi: Add support for
 notifications message processing
Date: Mon, 24 Feb 2020 14:41:15 +0000
Message-Id: <20200224144124.2008-5-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200224144124.2008-1-cristian.marussi@arm.com>
References: <20200224144124.2008-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_064211_764266_3428C9B7 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Jonathan.Cameron@Huawei.com, cristian.marussi@arm.com,
 james.quinlan@broadcom.com, lukasz.luba@arm.com, sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sudeep Holla <sudeep.holla@arm.com>

Add the mechanisms to distinguish notifications from delayed responses and
to properly fetch notification messages upon reception: notifications
processing does not continue further after the fetch phase.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
[Reworked/renamed scmi_handle_xfer_delayed_resp()]
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
V1 --> V2
- switch the notif/delayed_resp message processing logic to use new
  transport independent layer methods
- reviewed logic of scmi_handle_xfer_delayed_resp() while renaming it as
  scmi_handle_response()
- properly relocated tracer points
---
 drivers/firmware/arm_scmi/driver.c | 84 +++++++++++++++++++++++-------
 1 file changed, 64 insertions(+), 20 deletions(-)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index efb660c34b57..868cc36a07c9 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -202,29 +202,42 @@ __scmi_xfer_put(struct scmi_xfers_info *minfo, struct scmi_xfer *xfer)
 	spin_unlock_irqrestore(&minfo->xfer_lock, flags);
 }
 
-/**
- * scmi_rx_callback() - callback for receiving messages
- *
- * @cinfo: SCMI channel info
- * @msg_hdr: Message header
- *
- * Processes one received message to appropriate transfer information and
- * signals completion of the transfer.
- *
- * NOTE: This function will be invoked in IRQ context, hence should be
- * as optimal as possible.
- */
-void scmi_rx_callback(struct scmi_chan_info *cinfo, u32 msg_hdr)
+static void scmi_handle_notification(struct scmi_chan_info *cinfo, u32 msg_hdr)
 {
-	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
-	struct scmi_xfers_info *minfo = &info->tx_minfo;
-	u16 xfer_id = MSG_XTRACT_TOKEN(msg_hdr);
-	u8 msg_type = MSG_XTRACT_TYPE(msg_hdr);
-	struct device *dev = cinfo->dev;
 	struct scmi_xfer *xfer;
+	struct device *dev = cinfo->dev;
+	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
+	struct scmi_xfers_info *minfo = &info->rx_minfo;
+
+	xfer = scmi_xfer_get(cinfo->handle, minfo);
+	if (IS_ERR(xfer)) {
+		dev_err(dev, "failed to get free message slot (%ld)\n",
+			PTR_ERR(xfer));
+		info->desc->ops->clear_notification(cinfo);
+		return;
+	}
+
+	unpack_scmi_header(msg_hdr, &xfer->hdr);
+	scmi_dump_header_dbg(dev, &xfer->hdr);
+	info->desc->ops->fetch_notification(cinfo, info->desc->max_msg_size,
+					    xfer);
+
+	trace_scmi_rx_done(xfer->transfer_id, xfer->hdr.id,
+			   xfer->hdr.protocol_id, xfer->hdr.seq,
+			   MSG_TYPE_NOTIFICATION);
 
-	if (msg_type == MSG_TYPE_NOTIFICATION)
-		return; /* Notifications not yet supported */
+	__scmi_xfer_put(minfo, xfer);
+
+	info->desc->ops->clear_notification(cinfo);
+}
+
+static void scmi_handle_response(struct scmi_chan_info *cinfo,
+				 u16 xfer_id, u8 msg_type)
+{
+	struct scmi_xfer *xfer;
+	struct device *dev = cinfo->dev;
+	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
+	struct scmi_xfers_info *minfo = &info->tx_minfo;
 
 	/* Are we even expecting this? */
 	if (!test_bit(xfer_id, minfo->xfer_alloc_table)) {
@@ -248,6 +261,37 @@ void scmi_rx_callback(struct scmi_chan_info *cinfo, u32 msg_hdr)
 		complete(&xfer->done);
 }
 
+/**
+ * scmi_rx_callback() - callback for receiving messages
+ *
+ * @cinfo: SCMI channel info
+ * @msg_hdr: Message header
+ *
+ * Processes one received message to appropriate transfer information and
+ * signals completion of the transfer.
+ *
+ * NOTE: This function will be invoked in IRQ context, hence should be
+ * as optimal as possible.
+ */
+void scmi_rx_callback(struct scmi_chan_info *cinfo, u32 msg_hdr)
+{
+	u16 xfer_id = MSG_XTRACT_TOKEN(msg_hdr);
+	u8 msg_type = MSG_XTRACT_TYPE(msg_hdr);
+
+	switch (msg_type) {
+	case MSG_TYPE_NOTIFICATION:
+		scmi_handle_notification(cinfo, msg_hdr);
+		break;
+	case MSG_TYPE_COMMAND:
+	case MSG_TYPE_DELAYED_RESP:
+		scmi_handle_response(cinfo, xfer_id, msg_type);
+		break;
+	default:
+		WARN_ONCE(1, "received unknown msg_type:%d\n", msg_type);
+		break;
+	}
+}
+
 /**
  * scmi_xfer_put() - Release a transmit message
  *
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
