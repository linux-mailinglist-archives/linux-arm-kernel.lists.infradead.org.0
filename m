Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F1A56B9C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 16:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=do4VjB5pGYjSsOk+Y8Q+prXU9sTSmVK+NkzPutPpnRs=; b=i6o48SLtQszXkAadzXjocPmnEI
	610qY0KSZFcQaZEjOQ7c8s7bMYPvdy095C7SVhH3IdqfQldudVHLsWZPKH2EJKUV2uKKF2V04ZBPw
	Wr8qgsa/wOuNxThF8PxK1OqhVQNkeLKm7MkTFYP/OwWAGZovDGFD9uiK91N3zurdWK37z4YSKLy9w
	ZzO8AMt47Ato1Uy3bMJhBsr1XYlT4QtkEwHBzvGTzHqfeY9bSwv6Trn+adOQ61JWiGlheqPrb6Q5I
	ryzFTyreC0M3euFJ/KEvXyLUkB6PPo5oltnTu5LyQh5iYVUS1epC9jN+2Ydnt9TNCJI38w9wlhgAT
	kNk1alKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8hO-0004CL-Ml; Wed, 26 Jun 2019 14:14:58 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8gl-0003xx-Jm
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 14:14:20 +0000
Received: by mail-lj1-x242.google.com with SMTP id m23so2356351lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 07:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bZEuBr/u7QmcmUUX/8Ym5nImEHkVz1m2bXUhPQcNDuE=;
 b=PSS223db/d4jR+7QIlHArthBCcpQqnYC18l7YmJGLgfztQImucQ9dT1X9xs0qtTis2
 gYnkmfT5qfyFRpplR2r+qA0NX5D3VfPlGczY1z1dyzCrMrGQF/rClvOTdgW72zWSUs4L
 Kpn2C4UfaJxv91FtrCm7Tioe0NYV4xzlllwqtJTY1qgvPfwSxZ2DtY1o9G1KJfa0dFO/
 2R3o79DIoEe2KhqfXlq44zZCe6YiMLYeJCWp3hyGx8LCFsyhwDBj/YOrCKltKhcIR+n5
 AeBGt9Iy4xR8Wqgh70rpydWSZ+V4iP2y/LTSIR6uzbdT/ulcZ6Iw0GqrwyLi9NDWuLH+
 kPhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bZEuBr/u7QmcmUUX/8Ym5nImEHkVz1m2bXUhPQcNDuE=;
 b=cS+TVFPMEO/A6IWFnKyPCRDBXldO0du5Lgr9EydUHrP6xsrL4eDy/089Xz3Sc6am1e
 kfJKpPHpZovBffYBJoLiHzNo2yHt/r1qf9wWUL/zs3OEe2b4dMdGpseVZUHtvJE76wB6
 YUAsTypf1QyX7U2k7i6A+fcL2cLmlnwOs+6PUwcagNiGP1v+H9hE5w7bU8wikzLLVKDl
 L7t4yzzU3pGRR9VUGn4mlMvaiIVpR4sb637lvs86YQAcgeCbXXtvajytT5N2mToeqoEp
 Yi/UbWhEEKf1ZFWdOtGACOGPBmK1dRxlGhsBxGoBsYAR2Bj1XgNVxyyGYiPFGNgDNtzV
 6org==
X-Gm-Message-State: APjAAAXUQMXK9CPraYfA8ZKcQLr1W4nbFHYYHC7MWqVi707C21M5vfXa
 TRKkflCldOqxN9KmX8d6OEO9edi+
X-Google-Smtp-Source: APXvYqzoEA2Ur4kBMLRQMwb8qjOtucgHIrwKndnQ/vYw7CBLOdEYrcXt8Ekye1Bai8jgGYBgMf8BVg==
X-Received: by 2002:a2e:9250:: with SMTP id v16mr3048462ljg.89.1561558455912; 
 Wed, 26 Jun 2019 07:14:15 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id 25sm2863825ljn.62.2019.06.26.07.14.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 26 Jun 2019 07:14:15 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 1/7] serial: imx: fix locking in set_termios()
Date: Wed, 26 Jun 2019 17:11:27 +0300
Message-Id: <1561558293-7683-2-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1561558293-7683-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561558293-7683-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_071419_655882_CF6C46EA 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
Tested-by: Sascha Hauer <s.hauer@pengutronix.de>
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
