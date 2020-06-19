Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F8C201BFE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 22:09:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=voXG16IMd40xGHwZTcIn/lca2jKZmVn+6qctNYCsnz8=; b=ZkNIQwZuJoYXQi
	GVeo1lHSO6ikaylw/4dI76mWyYkWwB3+YBO21YJA1upnCR19r5OzaHrqqp6BYteZSdZPeUHoItSh9
	ZX6JWqYMUatpEBTuwXp7qAW+RSTdFHdBOpDK+354urUdiSWS14KEK1AA58zljTaJ/8p/CP4epAIuB
	VNHFd0t2wowIifFIIe3hEvg5OjZ9LgyJxiIc3CYGT5sCe77KVlGz2oxYm9ihCUCwWMdyz0wh4NzoL
	/1hwISiph2BwcZRaBCc3JwoErpg1VtWY8TgsHYemyepHnTEmgl6FeBKUrOUQZbj7pNUhnnuxAK85O
	jln1NA8SGgmHbCn6ZUVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmNKW-0001gq-LF; Fri, 19 Jun 2020 20:09:40 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmNKK-0001gR-I3; Fri, 19 Jun 2020 20:09:30 +0000
X-UUID: 712aac6958764fd99d30ded06fa6d129-20200619
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=mQyV9oA90nw/l5PmfxypuRikaoz6DxZG8g7s7v+PD9k=; 
 b=YBER7Q2WRljruntiQ6zyStuFdkQtWZ7R6Tq0zW5RVVV5wSla9HrpOfeAWUZv668elKofn1ZgulLBHjDlUt+dtldpbWp4IwbXdWFolN03Qkp3BteheX+J6q7k2vn5WJOKtU1YjePZpTsckpRki5dbloIsyIAW+3XwZDqQ1ltiF5g=;
X-UUID: 712aac6958764fd99d30ded06fa6d129-20200619
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1051897526; Fri, 19 Jun 2020 12:09:23 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 12:59:18 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 20 Jun 2020 03:59:15 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sat, 20 Jun 2020 03:59:11 +0800
From: <sean.wang@mediatek.com>
To: <robh+dt@kernel.org>, <gregkh@linuxfoundation.org>, <jslaby@suse.com>,
 <andriy.shevchenko@linux.intel.com>, <robert.jarzmik@free.fr>,
 <arnd@arndb.de>, <p.zabel@pengutronix.de>, <joel@jms.id.au>,
 <david@lechnology.com>, <jan.kiszka@siemens.com>,
 <heikki.krogerus@linux.intel.com>, <hpeter@gmail.com>, <vigneshr@ti.com>,
 <matthias.bgg@gmail.com>, <tthayer@opensource.altera.com>
Subject: [PATCH v4] tty: serial: don't do termios for BTIF
Date: Sat, 20 Jun 2020 03:59:14 +0800
Message-ID: <78efa2b1e2599deff4d838b05b4054ec5ac2976a.1592595601.git.sean.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: F0184A2B374C0FECDB916DDE74159AA926AA2C638F0BA363607752D2529A60792000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_130928_604024_22B0B820 
X-CRM114-Status: GOOD (  12.88  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>, Steven
 Liu <steven.liu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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

The bluetooth driver would use BTIF device as a serdev. So the termios
still function would be called in kernelspace from ttyport_open in
drivers/tty/serdev/serdev-ttyprt.c.

Fixes: 1c16ae65e250 ("serial: 8250: of: Add new port type for MediaTek BTIF controller on MT7622/23 SoC")
Cc: Steven Liu <steven.liu@mediatek.com>
Signed-off-by: Sean Wang <sean.wang@mediatek.com>
Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>

--
v1->v2:
no change on termios->c_cflag and refine commit message

v2->v3:
change the naming from NMOD to NTIO as TIO is a well established prefix
for termios IOCTLs.

v3->v4:
1. remove appropriate tag
2. add the explanation why the termios is required even when the connection
   isn't exported to userspace.
---
 drivers/tty/serial/8250/8250.h      | 1 +
 drivers/tty/serial/8250/8250_port.c | 5 ++++-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/8250/8250.h b/drivers/tty/serial/8250/8250.h
index 52bb21205bb6..0d9d3bfe48af 100644
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
index 1632f7d25acc..af54db877efe 100644
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
@@ -2640,6 +2640,9 @@ serial8250_do_set_termios(struct uart_port *port, struct ktermios *termios,
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
