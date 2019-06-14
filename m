Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAABC4564D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 09:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LRwVGmFdruTOFwLkqWame4tLg0vrIoqPFOGddiMhDIY=; b=oQUIplYP9FBmw5
	3EHg6kWei/gMZpjdomcEGkSkkYenmKwL6MuozX9WbGZfUtFc+eTwbO4/ErqhoBu07jD5K04wE7a/1
	h4YAetjL4M3gwBDaaxbsjH35ii6GJLnM6eBP3807uXOXiLSSvUH858tdxhu8n7Mwrh1dy/whO7euK
	yL4V7wjI3UZ37UW3ET6cGyEJvID0dh4o9M9S+7BYD2rMkEo77nAAVroH2zNym2VkBZuzUtH3zLkEa
	USTn2mvsJkPX76Dn5BQOXT3s1dlw3zyKIL8cOpComiVpo0/8n0aDYL+zNb6/DG9TB9zJHp9ai/6Ta
	nm8TZ8ZMmSz/qvmT6HoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbgdO-00082o-0z; Fri, 14 Jun 2019 07:28:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbgd9-00081s-Ap
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 07:28:12 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hbgd3-0001vY-ER; Fri, 14 Jun 2019 09:28:05 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hbgd1-0001Jk-UL; Fri, 14 Jun 2019 09:28:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-serial@vger.kernel.org
Subject: [PATCH] serial: imx: fix RTS/CTS setting
Date: Fri, 14 Jun 2019 09:28:01 +0200
Message-Id: <20190614072801.3187-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_002811_371511_E3ECCA4B 
X-CRM114-Status: GOOD (  15.40  )
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
Cc: kernel@pengutronix.de, Sascha Hauer <s.hauer@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The correct setting of the RTS pin depends on the CRTSCTS termios setting:

- When CRTSCTS is disabled then RTS shall be controlled by the TIOCM_RTS
  flag.
- When CRTSCTS is enabled the expected behaviour of the RTS pin is:
  - When TIOCM_RTS is set then let the receiver control RTS.
  - When the TIOCM_RTS flag is cleared then RTS shall be deasserted (to let
    the upper layers throttle the transfer even when the FIFO in the UART has
    enough space).

This patch fixes this behaviour. Previously the RTS pin has always been
controlled by the receiver once the TIOCM_RTS flag was set and the CRTSCTS
setting hasn't been taken into account.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/tty/serial/imx.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 8b752e895053..0eddca6455ad 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -216,6 +216,7 @@ struct imx_port {
 	unsigned int		dma_is_enabled:1;
 	unsigned int		dma_is_rxing:1;
 	unsigned int		dma_is_txing:1;
+	unsigned int		crtscts:1;
 	struct dma_chan		*dma_chan_rx, *dma_chan_tx;
 	struct scatterlist	rx_sgl, tx_sgl[2];
 	void			*rx_buf;
@@ -967,9 +968,18 @@ static void imx_uart_set_mctrl(struct uart_port *port, unsigned int mctrl)
 		u32 ucr2;
 
 		ucr2 = imx_uart_readl(sport, UCR2);
+
 		ucr2 &= ~(UCR2_CTS | UCR2_CTSC);
-		if (mctrl & TIOCM_RTS)
-			ucr2 |= UCR2_CTS | UCR2_CTSC;
+
+		if (mctrl & TIOCM_RTS) {
+			if (sport->crtscts)
+				/* let the receiver control RTS */
+				ucr2 |= UCR2_CTSC;
+			else
+				/* Force RTS active */
+				ucr2 |= UCR2_CTS;
+		}
+
 		imx_uart_writel(sport, ucr2, UCR2);
 	}
 
@@ -1554,6 +1564,11 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 	else
 		ucr2 = UCR2_SRST | UCR2_IRTS;
 
+	if (termios->c_cflag & CRTSCTS)
+		sport->crtscts = true;
+	else
+		sport->crtscts = false;
+
 	if (termios->c_cflag & CRTSCTS) {
 		if (sport->have_rtscts) {
 			ucr2 &= ~UCR2_IRTS;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
