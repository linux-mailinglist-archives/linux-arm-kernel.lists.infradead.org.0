Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 995964D0C4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 16:50:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eUQNQBKjI8PyyP+QxPBmcG4E6OpBhnaMsghEbhNvbF0=; b=GIuVo2kzzDB5xGJjmQtw6Wte52
	7+e2O3LcM9kV5zDeQXw0BnBk4MdQ5RmYp34hjNJIOckbaZWN2RIbkhLiJRaehEjew0jTRcY9DVV34
	CxuzGFkGivcpGHtQ+mB7YCpdK5T7idH6bbDViWVyeX8xagKtcg7dXT2lYHAuEFj/VUh38LnmqbW2l
	oA9O0Qr+HuiqJg9miAtb5ZdcBh2zjEMqtzMm3PugHzYJ2IBYwaeyx9odHIZnkki3vuhoW1Swyn8YO
	hbpklMkmiVrnupjPWZ2EJ4ys5zSUc11OTJeyLjXiA3v5IkTjMq8waXZbMFjBzaI92iIQBg8sqQuA7
	818JhqkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdyO0-0004n6-BY; Thu, 20 Jun 2019 14:50:00 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyMF-0003lG-TX
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 14:48:13 +0000
Received: by mail-lj1-x244.google.com with SMTP id s21so2964175lji.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 07:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zDXBWhuIJraZ+zpNVsz4D9shiJ9Jh7WL+xtta/xOGQA=;
 b=NrHeV0Jtfe5Cqfpq2CMkT9X2zY+Ip0ARkWJqZJHs7fd8VJ9rX1I0CSeu8VELzEOPdc
 9yyvbF7do/4gD92Ej05poMljxb7sWPAg/wStTCMDtDl7p4gMg+0CnmPqPoH+mInbRIY9
 KLpOPTMiiyOyBYP5j2yO4cPusr7zgEgUz/V3OseUjjPApgDC8hrMgLPZ2hYlaNcV4P/0
 R/EK3xdjiAV+tj9FJsfLEIOEtZuFCf/lD16yXBSA1gT7mt22TXJWRNX9FomFi+yONkVv
 Un9QOSe91rrRhcS0cUESSNdxbNv9PtIE6mXua/1ItbporbMpSBJUOeokc+gLasWxQDi0
 ZaGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zDXBWhuIJraZ+zpNVsz4D9shiJ9Jh7WL+xtta/xOGQA=;
 b=TghUr4ZFXHCdUVd9hGC3MxRxt1fSLFqRYfRdFsfF6nji5KljDovR7UF5ym6a+b4/Ll
 pnEZmfOtFrWlopNFWmt8fSZMe0IWJaCBeZPEU92VJqu/WgP1vZk2coJVYL6FWlBOCjIH
 fJpsa6/EbJsq6g+QfOLb55rvHKwicAO5/EvkR7pBdOgu761IZzowC7hZO/xBs+CX8xBs
 nMZ7bnHGYfjyg5Pg71vP/q1xyqzwAbS0Jx+wiHzde1jCY0YtlrkuB3INTJ7p/ihzmvl6
 BAo0/x2Oidxcy3mYEEgYvUnhTdHMv0Nl00CKDLkPCllUbdjRq1HqePOMJPKLIinv0e0i
 V2JA==
X-Gm-Message-State: APjAAAVN4rkrSkNRVMpVJXgvEBLUf5FU+M476P+lxSRyPr4dNG+CCtMP
 rYGc5vQokYvfzPUl18wRfck=
X-Google-Smtp-Source: APXvYqx27D35b009mAgFwoWJHWOY4wSxlGLazVqCJGBL/1yAes9mXjxYjYj7WEfHIbsHOkEGRojWIg==
X-Received: by 2002:a2e:3807:: with SMTP id f7mr29431101lja.87.1561042090600; 
 Thu, 20 Jun 2019 07:48:10 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id f10sm3577768ljk.95.2019.06.20.07.48.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 07:48:10 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH RFC v1 4/7] serial: imx: set_termios(): preserve RTS state
Date: Thu, 20 Jun 2019 17:47:50 +0300
Message-Id: <1561042073-617-5-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1561042073-617-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561042073-617-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_074812_026373_30BEB04E 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

imx_set_termios() cleared RTS on every call, now fixed.

Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 17e2322..e0f5365 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -1563,7 +1563,14 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 
 	spin_lock_irqsave(&sport->port.lock, flags);
 
-	ucr2 = UCR2_SRST | UCR2_IRTS;
+	/*
+	 * Read current UCR2 and save it for future use, then clear all the bits
+	 * except those we will or may need to preserve.
+	 */
+	old_ucr2 = imx_uart_readl(sport, UCR2);
+	ucr2 = old_ucr2 & (UCR2_TXEN | UCR2_RXEN | UCR2_ATEN | UCR2_CTS);
+
+	ucr2 |= UCR2_SRST | UCR2_IRTS;
 	if ((termios->c_cflag & CSIZE) == CS8)
 		ucr2 |= UCR2_WS;
 
@@ -1632,7 +1639,6 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 	imx_uart_writel(sport,
 			old_ucr1 & ~(UCR1_TXMPTYEN | UCR1_RRDYEN | UCR1_RTSDEN),
 			UCR1);
-	old_ucr2 = imx_uart_readl(sport, UCR2);
 	imx_uart_writel(sport, old_ucr2 & ~UCR2_ATEN, UCR2);
 
 	while (!(imx_uart_readl(sport, USR2) & USR2_TXDC))
@@ -1640,7 +1646,6 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 
 	/* then, disable everything */
 	imx_uart_writel(sport, old_ucr2 & ~(UCR2_TXEN | UCR2_RXEN | UCR2_ATEN), UCR2);
-	old_ucr2 &= (UCR2_TXEN | UCR2_RXEN | UCR2_ATEN);
 
 	/* custom-baudrate handling */
 	div = sport->port.uartclk / (baud * 16);
@@ -1678,8 +1683,7 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 
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
