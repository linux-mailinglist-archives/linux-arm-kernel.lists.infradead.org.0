Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F729122D35
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 14:44:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I79XgF3IKeRRCuS328+05GnVgayw5ha5lSxvSTUPEyk=; b=SYsgMnOX7+WKuG3ggGIsEzyBC/
	6TCuGBmjCuFp7HuiPm6z6+iOvLtn4fu9OC0Cd/Jo72q2RMYOWwweJooCH7HHQ026XCAMFnfkeO+dr
	i37MJXidGfe9UdRbEYREuY51uu1NG123My5YmjOIUPSTvZFCkgogXbu7FF35ND2NGtWaLLnHG6KXf
	BpMPOuAZ9R3jU1P0CrQxukATDbOI19LJyqAcWMRJmc9ZK40VD3dIleHicFA3x9gAjl984VDT09ZkK
	rGFdydu6AjFs+o4Roq/BSgBHt5C2J0cBMhWANBGV23XCxddnsgEg+QxXkAdUqdyxCgKrWEeiUsI9+
	VVaXp0Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihD9A-0003ck-Ka; Tue, 17 Dec 2019 13:44:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihD8o-0003TG-VU
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 13:44:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 38A3231B;
 Tue, 17 Dec 2019 05:43:56 -0800 (PST)
Received: from e123648.arm.com (unknown [10.37.12.145])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5B7003F719;
 Tue, 17 Dec 2019 05:43:54 -0800 (PST)
From: lukasz.luba@arm.com
To: linux-kernel@vger.kernel.org, sudeep.holla@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] drivers: firmware: scmi: Extend SCMI transport layer
 by trace events
Date: Tue, 17 Dec 2019 13:43:45 +0000
Message-Id: <20191217134345.14004-2-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191217134345.14004-1-lukasz.luba@arm.com>
References: <20191217134345.14004-1-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_054359_124368_4DB97458 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mingo@redhat.com, Lukasz Luba <lukasz.luba@arm.com>,
 james.quinlan@broadcom.com, rostedt@goodmis.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lukasz Luba <lukasz.luba@arm.com>

The SCMI transport layer communicates via mailboxes and shared memory with
firmware running on a microcontroller. It is platform specific how long it
takes to pass a SCMI message. The most sensitive requests are coming from
CPUFreq subsystem, which might be used by the scheduler.
Thus, there is a need to measure these delays and capture anomalies.
This change introduces trace events wrapped around transfer code.

According to Jim's suggestion a unique transfer_id is to distinguish
similar entries which might have the same message id, protocol id and
sequence. This is a case then there are some timeouts in transfers.

Suggested-by: Jim Quinlan <james.quinlan@broadcom.com>
Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
---
 drivers/firmware/arm_scmi/common.h |  2 ++
 drivers/firmware/arm_scmi/driver.c | 18 ++++++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
index 5237c2ff79fe..df35358ff324 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -81,6 +81,7 @@ struct scmi_msg {
 /**
  * struct scmi_xfer - Structure representing a message flow
  *
+ * @transfer_id: Unique ID for debug & profiling purpose
  * @hdr: Transmit message header
  * @tx: Transmit message
  * @rx: Receive message, the buffer should be pre-allocated to store
@@ -90,6 +91,7 @@ struct scmi_msg {
  * @async: pointer to delayed response message received event completion
  */
 struct scmi_xfer {
+	int transfer_id;
 	struct scmi_msg_hdr hdr;
 	struct scmi_msg tx;
 	struct scmi_msg rx;
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 3eb0382491ce..15c5629ad2cd 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -29,6 +29,9 @@
 
 #include "common.h"
 
+#define CREATE_TRACE_POINTS
+#include <trace/events/scmi.h>
+
 #define MSG_ID_MASK		GENMASK(7, 0)
 #define MSG_XTRACT_ID(hdr)	FIELD_GET(MSG_ID_MASK, (hdr))
 #define MSG_TYPE_MASK		GENMASK(9, 8)
@@ -61,6 +64,8 @@ enum scmi_error_codes {
 static LIST_HEAD(scmi_list);
 /* Protection for the entire list */
 static DEFINE_MUTEX(scmi_list_mutex);
+/* Track the unique id for the transfers for debug & profiling purpose */
+static atomic_t transfer_last_id;
 
 /**
  * struct scmi_xfers_info - Structure to manage transfer information
@@ -304,6 +309,7 @@ static struct scmi_xfer *scmi_xfer_get(const struct scmi_handle *handle,
 	xfer = &minfo->xfer_block[xfer_id];
 	xfer->hdr.seq = xfer_id;
 	reinit_completion(&xfer->done);
+	xfer->transfer_id = atomic_inc_return(&transfer_last_id);
 
 	return xfer;
 }
@@ -374,6 +380,10 @@ static void scmi_rx_callback(struct mbox_client *cl, void *m)
 
 	scmi_fetch_response(xfer, mem);
 
+	trace_scmi_rx_done(xfer->transfer_id, xfer->hdr.id,
+			   xfer->hdr.protocol_id, xfer->hdr.seq,
+			   msg_type);
+
 	if (msg_type == MSG_TYPE_DELAYED_RESP)
 		complete(xfer->async_done);
 	else
@@ -439,6 +449,10 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
 	if (unlikely(!cinfo))
 		return -EINVAL;
 
+	trace_scmi_xfer_begin(xfer->transfer_id, xfer->hdr.id,
+			      xfer->hdr.protocol_id, xfer->hdr.seq,
+			      xfer->hdr.poll_completion);
+
 	ret = mbox_send_message(cinfo->chan, xfer);
 	if (ret < 0) {
 		dev_dbg(dev, "mbox send fail %d\n", ret);
@@ -478,6 +492,10 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
 	 */
 	mbox_client_txdone(cinfo->chan, ret);
 
+	trace_scmi_xfer_end(xfer->transfer_id, xfer->hdr.id,
+			    xfer->hdr.protocol_id, xfer->hdr.seq,
+			    xfer->hdr.status);
+
 	return ret;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
