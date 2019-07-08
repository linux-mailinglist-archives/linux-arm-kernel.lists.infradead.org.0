Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC93624B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 17:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=95xztBA1wkp5mi52Q1egrKwOjcv2wF0vHgFEVRWvkxM=; b=rlmzWQf9kpT/ib4sde7+QMkvGA
	ienso7BufkYJwynXXZOu7vG/aKeaTpMs7ys1N85scrBoireWZvzRM9eyNlga7FOy2nMLSFzgKN53b
	cyMeuyyrhN/Q5O6+N+mUOMMDQYCMIFl0e0uNoZ/1Vd6vduA9X9wenjWFSUGOVOLDqCBWi1k3Fdop/
	PjOyNkW68oKgtFgTRDjLlUGd6vjYq5MdIHZsPPW+g+MSCArAgVLtXv3JzRNlzjdiGM68MqN/VLaQF
	qU0iWpS9TJ+7AFHcR48FS29QSePforrmrRrMXZG7DnWjK7GcAlUgwB1lJ1yZ6b7UYGi5JPpmNJSs9
	8eaUDAPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkVpp-00036l-66; Mon, 08 Jul 2019 15:45:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkVoK-0000tO-Eo
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 15:44:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D6BBE1516;
 Mon,  8 Jul 2019 08:44:11 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CACB43F59C;
 Mon,  8 Jul 2019 08:44:10 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/6] firmware: arm_scmi: Fix few trivial typos in comments
Date: Mon,  8 Jul 2019 16:43:56 +0100
Message-Id: <20190708154358.16227-5-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190708154358.16227-1-sudeep.holla@arm.com>
References: <20190708154358.16227-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_084412_544921_EE9D8E91 
X-CRM114-Status: GOOD (  10.84  )
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

While adding new comments found couple of typos that are better fixed.

s/informfation/information/
s/statues/status/

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 6ef652940099..cac255c418b2 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -86,7 +86,7 @@ struct scmi_desc {
 };
 
 /**
- * struct scmi_chan_info - Structure representing a SCMI channel informfation
+ * struct scmi_chan_info - Structure representing a SCMI channel information
  *
  * @cl: Mailbox Client
  * @chan: Transmit/Receive mailbox channel
@@ -190,7 +190,7 @@ static void scmi_fetch_response(struct scmi_xfer *xfer,
 				struct scmi_shared_mem __iomem *mem)
 {
 	xfer->hdr.status = ioread32(mem->msg_payload);
-	/* Skip the length of header and statues in payload area i.e 8 bytes*/
+	/* Skip the length of header and status in payload area i.e 8 bytes */
 	xfer->rx.len = min_t(size_t, xfer->rx.len, ioread32(&mem->length) - 8);
 
 	/* Take a copy to the rx buffer.. */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
