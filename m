Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C399142AAF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 13:25:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V+q4zkP3aR6DYOLJa6JDG7rk48bTYj1zcWN9UOYZFMk=; b=hGl2qPkpYpJu3y5VCggpK6kEj8
	5jg3Dxzw1aPm6s9VWeR/m6r/jWqf8P6mg1bRYhD4pZl9AF/jIWV4MNJOsghwhW17j9hDfQPVvFBj5
	1bDdLTGKMa6kv/8wsAPA/+OC3RaB34vzYWltQZRewj3T7u7bfcUBGqRFuyYDeEWL1diODSeBrEBnU
	WXxYEolcKTY+WYiDmLzMfbc1SpvLfF5vVQoGqz22yglU6tKQpKU5FDqdHrI32XNxnBHCxebnIV9gx
	dCRHnHBfJk/kd3LMvv2U5xmABR4LhPt/az/fDELHfK+Xzo5p+iFFVk9m85gEDNSrHJwm6RqW0f/5d
	hnx5eiQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itW7l-0003UI-Lv; Mon, 20 Jan 2020 12:25:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itW6W-0001U2-2r
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 12:24:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6812113E;
 Mon, 20 Jan 2020 04:24:27 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CD2E03F68E;
 Mon, 20 Jan 2020 04:24:26 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 03/11] firmware: arm_scmi: Add support for notifications
 message processing
Date: Mon, 20 Jan 2020 12:23:25 +0000
Message-Id: <20200120122333.46217-4-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200120122333.46217-1-cristian.marussi@arm.com>
References: <20200120122333.46217-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_042428_213966_01318B1C 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: cristian.marussi@arm.com, james.quinlan@broadcom.com, lukasz.luba@arm.com,
 sudeep.holla@arm.com
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
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 drivers/firmware/arm_scmi/driver.c | 92 +++++++++++++++++++++---------
 1 file changed, 65 insertions(+), 27 deletions(-)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 9611e8037d77..28ed1f0cb417 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -212,6 +212,15 @@ static void scmi_fetch_response(struct scmi_xfer *xfer,
 	memcpy_fromio(xfer->rx.buf, mem->msg_payload + 4, xfer->rx.len);
 }
 
+static void scmi_fetch_notification(struct scmi_xfer *xfer, size_t max_len,
+				    struct scmi_shared_mem __iomem *mem)
+{
+	/* Skip only length of header in payload area i.e 4 bytes */
+	xfer->rx.len = min_t(size_t, max_len, ioread32(&mem->length) - 4);
+
+	memcpy_fromio(xfer->rx.buf, mem->msg_payload, xfer->rx.len);
+}
+
 /**
  * pack_scmi_header() - packs and returns 32-bit header
  *
@@ -339,6 +348,58 @@ __scmi_xfer_put(struct scmi_xfers_info *minfo, struct scmi_xfer *xfer)
 	spin_unlock_irqrestore(&minfo->xfer_lock, flags);
 }
 
+static void scmi_handle_notification(struct scmi_chan_info *cinfo, u32 msg_hdr)
+{
+	struct scmi_xfer *xfer;
+	struct device *dev = cinfo->dev;
+	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
+	struct scmi_xfers_info *minfo = &info->rx_minfo;
+	struct scmi_shared_mem __iomem *mem = cinfo->payload;
+
+	xfer = scmi_xfer_get(cinfo->handle, minfo);
+	if (IS_ERR(xfer)) {
+		dev_err(dev, "failed to get free message slot (%ld)\n",
+			PTR_ERR(xfer));
+		iowrite32(SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE,
+			  &mem->channel_status);
+		return;
+	}
+
+	unpack_scmi_header(msg_hdr, &xfer->hdr);
+	scmi_dump_header_dbg(dev, &xfer->hdr);
+	scmi_fetch_notification(xfer, info->desc->max_msg_size, mem);
+	__scmi_xfer_put(minfo, xfer);
+
+	iowrite32(SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE, &mem->channel_status);
+}
+
+static void scmi_handle_xfer_delayed_resp(struct scmi_chan_info *cinfo,
+					  u16 xfer_id, bool delayed_resp)
+{
+	struct scmi_xfer *xfer;
+	struct device *dev = cinfo->dev;
+	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
+	struct scmi_xfers_info *minfo = &info->tx_minfo;
+	struct scmi_shared_mem __iomem *mem = cinfo->payload;
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
+
+	if (delayed_resp)
+		complete(xfer->async_done);
+	else
+		complete(&xfer->done);
+}
+
 /**
  * scmi_rx_callback() - mailbox client callback for receive messages
  *
@@ -355,41 +416,18 @@ static void scmi_rx_callback(struct mbox_client *cl, void *m)
 {
 	u8 msg_type;
 	u32 msg_hdr;
-	u16 xfer_id;
-	struct scmi_xfer *xfer;
 	struct scmi_chan_info *cinfo = client_to_scmi_chan_info(cl);
-	struct device *dev = cinfo->dev;
-	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
-	struct scmi_xfers_info *minfo = &info->tx_minfo;
 	struct scmi_shared_mem __iomem *mem = cinfo->payload;
 
 	msg_hdr = ioread32(&mem->msg_header);
 	msg_type = MSG_XTRACT_TYPE(msg_hdr);
-	xfer_id = MSG_XTRACT_TOKEN(msg_hdr);
 
 	if (msg_type == MSG_TYPE_NOTIFICATION)
-		return; /* Notifications not yet supported */
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
-
-	trace_scmi_rx_done(xfer->transfer_id, xfer->hdr.id,
-			   xfer->hdr.protocol_id, xfer->hdr.seq,
-			   msg_type);
-
-	if (msg_type == MSG_TYPE_DELAYED_RESP)
-		complete(xfer->async_done);
+		scmi_handle_notification(cinfo, msg_hdr);
 	else
-		complete(&xfer->done);
+		scmi_handle_xfer_delayed_resp(cinfo, MSG_XTRACT_TOKEN(msg_hdr),
+					      msg_type);
+
 }
 
 /**
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
