Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6338414E86F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 06:29:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iIaMnIMltf96Ih6CBkW4Wfchqw6zWIvbHcBNzqO5g0M=; b=KFo+G+LwzsZDsr
	qbIq8twfW70SOodYZ50OyaDQVP48ZuDcW/3hUAh4u4hT3TUafKm06LdtsHJ1n/4dSzv5mPnq2ic8v
	85QzOrEnSz60lD14bVIl4Btc9hBHvN3+pllue9pa6mwFsu/73u8ZYJ5BHcSzhyzUI85mQl2WFfywB
	iUksj9rRn33wIPUjKP0vZPkMVRTfSB1327+Mhkmz5nc8Woh1VkI6yxeMNNNBylXSF+2pNB8pvVdw+
	NNoyN9ibSKOYTh0zS1mLrWRqxZbJjwajK3OSV5C1ivwWJYA4JKLsw5WKaiTydx/kXWo56gBpvPx7v
	OzA0KBXYnu6LJDesNRjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixOrz-0001bW-7d; Fri, 31 Jan 2020 05:29:31 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixOr0-0000yh-F0
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 05:28:33 +0000
Received: by mail-pg1-x543.google.com with SMTP id x7so2830551pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Jan 2020 21:28:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g+BvmiB2lE9XK9OyPNkI7mWFhV5wYcEwj5NPDzmCW6o=;
 b=eH58n1CuBfq7V9a5VXb5kUXTsM2E5i1q22ez8LRE9OP8vHfaK8XS8xcvTCjdrXQg01
 OIBq+VsxlbIe6X7xEEj4xP5GNa3nW4LYxNwRomYnK43aFZYVk/PwPQG6UEY9jA+B3hwz
 uichOFNKz/sWiYQIfOJMjo/ggL3/1cCzjKRLOJeTGWXi4JgzXRFTxiShmtr66IDOsac6
 CIZWWSV7f474Qoceo6jCAZfopIO5NecFuICokWj+gNwe4UcPgJc+A0p2nKxR5piPKuge
 0GO2QA97+yfWxsXfmc1njRg64bDsCeQBDKVkEQFXEScPMNVvHUW56UoqFyt9htd9ZPYl
 zziQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g+BvmiB2lE9XK9OyPNkI7mWFhV5wYcEwj5NPDzmCW6o=;
 b=uBxaefJzi3466kN8yrSF9fB/LYz47iS4xnAUusIcmIjct/z8yNfjjSujDqjpItrrkK
 46p1b6TdkYzJYutNUvXcCUCVVeZjKttDAai/+OQJdHJTmnfEqs7Q+9ycY/urELARRvrE
 9Kie9bPXt1C2xAQByK/Tg2+Q67E2gQ+5IqsZweO2OsBywOMscmLpfo5Xzss/HtIrN12D
 sIrRmyMoYQ/CUnVSB420h+3tyD8rzJxt+6b4+UDrRbFT8SUshmuOnDeAvqd66+PLVeuW
 jdDsVqr6uOxGgAMg0vwkerxyX03o5lu/Z8ymPZx0iq63eiYpr0p/FgnfyUcGrr0+KEFa
 Qihw==
X-Gm-Message-State: APjAAAXqDfYqplaBhMZ5neco4x2pWnl89f0j6hDCmIyfafaOY2zx6pE2
 LtOoNGDBnV++YlkRqxK85wN3Qg==
X-Google-Smtp-Source: APXvYqwuTLBQlNm9GCd5zyRI1tyKernrempSKWTRvg5466IvuEJI78D/5EnJiUD9Dnj72qU3j1/H6A==
X-Received: by 2002:a62:4e05:: with SMTP id c5mr8976725pfb.258.1580448509159; 
 Thu, 30 Jan 2020 21:28:29 -0800 (PST)
Received: from localhost ([122.172.141.204])
 by smtp.gmail.com with ESMTPSA id r6sm8389964pfh.91.2020.01.30.21.28.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 Jan 2020 21:28:28 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: arnd@arndb.de,
	Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH V6 3/3] firmware: arm_scmi: Make scmi core independent of the
 transport type
Date: Fri, 31 Jan 2020 10:58:13 +0530
Message-Id: <8698a3cec199b8feab35c2339f02dc232bfd773b.1580448239.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1580448239.git.viresh.kumar@linaro.org>
References: <cover.1580448239.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_212830_560819_348A3B59 
X-CRM114-Status: GOOD (  23.76  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [122.172.141.204 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: peng.fan@nxp.com, Viresh Kumar <viresh.kumar@linaro.org>,
 jassisinghbrar@gmail.com, linux-kernel@vger.kernel.org,
 peter.hilber@opensynergy.com, linux-arm-kernel@lists.infradead.org,
 cristian.marussi@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SCMI specification is fairly independent of the transport protocol,
which can be a simple mailbox (already implemented) or anything else.
The current Linux implementation however is very much dependent on the
mailbox transport layer.

This patch makes the SCMI core code (driver.c) independent of the
mailbox transport layer and moves all mailbox related code to a new
file: mailbox.c and all struct shared_mem related code to a new file:
shmem.c.

We can now implement more transport protocols to transport SCMI
messages.

The transport protocols just need to provide struct scmi_transport_ops,
with its version of the callbacks to enable exchange of SCMI messages.

Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 drivers/firmware/arm_scmi/Makefile  |   3 +-
 drivers/firmware/arm_scmi/common.h  |  68 ++++++++
 drivers/firmware/arm_scmi/driver.c  | 251 ++++------------------------
 drivers/firmware/arm_scmi/mailbox.c | 184 ++++++++++++++++++++
 drivers/firmware/arm_scmi/shmem.c   |  82 +++++++++
 5 files changed, 369 insertions(+), 219 deletions(-)
 create mode 100644 drivers/firmware/arm_scmi/mailbox.c
 create mode 100644 drivers/firmware/arm_scmi/shmem.c

diff --git a/drivers/firmware/arm_scmi/Makefile b/drivers/firmware/arm_scmi/Makefile
index 5f298f00a82e..6694d0d908d6 100644
--- a/drivers/firmware/arm_scmi/Makefile
+++ b/drivers/firmware/arm_scmi/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-y	= scmi-bus.o scmi-driver.o scmi-protocols.o
+obj-y	= scmi-bus.o scmi-driver.o scmi-protocols.o scmi-transport.o
 scmi-bus-y = bus.o
 scmi-driver-y = driver.o
+scmi-transport-y = mailbox.o shmem.o
 scmi-protocols-y = base.o clock.o perf.o power.o reset.o sensors.o
 obj-$(CONFIG_ARM_SCMI_POWER_DOMAIN) += scmi_pm_domain.o
diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
index 934b5a23f10b..fd091a4ccbff 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -153,3 +153,71 @@ void scmi_setup_protocol_implemented(const struct scmi_handle *handle,
 				     u8 *prot_imp);
 
 int scmi_base_protocol_init(struct scmi_handle *h);
+
+/* SCMI Transport */
+/**
+ * struct scmi_chan_info - Structure representing a SCMI channel information
+ *
+ * @dev: Reference to device in the SCMI hierarchy corresponding to this
+ *	 channel
+ * @handle: Pointer to SCMI entity handle
+ * @transport_info: Transport layer related information
+ */
+struct scmi_chan_info {
+	struct device *dev;
+	struct scmi_handle *handle;
+	void *transport_info;
+};
+
+/**
+ * struct scmi_transport_ops - Structure representing a SCMI transport ops
+ *
+ * @chan_available: Callback to check if channel is available or not
+ * @chan_setup: Callback to allocate and setup a channel
+ * @chan_free: Callback to free a channel
+ * @send_message: Callback to send a message
+ * @mark_txdone: Callback to mark tx as done
+ * @fetch_response: Callback to fetch response
+ * @poll_done: Callback to poll transfer status
+ */
+struct scmi_transport_ops {
+	bool (*chan_available)(struct device *dev, int idx);
+	int (*chan_setup)(struct scmi_chan_info *cinfo, struct device *dev, bool tx);
+	int (*chan_free)(int id, void *p, void *data);
+	int (*send_message)(struct scmi_chan_info *cinfo, struct scmi_xfer *xfer);
+	void (*mark_txdone)(struct scmi_chan_info *cinfo, int ret);
+	void (*fetch_response)(struct scmi_chan_info *cinfo, struct scmi_xfer *xfer);
+	bool (*poll_done)(struct scmi_chan_info *cinfo, struct scmi_xfer *xfer);
+};
+
+/**
+ * struct scmi_desc - Description of SoC integration
+ *
+ * @ops: Pointer to the transport specific ops structure
+ * @max_rx_timeout_ms: Timeout for communication with SoC (in Milliseconds)
+ * @max_msg: Maximum number of messages that can be pending
+ *	simultaneously in the system
+ * @max_msg_size: Maximum size of data per message that can be handled.
+ */
+struct scmi_desc {
+	struct scmi_transport_ops *ops;
+	int max_rx_timeout_ms;
+	int max_msg;
+	int max_msg_size;
+};
+
+extern const struct scmi_desc scmi_mailbox_desc;
+
+void scmi_rx_callback(struct scmi_chan_info *cinfo, u32 msg_hdr);
+void scmi_free_channel(struct scmi_chan_info *cinfo, struct idr *idr, int id);
+
+/* shmem related declarations */
+struct scmi_shared_mem;
+
+void shmem_tx_prepare(struct scmi_shared_mem __iomem *shmem,
+		      struct scmi_xfer *xfer);
+u32 shmem_read_header(struct scmi_shared_mem __iomem *shmem);
+void shmem_fetch_response(struct scmi_shared_mem __iomem *shmem,
+			  struct scmi_xfer *xfer);
+bool shmem_poll_done(struct scmi_shared_mem __iomem *shmem,
+		     struct scmi_xfer *xfer);
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 716423063b14..dbec767222e9 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -19,12 +19,10 @@
 #include <linux/io.h>
 #include <linux/kernel.h>
 #include <linux/ktime.h>
-#include <linux/mailbox_client.h>
 #include <linux/module.h>
 #include <linux/of_address.h>
 #include <linux/of_device.h>
 #include <linux/processor.h>
-#include <linux/semaphore.h>
 #include <linux/slab.h>
 
 #include "common.h"
@@ -69,38 +67,6 @@ struct scmi_xfers_info {
 	spinlock_t xfer_lock;
 };
 
-/**
- * struct scmi_desc - Description of SoC integration
- *
- * @max_rx_timeout_ms: Timeout for communication with SoC (in Milliseconds)
- * @max_msg: Maximum number of messages that can be pending
- *	simultaneously in the system
- * @max_msg_size: Maximum size of data per message that can be handled.
- */
-struct scmi_desc {
-	int max_rx_timeout_ms;
-	int max_msg;
-	int max_msg_size;
-};
-
-/**
- * struct scmi_chan_info - Structure representing a SCMI channel information
- *
- * @cl: Mailbox Client
- * @chan: Transmit/Receive mailbox channel
- * @payload: Transmit/Receive mailbox channel payload area
- * @dev: Reference to device in the SCMI hierarchy corresponding to this
- *	 channel
- * @handle: Pointer to SCMI entity handle
- */
-struct scmi_chan_info {
-	struct mbox_client cl;
-	struct mbox_chan *chan;
-	void __iomem *payload;
-	struct device *dev;
-	struct scmi_handle *handle;
-};
-
 /**
  * struct scmi_info - Structure representing a SCMI instance
  *
@@ -130,27 +96,8 @@ struct scmi_info {
 	int users;
 };
 
-#define client_to_scmi_chan_info(c) container_of(c, struct scmi_chan_info, cl)
 #define handle_to_scmi_info(h)	container_of(h, struct scmi_info, handle)
 
-/*
- * SCMI specification requires all parameters, message headers, return
- * arguments or any protocol data to be expressed in little endian
- * format only.
- */
-struct scmi_shared_mem {
-	__le32 reserved;
-	__le32 channel_status;
-#define SCMI_SHMEM_CHAN_STAT_CHANNEL_ERROR	BIT(1)
-#define SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE	BIT(0)
-	__le32 reserved1[2];
-	__le32 flags;
-#define SCMI_SHMEM_FLAG_INTR_ENABLED	BIT(0)
-	__le32 length;
-	__le32 msg_header;
-	u8 msg_payload[0];
-};
-
 static const int scmi_linux_errmap[] = {
 	/* better than switch case as long as return value is continuous */
 	0,			/* SCMI_SUCCESS */
@@ -186,50 +133,6 @@ static inline void scmi_dump_header_dbg(struct device *dev,
 		hdr->id, hdr->seq, hdr->protocol_id);
 }
 
-static void scmi_fetch_response(struct scmi_xfer *xfer,
-				struct scmi_shared_mem __iomem *mem)
-{
-	xfer->hdr.status = ioread32(mem->msg_payload);
-	/* Skip the length of header and status in payload area i.e 8 bytes */
-	xfer->rx.len = min_t(size_t, xfer->rx.len, ioread32(&mem->length) - 8);
-
-	/* Take a copy to the rx buffer.. */
-	memcpy_fromio(xfer->rx.buf, mem->msg_payload + 4, xfer->rx.len);
-}
-
-/**
- * scmi_tx_prepare() - mailbox client callback to prepare for the transfer
- *
- * @cl: client pointer
- * @m: mailbox message
- *
- * This function prepares the shared memory which contains the header and the
- * payload.
- */
-static void scmi_tx_prepare(struct mbox_client *cl, void *m)
-{
-	struct scmi_xfer *t = m;
-	struct scmi_chan_info *cinfo = client_to_scmi_chan_info(cl);
-	struct scmi_shared_mem __iomem *mem = cinfo->payload;
-
-	/*
-	 * Ideally channel must be free by now unless OS timeout last
-	 * request and platform continued to process the same, wait
-	 * until it releases the shared memory, otherwise we may endup
-	 * overwriting its response with new message payload or vice-versa
-	 */
-	spin_until_cond(ioread32(&mem->channel_status) &
-			SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE);
-	/* Mark channel busy + clear error */
-	iowrite32(0x0, &mem->channel_status);
-	iowrite32(t->hdr.poll_completion ? 0 : SCMI_SHMEM_FLAG_INTR_ENABLED,
-		  &mem->flags);
-	iowrite32(sizeof(mem->msg_header) + t->tx.len, &mem->length);
-	iowrite32(pack_scmi_header(&t->hdr), &mem->msg_header);
-	if (t->tx.buf)
-		memcpy_toio(mem->msg_payload, t->tx.buf, t->tx.len);
-}
-
 /**
  * scmi_xfer_get() - Allocate one message
  *
@@ -298,10 +201,10 @@ __scmi_xfer_put(struct scmi_xfers_info *minfo, struct scmi_xfer *xfer)
 }
 
 /**
- * scmi_rx_callback() - mailbox client callback for receive messages
+ * scmi_rx_callback() - callback for receiving messages
  *
- * @cl: client pointer
- * @m: mailbox message
+ * @cinfo: SCMI channel info
+ * @msg_hdr: Message header
  *
  * Processes one received message to appropriate transfer information and
  * signals completion of the transfer.
@@ -309,21 +212,14 @@ __scmi_xfer_put(struct scmi_xfers_info *minfo, struct scmi_xfer *xfer)
  * NOTE: This function will be invoked in IRQ context, hence should be
  * as optimal as possible.
  */
-static void scmi_rx_callback(struct mbox_client *cl, void *m)
+void scmi_rx_callback(struct scmi_chan_info *cinfo, u32 msg_hdr)
 {
-	u8 msg_type;
-	u32 msg_hdr;
-	u16 xfer_id;
-	struct scmi_xfer *xfer;
-	struct scmi_chan_info *cinfo = client_to_scmi_chan_info(cl);
-	struct device *dev = cinfo->dev;
 	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
 	struct scmi_xfers_info *minfo = &info->tx_minfo;
-	struct scmi_shared_mem __iomem *mem = cinfo->payload;
-
-	msg_hdr = ioread32(&mem->msg_header);
-	msg_type = MSG_XTRACT_TYPE(msg_hdr);
-	xfer_id = MSG_XTRACT_TOKEN(msg_hdr);
+	u16 xfer_id = MSG_XTRACT_TOKEN(msg_hdr);
+	u8 msg_type = MSG_XTRACT_TYPE(msg_hdr);
+	struct device *dev = cinfo->dev;
+	struct scmi_xfer *xfer;
 
 	if (msg_type == MSG_TYPE_NOTIFICATION)
 		return; /* Notifications not yet supported */
@@ -338,7 +234,7 @@ static void scmi_rx_callback(struct mbox_client *cl, void *m)
 
 	scmi_dump_header_dbg(dev, &xfer->hdr);
 
-	scmi_fetch_response(xfer, mem);
+	info->desc->ops->fetch_response(cinfo, xfer);
 
 	trace_scmi_rx_done(xfer->transfer_id, xfer->hdr.id,
 			   xfer->hdr.protocol_id, xfer->hdr.seq,
@@ -363,28 +259,15 @@ void scmi_xfer_put(const struct scmi_handle *handle, struct scmi_xfer *xfer)
 	__scmi_xfer_put(&info->tx_minfo, xfer);
 }
 
-static bool
-scmi_xfer_poll_done(const struct scmi_chan_info *cinfo, struct scmi_xfer *xfer)
-{
-	struct scmi_shared_mem __iomem *mem = cinfo->payload;
-	u16 xfer_id = MSG_XTRACT_TOKEN(ioread32(&mem->msg_header));
-
-	if (xfer->hdr.seq != xfer_id)
-		return false;
-
-	return ioread32(&mem->channel_status) &
-		(SCMI_SHMEM_CHAN_STAT_CHANNEL_ERROR |
-		SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE);
-}
-
 #define SCMI_MAX_POLL_TO_NS	(100 * NSEC_PER_USEC)
 
-static bool scmi_xfer_done_no_timeout(const struct scmi_chan_info *cinfo,
+static bool scmi_xfer_done_no_timeout(struct scmi_chan_info *cinfo,
 				      struct scmi_xfer *xfer, ktime_t stop)
 {
-	ktime_t __cur = ktime_get();
+	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
 
-	return scmi_xfer_poll_done(cinfo, xfer) || ktime_after(__cur, stop);
+	return info->desc->ops->poll_done(cinfo, xfer) ||
+	       ktime_after(ktime_get(), stop);
 }
 
 /**
@@ -413,29 +296,26 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
 			      xfer->hdr.protocol_id, xfer->hdr.seq,
 			      xfer->hdr.poll_completion);
 
-	ret = mbox_send_message(cinfo->chan, xfer);
+	ret = info->desc->ops->send_message(cinfo, xfer);
 	if (ret < 0) {
-		dev_dbg(dev, "mbox send fail %d\n", ret);
+		dev_dbg(dev, "Failed to send message %d\n", ret);
 		return ret;
 	}
 
-	/* mbox_send_message returns non-negative value on success, so reset */
-	ret = 0;
-
 	if (xfer->hdr.poll_completion) {
 		ktime_t stop = ktime_add_ns(ktime_get(), SCMI_MAX_POLL_TO_NS);
 
 		spin_until_cond(scmi_xfer_done_no_timeout(cinfo, xfer, stop));
 
 		if (ktime_before(ktime_get(), stop))
-			scmi_fetch_response(xfer, cinfo->payload);
+			info->desc->ops->fetch_response(cinfo, xfer);
 		else
 			ret = -ETIMEDOUT;
 	} else {
 		/* And we wait for the response. */
 		timeout = msecs_to_jiffies(info->desc->max_rx_timeout_ms);
 		if (!wait_for_completion_timeout(&xfer->done, timeout)) {
-			dev_err(dev, "mbox timed out in resp(caller: %pS)\n",
+			dev_err(dev, "timed out in resp(caller: %pS)\n",
 				(void *)_RET_IP_);
 			ret = -ETIMEDOUT;
 		}
@@ -444,13 +324,8 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
 	if (!ret && xfer->hdr.status)
 		ret = scmi_to_linux_errno(xfer->hdr.status);
 
-	/*
-	 * NOTE: we might prefer not to need the mailbox ticker to manage the
-	 * transfer queueing since the protocol layer queues things by itself.
-	 * Unfortunately, we have to kick the mailbox framework after we have
-	 * received our message.
-	 */
-	mbox_client_txdone(cinfo->chan, ret);
+	if (info->desc->ops->mark_txdone)
+		info->desc->ops->mark_txdone(cinfo, ret);
 
 	trace_scmi_xfer_end(xfer->transfer_id, xfer->hdr.id,
 			    xfer->hdr.protocol_id, xfer->hdr.seq,
@@ -691,23 +566,12 @@ static int scmi_xfer_info_init(struct scmi_info *sinfo)
 	return 0;
 }
 
-static int scmi_mailbox_check(struct device_node *np, int idx)
-{
-	return of_parse_phandle_with_args(np, "mboxes", "#mbox-cells",
-					  idx, NULL);
-}
-
-static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
-				int prot_id, bool tx)
+static int scmi_chan_setup(struct scmi_info *info, struct device *dev,
+			   int prot_id, bool tx)
 {
 	int ret, idx;
-	struct resource res;
-	resource_size_t size;
-	struct device_node *shmem, *np = dev->of_node;
 	struct scmi_chan_info *cinfo;
-	struct mbox_client *cl;
 	struct idr *idr;
-	const char *desc = tx ? "Tx" : "Rx";
 
 	/* Transmit channel is first entry i.e. index 0 */
 	idx = tx ? 0 : 1;
@@ -718,7 +582,7 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
 	if (cinfo)
 		return 0;
 
-	if (scmi_mailbox_check(np, idx)) {
+	if (!info->desc->ops->chan_available(dev, idx)) {
 		cinfo = idr_find(idr, SCMI_PROTOCOL_BASE);
 		if (unlikely(!cinfo)) /* Possible only if platform has no Rx */
 			return -EINVAL;
@@ -731,36 +595,9 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
 
 	cinfo->dev = dev;
 
-	cl = &cinfo->cl;
-	cl->dev = dev;
-	cl->rx_callback = scmi_rx_callback;
-	cl->tx_prepare = tx ? scmi_tx_prepare : NULL;
-	cl->tx_block = false;
-	cl->knows_txdone = tx;
-
-	shmem = of_parse_phandle(np, "shmem", idx);
-	ret = of_address_to_resource(shmem, 0, &res);
-	of_node_put(shmem);
-	if (ret) {
-		dev_err(dev, "failed to get SCMI %s payload memory\n", desc);
-		return ret;
-	}
-
-	size = resource_size(&res);
-	cinfo->payload = devm_ioremap(info->dev, res.start, size);
-	if (!cinfo->payload) {
-		dev_err(dev, "failed to ioremap SCMI %s payload\n", desc);
-		return -EADDRNOTAVAIL;
-	}
-
-	cinfo->chan = mbox_request_channel(cl, idx);
-	if (IS_ERR(cinfo->chan)) {
-		ret = PTR_ERR(cinfo->chan);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "failed to request SCMI %s mailbox\n",
-				desc);
+	ret = info->desc->ops->chan_setup(cinfo, info->dev, tx);
+	if (ret)
 		return ret;
-	}
 
 idr_alloc:
 	ret = idr_alloc(idr, cinfo, prot_id, prot_id + 1, GFP_KERNEL);
@@ -774,12 +611,12 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
 }
 
 static inline int
-scmi_mbox_txrx_setup(struct scmi_info *info, struct device *dev, int prot_id)
+scmi_txrx_setup(struct scmi_info *info, struct device *dev, int prot_id)
 {
-	int ret = scmi_mbox_chan_setup(info, dev, prot_id, true);
+	int ret = scmi_chan_setup(info, dev, prot_id, true);
 
 	if (!ret) /* Rx is optional, hence no error check */
-		scmi_mbox_chan_setup(info, dev, prot_id, false);
+		scmi_chan_setup(info, dev, prot_id, false);
 
 	return ret;
 }
@@ -797,7 +634,7 @@ scmi_create_protocol_device(struct device_node *np, struct scmi_info *info,
 		return;
 	}
 
-	if (scmi_mbox_txrx_setup(info, &sdev->dev, prot_id)) {
+	if (scmi_txrx_setup(info, &sdev->dev, prot_id)) {
 		dev_err(&sdev->dev, "failed to setup transport\n");
 		scmi_device_destroy(sdev);
 		return;
@@ -850,12 +687,6 @@ static int scmi_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *child, *np = dev->of_node;
 
-	/* Only mailbox method supported, check for the presence of one */
-	if (scmi_mailbox_check(np, 0)) {
-		dev_err(dev, "no mailbox found in %pOF\n", np);
-		return -EINVAL;
-	}
-
 	desc = of_device_get_match_data(dev);
 	if (!desc)
 		return -EINVAL;
@@ -880,7 +711,7 @@ static int scmi_probe(struct platform_device *pdev)
 	handle->dev = info->dev;
 	handle->version = &info->version;
 
-	ret = scmi_mbox_txrx_setup(info, dev, SCMI_PROTOCOL_BASE);
+	ret = scmi_txrx_setup(info, dev, SCMI_PROTOCOL_BASE);
 	if (ret)
 		return ret;
 
@@ -915,19 +746,9 @@ static int scmi_probe(struct platform_device *pdev)
 	return 0;
 }
 
-static int scmi_mbox_free_channel(int id, void *p, void *data)
+void scmi_free_channel(struct scmi_chan_info *cinfo, struct idr *idr, int id)
 {
-	struct scmi_chan_info *cinfo = p;
-	struct idr *idr = data;
-
-	if (!IS_ERR_OR_NULL(cinfo->chan)) {
-		mbox_free_channel(cinfo->chan);
-		cinfo->chan = NULL;
-	}
-
 	idr_remove(idr, id);
-
-	return 0;
 }
 
 static int scmi_remove(struct platform_device *pdev)
@@ -947,11 +768,11 @@ static int scmi_remove(struct platform_device *pdev)
 		return ret;
 
 	/* Safe to free channels since no more users */
-	ret = idr_for_each(idr, scmi_mbox_free_channel, idr);
+	ret = idr_for_each(idr, info->desc->ops->chan_free, idr);
 	idr_destroy(&info->tx_idr);
 
 	idr = &info->rx_idr;
-	ret = idr_for_each(idr, scmi_mbox_free_channel, idr);
+	ret = idr_for_each(idr, info->desc->ops->chan_free, idr);
 	idr_destroy(&info->rx_idr);
 
 	return ret;
@@ -1003,15 +824,9 @@ static struct attribute *versions_attrs[] = {
 };
 ATTRIBUTE_GROUPS(versions);
 
-static const struct scmi_desc scmi_generic_desc = {
-	.max_rx_timeout_ms = 30,	/* We may increase this if required */
-	.max_msg = 20,		/* Limited by MBOX_TX_QUEUE_LEN */
-	.max_msg_size = 128,
-};
-
 /* Each compatible listed below must have descriptor associated with it */
 static const struct of_device_id scmi_of_match[] = {
-	{ .compatible = "arm,scmi", .data = &scmi_generic_desc },
+	{ .compatible = "arm,scmi", .data = &scmi_mailbox_desc },
 	{ /* Sentinel */ },
 };
 
diff --git a/drivers/firmware/arm_scmi/mailbox.c b/drivers/firmware/arm_scmi/mailbox.c
new file mode 100644
index 000000000000..73077bbc4ad9
--- /dev/null
+++ b/drivers/firmware/arm_scmi/mailbox.c
@@ -0,0 +1,184 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * System Control and Management Interface (SCMI) Message Mailbox Transport
+ * driver.
+ *
+ * Copyright (C) 2019 ARM Ltd.
+ */
+
+#include <linux/err.h>
+#include <linux/device.h>
+#include <linux/mailbox_client.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/slab.h>
+
+#include "common.h"
+
+/**
+ * struct scmi_mailbox - Structure representing a SCMI mailbox transport
+ *
+ * @cl: Mailbox Client
+ * @chan: Transmit/Receive mailbox channel
+ * @cinfo: SCMI channel info
+ * @shmem: Transmit/Receive shared memory area
+ */
+struct scmi_mailbox {
+	struct mbox_client cl;
+	struct mbox_chan *chan;
+	struct scmi_chan_info *cinfo;
+	struct scmi_shared_mem __iomem *shmem;
+};
+
+#define client_to_scmi_mailbox(c) container_of(c, struct scmi_mailbox, cl)
+
+static void tx_prepare(struct mbox_client *cl, void *m)
+{
+	struct scmi_mailbox *smbox = client_to_scmi_mailbox(cl);
+
+	shmem_tx_prepare(smbox->shmem, m);
+}
+
+static void rx_callback(struct mbox_client *cl, void *m)
+{
+	struct scmi_mailbox *smbox = client_to_scmi_mailbox(cl);
+
+	scmi_rx_callback(smbox->cinfo, shmem_read_header(smbox->shmem));
+}
+
+static bool mailbox_chan_available(struct device *dev, int idx)
+{
+	return !of_parse_phandle_with_args(dev->of_node, "mboxes",
+					   "#mbox-cells", idx, NULL);
+}
+
+static int mailbox_chan_setup(struct scmi_chan_info *cinfo, struct device *dev,
+			      bool tx)
+{
+	const char *desc = tx ? "Tx" : "Rx";
+	struct device *cdev = cinfo->dev;
+	struct scmi_mailbox *smbox;
+	struct device_node *shmem;
+	int ret, idx = tx ? 0 : 1;
+	struct mbox_client *cl;
+	resource_size_t size;
+	struct resource res;
+
+	smbox = devm_kzalloc(dev, sizeof(*smbox), GFP_KERNEL);
+	if (!smbox)
+		return -ENOMEM;
+
+	shmem = of_parse_phandle(cdev->of_node, "shmem", idx);
+	ret = of_address_to_resource(shmem, 0, &res);
+	of_node_put(shmem);
+	if (ret) {
+		dev_err(cdev, "failed to get SCMI %s shared memory\n", desc);
+		return ret;
+	}
+
+	size = resource_size(&res);
+	smbox->shmem = devm_ioremap(dev, res.start, size);
+	if (!smbox->shmem) {
+		dev_err(dev, "failed to ioremap SCMI %s shared memory\n", desc);
+		return -EADDRNOTAVAIL;
+	}
+
+	cl = &smbox->cl;
+	cl->dev = cdev;
+	cl->tx_prepare = tx ? tx_prepare : NULL;
+	cl->rx_callback = rx_callback;
+	cl->tx_block = false;
+	cl->knows_txdone = tx;
+
+	smbox->chan = mbox_request_channel(cl, tx ? 0 : 1);
+	if (IS_ERR(smbox->chan)) {
+		ret = PTR_ERR(smbox->chan);
+		if (ret != -EPROBE_DEFER)
+			dev_err(cdev, "failed to request SCMI %s mailbox\n",
+				tx ? "Tx" : "Rx");
+		return ret;
+	}
+
+	cinfo->transport_info = smbox;
+	smbox->cinfo = cinfo;
+
+	return 0;
+}
+
+static int mailbox_chan_free(int id, void *p, void *data)
+{
+	struct scmi_chan_info *cinfo = p;
+	struct scmi_mailbox *smbox = cinfo->transport_info;
+
+	if (!IS_ERR(smbox->chan)) {
+		mbox_free_channel(smbox->chan);
+		cinfo->transport_info = NULL;
+		smbox->chan = NULL;
+		smbox->cinfo = NULL;
+	}
+
+	scmi_free_channel(cinfo, data, id);
+
+	return 0;
+}
+
+static int mailbox_send_message(struct scmi_chan_info *cinfo,
+				struct scmi_xfer *xfer)
+{
+	struct scmi_mailbox *smbox = cinfo->transport_info;
+	int ret;
+
+	ret = mbox_send_message(smbox->chan, xfer);
+
+	/* mbox_send_message returns non-negative value on success, so reset */
+	if (ret > 0)
+		ret = 0;
+
+	return ret;
+}
+
+static void mailbox_mark_txdone(struct scmi_chan_info *cinfo, int ret)
+{
+	struct scmi_mailbox *smbox = cinfo->transport_info;
+
+	/*
+	 * NOTE: we might prefer not to need the mailbox ticker to manage the
+	 * transfer queueing since the protocol layer queues things by itself.
+	 * Unfortunately, we have to kick the mailbox framework after we have
+	 * received our message.
+	 */
+	mbox_client_txdone(smbox->chan, ret);
+}
+
+static void mailbox_fetch_response(struct scmi_chan_info *cinfo,
+				   struct scmi_xfer *xfer)
+{
+	struct scmi_mailbox *smbox = cinfo->transport_info;
+
+	shmem_fetch_response(smbox->shmem, xfer);
+}
+
+static bool
+mailbox_poll_done(struct scmi_chan_info *cinfo, struct scmi_xfer *xfer)
+{
+	struct scmi_mailbox *smbox = cinfo->transport_info;
+
+	return shmem_poll_done(smbox->shmem, xfer);
+}
+
+static struct scmi_transport_ops scmi_mailbox_ops = {
+	.chan_available = mailbox_chan_available,
+	.chan_setup = mailbox_chan_setup,
+	.chan_free = mailbox_chan_free,
+	.send_message = mailbox_send_message,
+	.mark_txdone = mailbox_mark_txdone,
+	.fetch_response = mailbox_fetch_response,
+	.poll_done = mailbox_poll_done,
+};
+
+const struct scmi_desc scmi_mailbox_desc = {
+	.ops = &scmi_mailbox_ops,
+	.max_rx_timeout_ms = 30, /* We may increase this if required */
+	.max_msg = 20, /* Limited by MBOX_TX_QUEUE_LEN */
+	.max_msg_size = 128,
+};
diff --git a/drivers/firmware/arm_scmi/shmem.c b/drivers/firmware/arm_scmi/shmem.c
new file mode 100644
index 000000000000..02c6c7540f42
--- /dev/null
+++ b/drivers/firmware/arm_scmi/shmem.c
@@ -0,0 +1,82 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * For transport using shared mem structure.
+ *
+ * Copyright (C) 2019 ARM Ltd.
+ */
+
+#include <linux/io.h>
+#include <linux/processor.h>
+#include <linux/types.h>
+
+#include "common.h"
+
+/*
+ * SCMI specification requires all parameters, message headers, return
+ * arguments or any protocol data to be expressed in little endian
+ * format only.
+ */
+struct scmi_shared_mem {
+	__le32 reserved;
+	__le32 channel_status;
+#define SCMI_SHMEM_CHAN_STAT_CHANNEL_ERROR	BIT(1)
+#define SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE	BIT(0)
+	__le32 reserved1[2];
+	__le32 flags;
+#define SCMI_SHMEM_FLAG_INTR_ENABLED	BIT(0)
+	__le32 length;
+	__le32 msg_header;
+	u8 msg_payload[0];
+};
+
+void shmem_tx_prepare(struct scmi_shared_mem __iomem *shmem,
+		      struct scmi_xfer *xfer)
+{
+	/*
+	 * Ideally channel must be free by now unless OS timeout last
+	 * request and platform continued to process the same, wait
+	 * until it releases the shared memory, otherwise we may endup
+	 * overwriting its response with new message payload or vice-versa
+	 */
+	spin_until_cond(ioread32(&shmem->channel_status) &
+			SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE);
+	/* Mark channel busy + clear error */
+	iowrite32(0x0, &shmem->channel_status);
+	iowrite32(xfer->hdr.poll_completion ? 0 : SCMI_SHMEM_FLAG_INTR_ENABLED,
+		  &shmem->flags);
+	iowrite32(sizeof(shmem->msg_header) + xfer->tx.len, &shmem->length);
+	iowrite32(pack_scmi_header(&xfer->hdr), &shmem->msg_header);
+	if (xfer->tx.buf)
+		memcpy_toio(shmem->msg_payload, xfer->tx.buf, xfer->tx.len);
+}
+
+u32 shmem_read_header(struct scmi_shared_mem __iomem *shmem)
+{
+	return ioread32(&shmem->msg_header);
+}
+
+void shmem_fetch_response(struct scmi_shared_mem __iomem *shmem,
+			  struct scmi_xfer *xfer)
+{
+	xfer->hdr.status = ioread32(shmem->msg_payload);
+	/* Skip the length of header and status in shmem area i.e 8 bytes */
+	xfer->rx.len = min_t(size_t, xfer->rx.len, ioread32(&shmem->length) - 8);
+
+	/* Take a copy to the rx buffer.. */
+	memcpy_fromio(xfer->rx.buf, shmem->msg_payload + 4, xfer->rx.len);
+}
+
+bool shmem_poll_done(struct scmi_shared_mem __iomem *shmem,
+		     struct scmi_xfer *xfer)
+{
+	u16 xfer_id;
+
+	xfer_id = MSG_XTRACT_TOKEN(ioread32(&shmem->msg_header));
+
+	if (xfer->hdr.seq != xfer_id)
+		return false;
+
+	return ioread32(&shmem->channel_status) &
+		(SCMI_SHMEM_CHAN_STAT_CHANNEL_ERROR |
+		 SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE);
+}
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
