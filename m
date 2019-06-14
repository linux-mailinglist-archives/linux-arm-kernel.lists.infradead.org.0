Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2117045C5A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:13:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EKhj2CZSsQ7iPo7bFMgmOdyaOkXuiVpQWJwYoPL6Etw=; b=XVkxorHR001BDNfnQ/PTtolXIB
	7ybIW0Y13IdAQOPBNj59s0TfdLXAPbdVlUp4s1oEvT/GROkeVhBnp1fhmHvTJ70d1gX4/YTLnsFRp
	eA0PqzN6VJkEQRfFQWiO+BqKO+m51XubYoTQ3nhQtQlNm31X4e9NEv5aUVNKbzVfnUbJev1FQnnm8
	woU1GlWtQNEoFVghDLuwAuc4xJrgVXcw19hhHdsxF/kAJcFXNtQYk+b62G7zk+bijdh4wMG3YcXSo
	EnPCYvz0/3sQgRNVC7XYoH6VHL9fogcSb1+wUHKloZGBWiN5cnp/vXSpFW/1CcC8tQK0X6Hrr/XbJ
	Y99tmzGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbl5R-00046O-1g; Fri, 14 Jun 2019 12:13:41 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl3m-0002p3-6I
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:11:59 +0000
Received: by mail-lf1-x141.google.com with SMTP id 136so1566252lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 05:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=p8PmpzAbRDVJoeBuit/g26TECB2oYt6y7ni9hx4zI8w=;
 b=fQuo2zrpMCuabBlUMf1rVUEvwsHvE6+8jPSDVc+L1fgqjP02c0JsjUR3b/Q93OxSh9
 BCPlEaTD5YEdujGBF2r382+8pudMWyoEfzuvRld7V5akGTlp1xWmjDBqK5inh0H4kxlQ
 y9pGQ7X3pY1NbpsFFPEJE1URn7oWiV+7Qmab96JSQ3exGafQdJedX/DLXL8rzdY3gjgW
 Kn8h6Cj543f30W3md6b8q2aVfuIN/4N+/KgyS4FUQAtQAZ4K33J/izosMSvViZCc9nkk
 fsusU8pRNNOoUowMKCbkCTMOpGMRHhauy7MTB4Cd0XBz/52PQgoe9RPs/wOcPznTpfCS
 alQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=p8PmpzAbRDVJoeBuit/g26TECB2oYt6y7ni9hx4zI8w=;
 b=I7+NjqrXLqV8EkoxNDOGMNLOl1N1PBEO8y/UjVAqxf5/iLZynVk3AGgQ/M4jYb9VYY
 OqhlL01/DdVnxyhag/+Q9+vj9Ru+FGSo5a+2/7brHo7HN3KjXOYwUXIVWUKfd96zqI5T
 szaFf6lro3vWLbN3MMVGK1QgE2K/yvnheb/foQx6Yxbi3v86cvJbuME9jDix9OuNGxMR
 eu1QCLhZRt9eADzh6RfVAVr8vHJvh1h9AUTAM9bFRKl7Wsp0s5n0CVq97ikXuFdUd0ie
 yfpAUAbcqLeL3DnRuzAu1m6eSxbrOQdxxH8paCP37oVK1iWQsvdXVbZ+q1HqhbAPMo86
 besA==
X-Gm-Message-State: APjAAAVTkyEY+UQhBYGAaiEdffUG/9nzrtwRJQWEk1ALeyOKv3illdaO
 1XL3l4skmdcMsTYUyhhZ5lSxiZKP
X-Google-Smtp-Source: APXvYqytig4LM1LLSO65nkrj13abfiZO90k3Hd+raLW/m2R9YpRb/VKxxV8lIaz5AhcKUa1gQnrY8Q==
X-Received: by 2002:a19:f00e:: with SMTP id p14mr4876955lfc.94.1560514316299; 
 Fri, 14 Jun 2019 05:11:56 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id p27sm459683lfh.8.2019.06.14.05.11.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 14 Jun 2019 05:11:55 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH RFC 5/7] serial: imx: set_termios(): preserve RTS state
Date: Fri, 14 Jun 2019 15:11:32 +0300
Message-Id: <1560514294-29111-6-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1560514294-29111-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1560514294-29111-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051158_239389_18093F12 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

imx_set_termios() cleared RTS on every call, now fixed.

Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 8ee910f..de23068 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -1564,6 +1564,13 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 
 	spin_lock_irqsave(&sport->port.lock, flags);
 
+	/*
+	 * Read current UCR2 and save it for future use, then clear all the bits
+	 * except those we will or may need to preserve.
+	 */
+	old_ucr2 = imx_uart_readl(sport, UCR2);
+	ucr2 = old_ucr2 & (UCR2_TXEN | UCR2_RXEN | UCR2_ATEN | UCR2_CTSC);
+
 	ucr2 = UCR2_SRST | UCR2_IRTS;
 	if ((termios->c_cflag & CSIZE) == CS8)
 		ucr2 |= UCR2_WS;
@@ -1633,7 +1640,6 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 	imx_uart_writel(sport,
 			old_ucr1 & ~(UCR1_TXMPTYEN | UCR1_RRDYEN | UCR1_RTSDEN),
 			UCR1);
-	old_ucr2 = imx_uart_readl(sport, UCR2);
 	imx_uart_writel(sport, old_ucr2 & ~UCR2_ATEN, UCR2);
 
 	while (!(imx_uart_readl(sport, USR2) & USR2_TXDC))
@@ -1641,7 +1647,6 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 
 	/* then, disable everything */
 	imx_uart_writel(sport, old_ucr2 & ~(UCR2_TXEN | UCR2_RXEN | UCR2_ATEN), UCR2);
-	old_ucr2 &= (UCR2_TXEN | UCR2_RXEN | UCR2_ATEN);
 
 	/* custom-baudrate handling */
 	div = sport->port.uartclk / (baud * 16);
@@ -1679,8 +1684,7 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 
 	imx_uart_writel(sport, old_ucr1, UCR1);
 
-	/* set the parity, stop bits and data size */
-	imx_uart_writel(sport, ucr2 | old_ucr2, UCR2);
+	imx_uart_writel(sport, ucr2, UCR2);
 
 	if (UART_ENABLE_MS(&sport->port, termios->c_cflag))
 		imx_uart_enable_ms(&sport->port);
-- 
2.10.0.1.g57b01a3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
