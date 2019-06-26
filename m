Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AA456676
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 12:16:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hyDlTsItSP71IhA4jS8kaEJUPrz6iF+E+6zJwrXRTSw=; b=gGmahgylXo7q4w
	g11DPxGh8oniw7YgDRof8vYbjkzCgh7NlbM4OrELelS0V9LYZY55pbZb5kVcaZJimX1e3MbG7hbwW
	AyqqQbKDK6ybJUhnt4avTPYvA18cg23IZaZG8NJ7ABsOhYEmkd783jkXmAynzMJaZj9AZg0i931Km
	R6r02fUza7QhQBT+zYsLRlwvHExRTZeAVQuxpVRevoBtS85OpocJ2G0QAOaWGIMkmL2sBU+UK0drx
	BQ3qBMZoJaSSxNqidxxbjfbRtB327S8Yigd0NhwoaxZnbwyz93Zp1S0+mjeMZOfNHG8M9McQbJR39
	SSIAgEnAzLDHKb8GQpkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg4yf-00011h-Qe; Wed, 26 Jun 2019 10:16:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg4yL-0000uT-Ii
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 10:16:14 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hg4yC-00076e-5q; Wed, 26 Jun 2019 12:16:04 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hg4y7-0006s4-Bh; Wed, 26 Jun 2019 12:15:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-serial@vger.kernel.org
Subject: [PATCH 1/2] serial: imx: remove duplicate handling of CTS change
Date: Wed, 26 Jun 2019 12:15:56 +0200
Message-Id: <20190626101557.26299-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626101557.26299-1-s.hauer@pengutronix.de>
References: <20190626101557.26299-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_031613_664584_FCCE8AD1 
X-CRM114-Status: GOOD (  10.04  )
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
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sergey Organov <sorganov@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We have an interrupt for the CTS input (RTS in FSL speech). Its handler
calls uart_handle_cts_change(), so we shouldn't do this in
imx_uart_mctrl_check() again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/tty/serial/imx.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index a5e80a028e83..0419a084c0ed 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -805,12 +805,8 @@ static void imx_uart_clear_rx_errors(struct imx_port *sport);
 static unsigned int imx_uart_get_hwmctrl(struct imx_port *sport)
 {
 	unsigned int tmp = TIOCM_DSR;
-	unsigned usr1 = imx_uart_readl(sport, USR1);
 	unsigned usr2 = imx_uart_readl(sport, USR2);
 
-	if (usr1 & USR1_RTSS)
-		tmp |= TIOCM_CTS;
-
 	/* in DCE mode DCDIN is always 0 */
 	if (!(usr2 & USR2_DCDIN))
 		tmp |= TIOCM_CAR;
@@ -843,8 +839,6 @@ static void imx_uart_mctrl_check(struct imx_port *sport)
 		sport->port.icount.dsr++;
 	if (changed & TIOCM_CAR)
 		uart_handle_dcd_change(&sport->port, status & TIOCM_CAR);
-	if (changed & TIOCM_CTS)
-		uart_handle_cts_change(&sport->port, status & TIOCM_CTS);
 
 	wake_up_interruptible(&sport->port.state->port.delta_msr_wait);
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
