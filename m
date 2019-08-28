Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C667A09C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 20:39:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7bcDXZwYfjQNlz4OT14CEDvxRbOI/FyUoCGp6ZbEMAU=; b=NNscW5K2/fqDfu95o8vMKsGLOZ
	FzTyaIspvcSMZJJdGxcVKW2KkASmEhCFt+2TmFXdBynsPL51Z38fQVJDjdBBWY4S5LubIAlRJmQ0m
	MbL3ZPPVLRryAymwq8l5ujhbf5+iXws467ZAqw7AfAZeJkAdTa8J6ndduBDJlrM+//Ore0qUNfNGr
	VydPgIhsgDFjsTcpWupeEj0/NEYboy9vQZXmK7DD6jIxDwKPAvCfnHVIHlFBsxDAq16naa2kJu0k5
	KlVuSw+P9EEUWd22QJox7R8UFpORYZ8A/CQ26/PeEphDN6OtIuvgVFVMS3PN+NFiInUWzP0YKBTG1
	FgXsR6xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32qX-0007sp-3Y; Wed, 28 Aug 2019 18:39:05 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i32pc-0007FY-Mz
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 18:38:10 +0000
Received: by mail-lf1-x142.google.com with SMTP id u13so370025lfm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 11:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZlfktRIZDpnYsYdM+ski1fwXXj3g4icgLqulIn6LmQg=;
 b=ozl9b2tshIIEjFQSKd5HpAMSMfC09bFrBg2q0TIodiWyA964QMW+SLvNkfPRowlKak
 OhGljELCQ/dBpeGSZcQbkJRlHkTTLF5K+71qq1iWvxQ3Tal2FgLUw7wDo0Sc/aCoO4DT
 VSOlJEjtXV2mF1Z89uxC6kmyQ1OYmyNlfnlZqS5gXG5RTkxsMnHJJy7amAz96KEq6gCV
 K4OIzICmSNepb9H71lSuFxuabPkphHWQbWAzFJXWJwwu0xq9e3c8bXucWHPi48yxgiTE
 NAmaxsj4+UVIyoyU8vktBwFVWEQ8gLWZuSn/gKQVQid07KTmPzh5pmy0xQnbg/yj6bWI
 GTvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZlfktRIZDpnYsYdM+ski1fwXXj3g4icgLqulIn6LmQg=;
 b=i0VWaCaxRNaxQ7lI0xkteuiUJiKjttdCh1+OlK07qTcLDtqZe6PtGIfCO1WNmI3703
 7Ocvy2f9ZiFs0Db4QQwp7+vhvd0N1krqghFDX4jhKzf7aEX2UE7gv11glJ0fVghoqD/G
 0DnTyHWWUckQiyN2Xe4jCnuw+hefEQZpDUesntUyU4FpxsuCiraVlOTPy+U5HJe/SC0K
 XRWiCzcJx7K9IPSKJJABOGAgcIwDTNcSJjGB9iNM7sJgQY/Rx3uczBV2aVEkp2XEcqO9
 DEPy1ncXcnRR2GzBLZ7XarVnKrIZMTNytBAfMufRkehOoKfyZYFuE0bxSKVphK5+6cr3
 2cCQ==
X-Gm-Message-State: APjAAAXV8W0bqVDSL5c3t07Fq6rAcqQX0Fz9WiJg82NjJlCm6OhhR1em
 HCIxD6vcoqme66XBg49rv0kmDCUz
X-Google-Smtp-Source: APXvYqzRlpHejliRwLqVBKetlj8ffbEuoEWGT621+mRDCl1GOVUaOp5L/xAyIW4hXhkGTo762OHy0Q==
X-Received: by 2002:a19:6d17:: with SMTP id i23mr3473594lfc.44.1567017487415; 
 Wed, 28 Aug 2019 11:38:07 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id f6sm9226lja.16.2019.08.28.11.38.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 28 Aug 2019 11:38:06 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v2 3/5] serial: imx: do not disable individual irqs during
 termios change
Date: Wed, 28 Aug 2019 21:37:53 +0300
Message-Id: <1567017475-11919-4-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1567017475-11919-1-git-send-email-sorganov@gmail.com>
References: <20190530152950.25377-1-sorganov@gmail.com>
 <1567017475-11919-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_113808_753343_49354900 
X-CRM114-Status: GOOD (  10.71  )
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

imx_set_termios(): disabling individual interrupt requests in UART for
duration of the routine is pointless. Get rid of it.

Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index fa723a9a..cc3783c 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -1541,7 +1541,7 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 {
 	struct imx_port *sport = (struct imx_port *)port;
 	unsigned long flags;
-	u32 ucr2, old_ucr1, old_ucr2, ufcr;
+	u32 ucr2, old_ucr2, ufcr;
 	unsigned int baud, quot;
 	unsigned int old_csize = old ? old->c_cflag & CSIZE : CS8;
 	unsigned long div;
@@ -1643,15 +1643,6 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 	 */
 	uart_update_timeout(port, termios->c_cflag, baud);
 
-	/*
-	 * disable interrupts
-	 */
-	old_ucr1 = imx_uart_readl(sport, UCR1);
-	imx_uart_writel(sport,
-			old_ucr1 & ~(UCR1_TXMPTYEN | UCR1_RRDYEN | UCR1_RTSDEN),
-			UCR1);
-	imx_uart_writel(sport, old_ucr2 & ~UCR2_ATEN, UCR2);
-
 	/* custom-baudrate handling */
 	div = sport->port.uartclk / (baud * 16);
 	if (baud == 38400 && quot != div)
@@ -1686,8 +1677,6 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 		imx_uart_writel(sport, sport->port.uartclk / div / 1000,
 				IMX21_ONEMS);
 
-	imx_uart_writel(sport, old_ucr1, UCR1);
-
 	imx_uart_writel(sport, ucr2, UCR2);
 
 	if (UART_ENABLE_MS(&sport->port, termios->c_cflag))
-- 
2.10.0.1.g57b01a3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
