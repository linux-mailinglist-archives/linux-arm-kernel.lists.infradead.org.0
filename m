Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 759231AFFB3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 04:10:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eP6z65047r7xmGYDZQO6GOvnlO8M4CMNfuhhawS6Khw=; b=cz93k3T6U2hxAt
	kofxlQdyXi4dWYv5hnXUCZbkOJBaKpUNqmVQdHGC9SYmygbGqjsEdRZA5/Y5Ym2IfZGw31xORSmQd
	UnxjcxqDtc9unpN/B02FI6MNOuFFd59hoImi0cEaNpon+LPfvifN1KLtpaFYuY1UxYdR6HgAIwzdk
	7wqIO8yOicewwhAx5XXIl8R8ibZROzkHBH4L5SFvbbEQRPOMlVb/rZSp2Vew8LJhjxeS8ZyfHOAyx
	dTek/gXaicfy3IbJEq96xi0v5RDm4sNRUAh1ay6g82aGTyOzMD6H8VkGECJnepN3RBQ+bAFi1tRbZ
	JVq8A4EIoEviy+wUTuwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQLsZ-0004k5-3q; Mon, 20 Apr 2020 02:09:47 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQLsQ-0004iz-QP; Mon, 20 Apr 2020 02:09:41 +0000
X-UUID: 1373a8ac47c44c0b81864da0824c36c8-20200419
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=apeKneLMG1hzTxdpFAt2JSCjXRLNOpzDMxDOJ9dHZ7A=; 
 b=s1bMKML7bwap4y5xn210AEGCmusoHvGrubKCwaqsMpzZZCddl1IM/z1/DL6YAmbt7QgbA/VHALkV9SJiLQ/DdM+HoG4SpngDGq2LVpN8wUcAY+4Z/yrxKU8f1r2PeGqYp0PgZOmclGSFRx84elGwdE9ueZHH7UCw4jnDSFtWD2Q=;
X-UUID: 1373a8ac47c44c0b81864da0824c36c8-20200419
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 505292043; Sun, 19 Apr 2020 18:09:32 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 19 Apr 2020 19:06:40 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 20 Apr 2020 10:06:34 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 20 Apr 2020 10:06:39 +0800
From: <sean.wang@mediatek.com>
To: <gregkh@linuxfoundation.org>, <jslaby@suse.com>,
 <andriy.shevchenko@linux.intel.com>, <robert.jarzmik@free.fr>,
 <arnd@arndb.de>, <p.zabel@pengutronix.de>, <joel@jms.id.au>,
 <david@lechnology.com>, <jan.kiszka@siemens.com>,
 <heikki.krogerus@linux.intel.com>, <hpeter@gmail.com>, <vigneshr@ti.com>,
 <matthias.bgg@gmail.com>, <tthayer@opensource.altera.com>
Subject: [PATCH v2] tty: serial: don't do termios for BTIF
Date: Mon, 20 Apr 2020 10:06:38 +0800
Message-ID: <8c47aea3aa3cce4d7484b840ddb117cd16bcf1cc.1587347988.git.sean.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_190938_858273_AB8B16A6 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Ryder
 Lee <ryder.lee@mediatek.com>, Steven Liu <steven.liu@mediatek.com>, Sean
 Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-serial@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Wang <sean.wang@mediatek.com>

Bluetooth Interface (BTIF) is designed dedicatedly for MediaTek SOC with
BT in order to be instead of the UART interface between BT module and Host
CPU, and not exported to user space to access.

As the UART design, BTIF will be an APB slave and can transmit or receive
data by MCU access, but doesn't provide termios function like baudrate and
flow control setup.

Even LCR on offset 0xC that is just a FAKELCR
a. If FAKELCR[7] is equaled to 1, RBR(0x00), THR(0x00), IER(0x04)
   will not be readable/writable.

b. If FAKELCR is equaled to 0xBF, RBR(0x00), THR(0x00), IER(0x04),
   IIR(0x08), and LSR(0x14) will not be readable/writable.

So adding a new capability 'UART_CAP_NMOD' for the unusual unsupported
case.

Fixes: 1c16ae65e250 ("serial: 8250: of: Add new port type for MediaTek BTIF controller on MT7622/23 SoC")
Cc: Steven Liu <steven.liu@mediatek.com>
Signed-off-by: Sean Wang <sean.wang@mediatek.com>
Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>

--
v1->v2:
no change on termios->c_cflag and refine commit message
---
 drivers/tty/serial/8250/8250.h      | 1 +
 drivers/tty/serial/8250/8250_port.c | 5 ++++-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/8250/8250.h b/drivers/tty/serial/8250/8250.h
index 33ad9d6de532..250337e4e7c8 100644
--- a/drivers/tty/serial/8250/8250.h
+++ b/drivers/tty/serial/8250/8250.h
@@ -82,6 +82,7 @@ struct serial8250_config {
 #define UART_CAP_MINI	(1 << 17)	/* Mini UART on BCM283X family lacks:
 					 * STOP PARITY EPAR SPAR WLEN5 WLEN6
 					 */
+#define UART_CAP_NMOD	(1 << 18)	/* UART doesn't do termios */
 
 #define UART_BUG_QUOT	(1 << 0)	/* UART has buggy quot LSB */
 #define UART_BUG_TXEN	(1 << 1)	/* UART has buggy TX IIR status */
diff --git a/drivers/tty/serial/8250/8250_port.c b/drivers/tty/serial/8250/8250_port.c
index 0325f2e53b74..da0a8711ee3d 100644
--- a/drivers/tty/serial/8250/8250_port.c
+++ b/drivers/tty/serial/8250/8250_port.c
@@ -286,7 +286,7 @@ static const struct serial8250_config uart_config[] = {
 		.tx_loadsz	= 16,
 		.fcr		= UART_FCR_ENABLE_FIFO |
 				  UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT,
-		.flags		= UART_CAP_FIFO,
+		.flags		= UART_CAP_FIFO | UART_CAP_NMOD,
 	},
 	[PORT_NPCM] = {
 		.name		= "Nuvoton 16550",
@@ -2544,6 +2544,9 @@ serial8250_do_set_termios(struct uart_port *port, struct ktermios *termios,
 	unsigned long flags;
 	unsigned int baud, quot, frac = 0;
 
+	if (up->capabilities & UART_CAP_NMOD)
+		return;
+
 	if (up->capabilities & UART_CAP_MINI) {
 		termios->c_cflag &= ~(CSTOPB | PARENB | PARODD | CMSPAR);
 		if ((termios->c_cflag & CSIZE) == CS5 ||
-- 
2.25.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
