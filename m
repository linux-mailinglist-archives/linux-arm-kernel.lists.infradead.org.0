Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8F23B118
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 10:45:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HPn0coHdTKnYgw+hJ8rPxF4vwJyV3muMEgHe0nDaFaE=; b=GlM
	boOnnUq8L3KStnJizrXS82SRVIEFAFKRwlgQjJjoH6J835E/x+qsrIkYtf9tZFhRMy3PRJhLMAQLA
	lld6l5JrSBsY3W7rRlGkQwHa0XZMH8MEwMrtNF6hUaEgYZ9k7/h0rm22E4jACmJsZYxEfKAVjma//
	N7R+bWucuyxkCs7fmg8u5rqufpHTmFp11gSj9TXQss63L6+6ysOaj8CCU9MSUZ/KIHJO5/vi/calf
	WqIde4gPNkpev5fNPTh93yN73affXfGQh2/a3bx/wkYNnjSYlek0JK3Za/JYg8PRBJbBfypoT4bzm
	2RN0UICdLthvBIvTBHGQM+9BgVV55aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFvy-00060X-Ly; Mon, 10 Jun 2019 08:45:43 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFvM-0004Wn-KE
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 08:45:07 +0000
Received: by mail-wm1-x344.google.com with SMTP id c6so7314667wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 01:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id;
 bh=qNwGVD0v2tDJVOma8Me2tLXYHNv3uP9ayQAL5Zl5p8M=;
 b=nSxgBY6UD0ogbvDpleZuxipRQtaVHmWNbd3+eNF78yabI2JIsfMO39rdkJuMbNNNEe
 uIru4cBb1MmPcYWj/kOLluu1HIst5DczKJbRnNe3C7chIny78xJnJTbDtp/bTTC1rJ9A
 CmsykBhDqPh7Zez/O5wtjuOyEWDN1wnP4Jnzw4pIcLWrTRNn2YEDYEE0JRNkS8JYgE/M
 AjOs8MemHx6dr4ab2ob+j1UcCcxRGLyhd5CdXX244kUkBitDNEIpROnrP/ooYoi31a1c
 SkWZtppIKK3rhjmELkQWW0VubtKtcsVIwBvkvM4IJPb/n+25vEnNmktuAdmvI1nxggCR
 X/sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=qNwGVD0v2tDJVOma8Me2tLXYHNv3uP9ayQAL5Zl5p8M=;
 b=MRzFLHpoqy4JJIhhavZCGS5qp2ea8G3rAVZP/yLDL2G9wAKfK3HZlKUkyafqIohhZQ
 bHHYm7YrmGo+Y5OQhZcZJdU7IzTjq86KDnwJ8DkHVEetVzvi7EAqgo8/+YJiQK4gNj3J
 378G4F+Gt81iNBXILuIjF5o/+VVX0d0BrRlZkq0Kt9h99Mm/aH4jykwC9fA9ox5nxZQI
 g2vIZpBCXCfeqJFMD/fldqH+ooFhfwdf1tWd0vCpqfcsRCTD4NArw+TQ9z0DIKUbO5om
 v2W/hKSKxSTsZDWYuOX1S03Tw/8PjV8k/gPbtGGwczrmnI3mZQ4FZXBDGv9eTYSPccvA
 zElg==
X-Gm-Message-State: APjAAAU065eDqSK6aw2UhRiEYT+ORkcvaeLBu17jGcmS0DuIItaia5NE
 ZepoSAtuvEXmN+4I7TGe+coJEew74QFqzg==
X-Google-Smtp-Source: APXvYqzqd62YGTXD2QtIldC59KTmIjNitmODkstbY2lZa1eC733LOO1gBiQtxJ40qqkDdHCG3xx5MQ==
X-Received: by 2002:a1c:750d:: with SMTP id o13mr12156907wmc.35.1560156301810; 
 Mon, 10 Jun 2019 01:45:01 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id j132sm17445435wmj.21.2019.06.10.01.45.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Jun 2019 01:45:01 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 johan@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH 1/2] serial: xilinx_uartps: Fix warnings in the driver
Date: Mon, 10 Jun 2019 10:44:55 +0200
Message-Id: <c6753260caf8b20cc002b15fcbf22b759c91d760.1560156294.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_014504_858884_1E689F17 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nava kishore Manne <nava.manne@xilinx.com>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nava kishore Manne <nava.manne@xilinx.com>

This patch fixes the below warning

        -->Symbolic permissions 'S_IRUGO' are not preferred.
           Consider using octal permissions '0444'.
        -->macros should not use a trailing semicolon.
        -->line over 80 characters.
        -->void function return statements are not generally useful.
        -->Prefer 'unsigned int' to bare use of 'unsigned'.

Signed-off-by: Nava kishore Manne <nava.manne@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Happy to split it if needed.
---
 drivers/tty/serial/xilinx_uartps.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index 605354fd60b1..6af2886f5ba7 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -35,12 +35,12 @@
 
 /* Rx Trigger level */
 static int rx_trigger_level = 56;
-module_param(rx_trigger_level, uint, S_IRUGO);
+module_param(rx_trigger_level, uint, 0444);
 MODULE_PARM_DESC(rx_trigger_level, "Rx trigger level, 1-63 bytes");
 
 /* Rx Timeout */
 static int rx_timeout = 10;
-module_param(rx_timeout, uint, S_IRUGO);
+module_param(rx_timeout, uint, 0444);
 MODULE_PARM_DESC(rx_timeout, "Rx timeout, 1-255");
 
 /* Register offsets for the UART. */
@@ -199,7 +199,7 @@ struct cdns_platform_data {
 	u32 quirks;
 };
 #define to_cdns_uart(_nb) container_of(_nb, struct cdns_uart, \
-		clk_rate_change_nb);
+		clk_rate_change_nb)
 
 /**
  * cdns_uart_handle_rx - Handle the received bytes along with Rx errors.
@@ -312,7 +312,8 @@ static void cdns_uart_handle_tx(void *dev_id)
 	} else {
 		numbytes = port->fifosize;
 		while (numbytes && !uart_circ_empty(&port->state->xmit) &&
-		       !(readl(port->membase + CDNS_UART_SR) & CDNS_UART_SR_TXFULL)) {
+		       !(readl(port->membase + CDNS_UART_SR) &
+						CDNS_UART_SR_TXFULL)) {
 			/*
 			 * Get the data from the UART circular buffer
 			 * and write it to the cdns_uart's TX_FIFO
@@ -1073,8 +1074,6 @@ static void cdns_uart_poll_put_char(struct uart_port *port, unsigned char c)
 		cpu_relax();
 
 	spin_unlock_irqrestore(&port->lock, flags);
-
-	return;
 }
 #endif
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
