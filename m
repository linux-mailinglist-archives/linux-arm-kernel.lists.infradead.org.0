Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969AC1747DE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 17:06:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GN06UOikcYLr5w/fdKeeFaS/U395RnxGyDeo7+klDSs=; b=nmv
	nwt1Zhf3nnFROxrwB2RNfk9O1nL1AR4hSg8OA/uHQDL2pAqAQuv98v+upBcAEGxldDVAnA5J4Kf1c
	TPiJVr4OqnVKQ0Bict4x/mzGDUBz/nCD3M7DS1gzkyzUi4qvhofokPMjOeDraip6FcK/cKIa0SV+K
	LAVzsxS3aYd3SlbrQbcf31+lXVcTBRzLwEpjLV9iumn6xg3UtlukSsp6aAYRx49Uyz4HQT9tUYlcW
	I5HRA1qZI0WxV2fiGPeJrYIZgnH4MRhKQFOtXhUcpeOQo5xeSZUH3eyChbPAINPOcxY9QF11Teqft
	GyPG33W44tdisIPDHs9HKWb+k7EM09g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j84dE-0006wh-Ck; Sat, 29 Feb 2020 16:06:24 +0000
Received: from ms9.eaxlabs.cz ([147.135.177.209])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j84ci-0006cV-6S
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 16:05:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=eaxlabs.cz;
 s=mail; h=Message-Id:Date:Subject:Cc:To:From;
 bh=Ckgfb+tZ4UayimR7ATmjnhS6EOieCUCK3o2mRGl5D0k=; 
 b=NkxIiuTkB7rHeUHTFzQ7/Guyj4/QwnLwBusq91zKwUl1NgwFnwEKxYW/yZ7r7f17urT6PP6bkyrUgqGcFcEssp0wR0gN49vFfEDPV+SP1orpR+bsrCORGoOchWPOT/CQ/8LM59e90KbPeBXjhNzNJoLzRgZ0HZ36scpn5WpNERw=;
Received: from [82.99.129.6] (helo=localhost.localdomain)
 by ms9.eaxlabs.cz with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.84_2) (envelope-from <devik@eaxlabs.cz>)
 id 1j84cV-000150-TL; Sat, 29 Feb 2020 17:05:42 +0100
From: Martin Devera <devik@eaxlabs.cz>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 linux-serial@vger.kernel.org (open list:SERIAL DRIVERS),
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/STM32 ARCHITECTURE), 
 linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 1/2] tty/serial: Add st,swap OF option to stm32-usart
Date: Sat, 29 Feb 2020 17:05:06 +0100
Message-Id: <20200229160507.31309-1-devik@eaxlabs.cz>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_080552_546936_7A2EDF5E 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Devera <devik@eaxlabs.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

STM32 F7/H7 usarts supports RX & TX pin swapping.
Add option to turn it on.
Tested on STM32MP157.

Signed-off-by: Martin Devera <devik@eaxlabs.cz>
---
 drivers/tty/serial/stm32-usart.c | 3 ++-
 drivers/tty/serial/stm32-usart.h | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index fdcc2142aa79..8d25869a02eb 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -780,7 +780,7 @@ static void stm32_set_termios(struct uart_port *port, struct ktermios *termios,
 	cr1 = USART_CR1_TE | USART_CR1_RE;
 	if (stm32_port->fifoen)
 		cr1 |= USART_CR1_FIFOEN;
-	cr2 = 0;
+	cr2 = stm32_port->swap ? USART_CR2_SWAP : 0;
 
 	/* Tx and RX FIFO configuration */
 	cr3 = readl_relaxed(port->membase + ofs->cr3);
@@ -1097,6 +1097,7 @@ static struct stm32_port *stm32_of_get_stm32_port(struct platform_device *pdev)
 
 	stm32_ports[id].hw_flow_control = of_property_read_bool(np,
 							"st,hw-flow-ctrl");
+	stm32_ports[id].swap = of_property_read_bool(np, "st,swap");
 	stm32_ports[id].port.line = id;
 	stm32_ports[id].cr1_irq = USART_CR1_RXNEIE;
 	stm32_ports[id].cr3_irq = 0;
diff --git a/drivers/tty/serial/stm32-usart.h b/drivers/tty/serial/stm32-usart.h
index 2a68bc48652e..2503a91b890c 100644
--- a/drivers/tty/serial/stm32-usart.h
+++ b/drivers/tty/serial/stm32-usart.h
@@ -275,6 +275,7 @@ struct stm32_port {
 	enum dma_cb rx_dma_cb;	 /* dma rx callback status    */
 	bool tx_dma_busy;	 /* dma tx busy               */
 	bool hw_flow_control;
+	bool swap;		 /* swap RX & TX pins */
 	bool fifoen;
 	int wakeirq;
 	struct pinctrl_state *console_pins;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
