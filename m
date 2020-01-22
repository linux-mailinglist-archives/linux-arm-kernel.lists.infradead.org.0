Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 810971449E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 03:36:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+9wl5M2UcvvwWeevPujbzm9NaK5mD5hTdFv/eqIPys=; b=PoJXwLZt3tkJaD
	YdYr1keMr6veY4nZU9zFP/FBo02SzfTLE4vBx+nJEUvj9MIC3AvLoDjvvIQ+DvllDQfkqyJK5y/sE
	Y7FsJMH17AnAaoH5y7erSGQ8tkQv8/4159KvjBA2WtzsQ4Z5chOi6sE89g2k2d5D4JE6MBCnzmlFx
	korJ/o1B8NjRNjKJscQQeP3DJPAS99HOjNBjzx06m6vsDiHyGpKN9Aa8sv+VXk5rYMX2AzQjZFzXz
	TMp6HBMGTBaRt5H+p1YGP6AT7RvYVtO8uZOGmlNbmVJsE0woWv6UGnRYj8jBDwy8+NjWK7W1iMclq
	NK1dDBjiW5XXYZIahdfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu5sm-0004T5-W2; Wed, 22 Jan 2020 02:36:41 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu5sc-0004SP-RM
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 02:36:33 +0000
Received: by mail-pf1-x441.google.com with SMTP id z16so2556527pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 18:36:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i/ZUaHraZ79jqtzJH7bdNgwzWq5ERhQhpn9iesVMkqQ=;
 b=QnBeLYU1f9zQxtFOVNsKtdx06gLQXfeojvVx5x52rNpC3qBMQmk8oiMUuDpEJWiVqL
 Y73VWvaLc43DmC2vYEmg4SgKT9RvsmdekxPQo9ErdF9uYBMyJL4WpJ/Bkbqgx6gzZbA2
 RXhTGpH3wYWsTJ4Rl3PHcRjLuQg74b1TFJgfBv1kHSWompG3/rfSq3zCcajq3fAvWbxL
 ZUha5+UEBD6xZ6vqg+XKk2wcwv0EZFmsbqtDUN8xpjj0MiublEXJJr4ZgapszWd/kuv8
 WXPBXg2bG/vLtFVG4SB8OS/jdCqkdVpmMDBjVpfDexT+k5aft5wtqQgavlyCG7/H5hMb
 9xeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i/ZUaHraZ79jqtzJH7bdNgwzWq5ERhQhpn9iesVMkqQ=;
 b=QYDGSgzWlewNjX7hqBQFP+ztZAqrYeC5EY67MjKDn+d+5GRHjFOPhIeixn4f+8FPcE
 YIRdiWqtDsDuXEZkEpFtQzFjBfGF7sXSDaVZVaccWaIPes4c90s5znuxZoNi4tGfcfok
 4klJ1+q54O39NzbBMqjo6ycX+CutmcNAXsWYV7uhDUfthFoNYRQ/aRFgWSoo4d6Pc0AO
 dkGTBKS1GkJMveARhkgcB9s9geL+nB1CO2kSsEIJH/Fj4dgDutfJOks130b9D4rSYtSk
 Y30fzuGnz2ocC3gGQMXYvlpeA88MN3wt6ygfht+29GrAtx20xJ4z2ykblGuWr6TcppZC
 6uIA==
X-Gm-Message-State: APjAAAV5BEIrZDIwlkhrjSGxk/BavcjI3sR6bux1DNVN+FDo0l739wCr
 hbm2EEshr+hwjePWE7ByCQw/mg==
X-Google-Smtp-Source: APXvYqyaGkA5bqGmXYfyBhEFLDJAaOMFR+7k/a8+qIR74ejZDVmY45Hebwq1ajIOd5XipKWG1r4OWw==
X-Received: by 2002:a63:496:: with SMTP id 144mr9008447pge.207.1579660589227; 
 Tue, 21 Jan 2020 18:36:29 -0800 (PST)
Received: from localhost ([122.167.18.14])
 by smtp.gmail.com with ESMTPSA id i4sm42963164pgc.51.2020.01.21.18.36.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 Jan 2020 18:36:28 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: arnd@arndb.de,
	Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH V4] firmware: arm_scmi: Make scmi core independent of the
 transport type
Date: Wed, 22 Jan 2020 08:06:23 +0530
Message-Id: <a9ec58818b5e0c982810e74efe3f5f22b930ae40.1579660436.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <20200121183818.GA11522@bogus>
References: <20200121183818.GA11522@bogus>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_183630_953951_90963C33 
X-CRM114-Status: GOOD (  20.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
file: mailbox.c.

We can now implement more transport protocols to transport SCMI
messages.

The transport protocols just need to provide struct scmi_transport_ops,
with its version of the callbacks to enable exchange of SCMI messages.

Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
@Sudeep: It was my mistake that I didn't check if there is something
already queued for next release and you never told me as well earlier :)

Can you please help me getting this tested, now that I have rebased it
as well :) ?

V3->V4:
- Rebased on top of linux-next.

V2->V3:
- Added more ops to the structure to read/write/memcpy data
- Payload is moved to mailbox.c and is handled in transport specific way
  now. This resulted in lots of changes.

V1->V2:
- Dropped __iomem from payload data.
- Moved transport ops to scmi_desc, and that has a per transport
  instance now which is differentiated using the compatible string.
- Converted IS_ERR_OR_NULL to IS_ERR.

 drivers/firmware/arm_scmi/Makefile  |   3 +-
 drivers/firmware/arm_scmi/common.h  |  88 +++++++++++
 drivers/firmware/arm_scmi/driver.c  | 223 +++++++---------------------
 drivers/firmware/arm_scmi/mailbox.c | 202 +++++++++++++++++++++++++
 4 files changed, 343 insertions(+), 173 deletions(-)
 create mode 100644 drivers/firmware/arm_scmi/mailbox.c

diff --git a/drivers/firmware/arm_scmi/Makefile b/drivers/firmware/arm_scmi/Makefile
index 5f298f00a82e..df2c05a545d8 100644
--- a/drivers/firmware/arm_scmi/Makefile
+++ b/drivers/firmware/arm_scmi/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-y	= scmi-bus.o scmi-driver.o scmi-protocols.o
+obj-y	= scmi-bus.o scmi-driver.o scmi-protocols.o scmi-transport.o
 scmi-bus-y = bus.o
 scmi-driver-y = driver.o
+scmi-transport-y = mailbox.o
 scmi-protocols-y = base.o clock.o perf.o power.o reset.o sensors.o
 obj-$(CONFIG_ARM_SCMI_POWER_DOMAIN) += scmi_pm_domain.o
diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
index df35358ff324..6d130c53d266 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -13,6 +13,7 @@
 #include <linux/errno.h>
 #include <linux/kernel.h>
 #include <linux/scmi_protocol.h>
+#include <linux/stddef.h>
 #include <linux/types.h>
 
 #include <asm/unaligned.h>
@@ -113,3 +114,90 @@ void scmi_setup_protocol_implemented(const struct scmi_handle *handle,
 				     u8 *prot_imp);
 
 int scmi_base_protocol_init(struct scmi_handle *h);
+
+/* SCMI Transport */
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
+/* Offset of fields within the above structure */
+#define SHMEM_CHANNEL_STATUS		offsetof(struct scmi_shared_mem, channel_status)
+#define SHMEM_FLAGS			offsetof(struct scmi_shared_mem, flags)
+#define SHMEM_LENGTH			offsetof(struct scmi_shared_mem, length)
+#define SHMEM_MSG_HEADER		offsetof(struct scmi_shared_mem, msg_header)
+#define SHMEM_MSG_PAYLOAD		offsetof(struct scmi_shared_mem, msg_payload)
+
+struct scmi_info;
+
+/**
+ * struct scmi_chan_info - Structure representing a SCMI channel information
+ *
+ * @payload: Transmit/Receive payload area
+ * @dev: Reference to device in the SCMI hierarchy corresponding to this
+ *	 channel
+ * @handle: Pointer to SCMI entity handle
+ * @transport_info: Transport layer related information
+ */
+struct scmi_chan_info {
+	struct scmi_info *info;
+	struct device *dev;
+	struct scmi_handle *handle;
+	void *transport_info;
+};
+
+/**
+ * struct scmi_transport_ops - Structure representing a SCMI transport ops
+ *
+ * @send_message: Callback to send a message
+ * @mark_txdone: Callback to mark tx as done
+ * @chan_setup: Callback to allocate and setup a channel
+ * @chan_free: Callback to free a channel
+ */
+struct scmi_transport_ops {
+	bool (*chan_available)(struct device *dev, int idx);
+	int (*chan_setup)(struct scmi_chan_info *cinfo, struct device *dev, bool tx);
+	int (*chan_free)(int id, void *p, void *data);
+	int (*send_message)(struct scmi_chan_info *cinfo, struct scmi_xfer *xfer);
+	void (*mark_txdone)(struct scmi_chan_info *cinfo, int ret);
+	u32 (*read32)(struct scmi_chan_info *cinfo, unsigned int offset);
+	void (*write32)(struct scmi_chan_info *cinfo, u32 val, unsigned int offset);
+	void (*memcpy_from)(struct scmi_chan_info *cinfo, void *to, unsigned int offset, long len);
+	void (*memcpy_to)(struct scmi_chan_info *cinfo, unsigned int offset, void *from, long len);
+
+};
+
+/**
+ * struct scmi_desc - Description of SoC integration
+ *
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
+void scmi_tx_prepare(struct scmi_chan_info *cinfo, struct scmi_xfer *t);
+void scmi_rx_callback(struct scmi_chan_info *cinfo, struct scmi_xfer *t);
+void scmi_free_channel(struct scmi_chan_info *cinfo, struct idr *idr, int id);
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 2c96f6b5a7d8..289340ce014c 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -19,7 +19,6 @@
 #include <linux/io.h>
 #include <linux/kernel.h>
 #include <linux/ktime.h>
-#include <linux/mailbox_client.h>
 #include <linux/module.h>
 #include <linux/of_address.h>
 #include <linux/of_device.h>
@@ -82,38 +81,6 @@ struct scmi_xfers_info {
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
@@ -143,27 +110,8 @@ struct scmi_info {
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
@@ -199,15 +147,17 @@ static inline void scmi_dump_header_dbg(struct device *dev,
 		hdr->id, hdr->seq, hdr->protocol_id);
 }
 
-static void scmi_fetch_response(struct scmi_xfer *xfer,
-				struct scmi_shared_mem __iomem *mem)
+static void scmi_fetch_response(struct scmi_chan_info *cinfo,
+				struct scmi_xfer *xfer)
 {
-	xfer->hdr.status = ioread32(mem->msg_payload);
+	struct scmi_transport_ops *ops = cinfo->info->desc->ops;
+
+	xfer->hdr.status = ops->read32(cinfo, SHMEM_MSG_PAYLOAD);
 	/* Skip the length of header and status in payload area i.e 8 bytes */
-	xfer->rx.len = min_t(size_t, xfer->rx.len, ioread32(&mem->length) - 8);
+	xfer->rx.len = min_t(size_t, xfer->rx.len, ops->read32(cinfo, SHMEM_LENGTH) - 8);
 
 	/* Take a copy to the rx buffer.. */
-	memcpy_fromio(xfer->rx.buf, mem->msg_payload + 4, xfer->rx.len);
+	ops->memcpy_from(cinfo, xfer->rx.buf, SHMEM_MSG_PAYLOAD + 4, xfer->rx.len);
 }
 
 /**
@@ -238,19 +188,17 @@ static inline void unpack_scmi_header(u32 msg_hdr, struct scmi_msg_hdr *hdr)
 }
 
 /**
- * scmi_tx_prepare() - mailbox client callback to prepare for the transfer
+ * scmi_tx_prepare() - callback to prepare for the transfer
  *
- * @cl: client pointer
- * @m: mailbox message
+ * @cinfo: SCMI channel info
+ * @t: transfer message
  *
  * This function prepares the shared memory which contains the header and the
  * payload.
  */
-static void scmi_tx_prepare(struct mbox_client *cl, void *m)
+void scmi_tx_prepare(struct scmi_chan_info *cinfo, struct scmi_xfer *t)
 {
-	struct scmi_xfer *t = m;
-	struct scmi_chan_info *cinfo = client_to_scmi_chan_info(cl);
-	struct scmi_shared_mem __iomem *mem = cinfo->payload;
+	struct scmi_transport_ops *ops = cinfo->info->desc->ops;
 
 	/*
 	 * Ideally channel must be free by now unless OS timeout last
@@ -258,16 +206,17 @@ static void scmi_tx_prepare(struct mbox_client *cl, void *m)
 	 * until it releases the shared memory, otherwise we may endup
 	 * overwriting its response with new message payload or vice-versa
 	 */
-	spin_until_cond(ioread32(&mem->channel_status) &
+	spin_until_cond(ops->read32(cinfo, SHMEM_CHANNEL_STATUS) &
 			SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE);
 	/* Mark channel busy + clear error */
-	iowrite32(0x0, &mem->channel_status);
-	iowrite32(t->hdr.poll_completion ? 0 : SCMI_SHMEM_FLAG_INTR_ENABLED,
-		  &mem->flags);
-	iowrite32(sizeof(mem->msg_header) + t->tx.len, &mem->length);
-	iowrite32(pack_scmi_header(&t->hdr), &mem->msg_header);
+	ops->write32(cinfo, 0x0, SHMEM_CHANNEL_STATUS);
+	ops->write32(cinfo,
+		     t->hdr.poll_completion ? 0 : SCMI_SHMEM_FLAG_INTR_ENABLED,
+		     SHMEM_FLAGS);
+	ops->write32(cinfo, sizeof(((struct scmi_shared_mem *)0)->msg_header) + t->tx.len, SHMEM_LENGTH);
+	ops->write32(cinfo, pack_scmi_header(&t->hdr), SHMEM_MSG_HEADER);
 	if (t->tx.buf)
-		memcpy_toio(mem->msg_payload, t->tx.buf, t->tx.len);
+		ops->memcpy_to(cinfo, SHMEM_MSG_PAYLOAD, t->tx.buf, t->tx.len);
 }
 
 /**
@@ -338,10 +287,10 @@ __scmi_xfer_put(struct scmi_xfers_info *minfo, struct scmi_xfer *xfer)
 }
 
 /**
- * scmi_rx_callback() - mailbox client callback for receive messages
+ * scmi_rx_callback() - callback for receiving messages
  *
- * @cl: client pointer
- * @m: mailbox message
+ * @cinfo: SCMI channel info
+ * @t: transfer message
  *
  * Processes one received message to appropriate transfer information and
  * signals completion of the transfer.
@@ -349,19 +298,17 @@ __scmi_xfer_put(struct scmi_xfers_info *minfo, struct scmi_xfer *xfer)
  * NOTE: This function will be invoked in IRQ context, hence should be
  * as optimal as possible.
  */
-static void scmi_rx_callback(struct mbox_client *cl, void *m)
+void scmi_rx_callback(struct scmi_chan_info *cinfo, struct scmi_xfer *t)
 {
 	u8 msg_type;
 	u32 msg_hdr;
 	u16 xfer_id;
 	struct scmi_xfer *xfer;
-	struct scmi_chan_info *cinfo = client_to_scmi_chan_info(cl);
 	struct device *dev = cinfo->dev;
 	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
 	struct scmi_xfers_info *minfo = &info->tx_minfo;
-	struct scmi_shared_mem __iomem *mem = cinfo->payload;
 
-	msg_hdr = ioread32(&mem->msg_header);
+	msg_hdr = cinfo->info->desc->ops->read32(cinfo, SHMEM_MSG_HEADER);
 	msg_type = MSG_XTRACT_TYPE(msg_hdr);
 	xfer_id = MSG_XTRACT_TOKEN(msg_hdr);
 
@@ -378,7 +325,7 @@ static void scmi_rx_callback(struct mbox_client *cl, void *m)
 
 	scmi_dump_header_dbg(dev, &xfer->hdr);
 
-	scmi_fetch_response(xfer, mem);
+	scmi_fetch_response(cinfo, xfer);
 
 	trace_scmi_rx_done(xfer->transfer_id, xfer->hdr.id,
 			   xfer->hdr.protocol_id, xfer->hdr.seq,
@@ -404,22 +351,22 @@ void scmi_xfer_put(const struct scmi_handle *handle, struct scmi_xfer *xfer)
 }
 
 static bool
-scmi_xfer_poll_done(const struct scmi_chan_info *cinfo, struct scmi_xfer *xfer)
+scmi_xfer_poll_done(struct scmi_chan_info *cinfo, struct scmi_xfer *xfer)
 {
-	struct scmi_shared_mem __iomem *mem = cinfo->payload;
-	u16 xfer_id = MSG_XTRACT_TOKEN(ioread32(&mem->msg_header));
+	struct scmi_transport_ops *ops = cinfo->info->desc->ops;
+	u16 xfer_id = MSG_XTRACT_TOKEN(ops->read32(cinfo, SHMEM_MSG_HEADER));
 
 	if (xfer->hdr.seq != xfer_id)
 		return false;
 
-	return ioread32(&mem->channel_status) &
+	return ops->read32(cinfo, SHMEM_CHANNEL_STATUS) &
 		(SCMI_SHMEM_CHAN_STAT_CHANNEL_ERROR |
 		SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE);
 }
 
 #define SCMI_MAX_POLL_TO_NS	(100 * NSEC_PER_USEC)
 
-static bool scmi_xfer_done_no_timeout(const struct scmi_chan_info *cinfo,
+static bool scmi_xfer_done_no_timeout(struct scmi_chan_info *cinfo,
 				      struct scmi_xfer *xfer, ktime_t stop)
 {
 	ktime_t __cur = ktime_get();
@@ -453,29 +400,26 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
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
+			scmi_fetch_response(cinfo, xfer);
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
@@ -484,13 +428,7 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
 	if (!ret && xfer->hdr.status)
 		ret = scmi_to_linux_errno(xfer->hdr.status);
 
-	/*
-	 * NOTE: we might prefer not to need the mailbox ticker to manage the
-	 * transfer queueing since the protocol layer queues things by itself.
-	 * Unfortunately, we have to kick the mailbox framework after we have
-	 * received our message.
-	 */
-	mbox_client_txdone(cinfo->chan, ret);
+	info->desc->ops->mark_txdone(cinfo, ret);
 
 	trace_scmi_xfer_end(xfer->transfer_id, xfer->hdr.id,
 			    xfer->hdr.protocol_id, xfer->hdr.seq,
@@ -731,23 +669,12 @@ static int scmi_xfer_info_init(struct scmi_info *sinfo)
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
@@ -758,7 +685,7 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
 	if (cinfo)
 		return 0;
 
-	if (scmi_mailbox_check(np, idx)) {
+	if (!info->desc->ops->chan_available(dev, idx)) {
 		cinfo = idr_find(idr, SCMI_PROTOCOL_BASE);
 		if (unlikely(!cinfo)) /* Possible only if platform has no Rx */
 			return -EINVAL;
@@ -770,37 +697,11 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
 		return -ENOMEM;
 
 	cinfo->dev = dev;
+	cinfo->info = info;
 
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
@@ -814,12 +715,12 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
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
@@ -837,7 +738,7 @@ scmi_create_protocol_device(struct device_node *np, struct scmi_info *info,
 		return;
 	}
 
-	if (scmi_mbox_txrx_setup(info, &sdev->dev, prot_id)) {
+	if (scmi_txrx_setup(info, &sdev->dev, prot_id)) {
 		dev_err(&sdev->dev, "failed to setup transport\n");
 		scmi_device_destroy(sdev);
 		return;
@@ -890,12 +791,6 @@ static int scmi_probe(struct platform_device *pdev)
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
@@ -920,7 +815,7 @@ static int scmi_probe(struct platform_device *pdev)
 	handle->dev = info->dev;
 	handle->version = &info->version;
 
-	ret = scmi_mbox_txrx_setup(info, dev, SCMI_PROTOCOL_BASE);
+	ret = scmi_txrx_setup(info, dev, SCMI_PROTOCOL_BASE);
 	if (ret)
 		return ret;
 
@@ -955,19 +850,9 @@ static int scmi_probe(struct platform_device *pdev)
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
@@ -987,11 +872,11 @@ static int scmi_remove(struct platform_device *pdev)
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
@@ -1043,15 +928,9 @@ static struct attribute *versions_attrs[] = {
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
index 000000000000..7509e7eb262a
--- /dev/null
+++ b/drivers/firmware/arm_scmi/mailbox.c
@@ -0,0 +1,202 @@
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
+ */
+struct scmi_mailbox {
+	struct mbox_client cl;
+	struct mbox_chan *chan;
+	struct scmi_chan_info *cinfo;
+	void __iomem *payload;
+};
+
+#define client_to_scmi_mailbox(c) container_of(c, struct scmi_mailbox, cl)
+
+static bool mailbox_chan_available(struct device *dev, int idx)
+{
+	return !of_parse_phandle_with_args(dev->of_node, "mboxes",
+					   "#mbox-cells", idx, NULL);
+}
+
+static void mailbox_tx_prepare(struct mbox_client *cl, void *m)
+{
+	struct scmi_mailbox *smbox = client_to_scmi_mailbox(cl);
+	struct scmi_chan_info *cinfo = smbox->cinfo;
+
+	scmi_tx_prepare(cinfo, m);
+}
+
+static void mailbox_rx_callback(struct mbox_client *cl, void *m)
+{
+	struct scmi_mailbox *smbox = client_to_scmi_mailbox(cl);
+	struct scmi_chan_info *cinfo = smbox->cinfo;
+
+	scmi_rx_callback(cinfo, m);
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
+	smbox = devm_kzalloc(cdev, sizeof(*smbox), GFP_KERNEL);
+	if (!smbox)
+		return -ENOMEM;
+
+	shmem = of_parse_phandle(cdev->of_node, "shmem", idx);
+	ret = of_address_to_resource(shmem, 0, &res);
+	of_node_put(shmem);
+	if (ret) {
+		dev_err(cdev, "failed to get SCMI %s payload memory\n", desc);
+		return ret;
+	}
+
+	size = resource_size(&res);
+	smbox->payload = devm_ioremap(dev, res.start, size);
+	if (!smbox->payload) {
+		dev_err(dev, "failed to ioremap SCMI %s payload\n", desc);
+		return -EADDRNOTAVAIL;
+	}
+
+	cl = &smbox->cl;
+	cl->dev = cdev;
+	cl->tx_prepare = tx ? mailbox_tx_prepare : NULL;
+	cl->rx_callback = mailbox_rx_callback;
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
+static u32 mailbox_read32(struct scmi_chan_info *cinfo, unsigned int offset)
+{
+	struct scmi_mailbox *smbox = cinfo->transport_info;
+
+	return ioread32(smbox->payload + offset);
+}
+
+static void mailbox_write32(struct scmi_chan_info *cinfo, u32 val,
+			    unsigned int offset)
+{
+	struct scmi_mailbox *smbox = cinfo->transport_info;
+
+	iowrite32(val, smbox->payload + offset);
+}
+
+static void mailbox_memcpy_from(struct scmi_chan_info *cinfo, void *to,
+				unsigned int offset, long len)
+{
+	struct scmi_mailbox *smbox = cinfo->transport_info;
+
+	memcpy_fromio(to, smbox->payload + offset, len);
+}
+
+static void mailbox_memcpy_to(struct scmi_chan_info *cinfo, unsigned int offset,
+			      void *from, long len)
+{
+	struct scmi_mailbox *smbox = cinfo->transport_info;
+
+	memcpy_toio(smbox->payload + offset, from, len);
+}
+
+static struct scmi_transport_ops scmi_mailbox_ops = {
+	.chan_available = mailbox_chan_available,
+	.chan_setup = mailbox_chan_setup,
+	.chan_free = mailbox_chan_free,
+	.send_message = mailbox_send_message,
+	.mark_txdone = mailbox_mark_txdone,
+	.read32 = mailbox_read32,
+	.write32 = mailbox_write32,
+	.memcpy_from = mailbox_memcpy_from,
+	.memcpy_to = mailbox_memcpy_to,
+};
+
+const struct scmi_desc scmi_mailbox_desc = {
+	.ops = &scmi_mailbox_ops,
+	.max_rx_timeout_ms = 30, /* We may increase this if required */
+	.max_msg = 20, /* Limited by MBOX_TX_QUEUE_LEN */
+	.max_msg_size = 128,
+};
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
