Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E66E8768C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 15:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8pDiRrdoE1ZrbhNfL2ZMs3A9Ords0+B4xR5+T3pafI0=; b=CGmfrsarCsP4GatdVuKaIrKlM2
	odjxfnGpo0UEkQ6+Q4HNBUmVsIGJVCc0kwb0JuVBurTgVweCQ6OXJprwY3b2QPgRWLGIgUwqCv3qt
	n8DEqpz3p2CrvQ1qGnBXc48rwHOk/aIpTqP+qbLSXnABdlJaK6ntfIo5aEUuzpjjLoaneIjeQHLeW
	YbIJFvsFRkfb0dTTGKmmjigSXzHkNVcNGaS2ULOHwjGZcTwqxVwcK2iXtQmaJPj4BlKx4YC5gTZWY
	jeSCpZ9rj84lUzHoSMzTu2scqFeQmV+qlwtK1IgLjB874OaIzGDIzgcdjQFh+TgNUygmV6wh0UL5X
	HGWD7DzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0Yz-000430-Eu; Fri, 26 Jul 2019 13:47:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0Xx-0003IM-F1
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 13:46:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 84532152D;
 Fri, 26 Jul 2019 06:46:08 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4C3E33F694;
 Fri, 26 Jul 2019 06:46:07 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/6] firmware: arm_scmi: Remove extra check for invalid
 length message responses
Date: Fri, 26 Jul 2019 14:45:28 +0100
Message-Id: <20190726134531.8928-4-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190726134531.8928-1-sudeep.holla@arm.com>
References: <20190726134531.8928-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_064609_618991_E0CD1F5D 
X-CRM114-Status: GOOD (  10.13  )
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

scmi_xfer_get_init ensures both transmit and receive buffer lengths are
within the maximum limits. If receive buffer length is not supplied by
the caller, it's set to the maximum limit value. Receive buffer length
is never modified after that. So there's no need for the extra check
when receive transmit completion for a command essage.

Further, if the response header length is greater than the prescribed
receive buffer length, the response buffer is truncated to the latter.

Reported-by: Jim Quinlan <james.quinlan@broadcom.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/driver.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index b5bc4c7a8fab..6ef652940099 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -230,12 +230,6 @@ static void scmi_rx_callback(struct mbox_client *cl, void *m)
 	xfer = &minfo->xfer_block[xfer_id];
 
 	scmi_dump_header_dbg(dev, &xfer->hdr);
-	/* Is the message of valid length? */
-	if (xfer->rx.len > info->desc->max_msg_size) {
-		dev_err(dev, "unable to handle %zu xfer(max %d)\n",
-			xfer->rx.len, info->desc->max_msg_size);
-		return;
-	}
 
 	scmi_fetch_response(xfer, mem);
 	complete(&xfer->done);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
