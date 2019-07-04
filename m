Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEBD5F8C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 15:02:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=w47jJeNj2MXEs/AwY0ZIftgwEXKiPHkXxyL5QsXA9rI=; b=tC9vgNhxzLRPY0cyN4StMtUpwy
	Ac7KK/HZ2e4BhZ7/lfBfUSjh1zrKhyBe8YzkAj+GJI5Uklp4oWsHxDG/hQ+27aharzqJfgfh8ZsYA
	qsrm7IE+sPUeV2eLkVofNeqYwlibQMdDUn6MIVS0VN5PbA9Z6fE2AVwgvNRZ1HsSmnVihTr8pYkm6
	G5w+YacaMgI2cPcB5HTESvhcavEKiU0m14o0alLre0Y06mOQSWJmZzdGGFRQ3ck2dY6NJFEht3jR8
	11Bh2giaBQLDi8ptQ9UxQO/UKtCcKZqnOJLGyXEnyGK2AVYqR382or0oa5DIMaUg8uUnazi7IDO1c
	MK/fIDNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj1Ng-00014o-HX; Thu, 04 Jul 2019 13:02:32 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj1MI-0008T0-T7
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 13:01:08 +0000
Received: by mail-lj1-x244.google.com with SMTP id 16so6055224ljv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 06:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=942xX7/V43Ir1tZd4dDu7UDtPNxQiTaRZHtBvgqzC20=;
 b=imkrJQTXeoCo8VKvKTQH1Zi9kdVDhH/6Fx3fbqCpkyMPM0wgU0Pl92amh1sgyMbmMy
 hYHMzXqjcincO+2Q5AVz6uvhjs3/y+qY2NxNAffVMbGBFPUiGZy7P9dN/upb2tFYsj1T
 fa8/81F5TuP0VILsBxjglJv9M+BbbXeW1LgKBTMODnZM+C5U4Kfivf8O8tu+VZcf3b3E
 i1HgLGdovYDFlYijCUh/pEHKJwTlKsJjyz24T25r4lnPiuJBxAc3SXPm0IwY2MgFFevG
 BeiBMvPVXZtIXN3YRRGX//T5nGdetdZ25iKgkWilaI9nokBzN3XIQaZBzrpy2pyLcLWs
 /uEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=942xX7/V43Ir1tZd4dDu7UDtPNxQiTaRZHtBvgqzC20=;
 b=n06DFUmMfPrLg32pEzRGdWK9n6rHEwspxA/jPyrLso6JpHDcFi0/r/e4pIfCy9W41S
 5mwDGWxKIUnDleeXvoaSNBUqOwk9H5BB9507t+fIXrzJIgjyroTpUxhQTozzs3rV2eTZ
 vuGWmk9ZOEXWUX9YhphkUWIuAJsnGJ5cEMztk3JwjgMaxbqdsCfrzdsITYz1hVDf0gpH
 IvLQ1Gip+xfJYknDezEzUCDQb3mQSIlPwdIR2A2ub0BElCu2q46HxdntAgCNX9saFmC8
 7aYKBWttfF5kCMR5y4A2WfpQbyvw0F4EEEE6z6nVVwFWJIhHOYr0op+/VzXTVJ06cSyk
 Dabg==
X-Gm-Message-State: APjAAAWbXVx4RJkB9l0MWJcA9R5Ku+KJZkb6SAhLWlDGQUoy/q3E9gNX
 HHoruOtuur7ftZ5nyPb0eI4=
X-Google-Smtp-Source: APXvYqwWzSpI+jWTSs7/U42qZ07CYj0qsddqPziA/5CTyO80U0gZgQNLmTFWC7Wd20kSqsdhSFw4gw==
X-Received: by 2002:a2e:981:: with SMTP id 123mr25025470ljj.66.1562245265485; 
 Thu, 04 Jul 2019 06:01:05 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id h1sm485914lfj.21.2019.07.04.06.01.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 04 Jul 2019 06:01:04 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v3 4/7] serial: imx: set_termios(): preserve RTS state
Date: Thu,  4 Jul 2019 16:00:26 +0300
Message-Id: <1562245229-709-5-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1562245229-709-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1562245229-709-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_060107_001935_E5EE4F66 
X-CRM114-Status: GOOD (  12.59  )
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
