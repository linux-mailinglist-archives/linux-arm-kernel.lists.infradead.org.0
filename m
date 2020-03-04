Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C9B17952E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 17:28:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YEAnPZNZX+D12Xl1bLJuFqVHxTvSiG1nlpvWGrQki1o=; b=Do70cl6U45WfAeUP5Gfqj0hDVJ
	btsILRNZbHQA8lKEziVAwYEesZI6CzMl3Ud5cyLSWHHkMb9o9NLoMjrl0k949Zql2jilw/Gj3XxJ4
	NFsYltNrlUAxNKVLCr7N6cHFa5yx4hocThV4b/4NN6cr3cnAc36WbRs/8/MEj4cczK0nAmpFcP8h7
	HLkXG43L54Kuu1u15Fko9i/ZNziLubuJHWUuKrOGt1Xf9QYHIu+25vWdLgW9raLIaxti4eTyKL7BT
	Txm2lzjKWwYsrOY2c+n03GU0VVdhzSVfPpmbMJuk39Wn/zK4ox4srXeaHUXG29WHYG07J4cp6lJJU
	VIHKNhWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9WsG-0003ui-8R; Wed, 04 Mar 2020 16:27:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Wr3-0002wI-E7
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 16:26:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1506C1063;
 Wed,  4 Mar 2020 08:26:40 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 164783F6CF;
 Wed,  4 Mar 2020 08:26:38 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 03/13] firmware: arm_scmi: Add notifications support in
 transport layer
Date: Wed,  4 Mar 2020 16:25:48 +0000
Message-Id: <20200304162558.48836-4-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200304162558.48836-1-cristian.marussi@arm.com>
References: <20200304162558.48836-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_082641_572877_60651DD1 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Jonathan.Cameron@Huawei.com, cristian.marussi@arm.com,
 james.quinlan@broadcom.com, lukasz.luba@arm.com, sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add common transport-layer methods to:
 - fetch a notification instead of a response
 - clear a pending notification

Add also all the needed support in mailbox/shmem transports.

Reviewed-by: Viresh Kumar <viresh.kumar@linaro.org>
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 drivers/firmware/arm_scmi/common.h  |  8 ++++++++
 drivers/firmware/arm_scmi/mailbox.c | 17 +++++++++++++++++
 drivers/firmware/arm_scmi/shmem.c   | 15 +++++++++++++++
 3 files changed, 40 insertions(+)

diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
index 5ac06469b01c..3c2e5d0d7b68 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -178,6 +178,8 @@ struct scmi_chan_info {
  * @send_message: Callback to send a message
  * @mark_txdone: Callback to mark tx as done
  * @fetch_response: Callback to fetch response
+ * @fetch_notification: Callback to fetch notification
+ * @clear_notification: Callback to clear a pending notification
  * @poll_done: Callback to poll transfer status
  */
 struct scmi_transport_ops {
@@ -190,6 +192,9 @@ struct scmi_transport_ops {
 	void (*mark_txdone)(struct scmi_chan_info *cinfo, int ret);
 	void (*fetch_response)(struct scmi_chan_info *cinfo,
 			       struct scmi_xfer *xfer);
+	void (*fetch_notification)(struct scmi_chan_info *cinfo,
+				   size_t max_len, struct scmi_xfer *xfer);
+	void (*clear_notification)(struct scmi_chan_info *cinfo);
 	bool (*poll_done)(struct scmi_chan_info *cinfo, struct scmi_xfer *xfer);
 };
 
@@ -222,5 +227,8 @@ void shmem_tx_prepare(struct scmi_shared_mem __iomem *shmem,
 u32 shmem_read_header(struct scmi_shared_mem __iomem *shmem);
 void shmem_fetch_response(struct scmi_shared_mem __iomem *shmem,
 			  struct scmi_xfer *xfer);
+void shmem_fetch_notification(struct scmi_shared_mem __iomem *shmem,
+			      size_t max_len, struct scmi_xfer *xfer);
+void shmem_clear_notification(struct scmi_shared_mem __iomem *shmem);
 bool shmem_poll_done(struct scmi_shared_mem __iomem *shmem,
 		     struct scmi_xfer *xfer);
diff --git a/drivers/firmware/arm_scmi/mailbox.c b/drivers/firmware/arm_scmi/mailbox.c
index 73077bbc4ad9..19ee058f9f44 100644
--- a/drivers/firmware/arm_scmi/mailbox.c
+++ b/drivers/firmware/arm_scmi/mailbox.c
@@ -158,6 +158,21 @@ static void mailbox_fetch_response(struct scmi_chan_info *cinfo,
 	shmem_fetch_response(smbox->shmem, xfer);
 }
 
+static void mailbox_fetch_notification(struct scmi_chan_info *cinfo,
+				       size_t max_len, struct scmi_xfer *xfer)
+{
+	struct scmi_mailbox *smbox = cinfo->transport_info;
+
+	shmem_fetch_notification(smbox->shmem, max_len, xfer);
+}
+
+static void mailbox_clear_notification(struct scmi_chan_info *cinfo)
+{
+	struct scmi_mailbox *smbox = cinfo->transport_info;
+
+	shmem_clear_notification(smbox->shmem);
+}
+
 static bool
 mailbox_poll_done(struct scmi_chan_info *cinfo, struct scmi_xfer *xfer)
 {
@@ -173,6 +188,8 @@ static struct scmi_transport_ops scmi_mailbox_ops = {
 	.send_message = mailbox_send_message,
 	.mark_txdone = mailbox_mark_txdone,
 	.fetch_response = mailbox_fetch_response,
+	.fetch_notification = mailbox_fetch_notification,
+	.clear_notification = mailbox_clear_notification,
 	.poll_done = mailbox_poll_done,
 };
 
diff --git a/drivers/firmware/arm_scmi/shmem.c b/drivers/firmware/arm_scmi/shmem.c
index ca0ffd302ea2..e1ab05be90e3 100644
--- a/drivers/firmware/arm_scmi/shmem.c
+++ b/drivers/firmware/arm_scmi/shmem.c
@@ -67,6 +67,21 @@ void shmem_fetch_response(struct scmi_shared_mem __iomem *shmem,
 	memcpy_fromio(xfer->rx.buf, shmem->msg_payload + 4, xfer->rx.len);
 }
 
+void shmem_fetch_notification(struct scmi_shared_mem __iomem *shmem,
+			      size_t max_len, struct scmi_xfer *xfer)
+{
+	/* Skip only the length of header in shmem area i.e 4 bytes */
+	xfer->rx.len = min_t(size_t, max_len, ioread32(&shmem->length) - 4);
+
+	/* Take a copy to the rx buffer.. */
+	memcpy_fromio(xfer->rx.buf, shmem->msg_payload, xfer->rx.len);
+}
+
+void shmem_clear_notification(struct scmi_shared_mem __iomem *shmem)
+{
+	iowrite32(SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE, &shmem->channel_status);
+}
+
 bool shmem_poll_done(struct scmi_shared_mem __iomem *shmem,
 		     struct scmi_xfer *xfer)
 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
