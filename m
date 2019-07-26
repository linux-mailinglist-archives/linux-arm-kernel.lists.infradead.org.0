Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61050768CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 15:47:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=95xztBA1wkp5mi52Q1egrKwOjcv2wF0vHgFEVRWvkxM=; b=d41ugVwRNlEDosCJdBxludNF5e
	Apyrof2SGBL2Se6iXiygsGv+JR29MnbqSOWhWuS2jHohIkGOj0G+cNKc6+QXd4vawWGBwtkrud40E
	/SI+OyOCX837uL/TUMbsQJCRRlf+EWN/hWzmERlC0H0xJ+YhLQm+rvlKkqF5HTd3FFJ09AnDqbNtV
	7SmCAz2wKQ2D9V/SajIVFD7haB01Um8VoiPV/cBoNyFCa5czESiT31f+D+cTA3YmWQ+uiNpEUBcWX
	7aaWUo035MYXQLNu/Treh6wc+gV9TIiRS4dttixDPJeuiquKV8sFMiP8MZYzCY97iyEZiMmC7wtJ4
	D2rVCACw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0ZF-0004Iw-5V; Fri, 26 Jul 2019 13:47:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0Xy-0003Gb-OT
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 13:46:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0668915A2;
 Fri, 26 Jul 2019 06:46:10 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B971E3F694;
 Fri, 26 Jul 2019 06:46:08 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/6] firmware: arm_scmi: Fix few trivial typos in comments
Date: Fri, 26 Jul 2019 14:45:29 +0100
Message-Id: <20190726134531.8928-5-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190726134531.8928-1-sudeep.holla@arm.com>
References: <20190726134531.8928-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_064610_892270_68B7BA15 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
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
