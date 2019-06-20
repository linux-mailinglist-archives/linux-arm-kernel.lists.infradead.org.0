Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9B74D0BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 16:48:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ve2ZXChfkCywBwo2Nr1l6wXPgX1y/GKog2Ubuk3HjWA=; b=RC8g30JEBJYT3L38reBJ7DxmAX
	VDff0DLWPIpAbYxFGRHROF1NLjdHYz/Sc87IbKLOYPTIbMEYIiFcpvb6Y2X0ijDwBqg+0Ubctig1I
	xvYmJh+GHrN6v9i5Yf1j868tD/DD+nrZ6uS9Y6colwzXkPtqdnewlVFpHsAFpbDDyxwq9DIau0QHV
	OH/GV/DzKXfKbHO2sebTXBUtOWP/zPNiyLRqlHNYlgKAqOTHGicYaqGwYxn1w3ISw6JYAY78bg8f5
	hrX/UTRt98FS0bj7HXNdTyHUvP625MWnS+UXGpWe6f89KY2aPZRe6eBokdOPkjs2rmusFY4hg+FJh
	Q/2BAhoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdyMz-00042q-4Q; Thu, 20 Jun 2019 14:48:57 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyMD-0003ix-LW
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 14:48:10 +0000
Received: by mail-lj1-x243.google.com with SMTP id 16so2948725ljv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 07:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SMvfNXrBGoXH5Rlv9ONYJ/L8T8ix7gsLxKZmilMNxjo=;
 b=aqRlB+88y7te1IyXTJCENFWgDaJpY4yVvKtbZbxKe26ehEh2Xo9cv16sRswEyd1jD3
 DtKwsymBxxPKb1vvY8jYXdo6bo6sgsQFjIlwHGGgcsLOMEWMQW1b2kP/+VP8FQI24AKL
 mbm54fHZ9EqlQC76uDpkj430XOanlM7xc1lxJQi81T+4l1SmY1bTj3yuW65KdPkJXD5I
 5yvmA8XLP7qkEHuvHbm7XhJtPUQACMxxWUeIZ4KCTM/ktS61iRM+Jsnvggo0XHG1gczY
 IiOYjKMOtcOrILvlt8XDH34ictcBvOi+O4R5oB6oFREYtUgiFxhLD7lO3RJsen1Gs25k
 y3HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SMvfNXrBGoXH5Rlv9ONYJ/L8T8ix7gsLxKZmilMNxjo=;
 b=QFHaunApYoOkiKeLkir0ZFvwqBZzQQrv3MN/s8olEhHUlPalS9HoZlcfCeW0WXhmXh
 1Iw6ezTBCmtdaVzvNRSbPdTcBgKWsEuGLOyOJJ0RybGpumKm2xIuPD0XNWm3aMUwifxZ
 ppZfI5iihzlRLRx2K7lgPb9Xa4qxiEdaIMWOM6rgbnzxnXJabAv0MonotSh+t/AdgpSk
 iiSSF1oDKqaiMJS9Tb6Fs4mektlwCL6Olq2qbb4ceIUp+lZ2bMhqlgpP7YO9jZcVK+Am
 FUVY4VgBv1mRULCqFP91y3R8XHZXDNMN44Qp7oeoJNLepv+0rILTtL5yXAumd0VSR8fG
 wTxQ==
X-Gm-Message-State: APjAAAWQxx/SjBbCxyFwqx9xoL3cgkq/Kx2istDSmyzAw9jOOYiYB6oi
 j6vU8XH78HBOHl8ZZkTBOiI=
X-Google-Smtp-Source: APXvYqzDfRIywJKMMIfRolNAT3UYVW4ndj63y5PejziUGG/Me/WSmmsouEJI9FwyllAa+MIvX/MpGA==
X-Received: by 2002:a2e:8559:: with SMTP id u25mr22892247ljj.224.1561042087903; 
 Thu, 20 Jun 2019 07:48:07 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id f10sm3577768ljk.95.2019.06.20.07.48.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 07:48:07 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH RFC v1 1/7] serial: imx: fix locking in set_termios()
Date: Thu, 20 Jun 2019 17:47:47 +0300
Message-Id: <1561042073-617-2-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1561042073-617-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561042073-617-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_074809_712419_AFB0C152 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

imx_uart_set_termios() called imx_uart_rts_active(), or
imx_uart_rts_inactive() before taking port->port.lock.

As a consequence, sport->port.mctrl that these functions modify
could have been changed without holding port->port.lock.

Moved locking of port->port.lock above the calls to fix the issue.

Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index dff75dc..1055124 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -383,6 +383,7 @@ static void imx_uart_ucrs_restore(struct imx_port *sport,
 }
 #endif
 
+/* called with port.lock taken and irqs caller dependent */
 static void imx_uart_rts_active(struct imx_port *sport, u32 *ucr2)
 {
 	*ucr2 &= ~(UCR2_CTSC | UCR2_CTS);
@@ -391,6 +392,7 @@ static void imx_uart_rts_active(struct imx_port *sport, u32 *ucr2)
 	mctrl_gpio_set(sport->gpios, sport->port.mctrl);
 }
 
+/* called with port.lock taken and irqs caller dependent */
 static void imx_uart_rts_inactive(struct imx_port *sport, u32 *ucr2)
 {
 	*ucr2 &= ~UCR2_CTSC;
@@ -400,6 +402,7 @@ static void imx_uart_rts_inactive(struct imx_port *sport, u32 *ucr2)
 	mctrl_gpio_set(sport->gpios, sport->port.mctrl);
 }
 
+/* called with port.lock taken and irqs caller dependent */
 static void imx_uart_rts_auto(struct imx_port *sport, u32 *ucr2)
 {
 	*ucr2 |= UCR2_CTSC;
@@ -1550,6 +1553,16 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 		old_csize = CS8;
 	}
 
+	del_timer_sync(&sport->timer);
+
+	/*
+	 * Ask the core to calculate the divisor for us.
+	 */
+	baud = uart_get_baud_rate(port, termios, old, 50, port->uartclk / 16);
+	quot = uart_get_divisor(port, baud);
+
+	spin_lock_irqsave(&sport->port.lock, flags);
+
 	if ((termios->c_cflag & CSIZE) == CS8)
 		ucr2 = UCR2_WS | UCR2_SRST | UCR2_IRTS;
 	else
@@ -1593,16 +1606,6 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 			ucr2 |= UCR2_PROE;
 	}
 
-	del_timer_sync(&sport->timer);
-
-	/*
-	 * Ask the core to calculate the divisor for us.
-	 */
-	baud = uart_get_baud_rate(port, termios, old, 50, port->uartclk / 16);
-	quot = uart_get_divisor(port, baud);
-
-	spin_lock_irqsave(&sport->port.lock, flags);
-
 	sport->port.read_status_mask = 0;
 	if (termios->c_iflag & INPCK)
 		sport->port.read_status_mask |= (URXD_FRMERR | URXD_PRERR);
-- 
2.10.0.1.g57b01a3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
