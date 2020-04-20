Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C291B0FEF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xPzqVxamvWrw7zVuBLlM1VMiKIg0SrxwaIe1DUxVCkE=; b=E+V0HzY6BBiRNSfPKi+p9E/fkB
	pXrCYWJPjdIBSbBFp5YWabfzXHzFvRpELHVggr7nX9BJx2sg0aP39P/kn9Rw0CdAEWir3o7x90/zv
	IX5kFM8OAFLw4XLNodY/vq+spU+9Zhqf17WSlOg7qk/hEyqWD5w8igyhAHVcFZU36SfeJCsr6oA6n
	O9wGSj0CUx3dC1ukcpx2LA8W7/U/Tp+EKB3z2axtY/hMwvvy/8xQU7uc8LpqmNGWxnBCN86JVqGf0
	Oz8WfIu22uCfGtaKNM/FZqqfc2hYH96uwxvQXB5BMlFuYnMaW6M6yEa4I0miw2W9/5Dm4qypVVP/B
	MzvF2lpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYHJ-0008Aq-QE; Mon, 20 Apr 2020 15:24:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYGi-0007kD-WE
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:23:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A3FCA11D4;
 Mon, 20 Apr 2020 08:23:32 -0700 (PDT)
Received: from e120937-lin.home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DFC283F73D;
 Mon, 20 Apr 2020 08:23:31 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/4] firmware: arm_scmi: Fix handling of unexpected delayed
 responses
Date: Mon, 20 Apr 2020 16:23:15 +0100
Message-Id: <20200420152315.21008-5-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200420152315.21008-1-cristian.marussi@arm.com>
References: <20200420152315.21008-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_082333_070882_10540150 
X-CRM114-Status: GOOD (  10.59  )
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

Upon reception of an unexpected bogus delayed response, clear the channel
and bail-out safely.

Fixes: 4d09852b6f01 ("firmware: arm_scmi: Add support for notifications message processing")
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 drivers/firmware/arm_scmi/driver.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 07de196f15aa..0146332d06a1 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -247,6 +247,21 @@ static void scmi_handle_response(struct scmi_chan_info *cinfo,
 	}
 
 	xfer = &minfo->xfer_block[xfer_id];
+	/*
+	 * Even if a response was indeed expected on this slot at this point,
+	 * a buggy platform could wrongly reply feeding us an unexpected
+	 * delayed response we're not prepared to handle: bail-out safely
+	 * blaming fw guys.
+	 */
+	if (unlikely(msg_type == MSG_TYPE_DELAYED_RESP && !xfer->async_done)) {
+		dev_err(dev,
+			"Delayed Response for %d not expected! Buggy FW ?\n",
+			xfer_id);
+		info->desc->ops->clear_channel(cinfo);
+		/* It was unexpected, so nobody will clear the xfer if not us */
+		__scmi_xfer_put(minfo, xfer);
+		return;
+	}
 
 	scmi_dump_header_dbg(dev, &xfer->hdr);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
