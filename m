Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4E0136A1D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 10:44:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5CJd0mKpSqNqJczrW+/1MzPTz0mK01XNGa6ZD9n0M4k=; b=fOUanPQ2c7Mlj9
	y+7j5oNbkyLMB6JO2S9UioEsPyv0ITe6v4a3Kr16wIV7R1Eft4jtY8E/ryLHFfKNc+m59ZdslB/CH
	4YbsfMQ4sZ7E1s0zHXSkOWWEjH75i/JAUf1Bc79rF4mrE8skEn5pwPH5luaH1nmTJK3/CwxN2WBeh
	0ktqoDjHs8wYya2HAUejWtYAh57sqhpqBcIDoyX78An51Vlh5w3wOb5nSkb166Y/CCwJN26hyw9kO
	GiEyKy36NVOUjn9QGzrT7qBiyKCXSDeJaQU5tYLCMDykE8kBnkkrsLdUQiG0bdhBPYp2uzL34y666
	XRNluoEmJuh8I33MRqZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipqpZ-0001xr-Po; Fri, 10 Jan 2020 09:43:49 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipqpO-0001wV-L5
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 09:43:41 +0000
Received: by mail-pg1-x542.google.com with SMTP id s64so739631pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 01:43:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nAt7S5lGyZAP9IhuBPaHi8w1OWdC2aV1/6Xo2a1gtF8=;
 b=HWLvHEd3hicKdoNTSnSygd+9PppbJM7wxoWuUavLkhB51ZRRaFMTvdX5mLATbQ1gpK
 aYfX4VUllTIV04T+Tx2TYEPqbg4sCz+wnpT4h0vCfHtmRO2REV0N52ULaIgKnRAIEA+4
 fqilxO5ENtN9EDtTJlxMXOuZhwyha3CppocRbZsu6ISlFulQ8/QoHlFLlVwDxNBukiWc
 zm2AE9X/5JDyo2F8sPwAQ2c26lwMELb+kfVJpkH10adINQ1+NQNsyo0QHK2ZM3rjKVp/
 9fcyfOYLgSfL0E6xOBN++sCX1sq+Emv7MP8BFbQgmAL4tdLYT2P7rAqzPPgu52EevlZ/
 bESg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nAt7S5lGyZAP9IhuBPaHi8w1OWdC2aV1/6Xo2a1gtF8=;
 b=ZnULYHH7N2GT2V1VwqYZpySg3QAfqy1qUUB7XXL6BghEk/Tqfv4fduWyJGFYf2if5g
 mQGIRFcoMlmZRUU6qd5rgIrYjBdQm2KWJSl8IV5p3+k3tWAVyoqGqOVDeabCupXkTBg2
 KyOxQ2ERkw9O8FWF+sSH8LNxdXgD2nvBp4G7kfceov0BnlZ4PXpRpSveKFq8zkzVKl0U
 hmQ1H7ModxWu5V/fAnwNbsV1BkvyPPBxBOV9nwsr4kCaSqA6WBtO69JEXyHtcWnIB5xM
 0wrdkIP33wCRjdtgAcyfhv8/6gpc6t/wA4Po5m+EtpkNxna1PoK7xDOcFj2oMSttZhUz
 dqZQ==
X-Gm-Message-State: APjAAAWMHomDWCM/epY8XUhgzU8u1oJnrQJxDduF2kcuuwgAwW83FaXd
 YEagv1gwhx85zjEY8UI4dHKbUw==
X-Google-Smtp-Source: APXvYqyIzcJcpVCEuA25XnxEJvnVp15BM3YzpDlt6PIHZctgs3QCmGwjkrQL9XXamhBZafzxzuGlMg==
X-Received: by 2002:a63:4d1b:: with SMTP id a27mr3197324pgb.352.1578649417087; 
 Fri, 10 Jan 2020 01:43:37 -0800 (PST)
Received: from localhost ([122.172.140.51])
 by smtp.gmail.com with ESMTPSA id n26sm2117969pgd.46.2020.01.10.01.43.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 Jan 2020 01:43:36 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: arnd@arndb.de,
	Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH V2] firmware: arm_scmi: Make scmi core independent of
 transport type
Date: Fri, 10 Jan 2020 15:13:31 +0530
Message-Id: <3f5567ec928e20963d729350e6d674c4acb0c7a0.1578648530.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_014338_931930_9822C6BD 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 cristian.marussi@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SCMI specification is fairly independent of the transport protocol,
which can be a simple mailbox (already implemented) or anything else.
The current Linux implementation however is very much dependent of the
mailbox transport layer.

This patch makes the SCMI core code (driver.c) independent of the
mailbox transport layer and moves all mailbox related code to a new
file: mailbox.c.

We can now implement more transport protocols to transport SCMI
messages, some of the transport protocols getting discussed currently
are SMC/HVC, SPCI (built on top of SMC/HVC), OPTEE based mailbox
(similar to SPCI), and vitio based transport as alternative to mailbox.

The transport protocols just need to provide struct scmi_desc, which
also implements the struct scmi_transport_ops.

Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
V2:
- Dropped __iomem from payload data.
- Moved transport ops to scmi_desc, and that has a per transport
  instance now which is differentiated using the compatible string.
- Converted IS_ERR_OR_NULL to IS_ERR.

 drivers/firmware/arm_scmi/Makefile  |   3 +-
 drivers/firmware/arm_scmi/common.h  |  55 ++++++++++
 drivers/firmware/arm_scmi/driver.c  | 151 ++++++----------------------
 drivers/firmware/arm_scmi/mailbox.c | 144 ++++++++++++++++++++++++++
 4 files changed, 233 insertions(+), 120 deletions(-)
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
index 5237c2ff79fe..365368f8e6d1 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -111,3 +111,58 @@ void scmi_setup_protocol_implemented(const struct scmi_handle *handle,
 				     u8 *prot_imp);
 
 int scmi_base_protocol_init(struct scmi_handle *h);
+
+/* SCMI Transport */
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
+	void *payload;
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
+	int (*chan_setup)(struct scmi_chan_info *cinfo, bool tx);
+	int (*chan_free)(int id, void *p, void *data);
+	int (*send_message)(struct scmi_chan_info *cinfo, struct scmi_xfer *xfer);
+	void (*mark_txdone)(struct scmi_chan_info *cinfo, int ret);
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
index 3eb0382491ce..e67fcbe27472 100644
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
@@ -77,38 +76,6 @@ struct scmi_xfers_info {
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
@@ -138,7 +105,6 @@ struct scmi_info {
 	int users;
 };
 
-#define client_to_scmi_chan_info(c) container_of(c, struct scmi_chan_info, cl)
 #define handle_to_scmi_info(h)	container_of(h, struct scmi_info, handle)
 
 /*
@@ -195,7 +161,7 @@ static inline void scmi_dump_header_dbg(struct device *dev,
 }
 
 static void scmi_fetch_response(struct scmi_xfer *xfer,
-				struct scmi_shared_mem __iomem *mem)
+				struct scmi_shared_mem *mem)
 {
 	xfer->hdr.status = ioread32(mem->msg_payload);
 	/* Skip the length of header and status in payload area i.e 8 bytes */
@@ -233,19 +199,17 @@ static inline void unpack_scmi_header(u32 msg_hdr, struct scmi_msg_hdr *hdr)
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
+	struct scmi_shared_mem *mem = cinfo->payload;
 
 	/*
 	 * Ideally channel must be free by now unless OS timeout last
@@ -332,10 +296,10 @@ __scmi_xfer_put(struct scmi_xfers_info *minfo, struct scmi_xfer *xfer)
 }
 
 /**
- * scmi_rx_callback() - mailbox client callback for receive messages
+ * scmi_rx_callback() - callback for receive messages
  *
- * @cl: client pointer
- * @m: mailbox message
+ * @cinfo: SCMI channel info
+ * @t: transfer message
  *
  * Processes one received message to appropriate transfer information and
  * signals completion of the transfer.
@@ -343,17 +307,16 @@ __scmi_xfer_put(struct scmi_xfers_info *minfo, struct scmi_xfer *xfer)
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
+	struct scmi_shared_mem *mem = cinfo->payload;
 
 	msg_hdr = ioread32(&mem->msg_header);
 	msg_type = MSG_XTRACT_TYPE(msg_hdr);
@@ -396,7 +359,7 @@ void scmi_xfer_put(const struct scmi_handle *handle, struct scmi_xfer *xfer)
 static bool
 scmi_xfer_poll_done(const struct scmi_chan_info *cinfo, struct scmi_xfer *xfer)
 {
-	struct scmi_shared_mem __iomem *mem = cinfo->payload;
+	struct scmi_shared_mem *mem = cinfo->payload;
 	u16 xfer_id = MSG_XTRACT_TOKEN(ioread32(&mem->msg_header));
 
 	if (xfer->hdr.seq != xfer_id)
@@ -439,15 +402,12 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
 	if (unlikely(!cinfo))
 		return -EINVAL;
 
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
 
@@ -461,7 +421,7 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
 		/* And we wait for the response. */
 		timeout = msecs_to_jiffies(info->desc->max_rx_timeout_ms);
 		if (!wait_for_completion_timeout(&xfer->done, timeout)) {
-			dev_err(dev, "mbox timed out in resp(caller: %pS)\n",
+			dev_err(dev, "timed out in resp(caller: %pS)\n",
 				(void *)_RET_IP_);
 			ret = -ETIMEDOUT;
 		}
@@ -470,13 +430,7 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
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
 
 	return ret;
 }
@@ -713,21 +667,14 @@ static int scmi_xfer_info_init(struct scmi_info *sinfo)
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
 	struct resource res;
 	resource_size_t size;
-	struct device_node *shmem, *np = dev->of_node;
+	struct device_node *shmem;
 	struct scmi_chan_info *cinfo;
-	struct mbox_client *cl;
 	struct idr *idr;
 	const char *desc = tx ? "Tx" : "Rx";
 
@@ -735,7 +682,7 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
 	idx = tx ? 0 : 1;
 	idr = tx ? &info->tx_idr : &info->rx_idr;
 
-	if (scmi_mailbox_check(np, idx)) {
+	if (!info->desc->ops->chan_available(dev, idx)) {
 		cinfo = idr_find(idr, SCMI_PROTOCOL_BASE);
 		if (unlikely(!cinfo)) /* Possible only if platform has no Rx */
 			return -EINVAL;
@@ -748,14 +695,7 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
 
 	cinfo->dev = dev;
 
-	cl = &cinfo->cl;
-	cl->dev = dev;
-	cl->rx_callback = scmi_rx_callback;
-	cl->tx_prepare = tx ? scmi_tx_prepare : NULL;
-	cl->tx_block = false;
-	cl->knows_txdone = tx;
-
-	shmem = of_parse_phandle(np, "shmem", idx);
+	shmem = of_parse_phandle(dev->of_node, "shmem", idx);
 	ret = of_address_to_resource(shmem, 0, &res);
 	of_node_put(shmem);
 	if (ret) {
@@ -770,14 +710,9 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
 		return -EADDRNOTAVAIL;
 	}
 
-	cinfo->chan = mbox_request_channel(cl, idx);
-	if (IS_ERR(cinfo->chan)) {
-		ret = PTR_ERR(cinfo->chan);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "failed to request SCMI %s mailbox\n",
-				desc);
+	ret = info->desc->ops->chan_setup(cinfo, tx);
+	if (ret)
 		return ret;
-	}
 
 idr_alloc:
 	ret = idr_alloc(idr, cinfo, prot_id, prot_id + 1, GFP_KERNEL);
@@ -791,12 +726,12 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
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
@@ -814,7 +749,7 @@ scmi_create_protocol_device(struct device_node *np, struct scmi_info *info,
 		return;
 	}
 
-	if (scmi_mbox_txrx_setup(info, &sdev->dev, prot_id)) {
+	if (scmi_txrx_setup(info, &sdev->dev, prot_id)) {
 		dev_err(&sdev->dev, "failed to setup transport\n");
 		scmi_device_destroy(sdev);
 		return;
@@ -833,12 +768,6 @@ static int scmi_probe(struct platform_device *pdev)
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
@@ -863,7 +792,7 @@ static int scmi_probe(struct platform_device *pdev)
 	handle->dev = info->dev;
 	handle->version = &info->version;
 
-	ret = scmi_mbox_txrx_setup(info, dev, SCMI_PROTOCOL_BASE);
+	ret = scmi_txrx_setup(info, dev, SCMI_PROTOCOL_BASE);
 	if (ret)
 		return ret;
 
@@ -898,19 +827,9 @@ static int scmi_probe(struct platform_device *pdev)
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
@@ -930,25 +849,19 @@ static int scmi_remove(struct platform_device *pdev)
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
 }
 
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
index 000000000000..2d1f7c8be293
--- /dev/null
+++ b/drivers/firmware/arm_scmi/mailbox.c
@@ -0,0 +1,144 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * System Control and Management Interface (SCMI) Message Mailbox Transport driver
+ *
+ * Copyright (C) 2019 ARM Ltd.
+ */
+
+#include <linux/err.h>
+#include <linux/device.h>
+#include <linux/mailbox_client.h>
+#include <linux/of.h>
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
+static int mailbox_chan_setup(struct scmi_chan_info *cinfo, bool tx)
+{
+	struct device *dev = cinfo->dev;
+	struct scmi_mailbox *smbox;
+	struct mbox_client *cl;
+	int ret;
+
+	smbox = devm_kzalloc(dev, sizeof(*smbox), GFP_KERNEL);
+	if (!smbox)
+		return -ENOMEM;
+
+	cl = &smbox->cl;
+	cl->dev = dev;
+	cl->tx_prepare = tx ? mailbox_tx_prepare : NULL;
+	cl->rx_callback = mailbox_rx_callback;
+	cl->tx_block = false;
+	cl->knows_txdone = tx;
+
+	smbox->chan = mbox_request_channel(cl, tx ? 0 : 1);
+	if (IS_ERR(smbox->chan)) {
+		ret = PTR_ERR(smbox->chan);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "failed to request SCMI %s mailbox\n",
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
+			struct scmi_xfer *xfer)
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
+static struct scmi_transport_ops scmi_mailbox_ops = {
+	.chan_available = mailbox_chan_available,
+	.chan_setup = mailbox_chan_setup,
+	.chan_free = mailbox_chan_free,
+	.send_message = mailbox_send_message,
+	.mark_txdone = mailbox_mark_txdone,
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
