Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F7D624C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 17:46:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zLo0ZWhP5aAC0UgBg+yJiGJB2Yl4U3j7S6+PtE2Nfwc=; b=iwzdvaB1TTt875R5puR3pwYZSz
	+PuSmyc5Cpfe6u2VDbNfHe4lQCQNw1H4iNRmOiE2Rdpf9NhwR8x629oOVEtcs0LiYzmoZZdnBAbuP
	w9Xas+IdEOPIf+EY0yOfC5cGjzGORsR1qF0B4+Arrv2F5wV33xjl8n5s4gPbWkmOc9+o0tzS4HkjB
	Te4KDGgUwDRkVJxx+clfx8qfFw5K2D03K87NEhFdWgs9ENbXyxw086pjQt3hzwAExF6ChHoFCtSUR
	4Uymj9c95pf9v28Nn7WBQPBtoPaZxO+7Od4WNvSlBa0B2S212S5U2c1I43hfewbGLgKMgZRqRd69y
	uLMjhLmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkVq3-0003L8-7e; Mon, 08 Jul 2019 15:45:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkVoL-0000uz-DD
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 15:44:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A85B152B;
 Mon,  8 Jul 2019 08:44:13 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 166063F59C;
 Mon,  8 Jul 2019 08:44:11 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/6] firmware: arm_scmi: Use the term 'message' instead of
 'command'
Date: Mon,  8 Jul 2019 16:43:57 +0100
Message-Id: <20190708154358.16227-6-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190708154358.16227-1-sudeep.holla@arm.com>
References: <20190708154358.16227-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_084413_513064_47513066 
X-CRM114-Status: GOOD (  12.94  )
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

In preparation to adding support for other two types of messages that
SCMI specification mentions, let's replace the term 'command' with the
correct term 'message'.

As per the specification the messages are of 3 types:
commands(synchronous or asynchronous), delayed responses and notifications.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/common.h | 10 +++++-----
 drivers/firmware/arm_scmi/driver.c |  6 +++---
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
index 44fd4f9404a9..4349d836b392 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -48,11 +48,11 @@ struct scmi_msg_resp_prot_version {
 /**
  * struct scmi_msg_hdr - Message(Tx/Rx) header
  *
- * @id: The identifier of the command being sent
- * @protocol_id: The identifier of the protocol used to send @id command
- * @seq: The token to identify the message. when a message/command returns,
- *	the platform returns the whole message header unmodified including
- *	the token
+ * @id: The identifier of the message being sent
+ * @protocol_id: The identifier of the protocol used to send @id message
+ * @seq: The token to identify the message. when a message returns, the]
+ *	platform returns the whole message header unmodified including the
+ *	token
  * @status: Status of the transfer once it's complete
  * @poll_completion: Indicate if the transfer needs to be polled for
  *	completion or interrupt mode is used
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index cac255c418b2..69bf85fea967 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -182,7 +182,7 @@ static inline int scmi_to_linux_errno(int errno)
 static inline void scmi_dump_header_dbg(struct device *dev,
 					struct scmi_msg_hdr *hdr)
 {
-	dev_dbg(dev, "Command ID: %x Sequence ID: %x Protocol: %x\n",
+	dev_dbg(dev, "Message ID: %x Sequence ID: %x Protocol: %x\n",
 		hdr->id, hdr->seq, hdr->protocol_id);
 }
 
@@ -241,7 +241,7 @@ static void scmi_rx_callback(struct mbox_client *cl, void *m)
  * @hdr: pointer to header containing all the information on message id,
  *	protocol id and sequence id.
  *
- * Return: 32-bit packed command header to be sent to the platform.
+ * Return: 32-bit packed message header to be sent to the platform.
  */
 static inline u32 pack_scmi_header(struct scmi_msg_hdr *hdr)
 {
@@ -280,7 +280,7 @@ static void scmi_tx_prepare(struct mbox_client *cl, void *m)
  *
  * @handle: Pointer to SCMI entity handle
  *
- * Helper function which is used by various command functions that are
+ * Helper function which is used by various message functions that are
  * exposed to clients of this driver for allocating a message traffic event.
  *
  * This function can sleep depending on pending requests already in the system
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
