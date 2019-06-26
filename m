Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F043856BA0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 16:15:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=w47jJeNj2MXEs/AwY0ZIftgwEXKiPHkXxyL5QsXA9rI=; b=PSvoEa8XU0TBK1OascIv2v6pwj
	O2lEcMbzTR7G7p1/CZAY7tvL0dvt1pfc4OMCUYU/QR5GZikq9TxaOzyjrDNLC4jwEgPVN/6F3p8ce
	NUaEKuqRByOzqfFIo9UzjHQzKPZyYi4bo5aZndbjJSQPO9fK+PH1+5HCBYoIAv7XZ1xJq57Ujuh6n
	VQMM6HHAllyhSah6+l+za+/pviPVuM7+nlAJxq44DLI2YfsorBWsIw/2LWMfMSSoEmxtiFzk/u4uW
	kZwSjFbsJM5mWfeZBAnxKOu2dOcQ0lvg4s0t76rQOXXq3hRjIG/H5XRaThI2HEkSrVusKhMbpiGkY
	nZWhPWIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8hq-0004Ro-01; Wed, 26 Jun 2019 14:15:26 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8gm-0003yF-I7
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 14:14:21 +0000
Received: by mail-lj1-x244.google.com with SMTP id m23so2356546lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 07:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=942xX7/V43Ir1tZd4dDu7UDtPNxQiTaRZHtBvgqzC20=;
 b=vEcfd1F9kU6c3snTar1pRwW46ihzxse6+Y4VUj3JAJxwmk9OCvFHmCrgXUkECXemrV
 Zymaf5FxHIUjJpINJX1aZv67oSwDU6yvr4+D8p9ksaTnzQqQhR2Gzvj+EsilGzI4Q/MZ
 eRhsSYvTl3Mmhm+fJtjBz3xzGGjmvRsS2meP6ANBFPaIwfSFG/mcAgrQQ/4mIo1hlksG
 4l/x+5uF8kIXWJFbnXFgeEceXfL4zD80Rl9LO3YE9b1/bIJc6Zl6OTA4mFRMJmz0nfMn
 fA71nOeZTEmAjIiAFoLsnseNERzeivd+Et75vWsJo6qg0S7csKHSaFEihFyOsalu1MXP
 IVyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=942xX7/V43Ir1tZd4dDu7UDtPNxQiTaRZHtBvgqzC20=;
 b=E3uohzI+YGsbfJZXVEZPRxWEh1ivAAeACibMZD4HvG/13CRHeVQY74egRvGmyjzG+s
 BGyjYXfTTJi0EI+JXfxNa71XK0LA3GWONw4VKQrCMA4HPtsFaFAlaU1yWuvnHywISeRV
 fcGJMBrrvYbb0TPBN/5eN5SlfPpjVjm9myWOUiEZ52racQuR5UYi1CaaBEz4S9NS7/Sd
 I9kbmZsB8OJQWwPwa3/f92UnYb1OoKNm63VO0KJZ5Wp6v9+0bZCdVELuBV2UZE/PCtcB
 CGOxuO63LmW4ulHKBq/qh/SXl2IAfjyxxky2/BdjMymTV3FE16N7cjPfAWueanJ1pN6U
 ibUQ==
X-Gm-Message-State: APjAAAXQV8HMym3ztuBupj2g9RdVRGMM2N4pqgZd1aadS9EzCzqK19jG
 0blp3EVl/oPgkGMzu2VN9oA=
X-Google-Smtp-Source: APXvYqzBCD/3G0Iiqs94s9c+nv/izaxNQc3GweYG/4vph5agy17vywn3RK+kSgUPvaJgNmPczA31fw==
X-Received: by 2002:a2e:9198:: with SMTP id f24mr3177704ljg.221.1561558458731; 
 Wed, 26 Jun 2019 07:14:18 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id 25sm2863825ljn.62.2019.06.26.07.14.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 26 Jun 2019 07:14:18 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 4/7] serial: imx: set_termios(): preserve RTS state
Date: Wed, 26 Jun 2019 17:11:30 +0300
Message-Id: <1561558293-7683-5-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1561558293-7683-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561558293-7683-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_071420_612348_889DCBEE 
X-CRM114-Status: GOOD (  12.11  )
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

imx_set_termios() cleared RTS on every call, now fixed.

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
Tested-by: Sascha Hauer <s.hauer@pengutronix.de>
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
