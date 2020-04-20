Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D41311B0FF1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=W1xvV63N5HsSpbWkznU7AG3nLaIVDbGB9mPjNYI+vZI=; b=kxDA6djcC8JEIyhdcNxGEqQYRO
	2OAG8QunJEwZDm5H+ENX+6B+VSveOgYmuuCjs+owkZD0uqqBYaJR3rmhIUCWgvPVOhX+cm9G+2Gmg
	YFMxQF84RFM5u/aTeuEqQkDlMLbzdnJ0gzjs3Tr9SdLpMZAfNDOwnyaSS1AYeDRKDplLDYB70nv/m
	VZ3FXz2q1vuj5Fdg/wzUCKnpApOnXe62cnMFdojW6qIg/NUwqgDhAQwcXwTIqc2yPEP2RJw7kJA1G
	5uyAzTdI/IRZJh11zoAJn5Qzck8tZZi1M4hXpJaLrfcfm0jaRZOutRfXfpo0WBLPN0Y+wzY5BPQj5
	momxaA6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYHl-0000BI-ET; Mon, 20 Apr 2020 15:24:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYGi-0007jF-Kd
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:23:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A9A30C14;
 Mon, 20 Apr 2020 08:23:29 -0700 (PDT)
Received: from e120937-lin.home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F19AE3F73D;
 Mon, 20 Apr 2020 08:23:28 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/4] firmware: arm_scmi: Rename .clear_notification()
 transport_ops
Date: Mon, 20 Apr 2020 16:23:12 +0100
Message-Id: <20200420152315.21008-2-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200420152315.21008-1-cristian.marussi@arm.com>
References: <20200420152315.21008-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_082332_757305_3B8B88E2 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: cristian.marussi@arm.com, sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SCMI transport operation .clear_notification() is indeed a generic method
to clear the channel in a transport dependent way: as such it could be a
useful helper also in other contexts.

Rename such method as .clear_channel(), renaming accordingly also its
already existent call-sites.

No functional change.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 drivers/firmware/arm_scmi/common.h  | 6 +++---
 drivers/firmware/arm_scmi/driver.c  | 4 ++--
 drivers/firmware/arm_scmi/mailbox.c | 6 +++---
 drivers/firmware/arm_scmi/shmem.c   | 2 +-
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
index 07eb33c1576b..31fe5a22a011 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -179,7 +179,7 @@ struct scmi_chan_info {
  * @mark_txdone: Callback to mark tx as done
  * @fetch_response: Callback to fetch response
  * @fetch_notification: Callback to fetch notification
- * @clear_notification: Callback to clear a pending notification
+ * @clear_channel: Callback to clear a channel
  * @poll_done: Callback to poll transfer status
  */
 struct scmi_transport_ops {
@@ -194,7 +194,7 @@ struct scmi_transport_ops {
 			       struct scmi_xfer *xfer);
 	void (*fetch_notification)(struct scmi_chan_info *cinfo,
 				   size_t max_len, struct scmi_xfer *xfer);
-	void (*clear_notification)(struct scmi_chan_info *cinfo);
+	void (*clear_channel)(struct scmi_chan_info *cinfo);
 	bool (*poll_done)(struct scmi_chan_info *cinfo, struct scmi_xfer *xfer);
 };
 
@@ -232,6 +232,6 @@ void shmem_fetch_response(struct scmi_shared_mem __iomem *shmem,
 			  struct scmi_xfer *xfer);
 void shmem_fetch_notification(struct scmi_shared_mem __iomem *shmem,
 			      size_t max_len, struct scmi_xfer *xfer);
-void shmem_clear_notification(struct scmi_shared_mem __iomem *shmem);
+void shmem_clear_channel(struct scmi_shared_mem __iomem *shmem);
 bool shmem_poll_done(struct scmi_shared_mem __iomem *shmem,
 		     struct scmi_xfer *xfer);
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 332edf1b09fc..90c7a0bb62ef 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -213,7 +213,7 @@ static void scmi_handle_notification(struct scmi_chan_info *cinfo, u32 msg_hdr)
 	if (IS_ERR(xfer)) {
 		dev_err(dev, "failed to get free message slot (%ld)\n",
 			PTR_ERR(xfer));
-		info->desc->ops->clear_notification(cinfo);
+		info->desc->ops->clear_channel(cinfo);
 		return;
 	}
 
@@ -228,7 +228,7 @@ static void scmi_handle_notification(struct scmi_chan_info *cinfo, u32 msg_hdr)
 
 	__scmi_xfer_put(minfo, xfer);
 
-	info->desc->ops->clear_notification(cinfo);
+	info->desc->ops->clear_channel(cinfo);
 }
 
 static void scmi_handle_response(struct scmi_chan_info *cinfo,
diff --git a/drivers/firmware/arm_scmi/mailbox.c b/drivers/firmware/arm_scmi/mailbox.c
index 19ee058f9f44..6998dc86b5ce 100644
--- a/drivers/firmware/arm_scmi/mailbox.c
+++ b/drivers/firmware/arm_scmi/mailbox.c
@@ -166,11 +166,11 @@ static void mailbox_fetch_notification(struct scmi_chan_info *cinfo,
 	shmem_fetch_notification(smbox->shmem, max_len, xfer);
 }
 
-static void mailbox_clear_notification(struct scmi_chan_info *cinfo)
+static void mailbox_clear_channel(struct scmi_chan_info *cinfo)
 {
 	struct scmi_mailbox *smbox = cinfo->transport_info;
 
-	shmem_clear_notification(smbox->shmem);
+	shmem_clear_channel(smbox->shmem);
 }
 
 static bool
@@ -189,7 +189,7 @@ static struct scmi_transport_ops scmi_mailbox_ops = {
 	.mark_txdone = mailbox_mark_txdone,
 	.fetch_response = mailbox_fetch_response,
 	.fetch_notification = mailbox_fetch_notification,
-	.clear_notification = mailbox_clear_notification,
+	.clear_channel = mailbox_clear_channel,
 	.poll_done = mailbox_poll_done,
 };
 
diff --git a/drivers/firmware/arm_scmi/shmem.c b/drivers/firmware/arm_scmi/shmem.c
index a5a5d0f6bf86..0e3eaea5d852 100644
--- a/drivers/firmware/arm_scmi/shmem.c
+++ b/drivers/firmware/arm_scmi/shmem.c
@@ -77,7 +77,7 @@ void shmem_fetch_notification(struct scmi_shared_mem __iomem *shmem,
 	memcpy_fromio(xfer->rx.buf, shmem->msg_payload, xfer->rx.len);
 }
 
-void shmem_clear_notification(struct scmi_shared_mem __iomem *shmem)
+void shmem_clear_channel(struct scmi_shared_mem __iomem *shmem)
 {
 	iowrite32(SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE, &shmem->channel_status);
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
