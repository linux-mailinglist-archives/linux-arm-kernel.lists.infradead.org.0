Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAB57698E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 15:53:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hkUolRt3WaOXoIuegPaycejeI2TZoxIUCwamEK6R5mM=; b=ZiJHpHShhC3/sCl8RpkxJpp0uC
	oGiXBHatYov3nYUyqS6kkPJNmuepQCwMvQ8kCELv5LvykF9Rc5Ak2fdE004Hb4wtZ/JoEunaRJswk
	40TngSZekS8ctPy+7dzxrU4jFX4pFDwEQdoDNtv1tNRVBKwlVAA3TYZS01PYf+Wz9SsJUoyWl6HGu
	vXKaEq5sJvaaL+MCr3TkhkkZFY4uFyoxa4/LEwaJIhh7XYYiN/+LkWGiWfDH56SS2DvwhEwY+wyCa
	KmQGQbuCBNfp9+VwkaUcLDTtJdeuo0jkcEcvB76QQVr2QPwo1cUO08LiQPYAjOswkcn5gm7GrdVqb
	ZdFYjdpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0er-00008d-K4; Fri, 26 Jul 2019 13:53:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0dU-0007Yr-Up
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 13:51:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C0B43152D;
 Fri, 26 Jul 2019 06:51:52 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 88BD53F694;
 Fri, 26 Jul 2019 06:51:51 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 04/10] firmware: arm_scmi: Separate out tx buffer handling
 and prepare to add rx
Date: Fri, 26 Jul 2019 14:51:32 +0100
Message-Id: <20190726135138.9858-5-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190726135138.9858-1-sudeep.holla@arm.com>
References: <20190726135138.9858-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_065153_124446_89D5D014 
X-CRM114-Status: GOOD (  15.27  )
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

Currently we pre-allocate transmit buffers only and use the first free
slot in that pre-allocated buffer for transmitting any new message that
are generally originated from OS to the platform firmware.

Notifications or the delayed responses on the other hand are originated
from the platform firmware and consumes by the OS. It's better to have
separate and dedicated pre-allocated buffers to handle the notifications.
We can still use the transmit buffers for the delayed responses.

In addition, let's prepare existing scmi_xfer_{get,put} for acquiring
and releasing a slot to identify the right(tx/rx) buffers.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/driver.c | 40 ++++++++++++++++++++----------
 1 file changed, 27 insertions(+), 13 deletions(-)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 5a8c015bf233..97618220ea02 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -111,7 +111,7 @@ struct scmi_chan_info {
  * @handle: Instance of SCMI handle to send to clients
  * @version: SCMI revision information containing protocol version,
  *	implementation version and (sub-)vendor identification.
- * @minfo: Message info
+ * @tx_minfo: Universal Transmit Message management info
  * @tx_idr: IDR object to map protocol id to Tx channel info pointer
  * @rx_idr: IDR object to map protocol id to Rx channel info pointer
  * @protocols_imp: List of protocols implemented, currently maximum of
@@ -124,7 +124,7 @@ struct scmi_info {
 	const struct scmi_desc *desc;
 	struct scmi_revision_info version;
 	struct scmi_handle handle;
-	struct scmi_xfers_info minfo;
+	struct scmi_xfers_info tx_minfo;
 	struct idr tx_idr;
 	struct idr rx_idr;
 	u8 *protocols_imp;
@@ -251,6 +251,7 @@ static void scmi_tx_prepare(struct mbox_client *cl, void *m)
  * scmi_xfer_get() - Allocate one message
  *
  * @handle: Pointer to SCMI entity handle
+ * @minfo: Pointer to Tx/Rx Message management info based on channel type
  *
  * Helper function which is used by various message functions that are
  * exposed to clients of this driver for allocating a message traffic event.
@@ -261,13 +262,13 @@ static void scmi_tx_prepare(struct mbox_client *cl, void *m)
  *
  * Return: 0 if all went fine, else corresponding error.
  */
-static struct scmi_xfer *scmi_xfer_get(const struct scmi_handle *handle)
+static struct scmi_xfer *scmi_xfer_get(const struct scmi_handle *handle,
+				       struct scmi_xfers_info *minfo)
 {
 	u16 xfer_id;
 	struct scmi_xfer *xfer;
 	unsigned long flags, bit_pos;
 	struct scmi_info *info = handle_to_scmi_info(handle);
-	struct scmi_xfers_info *minfo = &info->minfo;
 
 	/* Keep the locked section as small as possible */
 	spin_lock_irqsave(&minfo->xfer_lock, flags);
@@ -290,18 +291,17 @@ static struct scmi_xfer *scmi_xfer_get(const struct scmi_handle *handle)
 }
 
 /**
- * scmi_xfer_put() - Release a message
+ * __scmi_xfer_put() - Release a message
  *
- * @handle: Pointer to SCMI entity handle
+ * @minfo: Pointer to Tx/Rx Message management info based on channel type
  * @xfer: message that was reserved by scmi_xfer_get
  *
  * This holds a spinlock to maintain integrity of internal data structures.
  */
-void scmi_xfer_put(const struct scmi_handle *handle, struct scmi_xfer *xfer)
+static void
+__scmi_xfer_put(struct scmi_xfers_info *minfo, struct scmi_xfer *xfer)
 {
 	unsigned long flags;
-	struct scmi_info *info = handle_to_scmi_info(handle);
-	struct scmi_xfers_info *minfo = &info->minfo;
 
 	/*
 	 * Keep the locked section as small as possible
@@ -332,7 +332,7 @@ static void scmi_rx_callback(struct mbox_client *cl, void *m)
 	struct scmi_chan_info *cinfo = client_to_scmi_chan_info(cl);
 	struct device *dev = cinfo->dev;
 	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
-	struct scmi_xfers_info *minfo = &info->minfo;
+	struct scmi_xfers_info *minfo = &info->tx_minfo;
 	struct scmi_shared_mem __iomem *mem = cinfo->payload;
 
 	xfer_id = MSG_XTRACT_TOKEN(ioread32(&mem->msg_header));
@@ -351,6 +351,19 @@ static void scmi_rx_callback(struct mbox_client *cl, void *m)
 	complete(&xfer->done);
 }
 
+/**
+ * scmi_xfer_put() - Release a transmit message
+ *
+ * @handle: Pointer to SCMI entity handle
+ * @xfer: message that was reserved by scmi_xfer_get
+ */
+void scmi_xfer_put(const struct scmi_handle *handle, struct scmi_xfer *xfer)
+{
+	struct scmi_info *info = handle_to_scmi_info(handle);
+
+	__scmi_xfer_put(&info->tx_minfo, xfer);
+}
+
 static bool
 scmi_xfer_poll_done(const struct scmi_chan_info *cinfo, struct scmi_xfer *xfer)
 {
@@ -440,7 +453,7 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
 }
 
 /**
- * scmi_xfer_get_init() - Allocate and initialise one message
+ * scmi_xfer_get_init() - Allocate and initialise one message for transmit
  *
  * @handle: Pointer to SCMI entity handle
  * @msg_id: Message identifier
@@ -461,6 +474,7 @@ int scmi_xfer_get_init(const struct scmi_handle *handle, u8 msg_id, u8 prot_id,
 	int ret;
 	struct scmi_xfer *xfer;
 	struct scmi_info *info = handle_to_scmi_info(handle);
+	struct scmi_xfers_info *minfo = &info->tx_minfo;
 	struct device *dev = info->dev;
 
 	/* Ensure we have sane transfer sizes */
@@ -468,7 +482,7 @@ int scmi_xfer_get_init(const struct scmi_handle *handle, u8 msg_id, u8 prot_id,
 	    tx_size > info->desc->max_msg_size)
 		return -ERANGE;
 
-	xfer = scmi_xfer_get(handle);
+	xfer = scmi_xfer_get(handle, minfo);
 	if (IS_ERR(xfer)) {
 		ret = PTR_ERR(xfer);
 		dev_err(dev, "failed to get free message slot(%d)\n", ret);
@@ -607,7 +621,7 @@ static int scmi_xfer_info_init(struct scmi_info *sinfo)
 	struct scmi_xfer *xfer;
 	struct device *dev = sinfo->dev;
 	const struct scmi_desc *desc = sinfo->desc;
-	struct scmi_xfers_info *info = &sinfo->minfo;
+	struct scmi_xfers_info *info = &sinfo->tx_minfo;
 
 	/* Pre-allocated messages, no more than what hdr.seq can support */
 	if (WARN_ON(desc->max_msg >= MSG_TOKEN_MAX)) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
