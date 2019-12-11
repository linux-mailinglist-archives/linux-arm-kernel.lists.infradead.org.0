Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E3D11B900
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 17:39:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Sf7LDpnNHEzfMAanI4FbMEgLHqwGbDb/NxQNMjeQbd4=; b=ADD
	78gBiMNb/Kh2rRiGiy9NKs1xQZOBCYtctoepAXUmckzXh11G3MqnMFKDPVGgPW59SCzdTVOv3HWyF
	b+Q9re3UX3TLkP734pCTdxn8diNbtviTVmJrrCe77S6Iak6Ia5vviI6OLVb2g/Ii2EWr5NVFAyVer
	sA9YzZWRxNH0iS8QccgSLoO+gEIAzdqqCnuv+6Q/qNCbKYxqgFIEXEP4x7SQY4wPokUtn+vnSE1xB
	8MgmIIG06fjaN5zicQK82pagFQpTSneGCCgELgnw4VIdhjrpJD0o9MEBNNUZNUVWS0woTUuIkEsuz
	xozx/9u4mJud780sLFbEVM547IDzTiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if51U-0004JE-Ly; Wed, 11 Dec 2019 16:39:36 +0000
Received: from mail.sysgo.com ([176.9.12.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if51N-0004I0-H8
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 16:39:30 +0000
From: David Engraf <david.engraf@sysgo.com>
To: richard.genoud@gmail.com, gregkh@linuxfoundation.org, jslaby@suse.com,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 ludovic.desroches@microchip.com
Subject: [PATCH] tty/serial: atmel: fix out of range clock divider handling
Date: Wed, 11 Dec 2019 17:29:54 +0100
Message-Id: <20191211162954.8393-1-david.engraf@sysgo.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_083929_745260_BAB67E56 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.12.79 listed in list.dnswl.org]
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
Cc: David Engraf <david.engraf@sysgo.com>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use MCK_DIV8 when the clock divider is > 65535. Unfortunately the mode
register was already written thus the clock selection is ignored.

Fix by writing the mode register after calculating the baudrate.

Signed-off-by: David Engraf <david.engraf@sysgo.com>
---
 drivers/tty/serial/atmel_serial.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/atmel_serial.c b/drivers/tty/serial/atmel_serial.c
index a8dc8af83f39..9983e2fabbac 100644
--- a/drivers/tty/serial/atmel_serial.c
+++ b/drivers/tty/serial/atmel_serial.c
@@ -2270,9 +2270,6 @@ static void atmel_set_termios(struct uart_port *port, struct ktermios *termios,
 		mode |= ATMEL_US_USMODE_NORMAL;
 	}
 
-	/* set the mode, clock divisor, parity, stop bits and data size */
-	atmel_uart_writel(port, ATMEL_US_MR, mode);
-
 	/*
 	 * when switching the mode, set the RTS line state according to the
 	 * new mode, otherwise keep the former state
@@ -2315,6 +2312,9 @@ static void atmel_set_termios(struct uart_port *port, struct ktermios *termios,
 	}
 	quot = cd | fp << ATMEL_US_FP_OFFSET;
 
+	/* set the mode, clock divisor, parity, stop bits and data size */
+	atmel_uart_writel(port, ATMEL_US_MR, mode);
+
 	if (!(port->iso7816.flags & SER_ISO7816_ENABLED))
 		atmel_uart_writel(port, ATMEL_US_BRGR, quot);
 	atmel_uart_writel(port, ATMEL_US_CR, ATMEL_US_RSTSTA | ATMEL_US_RSTRX);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
