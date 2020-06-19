Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E596200328
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fs9MfhZbRoRy/DMZ2ZmkmC+mxzBCCtqZL5UWqvDddi0=; b=GY8YP1v/87DpTh
	F6MSyqUEmPyUaPDDPPrby66k9AXytJONl//OHYfW9HPP8lQv7v5SDTvRCcq15m3TPoVbLvyLv5h+c
	VGdoPWhWNLhYm5Opx0V0Xg6JFGqpeB4Z7BdkwvYy4imrXTQJTfGJTMm9BsOi+zTaLj5QPT8r4Zimg
	vA7FofZ+jCYRoNMoZACmR+NvHZTmmVVdq7eT/jK7AhrmmqeCJ/U0gXBiYwyHzTWiILkF+g3Hyfr/w
	mpJig5RJkiram2K7MGtgDIjR8LUMe1cF+3Y9AaQr36ZTwx/T6m1GReyEQUORNOVRJJf00VcvCpgWx
	TvGhOw0YQopXqlZRB98A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmBzK-0004Y0-1l; Fri, 19 Jun 2020 08:03:02 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmByO-0003ng-Jy
 for linux-arm-kernel@bombadil.infradead.org; Fri, 19 Jun 2020 08:02:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=jrpWqwr6gxDZXjZjn9e9Oi0WiEuMgPli9MmYhcvxs+A=; b=c9EuuQxBpjoGZa0QscXlKb3yyY
 3giHJXuxFGJukqyVx3nucRYwSWOZVB64LgN3TMAPCjZF3p+j6szR8Tr4/JKs8xfOE2ySq8MES1f96
 DIZKpP6OgqEniVAdXfOIEzar1RBC1U7UBD6HhCFJXlFzUVr2CYoxpS+k+t2ijrKFiktkxZy5Qgn/f
 tqUDJ3ID52k5/NFo8o/Garc99TDD/XIdu8qK+Bkd4+QTWoyjszyfZ/PAFkWIKdX9DQpIGcauWgGE9
 dL4Mz2g+qvS/pmMAu/kJa82aHIWVY/ZnzAGxGWzrw7yQHh/E7H7t+x/cixpqZGG5pG+bRraBUhoDH
 JOCxYnIw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmBvi-00029g-ID
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 07:59:19 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jmBvf-0007WC-UA; Fri, 19 Jun 2020 09:59:15 +0200
Received: from mtr by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jmBvf-0004vi-CA; Fri, 19 Jun 2020 09:59:15 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [RESEND PATCH v3 1/6] soc: xilinx: vcu: drop useless success message
Date: Fri, 19 Jun 2020 09:59:08 +0200
Message-Id: <20200619075913.18900-2-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200619075913.18900-1-m.tretter@pengutronix.de>
References: <20200619075913.18900-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
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
Cc: Dhaval Shah <dshah@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Michal Simek <michal.simek@xilinx.com>, kernel@pengutronix.de,
 Rohit Visavalia <rohit.visavalia@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The message that the driver was successfully probed only adds useless
noise. Drop the message.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/soc/xilinx/xlnx_vcu.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/soc/xilinx/xlnx_vcu.c b/drivers/soc/xilinx/xlnx_vcu.c
index a3aa40996f13..dcd8e7824b06 100644
--- a/drivers/soc/xilinx/xlnx_vcu.c
+++ b/drivers/soc/xilinx/xlnx_vcu.c
@@ -571,8 +571,6 @@ static int xvcu_probe(struct platform_device *pdev)
 
 	dev_set_drvdata(&pdev->dev, xvcu);
 
-	dev_info(&pdev->dev, "%s: Probed successfully\n", __func__);
-
 	return 0;
 
 error_pll_ref:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
