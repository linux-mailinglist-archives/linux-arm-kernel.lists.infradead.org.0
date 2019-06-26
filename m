Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 467B556BA2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 16:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SxLG6zqW/wKPPMG1+pRHS0PzUUnu21pIZg6NkOjRmZs=; b=Y9R9FpG7sQddvjowKgEj9jRT/L
	Uyzw7Qr/waxyJUsEKjLNXNwTdxGLl4XIgBqZc+qfHLRS1QiU74YxZWPtUTi3cwa7IfRzi3bVrxv33
	DYOSvCYa6KKfHoucW3LRjSxdupi1eBKK+LTs7tfWnujX7ZL90a0aQoLFzch+YOPsTJXgNs0XFX/S9
	d19tPe+Nu7vdaNTJnrftRX23/vKmbdDWZNsw/sjROmk5+P8eFwfMlYwSlMHbFtWW6zWZx0xY1n/5F
	6JuOpQgMHC4+KZQY1PgzPrEQZkf/aVQ40QMbhdhXYUKoFhE1EYlb9Q+FVmauoO0zyuQisrXeiaUYr
	wGXnuROA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8iE-0005tA-2i; Wed, 26 Jun 2019 14:15:50 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8gm-0003y2-Hy
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 14:14:22 +0000
Received: by mail-lj1-x244.google.com with SMTP id h10so2408666ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 07:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mRhyyilptEVPd04WdgykTEukksr9XwSZnIYd4NBzYsQ=;
 b=WOsdVMo2sTqQcIO7BzQhJ9DHnEJ3DY7P8bNKT1VNcGqjAUlnFGAZY0dK4XZYnH5ua1
 v3Tfcu8MMImCEs2vjwsLFPMQOVWRktM9ufCg39KKPc0Y1M/7trTsHbsKVTCh4IqOENH3
 Ib5gg+aBvNiYqJvlRQStweOnKbfqlcSGwUwtH2gkGUm1metLMJFw2kerj8IQnanQc7l5
 nRBrydWsx5dlYPJrZMiZn3Sk9gJixMNNlgSPumNI90w31xO6weAHTkbKxd2hcj2l0C68
 26LkRmMyqE/okSD0EhAtIb0JR8w7amcb70WpMjaA3v1L7RRm66yMV11PFOEYxGrlRI8t
 +5VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mRhyyilptEVPd04WdgykTEukksr9XwSZnIYd4NBzYsQ=;
 b=BMhz6DNlgL2Mf/NthtXOlAu3tsD+1e5fQTSexqVQNXvvHFjzQ/jaiCax0xNe5mJv4G
 FBPP55kFhtCYcd2uNs7uSjDdBOE5zcvp/0wI8AtXsY/Cpz18eUIa2YD6mPmlnixL4jld
 wuEKukftm1WevkBjw8HJzDu+eVqJ7MthI8MypQ/ZKGo5JM+XWuUCZlkdiTU85S97M6M9
 v5eYwdifif87t2Tm50TibKmZGxUUVXOWL+W+8xUipiqe5F9uCc4UGYivBzGrImqblKoQ
 rCzfg2Op4jif+ST3kyjLXrkM9Zmqdl0zYJbE5/WbRhaoHKuDG35I+leqtUWHBpIpaWEJ
 tSxg==
X-Gm-Message-State: APjAAAWONkDST8HXV8PntDyn3BWT8xB1YJSzqdFt8tydISozBAd/NviS
 jJBhNUv8K9KPkRmCJnXrKB8=
X-Google-Smtp-Source: APXvYqxk6g01vSfZluLIWn9pL9tzMRhVHf6a8E/WPw/jzMv8uirCzehRsPM4NYsa4A7CfTEhMI0y+A==
X-Received: by 2002:a2e:86cc:: with SMTP id n12mr3064173ljj.146.1561558457810; 
 Wed, 26 Jun 2019 07:14:17 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id 25sm2863825ljn.62.2019.06.26.07.14.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 26 Jun 2019 07:14:17 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 3/7] serial: imx: set_termios(): clarify RTS/CTS bits
 calculation
Date: Wed, 26 Jun 2019 17:11:29 +0300
Message-Id: <1561558293-7683-4-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1561558293-7683-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561558293-7683-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_071420_613868_912B3AAA 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

Avoid repeating the same code for rs485 twice.

Make it obvious we clear CRTSCTS bit in termios->c_cflag whenever
sport->have_rtscts is false.

Make it obvious we clear UCR2_IRTS whenever CRTSCTS is set.

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
Tested-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 36 +++++++++++++-----------------------
 1 file changed, 13 insertions(+), 23 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 87802fd..17e2322 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -1567,35 +1567,25 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 	if ((termios->c_cflag & CSIZE) == CS8)
 		ucr2 |= UCR2_WS;
 
-	if (termios->c_cflag & CRTSCTS) {
-		if (sport->have_rtscts) {
-			ucr2 &= ~UCR2_IRTS;
+	if (!sport->have_rtscts)
+		termios->c_cflag &= ~CRTSCTS;
 
-			if (port->rs485.flags & SER_RS485_ENABLED) {
-				/*
-				 * RTS is mandatory for rs485 operation, so keep
-				 * it under manual control and keep transmitter
-				 * disabled.
-				 */
-				if (port->rs485.flags &
-				    SER_RS485_RTS_AFTER_SEND)
-					imx_uart_rts_active(sport, &ucr2);
-				else
-					imx_uart_rts_inactive(sport, &ucr2);
-			} else {
-				imx_uart_rts_auto(sport, &ucr2);
-			}
-		} else {
-			termios->c_cflag &= ~CRTSCTS;
-		}
-	} else if (port->rs485.flags & SER_RS485_ENABLED) {
-		/* disable transmitter */
+	if (port->rs485.flags & SER_RS485_ENABLED) {
+		/*
+		 * RTS is mandatory for rs485 operation, so keep
+		 * it under manual control and keep transmitter
+		 * disabled.
+		 */
 		if (port->rs485.flags & SER_RS485_RTS_AFTER_SEND)
 			imx_uart_rts_active(sport, &ucr2);
 		else
 			imx_uart_rts_inactive(sport, &ucr2);
-	}
 
+	} else if (termios->c_cflag & CRTSCTS)
+		imx_uart_rts_auto(sport, &ucr2);
+
+	if (termios->c_cflag & CRTSCTS)
+		ucr2 &= ~UCR2_IRTS;
 
 	if (termios->c_cflag & CSTOPB)
 		ucr2 |= UCR2_STPB;
-- 
2.10.0.1.g57b01a3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
