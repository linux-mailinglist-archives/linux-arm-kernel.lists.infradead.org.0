Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0584B62547
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 17:50:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IOsea/+SkqWONTVpJ7BgBCa7I9yFaCGzR/W7mhiuDbQ=; b=ilGvyq6Q2Mgx00FGiO1wNkuled
	Htu/d2zTJhNNQBurXVR+FODxev5AlO1tRx+n8dxp2uA5fpgs1JZDoGXX16uWAm6Kl1Byx7cEZtfCQ
	BnTMV5Bbk642YAgylt6GF9Gm1NT7jXZZTe4p3+SxyhpgTMYe007CQFIn/oqmOIaTr0JCuJO2tOxRu
	lQZ+ZbiE86PMMKQ6vym8ypSN3KYZPg31c1czQ37JuT89VGEvzZh06vvHzehrGyPxq2YDReZOrRhhZ
	pEBwuJc9J7pLw/bVfwp2vvfqIhPBacNgnHySZansxbWS7dfoTkNJLHh/acZIBshLRTboHWCRgLpnE
	WViO7xBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkVu4-0005tE-On; Mon, 08 Jul 2019 15:50:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkVrq-00049s-32
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 15:47:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E2BEB360;
 Mon,  8 Jul 2019 08:47:49 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DFF7C3F59C;
 Mon,  8 Jul 2019 08:47:48 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 07/11] firmware: arm_scmi: Add support for asynchronous
 commands and delayed response
Date: Mon,  8 Jul 2019 16:47:26 +0100
Message-Id: <20190708154730.16643-8-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190708154730.16643-1-sudeep.holla@arm.com>
References: <20190708154730.16643-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_084750_328524_C6A8AA53 
X-CRM114-Status: GOOD (  16.51  )
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

Messages that are sent to platform, also known as commands and can be:

1. Synchronous commands that block the channel until the requested work
has been completed. The platform responds to these commands over the
same channel and hence can't be used to send another command until the
previous command has completed.

2. Asynchronous commands on the other hand, the platform schedules the
requested work to complete later in time and returns almost immediately
freeing the channel for new commands. The response indicates the success
or failure in the ability to schedule the requested work. When the work
has completed, the platform sends an additional delayed response message.

Using the same transmit buffer used for sending the asynchronous command
even for the delayed response corresponding to it simplifies handling of
the delayed response. It's the caller of asynchronous command that is
responsible for allocating the completion flag that scmi driver can
complete to indicate the arrival of delayed response.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/common.h |  6 ++++-
 drivers/firmware/arm_scmi/driver.c | 43 ++++++++++++++++++++++++++++--
 2 files changed, 46 insertions(+), 3 deletions(-)

diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
index 4349d836b392..f89fa3f74a6f 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -84,17 +84,21 @@ struct scmi_msg {
  * @rx: Receive message, the buffer should be pre-allocated to store
  *	message. If request-ACK protocol is used, we can reuse the same
  *	buffer for the rx path as we use for the tx path.
- * @done: completion event
+ * @done: command message transmit completion event
+ * @async: pointer to delayed response message received event completion
  */
 struct scmi_xfer {
 	struct scmi_msg_hdr hdr;
 	struct scmi_msg tx;
 	struct scmi_msg rx;
 	struct completion done;
+	struct completion *async_done;
 };
 
 void scmi_xfer_put(const struct scmi_handle *h, struct scmi_xfer *xfer);
 int scmi_do_xfer(const struct scmi_handle *h, struct scmi_xfer *xfer);
+int scmi_do_xfer_with_response(const struct scmi_handle *h,
+			       struct scmi_xfer *xfer);
 int scmi_xfer_get_init(const struct scmi_handle *h, u8 msg_id, u8 prot_id,
 		       size_t tx_size, size_t rx_size, struct scmi_xfer **p);
 int scmi_handle_put(const struct scmi_handle *handle);
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index b384c818d8dd..049bb4af6b60 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -347,6 +347,8 @@ __scmi_xfer_put(struct scmi_xfers_info *minfo, struct scmi_xfer *xfer)
  */
 static void scmi_rx_callback(struct mbox_client *cl, void *m)
 {
+	u8 msg_type;
+	u32 msg_hdr;
 	u16 xfer_id;
 	struct scmi_xfer *xfer;
 	struct scmi_chan_info *cinfo = client_to_scmi_chan_info(cl);
@@ -355,7 +357,12 @@ static void scmi_rx_callback(struct mbox_client *cl, void *m)
 	struct scmi_xfers_info *minfo = &info->tx_minfo;
 	struct scmi_shared_mem __iomem *mem = cinfo->payload;
 
-	xfer_id = MSG_XTRACT_TOKEN(ioread32(&mem->msg_header));
+	msg_hdr = ioread32(&mem->msg_header);
+	msg_type = MSG_XTRACT_TYPE(msg_hdr);
+	xfer_id = MSG_XTRACT_TOKEN(msg_hdr);
+
+	if (msg_type == MSG_TYPE_NOTIFICATION)
+		return; /* Notifications not yet supported */
 
 	/* Are we even expecting this? */
 	if (!test_bit(xfer_id, minfo->xfer_alloc_table)) {
@@ -368,7 +375,11 @@ static void scmi_rx_callback(struct mbox_client *cl, void *m)
 	scmi_dump_header_dbg(dev, &xfer->hdr);
 
 	scmi_fetch_response(xfer, mem);
-	complete(&xfer->done);
+
+	if (msg_type == MSG_TYPE_DELAYED_RESP)
+		complete(xfer->async_done);
+	else
+		complete(&xfer->done);
 }
 
 /**
@@ -472,6 +483,34 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
 	return ret;
 }
 
+#define SCMI_MAX_RESPONSE_TIMEOUT	(2 * MSEC_PER_SEC)
+
+/**
+ * scmi_do_xfer_with_response() - Do one transfer and wait until the delayed
+ *	response is received
+ *
+ * @handle: Pointer to SCMI entity handle
+ * @xfer: Transfer to initiate and wait for response
+ *
+ * Return: -ETIMEDOUT in case of no delayed response, if transmit error,
+ *	return corresponding error, else if all goes well, return 0.
+ */
+int scmi_do_xfer_with_response(const struct scmi_handle *handle,
+			       struct scmi_xfer *xfer)
+{
+	int ret, timeout = msecs_to_jiffies(SCMI_MAX_RESPONSE_TIMEOUT);
+	DECLARE_COMPLETION_ONSTACK(async_response);
+
+	xfer->async_done = &async_response;
+
+	ret = scmi_do_xfer(handle, xfer);
+	if (!ret && !wait_for_completion_timeout(xfer->async_done, timeout))
+		ret = -ETIMEDOUT;
+
+	xfer->async_done = NULL;
+	return ret;
+}
+
 /**
  * scmi_xfer_get_init() - Allocate and initialise one message for transmit
  *
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
