Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42293ADC06
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6FXG8CQwvo3i1Z0dp6rl71YRsOVHmMQb0/wv8U5C034=; b=gJy
	FYmH3/sjUlBoGe6WKe++4rCMHnnuk1l3wq8UEEPGu2vOziAeZZA/1V9Mr5zgLCNzvVSIFNVD9TIm+
	bDsqyZOG290PkItAxJgbGtwPCdBRidB7Sw9PXJj1MeqsYIVWMsKRcIweItgx+NKfc9T6LreA+JdP3
	Qa3kMFZk0y1iD30/JtwIiJAX8p0Q5AgR6vXpsyQaOAwidIozBA1L+UiUkoYJXXLKO4Uphe0fHYsDS
	BYuAYm8OJi8t6Vyu+P+r2vgo+CdyRMNYMvDsRddYGhITslE3sl6Ivm5LSOjzwSbHByy6tY8afnN3d
	Ak+k5KzGLqh2a9cSwYLVZLAAp7etb8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7LUD-00025l-Fu; Mon, 09 Sep 2019 15:21:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7LU1-000251-Qp
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 15:21:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 48A44169E;
 Mon,  9 Sep 2019 08:21:37 -0700 (PDT)
Received: from usa.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0DEAC3F59C;
 Mon,  9 Sep 2019 08:21:35 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
 Etienne Carriere <etienne.carriere@linaro.org>
Subject: [PATCH -next] firmware: arm_scmi: reset: fix reset_state assignment
 in scmi_domain_reset
Date: Mon,  9 Sep 2019 16:21:30 +0100
Message-Id: <20190909152130.5021-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_082137_912000_408A6892 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the copy paste typo that incorrectly assigns domain_id with the
passed 'state' parameter instead of reset_state.

Fixes: 95a15d80aa0d ("firmware: arm_scmi: Add RESET protocol in SCMI v2.0")
Reported-by: Etienne Carriere <etienne.carriere@linaro.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/reset.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/arm_scmi/reset.c b/drivers/firmware/arm_scmi/reset.c
index 64cc81915581..ab42c21c5517 100644
--- a/drivers/firmware/arm_scmi/reset.c
+++ b/drivers/firmware/arm_scmi/reset.c
@@ -150,7 +150,7 @@ static int scmi_domain_reset(const struct scmi_handle *handle, u32 domain,
 	dom = t->tx.buf;
 	dom->domain_id = cpu_to_le32(domain);
 	dom->flags = cpu_to_le32(flags);
-	dom->domain_id = cpu_to_le32(state);
+	dom->reset_state = cpu_to_le32(state);

 	if (rdom->async_reset)
 		ret = scmi_do_xfer_with_response(handle, t);
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
