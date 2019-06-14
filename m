Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B160945C4D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ve2ZXChfkCywBwo2Nr1l6wXPgX1y/GKog2Ubuk3HjWA=; b=pxTR8ae2ky1sC8o9lOnfRhiCRZ
	7xW9GMD3yrDotGvHgB1kwSWg9t68qftvwTI2dislNAO2Vz1HrSxIrQAHKneReCegeDsKbe0OjK7La
	9EfjflWT0G2j301d6GIq8peYdk+SV/oBMN7cdGc21WRfEHny/2p1ApbfgggyCCT67es/A4W/nM7pR
	LNheXUFrs8q6MVXAV7F2ez4FbxZpsc0fDFXDNg0UJ7lKw3/MxyL/NPlTOMHKTUtQA4AWkLIPWujz5
	uQ0FR/cXInQ7gWjokAG17UlmFyMXA0DzQZYMwz9QVZ/azlcgs0qGDxWMudU+q6gGWFW2bji6nYECD
	jizd34mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbl4E-0002xO-3u; Fri, 14 Jun 2019 12:12:26 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl3h-0002mB-QA
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:11:55 +0000
Received: by mail-lj1-x244.google.com with SMTP id x25so2186203ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 05:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SMvfNXrBGoXH5Rlv9ONYJ/L8T8ix7gsLxKZmilMNxjo=;
 b=OXEqXdFYrhgQa3V2TQRJ6AexhYZVCKIhb6Wb2iFCOCEBjuFOJsvlSGlw2eceWJHHuI
 J3HnTHQ/O69pnE7PhM11LQoC9pBVLOi8Le5efld4HJZ5cME2mtIHVpzxpwNWLYBJcNkn
 18L/HO059DbOznsGU6aJUH91YebrU8EEugRNjmIql3Yzus7dzWMKtVEnzugWhHGK9TzI
 6Z8vN3veiqG0OlqYRurW7nx/skf1qIoF6FnK7WLKdwM2+cjGuHE8hnyNEJMnQ0WzVSuw
 jx1tjf/WMkNVcvdlMfww+7kzk6IzSJXjWhD+vPQSYH2tpmrJbWd7z5wytPvrk6D7CGCG
 T35w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SMvfNXrBGoXH5Rlv9ONYJ/L8T8ix7gsLxKZmilMNxjo=;
 b=knFy8cf64/49/sDnkf5/Loi1wiutxVa1p9hBZpRwcG2hpwp05z0pGocGfcN7Zu9b8v
 RCHOzkp9PZdi2kzdG4l3wlLZ+3Lxz5nkwrrogfGoiEwDOvluoDApxlivqts9apKPbGb2
 sE7VSfgIAxZXFIQAgLws6akjMZqx0T0QRn1ZD7oCxA28NL8bleM92S8Lhti3MOVncyKa
 tvyK7USn2xYVV1MnTAbl+6r+1xpU/DyEgNF9RbUuC8Zllvt5kMYvPLvBrW1yugmHqwDl
 qfF7JRzHQU43+CTpakBnbOUhdmqVkKeqaNzZUv2vkkbPdQeXWnvjJygPlJxdtYMffVXc
 HGgA==
X-Gm-Message-State: APjAAAWx4cidm2lF52lym/cBXt/n9CXC/Nbr7/P5uho4Rxh80Ye8BLZW
 QWH8iICfb9UqhnYPCrvU/xo=
X-Google-Smtp-Source: APXvYqyfSBKlleftIibV4Y83OfC6jOJA6VbY7mUXU01V8OkZkjsW9ihhGp/DrZuxDvinUc5ATsuWFw==
X-Received: by 2002:a2e:9e4c:: with SMTP id g12mr25518090ljk.3.1560514312085; 
 Fri, 14 Jun 2019 05:11:52 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id p27sm459683lfh.8.2019.06.14.05.11.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 14 Jun 2019 05:11:51 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH RFC 1/7] serial: imx: fix locking in set_termios()
Date: Fri, 14 Jun 2019 15:11:28 +0300
Message-Id: <1560514294-29111-2-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1560514294-29111-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1560514294-29111-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051153_843878_E4E24CBB 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
