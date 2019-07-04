Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA035F8CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 15:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=laLkmzvZ8MuZKFUwqSjXip8rEW0md6BM7yZQes3DpZU=; b=R9uxh8U44NSMtj46RYmRNQfiIo
	rv6tHwEM5KNuFLJyjhP+VOHD9YUe5k+nv7PQcI2+4lSm4UNWxeIuU2IqtwZUZHpcMNHUUhi5kydAy
	djm59RVAhjn0KVo0hLr7KlQ00jDvfXrq2ZGwrvkj6qvghQetR7g42X9llqeaQ4jncK6duOMXbRffr
	teVCEzNLiLn2QxQdxlk6qjOwdOWUfBvJTaNSidrpYiJQFH3+rwRHizoMAmtNsCMnPHBeqG80HsKKI
	s8d2RUFXv8VcjNKUBtgeKWlS+OdCFZfVkiaX2MzjtoGi193DrV82SASnogNUrLwGuBx145ZLIZPBz
	gZtRyZDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj1OW-0001ms-9y; Thu, 04 Jul 2019 13:03:24 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj1MN-00005C-0T
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 13:01:12 +0000
Received: by mail-lj1-x241.google.com with SMTP id 205so6091105ljj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 06:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iFkawdZ5Qbd64aBfLB7G/2IByrJZ52xv8EKcLUHUKyg=;
 b=gZwrSvC6Ql2DUkwL/tYLzFq7GY821LeLxgRRNN082KZr7oErJNkbsU5t2Yqo9mCTBW
 X6tX/94+bNZHkEwZawbARckZhMteoiYs8DfsqNOt6OG5ITHEW7Jft5T2rNtYrlVX6ih0
 pLhDzflHHAWeItnEsYZqEJrWR9olupRNXzUEbme8n2ry5CBpxFwV26USLYQS183kyuJG
 dRLI2RGDNTOjl7kX0+ovRbjmo7GyAev8h2RESl939EyHe7cJXO2o4aysrekgw/HvlMSK
 54rtLrnjUdGKSquoeWinuVDVtgK108jXTT5kLEZ/1zPpIZ68SRXIEZoGU1J/sOkBq+lt
 TVCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iFkawdZ5Qbd64aBfLB7G/2IByrJZ52xv8EKcLUHUKyg=;
 b=nBs7zJbbKHazWcWjJIpQhZ8ylZbLrwWluQWCk9SXQw1eYzI2GP+KSZpxgHTRKbVc6w
 PEY0AZHYYONhoLTkXTxsWFN2cFBatxqyVugFyvS0O8kAcug1v3LvElaKaR4f7qcSFG24
 p0qdLac0Ip1+Rpm01wSoBnbgtjUtCBWw8HLSK5DulYx1rqrOD7A0ipWXczPWtyuh9Zc9
 kotkcISvMYllDZ+xqtt8FrDPLNdzPqgaMT2eiCmHnL88REabmj9osy6sXwkrPsAp0MzA
 jR5v5oeQibwQ5qFpNeMGwRm5JSc/7wzJkKjaRh9Yf2ZxoPBIegRgdc4RNwdsL1KhH9nT
 vd/A==
X-Gm-Message-State: APjAAAW+IazP+V6NiUcV7/67BBoKdSmCoF1cBKPpXus4Ojl51f+otm1J
 y3svAfe8Dp5IZc1fR31djww=
X-Google-Smtp-Source: APXvYqzi+zB+DMQHWPOrhTYHDsuybi9IxDE3XFE0vNOu//S6piBaknj6RbeenK5U7P/fYa9NUJABLw==
X-Received: by 2002:a2e:8846:: with SMTP id z6mr23896366ljj.20.1562245269472; 
 Thu, 04 Jul 2019 06:01:09 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id h1sm485914lfj.21.2019.07.04.06.01.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 04 Jul 2019 06:01:08 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v3 7/7] serial: imx: get rid of imx_uart_rts_auto()
Date: Thu,  4 Jul 2019 16:00:29 +0300
Message-Id: <1562245229-709-8-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1562245229-709-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1562245229-709-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_060111_407727_456DC93D 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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

Called in only one place, for RS232, it only obscures things, as it
doesn't go well with 2 similar named functions,
imx_uart_rts_inactive() and imx_uart_rts_active(), that both are
RS485-specific.

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
Tested-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 582a3fd..f4e9d1a 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -402,13 +402,6 @@ static void imx_uart_rts_inactive(struct imx_port *sport, u32 *ucr2)
 	mctrl_gpio_set(sport->gpios, sport->port.mctrl);
 }
 
-/* called with port.lock taken and irqs caller dependent */
-static void imx_uart_rts_auto(struct imx_port *sport, u32 *ucr2)
-{
-	if (*ucr2 & UCR2_CTS)
-		*ucr2 |= UCR2_CTSC;
-}
-
 /* called with port.lock taken and irqs off */
 static void imx_uart_start_rx(struct uart_port *port)
 {
@@ -1602,7 +1595,8 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 			imx_uart_rts_inactive(sport, &ucr2);
 
 	} else if (termios->c_cflag & CRTSCTS) {
-		imx_uart_rts_auto(sport, &ucr2);
+		if (ucr2 & UCR2_CTS)
+			ucr2 |= UCR2_CTSC;
 	}
 
 	if (termios->c_cflag & CRTSCTS)
-- 
2.10.0.1.g57b01a3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
