Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE621B4C6F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 20:02:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5rv9OO1tR1Y6DRf0nnY9YkNRwO6l+JLNkEpohcYRRiE=; b=hRE1Uhykpb3pw9
	A9Z2MO1sUnJMVCGuiaxi8OSUGKt4I8VFqzpRo12jTKJYN22UQ0IAhK9+na/3nzWIN5jtnAhmEts84
	OwdcjWTeVm9xbLIbpJVOJzYS5XoCTBOnYb6Lk9pnTgX+uwUlvF8VBMCjfLItvR/AGDRO2wXiTVYYb
	SJDXfMxIIK7hoBfmAufgXH4G9yeXp7/frrEWy74bqlNcKcq+Bz2PlBxJ8v8M9PXffrnUaPW7czLtu
	00HweUf3QmgX/km6HhID4XtLHMuLDrH5pidqlWb3StT3IknTfcjKLJtZ61saSDjOfU/SGmnQVisfV
	9kmdMszx9RPphhT2ugcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRJhn-0008OO-Uv; Wed, 22 Apr 2020 18:02:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRJhX-0008Km-Q6; Wed, 22 Apr 2020 18:02:25 +0000
X-UUID: 6c98df8fdb7c440ab0b1c0199661244b-20200422
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=Wd/MOGLi3v8IcIouicrcERfGp8lHo02kJWYXWlv+S1A=; 
 b=QWRiLzipAoLjhsTOI/5Zdc5Pr6jnvLdu0murOZ8eSYQzZFdk4RewKgOwZ16sfh0i6YDrgkyJKaziX5CsijX0RQx3KLcnKcWL0yCrgfxfydfLl7T2myS481mccOaveytrkbhOFAjN6b0yEK7JBcw6by6mQQjYwoIggQythrBRhuk=;
X-UUID: 6c98df8fdb7c440ab0b1c0199661244b-20200422
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 875353991; Wed, 22 Apr 2020 10:02:03 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 22 Apr 2020 11:02:12 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 23 Apr 2020 02:02:06 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 23 Apr 2020 02:02:05 +0800
From: <sean.wang@mediatek.com>
To: <gregkh@linuxfoundation.org>, <jslaby@suse.com>,
 <andriy.shevchenko@linux.intel.com>, <mika.westerberg@linux.intel.com>,
 <sr@denx.de>, <arnd@arndb.de>, <matthias.bgg@gmail.com>,
 <tthayer@opensource.altera.com>
Subject: [PATCH v3] tty: serial: don't do termios for BTIF
Date: Thu, 23 Apr 2020 02:02:08 +0800
Message-ID: <cc41ea10be9ab96568f0371784e3b9f8d9f434b9.1587577548.git.sean.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_110223_879480_B7A1B4FA 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

So adding a new capability 'UART_CAP_NTIO' for the unusual unsupported
case.

Fixes: 1c16ae65e250 ("serial: 8250: of: Add new port type for MediaTek BTIF controller on MT7622/23 SoC")
Cc: Steven Liu <steven.liu@mediatek.com>
Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Sean Wang <sean.wang@mediatek.com>
Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>

--
v1->v2:
no change on termios->c_cflag and refine commit message

v2->v3:
change the naming from NMOD to NTIO as TIO is a well established prefix
for termios IOCTLs.
---
 drivers/tty/serial/8250/8250.h      | 1 +
 drivers/tty/serial/8250/8250_port.c | 5 ++++-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/8250/8250.h b/drivers/tty/serial/8250/8250.h
index 33ad9d6de532..234d8db470c0 100644
--- a/drivers/tty/serial/8250/8250.h
+++ b/drivers/tty/serial/8250/8250.h
@@ -82,6 +82,7 @@ struct serial8250_config {
 #define UART_CAP_MINI	(1 << 17)	/* Mini UART on BCM283X family lacks:
 					 * STOP PARITY EPAR SPAR WLEN5 WLEN6
 					 */
+#define UART_CAP_NTIO	(1 << 18)	/* UART doesn't do termios */
 
 #define UART_BUG_QUOT	(1 << 0)	/* UART has buggy quot LSB */
 #define UART_BUG_TXEN	(1 << 1)	/* UART has buggy TX IIR status */
diff --git a/drivers/tty/serial/8250/8250_port.c b/drivers/tty/serial/8250/8250_port.c
index 0325f2e53b74..abc974b4113f 100644
--- a/drivers/tty/serial/8250/8250_port.c
+++ b/drivers/tty/serial/8250/8250_port.c
@@ -286,7 +286,7 @@ static const struct serial8250_config uart_config[] = {
 		.tx_loadsz	= 16,
 		.fcr		= UART_FCR_ENABLE_FIFO |
 				  UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT,
-		.flags		= UART_CAP_FIFO,
+		.flags		= UART_CAP_FIFO | UART_CAP_NTIO,
 	},
 	[PORT_NPCM] = {
 		.name		= "Nuvoton 16550",
@@ -2544,6 +2544,9 @@ serial8250_do_set_termios(struct uart_port *port, struct ktermios *termios,
 	unsigned long flags;
 	unsigned int baud, quot, frac = 0;
 
+	if (up->capabilities & UART_CAP_NTIO)
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
