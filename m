Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E97E14B314
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 11:54:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/4qB/g6tVxOJcjXLEeTVE5amG5YTJufS3Ey2AnBVzO0=; b=nn1pYCFEA2aOuw
	K21VaWTFFz4yIF40S6hBmvA6SH2i8FGeKsaEEV08CSxJbC0PMj2raw7XCunArgeezQLRHBfnsr7dp
	ZL9XJ7aexvgn56tUujuVT7eW9JDxff8CYFdiTokcIE/saEWQ/XvLtFT4OiZvhT7BwPDbs/bgOZ9+F
	gtOtfZLfBwbUt2a662mt6+qzcWmbKgd8KQs6H39AZAVQF+4tRiy7PZobzvcJkNZFP6WQYl2ny3mk7
	rph19Y12etEYzgEuqRrHMRTLj+gSLuTd2kLiPoknzptrHB4mUWMQhmgSvdSXKd78Hk5JLkcyzvgRb
	7BaKUOC6rX2IuvuSaLnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwOVw-00027p-Sk; Tue, 28 Jan 2020 10:54:36 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwOVm-00027H-G5
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 10:54:29 +0000
Received: by mail-pj1-x1044.google.com with SMTP id d5so826509pjz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 02:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Jcekx/5TbMGrRqEc9+RftdoZ5GRTV4T7Amr2Z76V9oQ=;
 b=yFDqGlX4Km3BdmNy5TJSF+Jok2+3wqfZRDIwaKqgw9cM2LkTOHTsZ9jA7x1EYfjvQF
 p1KaRwoBqNMCVm23MyF6qH3bCtFcu2kWjy4QaaxPzYu6VXAT0sTTmqe77ysuxCPsR9R3
 yzlZArRfQdRvdJKcWcLx0NQwRejmRk3EvcnSgfkQngfOfTUufy5KLh5tsM4RnriKQojE
 QvoMH5u4yw1D4cjpCdwSGBmeLNZ3rqztI1Wb2TS/yMekq/sQ5/5Cd7OS8TMIP0gB7SID
 AJQ3X9nuykj4o87ugW0fSqpkizxiMiY+mmhjIgdzaOG3cwrELOu4K8FKoXwvD1myboym
 YGqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Jcekx/5TbMGrRqEc9+RftdoZ5GRTV4T7Amr2Z76V9oQ=;
 b=KxYBQC0m2E1sOFjph8Bg89S0+ftPcSX1+GbTqqBZTJEYTxQQPpsXzMnXp/KoYYnDVi
 Sdfz0VaTUXcRp/Twdyv3xk3PjMr3VWf3tzoTVcz6HpEnjNbH/Idh2UNSHrP9Pyy6Th78
 rsKgHDh8/4Ml5L8zJkeEoTxtFWD4NZ6SW4L/V6YJ1bFinrpdJCm9yqtACkwzGXA513Xw
 cxRxWhdDPB3hPCBxuB1Drk6F/HQHRvUSVesqxUpT+OOqU1GtIpx56U5E8c8W9ZUnQWkV
 Pav8yeK09ZvWWpmqXKfnwigFeGSQMMwSj3FxQsOoRP+5w8h7XlsUtaX57liVbMJ0MSW8
 84kA==
X-Gm-Message-State: APjAAAUqR+kCOiaEk6g2g+kqviTi7BmAbsyWgJ0rS6qfwVHWIFvfTAm2
 1iKdogwSLjR87ZHZUiase9X1nA==
X-Google-Smtp-Source: APXvYqw2yE4MlDdRWitOW+KHkr08JRtzDHdj2NwNdcKktKmOoRE5KYqT/2btwYW3UM1mTxhE1Yn+mQ==
X-Received: by 2002:a17:902:bc87:: with SMTP id
 bb7mr21567972plb.272.1580208864602; 
 Tue, 28 Jan 2020 02:54:24 -0800 (PST)
Received: from localhost ([122.172.141.204])
 by smtp.gmail.com with ESMTPSA id l1sm2409364pjb.28.2020.01.28.02.54.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 Jan 2020 02:54:23 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: arnd@arndb.de,
	Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH V5] firmware: arm_scmi: Make scmi core independent of the
 transport type
Date: Tue, 28 Jan 2020 16:24:19 +0530
Message-Id: <f170b33989b426ac095952634fcd1bf45b86a7a3.1580208329.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_025426_549926_A4FBCFCA 
X-CRM114-Status: GOOD (  22.97  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [122.172.141.204 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
@Sudeep: Please help getting this tested as well :)

V4->V5:
- struct scmi_shared_mem is moved to mailbox.c and it is completely
  handled by transport layer now.
- And so lots of ops change due to this.
- Fixed a bug from previous version where wrong dev structure was
  getting passed to devm_kzalloc().

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
 drivers/firmware/arm_scmi/common.h  | 102 +++++++++-
 drivers/firmware/arm_scmi/driver.c  | 292 ++++------------------------
 drivers/firmware/arm_scmi/mailbox.c | 236 ++++++++++++++++++++++
 4 files changed, 371 insertions(+), 262 deletions(-)
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
index df35358ff324..805482c41ab4 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -13,6 +13,7 @@
 #include <linux/errno.h>
 #include <linux/kernel.h>
 #include <linux/scmi_protocol.h>
+#include <linux/stddef.h>
 #include <linux/types.h>
 
 #include <asm/unaligned.h>
@@ -33,8 +34,8 @@ enum scmi_common_cmd {
 /**
  * struct scmi_msg_resp_prot_version - Response for a message
  *
- * @major_version: Major version of the ABI that firmware supports
  * @minor_version: Minor version of the ABI that firmware supports
+ * @major_version: Major version of the ABI that firmware supports
  *
  * In general, ABI version changes follow the rule that minor version increments
  * are backward compatible. Major revision changes in ABI may not be
@@ -47,6 +48,19 @@ struct scmi_msg_resp_prot_version {
 	__le16 major_version;
 };
 
+#define MSG_ID_MASK		GENMASK(7, 0)
+#define MSG_XTRACT_ID(hdr)	FIELD_GET(MSG_ID_MASK, (hdr))
+#define MSG_TYPE_MASK		GENMASK(9, 8)
+#define MSG_XTRACT_TYPE(hdr)	FIELD_GET(MSG_TYPE_MASK, (hdr))
+#define MSG_TYPE_COMMAND	0
+#define MSG_TYPE_DELAYED_RESP	2
+#define MSG_TYPE_NOTIFICATION	3
+#define MSG_PROTOCOL_ID_MASK	GENMASK(17, 10)
+#define MSG_XTRACT_PROT_ID(hdr)	FIELD_GET(MSG_PROTOCOL_ID_MASK, (hdr))
+#define MSG_TOKEN_ID_MASK	GENMASK(27, 18)
+#define MSG_XTRACT_TOKEN(hdr)	FIELD_GET(MSG_TOKEN_ID_MASK, (hdr))
+#define MSG_TOKEN_MAX		(MSG_XTRACT_TOKEN(MSG_TOKEN_ID_MASK) + 1)
+
 /**
  * struct scmi_msg_hdr - Message(Tx/Rx) header
  *
@@ -67,6 +81,33 @@ struct scmi_msg_hdr {
 	bool poll_completion;
 };
 
+/**
+ * pack_scmi_header() - packs and returns 32-bit header
+ *
+ * @hdr: pointer to header containing all the information on message id,
+ *	protocol id and sequence id.
+ *
+ * Return: 32-bit packed message header to be sent to the platform.
+ */
+static inline u32 pack_scmi_header(struct scmi_msg_hdr *hdr)
+{
+	return FIELD_PREP(MSG_ID_MASK, hdr->id) |
+		FIELD_PREP(MSG_TOKEN_ID_MASK, hdr->seq) |
+		FIELD_PREP(MSG_PROTOCOL_ID_MASK, hdr->protocol_id);
+}
+
+/**
+ * unpack_scmi_header() - unpacks and records message and protocol id
+ *
+ * @msg_hdr: 32-bit packed message header sent from the platform
+ * @hdr: pointer to header to fetch message and protocol id.
+ */
+static inline void unpack_scmi_header(u32 msg_hdr, struct scmi_msg_hdr *hdr)
+{
+	hdr->id = MSG_XTRACT_ID(msg_hdr);
+	hdr->protocol_id = MSG_XTRACT_PROT_ID(msg_hdr);
+}
+
 /**
  * struct scmi_msg - Message(Tx/Rx) structure
  *
@@ -88,7 +129,7 @@ struct scmi_msg {
  *	message. If request-ACK protocol is used, we can reuse the same
  *	buffer for the rx path as we use for the tx path.
  * @done: command message transmit completion event
- * @async: pointer to delayed response message received event completion
+ * @async_done: pointer to delayed response message received event completion
  */
 struct scmi_xfer {
 	int transfer_id;
@@ -113,3 +154,60 @@ void scmi_setup_protocol_implemented(const struct scmi_handle *handle,
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
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 2c96f6b5a7d8..a4d5286ba8a6 100644
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
@@ -32,19 +30,6 @@
 #define CREATE_TRACE_POINTS
 #include <trace/events/scmi.h>
 
-#define MSG_ID_MASK		GENMASK(7, 0)
-#define MSG_XTRACT_ID(hdr)	FIELD_GET(MSG_ID_MASK, (hdr))
-#define MSG_TYPE_MASK		GENMASK(9, 8)
-#define MSG_XTRACT_TYPE(hdr)	FIELD_GET(MSG_TYPE_MASK, (hdr))
-#define MSG_TYPE_COMMAND	0
-#define MSG_TYPE_DELAYED_RESP	2
-#define MSG_TYPE_NOTIFICATION	3
-#define MSG_PROTOCOL_ID_MASK	GENMASK(17, 10)
-#define MSG_XTRACT_PROT_ID(hdr)	FIELD_GET(MSG_PROTOCOL_ID_MASK, (hdr))
-#define MSG_TOKEN_ID_MASK	GENMASK(27, 18)
-#define MSG_XTRACT_TOKEN(hdr)	FIELD_GET(MSG_TOKEN_ID_MASK, (hdr))
-#define MSG_TOKEN_MAX		(MSG_XTRACT_TOKEN(MSG_TOKEN_ID_MASK) + 1)
-
 enum scmi_error_codes {
 	SCMI_SUCCESS = 0,	/* Success */
 	SCMI_ERR_SUPPORT = -1,	/* Not supported */
@@ -82,46 +67,14 @@ struct scmi_xfers_info {
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
  * @dev: Device pointer
  * @desc: SoC description for this instance
- * @handle: Instance of SCMI handle to send to clients
  * @version: SCMI revision information containing protocol version,
  *	implementation version and (sub-)vendor identification.
+ * @handle: Instance of SCMI handle to send to clients
  * @tx_minfo: Universal Transmit Message management info
  * @tx_idr: IDR object to map protocol id to Tx channel info pointer
  * @rx_idr: IDR object to map protocol id to Rx channel info pointer
@@ -143,27 +96,8 @@ struct scmi_info {
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
@@ -199,77 +133,6 @@ static inline void scmi_dump_header_dbg(struct device *dev,
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
- * pack_scmi_header() - packs and returns 32-bit header
- *
- * @hdr: pointer to header containing all the information on message id,
- *	protocol id and sequence id.
- *
- * Return: 32-bit packed message header to be sent to the platform.
- */
-static inline u32 pack_scmi_header(struct scmi_msg_hdr *hdr)
-{
-	return FIELD_PREP(MSG_ID_MASK, hdr->id) |
-		FIELD_PREP(MSG_TOKEN_ID_MASK, hdr->seq) |
-		FIELD_PREP(MSG_PROTOCOL_ID_MASK, hdr->protocol_id);
-}
-
-/**
- * unpack_scmi_header() - unpacks and records message and protocol id
- *
- * @msg_hdr: 32-bit packed message header sent from the platform
- * @hdr: pointer to header to fetch message and protocol id.
- */
-static inline void unpack_scmi_header(u32 msg_hdr, struct scmi_msg_hdr *hdr)
-{
-	hdr->id = MSG_XTRACT_ID(msg_hdr);
-	hdr->protocol_id = MSG_XTRACT_PROT_ID(msg_hdr);
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
@@ -338,10 +201,10 @@ __scmi_xfer_put(struct scmi_xfers_info *minfo, struct scmi_xfer *xfer)
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
@@ -349,21 +212,14 @@ __scmi_xfer_put(struct scmi_xfers_info *minfo, struct scmi_xfer *xfer)
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
@@ -378,7 +234,7 @@ static void scmi_rx_callback(struct mbox_client *cl, void *m)
 
 	scmi_dump_header_dbg(dev, &xfer->hdr);
 
-	scmi_fetch_response(xfer, mem);
+	info->desc->ops->fetch_response(cinfo, xfer);
 
 	trace_scmi_rx_done(xfer->transfer_id, xfer->hdr.id,
 			   xfer->hdr.protocol_id, xfer->hdr.seq,
@@ -403,28 +259,15 @@ void scmi_xfer_put(const struct scmi_handle *handle, struct scmi_xfer *xfer)
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
@@ -453,29 +296,26 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
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
@@ -484,13 +324,7 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
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
@@ -731,23 +565,12 @@ static int scmi_xfer_info_init(struct scmi_info *sinfo)
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
@@ -758,7 +581,7 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
 	if (cinfo)
 		return 0;
 
-	if (scmi_mailbox_check(np, idx)) {
+	if (!info->desc->ops->chan_available(dev, idx)) {
 		cinfo = idr_find(idr, SCMI_PROTOCOL_BASE);
 		if (unlikely(!cinfo)) /* Possible only if platform has no Rx */
 			return -EINVAL;
@@ -771,36 +594,9 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
 
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
@@ -814,12 +610,12 @@ static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
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
@@ -837,7 +633,7 @@ scmi_create_protocol_device(struct device_node *np, struct scmi_info *info,
 		return;
 	}
 
-	if (scmi_mbox_txrx_setup(info, &sdev->dev, prot_id)) {
+	if (scmi_txrx_setup(info, &sdev->dev, prot_id)) {
 		dev_err(&sdev->dev, "failed to setup transport\n");
 		scmi_device_destroy(sdev);
 		return;
@@ -890,12 +686,6 @@ static int scmi_probe(struct platform_device *pdev)
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
@@ -920,7 +710,7 @@ static int scmi_probe(struct platform_device *pdev)
 	handle->dev = info->dev;
 	handle->version = &info->version;
 
-	ret = scmi_mbox_txrx_setup(info, dev, SCMI_PROTOCOL_BASE);
+	ret = scmi_txrx_setup(info, dev, SCMI_PROTOCOL_BASE);
 	if (ret)
 		return ret;
 
@@ -955,19 +745,9 @@ static int scmi_probe(struct platform_device *pdev)
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
@@ -987,11 +767,11 @@ static int scmi_remove(struct platform_device *pdev)
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
@@ -1043,15 +823,9 @@ static struct attribute *versions_attrs[] = {
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
index 000000000000..ffc7457831e1
--- /dev/null
+++ b/drivers/firmware/arm_scmi/mailbox.c
@@ -0,0 +1,236 @@
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
+#include <linux/processor.h>
+#include <linux/slab.h>
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
+	struct scmi_shared_mem __iomem *shmem = smbox->shmem;
+	struct scmi_xfer *xfer = m;
+
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
+static void rx_callback(struct mbox_client *cl, void *m)
+{
+	struct scmi_mailbox *smbox = client_to_scmi_mailbox(cl);
+	struct scmi_shared_mem __iomem *shmem = smbox->shmem;
+
+	scmi_rx_callback(smbox->cinfo, ioread32(&shmem->msg_header));
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
+	struct scmi_shared_mem __iomem *shmem = smbox->shmem;
+
+	xfer->hdr.status = ioread32(shmem->msg_payload);
+	/* Skip the length of header and status in shmem area i.e 8 bytes */
+	xfer->rx.len = min_t(size_t, xfer->rx.len, ioread32(&shmem->length) - 8);
+
+	/* Take a copy to the rx buffer.. */
+	memcpy_fromio(xfer->rx.buf, shmem->msg_payload + 4, xfer->rx.len);
+}
+
+static bool
+mailbox_poll_done(struct scmi_chan_info *cinfo, struct scmi_xfer *xfer)
+{
+	struct scmi_mailbox *smbox = cinfo->transport_info;
+	struct scmi_shared_mem __iomem *shmem = smbox->shmem;
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
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
