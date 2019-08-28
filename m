Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE40A09C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 20:39:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VAB5BpovYOVdr0GKWqsQrwF0n480plqrbkwpKQV495w=; b=h58qe+NUV+nQUkfSVCIpmRPNO0
	uiLSWT6rk6gNnad1o4A7J5uqSaEw4Zllv2VIZ3GNTy93YfCaf5CbUp0yeGhFW+MnQtImuAvcTIqKl
	6Gv78ObOVKTjKIcD5j2NB0piZTjajBfG0d0/tAB/HS26hffwpitoSb87KhQqp169XWRLZUUZ3Utqe
	2mdRf5GxhAP84G8IrA4lPUzHzfejaxY7GXOahn48Ly98iVVXTqZNfzmnNGEqLGhso9eGWeJkDfqQ2
	TWyDyi4Nbf27Fl2ADfIOh6MxDWj6XPhUvqkxJgAR91yiU40Hy+fXeO8aXS0wrES7RDGwS9Bz1Ydcg
	0SUqzOwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32ql-00086F-B8; Wed, 28 Aug 2019 18:39:19 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i32pd-0007GZ-Pg
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 18:38:11 +0000
Received: by mail-lf1-x143.google.com with SMTP id l11so386538lfk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 11:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Hq8Irfar0eMF52VRL6jb7YZsMYuqVZje40ByVMTx8hM=;
 b=o6bem+9DKTPq730Ec0kUZztFBO3dsRWGsyCHCE4SR9ms4N+8jDj1sogyLkdpYT2f/n
 Gjdexj8F8AsOVDyqby440XFGGxJlUFNKftogR33ix1Xk/uzcsOvIeh+oeVWsLSmOOoqa
 lVzTsklURj7AD9kIhCE9p0m5bh8yljLaVaN7TPAC/idftsP0yyMkzYEXbr0T5ZiSsfVB
 4BpR5Onq5bDDP/n37prrjjMRzK9nq4XvH+a/0GNUL3zWNsu3dAfvE9wFlWupNgBhTdhY
 IT/WXOmkjhp0k+XPWHPVrrFLKcw5SGhNi/qimdbGTtwpCOWNfd4YXljFKjChg5X9wj7V
 d5iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Hq8Irfar0eMF52VRL6jb7YZsMYuqVZje40ByVMTx8hM=;
 b=QE6aucUAwuHtwla2hztpEBDkYlrUzF1qLTusqTy+08clYB+fwqzcbX8UN06ZqeVjGg
 IuHrxA4iRIQ1ijrWlXFyu2l3FCiodXSyV/mNuUs9goVTm3EqOHiMRTh1E5vFzygVIrTw
 EtYkP85AtNDYZasAI/xQ1yAPlB9YEeMuT/KIA+R0IF3B+5qShhDhBmFhE6N4T754EiNs
 59H8egGdHvqyKKofBxmvf6dr8M2c2/Z3LST44bHFZgZ+BtGorjch/VZDNSoXc4nzs1/k
 AZcaTuYwbEFgDdnIKng8mjiJ1rRs2/+HsKXwHAx2DbCaUiJ5yvB1djvCsJmbLYHk9DLG
 MhOw==
X-Gm-Message-State: APjAAAVL+OA1cS4Rv13KTTzp1Uh5yz5t23+6X46c4YhSITeS3TdBzPYd
 blcisiYz1FmKYUlZ2cxcFrQ=
X-Google-Smtp-Source: APXvYqwysdFTCEKB9GdYyg8ZVRVcrqhCYFgN8D9pq/JihCpiNfIceCXGHSpStlzWIMAdbETWLONv7Q==
X-Received: by 2002:ac2:447c:: with SMTP id y28mr3345252lfl.177.1567017488497; 
 Wed, 28 Aug 2019 11:38:08 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id f6sm9226lja.16.2019.08.28.11.38.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 28 Aug 2019 11:38:07 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v2 4/5] serial: imx: fix data breakage on termios change
Date: Wed, 28 Aug 2019 21:37:54 +0300
Message-Id: <1567017475-11919-5-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1567017475-11919-1-git-send-email-sorganov@gmail.com>
References: <20190530152950.25377-1-sorganov@gmail.com>
 <1567017475-11919-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_113809_832965_308E1D16 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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

imx_set_termios(): avoid writing baud rate divider registers when the
values to be written are the same as current. Any writing seems to
restart transmission/receiving logic in the hardware, that leads to
data breakage even when rate doesn't in fact change. E.g., user
switches RTS/CTS handshake and suddenly gets broken bytes.

Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index cc3783c..e89045a 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -1545,7 +1545,7 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 	unsigned int baud, quot;
 	unsigned int old_csize = old ? old->c_cflag & CSIZE : CS8;
 	unsigned long div;
-	unsigned long num, denom;
+	unsigned long num, denom, old_ubir, old_ubmr;
 	uint64_t tdiv64;
 
 	/*
@@ -1670,8 +1670,21 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 	ufcr = (ufcr & (~UFCR_RFDIV)) | UFCR_RFDIV_REG(div);
 	imx_uart_writel(sport, ufcr, UFCR);
 
-	imx_uart_writel(sport, num, UBIR);
-	imx_uart_writel(sport, denom, UBMR);
+	/*
+	 *  Two registers below should always be written both and in this
+	 *  particular order. One consequence is that we need to check if any of
+	 *  them changes and then update both. We do need the check for change
+	 *  as even writing the same values seem to "restart"
+	 *  transmission/receiving logic in the hardware, that leads to data
+	 *  breakage even when rate doesn't in fact change. E.g., user switches
+	 *  RTS/CTS handshake and suddenly gets broken bytes.
+	 */
+	old_ubir = imx_uart_readl(sport, UBIR);
+	old_ubmr = imx_uart_readl(sport, UBMR);
+	if (old_ubir != num || old_ubmr != denom) {
+		imx_uart_writel(sport, num, UBIR);
+		imx_uart_writel(sport, denom, UBMR);
+	}
 
 	if (!imx_uart_is_imx1(sport))
 		imx_uart_writel(sport, sport->port.uartclk / div / 1000,
-- 
2.10.0.1.g57b01a3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
