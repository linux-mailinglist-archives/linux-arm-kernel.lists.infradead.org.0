Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5156649E00
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 12:03:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/nS9y9kBesqid+lmuGGE74OPOdPmsTdnoumXtOYAO/o=; b=EIVLtiF45Euvdz
	yLTzyFfaKvXQoO4Vd0/ftrxt3peYZotTe5DiISaGu7plsSRg7ZXQjVComWSUzbQafNrvJdbalRkbw
	43PLCndxQfYBEcoX7100uPbvt5qQALWOk26AHN8XYQl3rnp0F+3dbYaHPXVGwONEEVFGL66MLy+Ax
	CW6/xuZV82l0gEwg0qgYPNupPfmahTEh3g2oceJMeZuiAXMZpuUD/1itFEDl2OZSZQXyHotFsvjxf
	EpH6k0xXMjAI8KKkdBGnjjKS3Hwo+1+Qa0HxYLBBGoEpvk1+7jNG4+Vn8Ahv43chn8dvhYhJ1ZeUJ
	F/mbpraKK4J4MoNUDaTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAxd-00057b-D4; Tue, 18 Jun 2019 10:03:29 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAx3-0004w5-SW
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 10:02:55 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5IA2pAE007240; Tue, 18 Jun 2019 12:02:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=KyPIftAgE9NM9O+rf5bz9aF47OIgAwyV9NGcZI0jZxs=;
 b=x2LnvwY6EzQJJLZ5fD2I/0Wn4qSkdaJ1VktYw/OpvGEntaedT8O0UzvaY2W4E38Tn+dA
 91IrN1IAJ9oAV3OIbZKLlyU9PJHoPl+j14VLeuMmcQ1INx8/7mIubfAFYQQCJN/cnpmf
 7Gq9q4YZD62HXwubKSgNnsjVE/74sPVQZ0F5mFl95OajjkQdi8xxBX+WDaLUSzSW7e8k
 dVE6QMRie9lOFbMCIUorKg5+nRgYFaoDAq2W7ywsZLq0nOBIPbcqpLYcQ2o0bh0v3WVU
 hompfFdCeFwkWU3T+zeRGQTgP8gKnk0/y9AiNJMr/Z28J4+eVqpWCYHuHetNcAmwUoaP nw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t4peu7myn-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 18 Jun 2019 12:02:51 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8819234;
 Tue, 18 Jun 2019 10:02:41 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 662AC25DD;
 Tue, 18 Jun 2019 10:02:41 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 18 Jun
 2019 12:02:41 +0200
Received: from localhost (10.201.23.31) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 18 Jun 2019 12:02:40
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Alexandre
 Torgue" <alexandre.torgue@st.com>
Subject: [PATCH 3/5] serial: stm32: add support of TX FIFO threshold
Date: Tue, 18 Jun 2019 12:02:24 +0200
Message-ID: <1560852146-3393-4-git-send-email-erwan.leray@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560852146-3393-1-git-send-email-erwan.leray@st.com>
References: <1560852146-3393-1-git-send-email-erwan.leray@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.31]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-18_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_030254_213807_B8B1A33E 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, Erwan Le Ray <erwan.leray@st.com>,
 linux-serial@vger.kernel.org, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds the support of TX FIFO threshold in order to improve the TX FIFO
management:
- TX FIFO threshold irq enabling (instead of relying on tx empty / fifo
  not full irq that generates one irq/char)
- TXCFG is set to half fifo size (e.g. 16/2 = 8 data for a 16 data depth
  FIFO)
- irq rate may be reduced by up to 1/TXCFG,  e.g. 1 over 8 with current
  TXCFG setting.

Signed-off-by: Erwan Le Ray <erwan.leray@st.com>

diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index 8316e19..397d86d 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -298,6 +298,32 @@ static void stm32_tx_dma_complete(void *arg)
 	stm32_transmit_chars(port);
 }
 
+static void stm32_tx_interrupt_enable(struct uart_port *port)
+{
+	struct stm32_port *stm32_port = to_stm32_port(port);
+	struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
+
+	/*
+	 * Enables TX FIFO threashold irq when FIFO is enabled,
+	 * or TX empty irq when FIFO is disabled
+	 */
+	if (stm32_port->fifoen)
+		stm32_set_bits(port, ofs->cr3, USART_CR3_TXFTIE);
+	else
+		stm32_set_bits(port, ofs->cr1, USART_CR1_TXEIE);
+}
+
+static void stm32_tx_interrupt_disable(struct uart_port *port)
+{
+	struct stm32_port *stm32_port = to_stm32_port(port);
+	struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
+
+	if (stm32_port->fifoen)
+		stm32_clr_bits(port, ofs->cr3, USART_CR3_TXFTIE);
+	else
+		stm32_clr_bits(port, ofs->cr1, USART_CR1_TXEIE);
+}
+
 static void stm32_transmit_chars_pio(struct uart_port *port)
 {
 	struct stm32_port *stm32_port = to_stm32_port(port);
@@ -320,9 +346,9 @@ static void stm32_transmit_chars_pio(struct uart_port *port)
 
 	/* rely on TXE irq (mask or unmask) for sending remaining data */
 	if (uart_circ_empty(xmit))
-		stm32_clr_bits(port, ofs->cr1, USART_CR1_TXEIE);
+		stm32_tx_interrupt_disable(port);
 	else
-		stm32_set_bits(port, ofs->cr1, USART_CR1_TXEIE);
+		stm32_tx_interrupt_enable(port);
 }
 
 static void stm32_transmit_chars_dma(struct uart_port *port)
@@ -404,7 +430,7 @@ static void stm32_transmit_chars(struct uart_port *port)
 	}
 
 	if (uart_circ_empty(xmit) || uart_tx_stopped(port)) {
-		stm32_clr_bits(port, ofs->cr1, USART_CR1_TXEIE);
+		stm32_tx_interrupt_disable(port);
 		return;
 	}
 
@@ -422,7 +448,7 @@ static void stm32_transmit_chars(struct uart_port *port)
 		uart_write_wakeup(port);
 
 	if (uart_circ_empty(xmit))
-		stm32_clr_bits(port, ofs->cr1, USART_CR1_TXEIE);
+		stm32_tx_interrupt_disable(port);
 }
 
 static irqreturn_t stm32_interrupt(int irq, void *ptr)
@@ -501,10 +527,7 @@ static unsigned int stm32_get_mctrl(struct uart_port *port)
 /* Transmit stop */
 static void stm32_stop_tx(struct uart_port *port)
 {
-	struct stm32_port *stm32_port = to_stm32_port(port);
-	struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
-
-	stm32_clr_bits(port, ofs->cr1, USART_CR1_TXEIE);
+	stm32_tx_interrupt_disable(port);
 }
 
 /* There are probably characters waiting to be transmitted. */
@@ -575,6 +598,13 @@ static int stm32_startup(struct uart_port *port)
 		val |= USART_CR1_FIFOEN;
 	stm32_set_bits(port, ofs->cr1, val);
 
+	if (stm32_port->fifoen) {
+		val = readl_relaxed(port->membase + ofs->cr3);
+		val &= ~USART_CR3_TXFTCFG_MASK;
+		val |= USART_CR3_TXFTCFG_HALF << USART_CR3_TXFTCFG_SHIFT;
+		writel_relaxed(val, port->membase + ofs->cr3);
+	}
+
 	return 0;
 }
 
@@ -662,7 +692,9 @@ static void stm32_set_termios(struct uart_port *port, struct ktermios *termios,
 	if (stm32_port->fifoen)
 		cr1 |= USART_CR1_FIFOEN;
 	cr2 = 0;
-	cr3 = 0;
+	cr3 = readl_relaxed(port->membase + ofs->cr3);
+	cr3 &= USART_CR3_TXFTIE | USART_CR3_RXFTCFG | USART_CR3_RXFTIE
+		| USART_CR3_TXFTCFG_MASK;
 
 	if (cflag & CSTOPB)
 		cr2 |= USART_CR2_STOP_2B;
@@ -869,6 +901,7 @@ static int stm32_init_port(struct stm32_port *stm32port,
 	port->flags	= UPF_BOOT_AUTOCONF;
 	port->ops	= &stm32_uart_ops;
 	port->dev	= &pdev->dev;
+	port->fifosize	= stm32port->info->cfg.fifosize;
 
 	ret = platform_get_irq(pdev, 0);
 	if (ret <= 0) {
diff --git a/drivers/tty/serial/stm32-usart.h b/drivers/tty/serial/stm32-usart.h
index fcd01fe..a598446 100644
--- a/drivers/tty/serial/stm32-usart.h
+++ b/drivers/tty/serial/stm32-usart.h
@@ -27,6 +27,7 @@ struct stm32_usart_config {
 	bool has_7bits_data;
 	bool has_wakeup;
 	bool has_fifo;
+	int fifosize;
 };
 
 struct stm32_usart_info {
@@ -54,6 +55,7 @@ struct stm32_usart_info stm32f4_info = {
 	.cfg = {
 		.uart_enable_bit = 13,
 		.has_7bits_data = false,
+		.fifosize = 1,
 	}
 };
 
@@ -74,6 +76,7 @@ struct stm32_usart_info stm32f7_info = {
 	.cfg = {
 		.uart_enable_bit = 0,
 		.has_7bits_data = true,
+		.fifosize = 1,
 	}
 };
 
@@ -96,6 +99,7 @@ struct stm32_usart_info stm32h7_info = {
 		.has_7bits_data = true,
 		.has_wakeup = true,
 		.has_fifo = true,
+		.fifosize = 16,
 	}
 };
 
@@ -204,6 +208,15 @@ struct stm32_usart_info stm32h7_info = {
 #define USART_CR3_WUS_MASK	GENMASK(21, 20)	/* H7 */
 #define USART_CR3_WUS_START_BIT	BIT(21)		/* H7 */
 #define USART_CR3_WUFIE		BIT(22)		/* H7 */
+#define USART_CR3_TXFTIE	BIT(23)		/* H7 */
+#define USART_CR3_TCBGTIE	BIT(24)		/* H7 */
+#define USART_CR3_RXFTCFG	GENMASK(27, 25)	/* H7 */
+#define USART_CR3_RXFTIE	BIT(28)		/* H7 */
+#define USART_CR3_TXFTCFG_MASK	GENMASK(31, 29)	/* H7 */
+#define USART_CR3_TXFTCFG_SHIFT	29		/* H7 */
+
+/* TX FIFO threashold set to half of its depth */
+#define USART_CR3_TXFTCFG_HALF	0x2
 
 /* USART_GTPR */
 #define USART_GTPR_PSC_MASK	GENMASK(7, 0)
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
