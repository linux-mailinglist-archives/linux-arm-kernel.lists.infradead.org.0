Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 256F5A09C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 20:39:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xVsam8d72Rt2zAfZx8NaICpeabAZOxDpfOsIQoK+5aI=; b=ptN3rghhRUvHn/+mqUdsppKqai
	N2TrZm2pnb8EtxE1k69rTDd6etrxglkPAoeyF/XAD34JTyRlhHfMhsHcbSRN6RfLaIx/AHwGXO2zk
	sKE7SHOl7rDaj2xehh/qdYRvKtdCQ5OrcIFa27Fk5O5y5vW7//MbxdR7JQ/VxatG9tU5/D2WrFrlT
	X1qR3Q4RHRbaTOcSQXe4LQrfEUsG70z5OfUYT6wEL84I5eCN8sK4FmIxNaComzfB7beZJqTRHSkTK
	Fof7xX6BbpTTkwiW3Dhf6RivG8psIC3nKrnXi2ai22yieVzRZAxplKjyp+WGUE5Bih0DIoPxeUZWK
	JXz82SaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32qy-0008JW-5Z; Wed, 28 Aug 2019 18:39:32 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i32pe-0007H3-Tq
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 18:38:12 +0000
Received: by mail-lf1-x142.google.com with SMTP id z21so410648lfe.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 11:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=94QLFZILjt+R9uSIMn5NXhRdv4CTLDwWL1ZhIXmN8/k=;
 b=Sjx0JPFQ/5mQv31+zaAUpoNMO8NFVJxuk3E3z5By6c7YxoY2DLLWAsyuK8VBvNjW4k
 to/np/EkNWr8OlyM+Gj48cM08KgfJGu+TNYK3vu4/CpUfaowY1K/F0AnjH5zOsm5xxkq
 P1lw53K1cjGIap8kNep75ayFBzuZSmMEtq3IIhPLPUYPfBD8m85ToiTLREDNFZtCiydR
 e4/dRUBW7Bklflimdx1lY1EGwjNtMd30I5nMbzYxVrjuA7X1LlP8ixJ5oaHHuXkFDJ81
 Qufo+R/MZ+2lm/JqaAURsKeo4AZ/6Xd1X5pWwRvEjZq/7OC/Aj40yIkTYAmeTA6htl1i
 rATQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=94QLFZILjt+R9uSIMn5NXhRdv4CTLDwWL1ZhIXmN8/k=;
 b=eSn24zKbSe4Dz4NQkYiChXSmC46ERyaplVsJvGjcaWepHUtHhes0yUGjYZDbLGbDHF
 4XTow7cIW+TZMWsD3sSSzrWZl9GTuRMUSRPYyH7Wq7eFbq9NlWZksNNXm3/6b/dDC/KU
 GSwtKvkynlEb/yFBaTOkfPcNbl5r9oUWM4PvAw3MnRMmFg4z0nIfZTCb2h/aTs2DnPli
 neMOIP+vxr8vhIzc0a9ES2CtFciyoxZmXSfusGmlXM5vK9LtzzCpV1VS+zRDYq3jj8m3
 k248rW8T+Nud/YO2AlE/7xAKf97R4l+2gQOpkb9FceWXpRXBrpPykmYFgAXZI9ALe5Af
 taFA==
X-Gm-Message-State: APjAAAWGAZPGGV5hqYS6M34ZcnpytCir2C1FDl8gtY10CkX8G8i5e98S
 MCpKSBkGzLUq2E7C45yigTY=
X-Google-Smtp-Source: APXvYqyA2PnTA5e5wDo86A8QDyQ/uPkRhx8VsUeKRQC0LY4ZwQ5XaUQrYcQbrYeVaWZkr9A/n1G7vQ==
X-Received: by 2002:ac2:4289:: with SMTP id m9mr3747085lfh.49.1567017489554;
 Wed, 28 Aug 2019 11:38:09 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id f6sm9226lja.16.2019.08.28.11.38.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 28 Aug 2019 11:38:09 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v2 5/5] serial: imx: use Tx ready rather than Tx empty irq
Date: Wed, 28 Aug 2019 21:37:55 +0300
Message-Id: <1567017475-11919-6-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1567017475-11919-1-git-send-email-sorganov@gmail.com>
References: <20190530152950.25377-1-sorganov@gmail.com>
 <1567017475-11919-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_113810_991939_AE232A4F 
X-CRM114-Status: GOOD (  12.48  )
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

This should help to avoid unnecessary gaps in transmission while
adding little overhead due to low default Tx threshold level (2
bytes).

Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index e89045a..87c58f9 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -439,7 +439,7 @@ static void imx_uart_stop_tx(struct uart_port *port)
 		return;
 
 	ucr1 = imx_uart_readl(sport, UCR1);
-	imx_uart_writel(sport, ucr1 & ~UCR1_TXMPTYEN, UCR1);
+	imx_uart_writel(sport, ucr1 & ~UCR1_TRDYEN, UCR1);
 
 	/* in rs485 mode disable transmitter if shifter is empty */
 	if (port->rs485.flags & SER_RS485_ENABLED &&
@@ -517,7 +517,7 @@ static inline void imx_uart_transmit_buffer(struct imx_port *sport)
 		 * and the TX IRQ is disabled.
 		 **/
 		ucr1 = imx_uart_readl(sport, UCR1);
-		ucr1 &= ~UCR1_TXMPTYEN;
+		ucr1 &= ~UCR1_TRDYEN;
 		if (sport->dma_is_txing) {
 			ucr1 |= UCR1_TXDMAEN;
 			imx_uart_writel(sport, ucr1, UCR1);
@@ -679,7 +679,7 @@ static void imx_uart_start_tx(struct uart_port *port)
 
 	if (!sport->dma_is_enabled) {
 		ucr1 = imx_uart_readl(sport, UCR1);
-		imx_uart_writel(sport, ucr1 | UCR1_TXMPTYEN, UCR1);
+		imx_uart_writel(sport, ucr1 | UCR1_TRDYEN, UCR1);
 	}
 
 	if (sport->dma_is_enabled) {
@@ -688,7 +688,7 @@ static void imx_uart_start_tx(struct uart_port *port)
 			 * disable TX DMA to let TX interrupt to send X-char */
 			ucr1 = imx_uart_readl(sport, UCR1);
 			ucr1 &= ~UCR1_TXDMAEN;
-			ucr1 |= UCR1_TXMPTYEN;
+			ucr1 |= UCR1_TRDYEN;
 			imx_uart_writel(sport, ucr1, UCR1);
 			return;
 		}
@@ -874,7 +874,7 @@ static irqreturn_t imx_uart_int(int irq, void *dev_id)
 		usr1 &= ~USR1_RRDY;
 	if ((ucr2 & UCR2_ATEN) == 0)
 		usr1 &= ~USR1_AGTIM;
-	if ((ucr1 & UCR1_TXMPTYEN) == 0)
+	if ((ucr1 & UCR1_TRDYEN) == 0)
 		usr1 &= ~USR1_TRDY;
 	if ((ucr4 & UCR4_TCEN) == 0)
 		usr2 &= ~USR2_TXDC;
@@ -1474,7 +1474,7 @@ static void imx_uart_shutdown(struct uart_port *port)
 
 	spin_lock_irqsave(&sport->port.lock, flags);
 	ucr1 = imx_uart_readl(sport, UCR1);
-	ucr1 &= ~(UCR1_TXMPTYEN | UCR1_RRDYEN | UCR1_RTSDEN | UCR1_UARTEN | UCR1_RXDMAEN | UCR1_ATDMAEN);
+	ucr1 &= ~(UCR1_TRDYEN | UCR1_RRDYEN | UCR1_RTSDEN | UCR1_UARTEN | UCR1_RXDMAEN | UCR1_ATDMAEN);
 
 	imx_uart_writel(sport, ucr1, UCR1);
 	spin_unlock_irqrestore(&sport->port.lock, flags);
@@ -1778,7 +1778,7 @@ static int imx_uart_poll_init(struct uart_port *port)
 		ucr1 |= IMX1_UCR1_UARTCLKEN;
 
 	ucr1 |= UCR1_UARTEN;
-	ucr1 &= ~(UCR1_TXMPTYEN | UCR1_RTSDEN | UCR1_RRDYEN);
+	ucr1 &= ~(UCR1_TRDYEN | UCR1_RTSDEN | UCR1_RRDYEN);
 
 	ucr2 |= UCR2_RXEN;
 	ucr2 &= ~UCR2_ATEN;
@@ -1938,7 +1938,7 @@ imx_uart_console_write(struct console *co, const char *s, unsigned int count)
 	if (imx_uart_is_imx1(sport))
 		ucr1 |= IMX1_UCR1_UARTCLKEN;
 	ucr1 |= UCR1_UARTEN;
-	ucr1 &= ~(UCR1_TXMPTYEN | UCR1_RRDYEN | UCR1_RTSDEN);
+	ucr1 &= ~(UCR1_TRDYEN | UCR1_RRDYEN | UCR1_RTSDEN);
 
 	imx_uart_writel(sport, ucr1, UCR1);
 
@@ -2294,7 +2294,7 @@ static int imx_uart_probe(struct platform_device *pdev)
 	/* Disable interrupts before requesting them */
 	ucr1 = imx_uart_readl(sport, UCR1);
 	ucr1 &= ~(UCR1_ADEN | UCR1_TRDYEN | UCR1_IDEN | UCR1_RRDYEN |
-		 UCR1_TXMPTYEN | UCR1_RTSDEN);
+		 UCR1_TRDYEN | UCR1_RTSDEN);
 	imx_uart_writel(sport, ucr1, UCR1);
 
 	if (!imx_uart_is_imx1(sport) && sport->dte_mode) {
-- 
2.10.0.1.g57b01a3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
