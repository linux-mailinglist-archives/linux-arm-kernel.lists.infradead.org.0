Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F02A09C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 20:38:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fB7HJhy7RKxo0FXFeRmqlhuXrJ42xtY0gQAhIANFJwo=; b=F7iOVBAAXfVA9myDD2vMlSbzOz
	pAaYH5PyrEyg9riUPaVg7XCITok9TVKc+5VwL6/ZN4bUNXuYH6uJsWARjgFhKjL/zZTRAzuJZwopZ
	TvtTPv6VK2NLuifaIDPv1Mg6xQRYhS/OojtewVhCtB8aHtjWi/bXf5tVbfEpwZe5sKK1UL/l54L5S
	Rj6Eq0vBMbPUXoKjr10hZp8hgfr15oT9GRAp6Jb2Xt7riBKLnUHUu8HI+mrmdgjHjr/a3Jp3xEcE3
	lHJf9TzTrK/ru/Eb0JQL/hjt1WZZ45Dq+3c94foIQDlxjo8otpg588X7yijZDm/ZDlCKR4owDwkTh
	jWf917pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32q2-0007QU-RH; Wed, 28 Aug 2019 18:38:35 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i32pb-0007FF-Op
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 18:38:09 +0000
Received: by mail-lf1-x142.google.com with SMTP id w67so395993lff.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 11:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GgBnhbAyK5YL0Icz4CgluyDZjeVZCXJztYJPnsKKGn4=;
 b=peXiicX+gbp0gfJEQW0rAdumG70hYVWtX2sB3zUaizeySHSrbSjCh9cuBpkSgfBE+8
 32AQ3ZwoCfMmUfH85tVdO7Nf5ezMoMrfsM33x337+fetRAJKuyl/otI6Yta6uRTyhOUB
 oVFsYYQcHwFu/ZSAfuZdlZQFxMO908wZy3SK3yn610nTz74sBDKcfz4WBYn0VFG6cxuA
 MVJhz2MGBUfULr2IO7m79d4SgelXxATIUuBdtwRjm1YORc6WcuUojU7LOB2NszwiMOrQ
 NpyVOgaxH8aWKkJwBcMJkE/OGU6XQuJtVMsMOtDlAYc+mmx5JUXM8V2VRACqd6+N1+je
 dx5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GgBnhbAyK5YL0Icz4CgluyDZjeVZCXJztYJPnsKKGn4=;
 b=DuX9paYSDCoX1jI5NGFBQjA7bjR3xKEaGRnIK+BGktJvspIO39NGGL1tJkzk0CFG6J
 BbBddRwnIH13P7fu1SoppgT1cVfalNuwmbzJO//3DxWfzLr6Xm096IZ5A/jmtW4Y+Tqk
 GRxbqMlnIJCu6/hBQtk7FDHdMhg5xz0t8H9Ztbnv2cyU3xEPH9dI4ZBXg7P+/hpARuS+
 msUA7yAP61IYVcTOixHyF99w4fTyLFbhINBffj45VTwTdRUvRKLz1LJyZ3LR7dLm/8mf
 316MkiqzaCY7ysjk9BYjysGVMuVJJ95GyWjMC+I2MpyU+7w6VIQkN/priTSHNoQKHruz
 Mwgw==
X-Gm-Message-State: APjAAAUo4aIAvlbcNk37RJPjHmz1RqxC8KxWNyniQy4RfRs9gEZQkoWV
 L7D7W7URNohzo7z+lr1o4YQezM2T
X-Google-Smtp-Source: APXvYqygR2+YIzVn2R25wf1NRFFId1aPu8cFdWI6PPLfj8Qr4trmPS0fkLaTqtfpJzj/8OF5T6+xGA==
X-Received: by 2002:a19:c6d5:: with SMTP id w204mr3369494lff.53.1567017485322; 
 Wed, 28 Aug 2019 11:38:05 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id f6sm9226lja.16.2019.08.28.11.38.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 28 Aug 2019 11:38:04 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v2 1/5] serial: imx: get rid of unbounded busy-waiting loop
Date: Wed, 28 Aug 2019 21:37:51 +0300
Message-Id: <1567017475-11919-2-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1567017475-11919-1-git-send-email-sorganov@gmail.com>
References: <20190530152950.25377-1-sorganov@gmail.com>
 <1567017475-11919-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_113807_826492_C3F25C40 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sergey Organov <sorganov@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

imx_set_termios(): remove busy-waiting "drain Tx FIFO" loop. Worse
yet, it was potentially unbounded wait due to RTS/CTS (hardware)
handshake.

Let user space ensure draining is done before termios change, if
draining is needed in the first place.

Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index d9a73c7..47b6156 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -1644,7 +1644,7 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 	uart_update_timeout(port, termios->c_cflag, baud);
 
 	/*
-	 * disable interrupts and drain transmitter
+	 * disable interrupts
 	 */
 	old_ucr1 = imx_uart_readl(sport, UCR1);
 	imx_uart_writel(sport,
@@ -1652,9 +1652,6 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 			UCR1);
 	imx_uart_writel(sport, old_ucr2 & ~UCR2_ATEN, UCR2);
 
-	while (!(imx_uart_readl(sport, USR2) & USR2_TXDC))
-		barrier();
-
 	/* then, disable everything */
 	imx_uart_writel(sport, old_ucr2 & ~(UCR2_TXEN | UCR2_RXEN | UCR2_ATEN), UCR2);
 
-- 
2.10.0.1.g57b01a3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
