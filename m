Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB6D2546F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 17:47:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HmNlpLl6VP1wH2kzUlI2SgAw1EkkDD7PC7ma4rgBqRM=; b=f8mzxWwT11MXGT
	iVkA270IiDQyeac6feYIpSvnR6sX4oVxPt5jO+GQF3IrF9OivrxG5JWk8Itntr9AP5ztOjfcBvKvr
	SiyxG6wrSoznY0rcjj8LIpTCaA2q0IZPvwDwZm7KlO0iW8ZB98CLyhFreBmTIcfYJquStVa6PYor+
	jFVWOHipnRSOvaOqKomPuN1enPtNwxZWhwJqCi3EV1g4rxHbU4q6LN4xq1/GmLYqT3LOyj9CIHFaL
	Ti9Bs2L4gwU0dRfLTMbn8ig0x5BbC+ky1EWaDU5ER5F/al5/Jnwr8iTC6N4DPQoVhJCSmE3aUvKLa
	+CddvKmk3MX3oEZfVhBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT6zE-0000bQ-RQ; Tue, 21 May 2019 15:47:32 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT6yS-0008D1-DD
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 15:46:54 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4LFk1Hs004995; Tue, 21 May 2019 17:46:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=xrTHJ0r+41B9UrJgw1m/5JY+7XA7C34gtShA4N4DL9w=;
 b=LD3+dh/2tOz4V3p4dxXNTMik4VHrbynG3K0V2a7YfkJm9RB6f4hEvy083hEsXEKlSwEr
 MlfKX1Ef4B6lfoFoiIBIN/ZJNThNkEwShD9jTJT2xiScWu0GxAD+4U/oXTl0igBprNXg
 T7X1iWvWmOt7BQXfi+zMfl7JwyMbp4PGUHhLGyqWGDITLT8knrlsOExjLe/jqP7p95wF
 KF0nnOJ1Mn0WHkqbEH9ZQGIrZw6XXd2u6VRpoZddqBZRWlBTn0JGulgeXQbsbc4Ye4or
 Xgt+QhX7CgPX6McyGcXzn98YPjATOmYLTEZcikq+4lQbxsm2WEpIYJr0ww5y54g5Gojn jA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sj7tu2h74-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 21 May 2019 17:46:42 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A517B38;
 Tue, 21 May 2019 15:46:41 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5F4592CEA;
 Tue, 21 May 2019 15:46:41 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 21 May
 2019 17:46:41 +0200
Received: from localhost (10.201.23.31) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 21 May 2019 17:46:40
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Alexandre
 Torgue" <alexandre.torgue@st.com>
Subject: [PATCH 5/7] serial: stm32: Add support of TC bit status check
Date: Tue, 21 May 2019 17:45:45 +0200
Message-ID: <1558453547-22866-6-git-send-email-erwan.leray@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558453547-22866-1-git-send-email-erwan.leray@st.com>
References: <1558453547-22866-1-git-send-email-erwan.leray@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.31]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-21_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_084645_193244_EB4C1519 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Adds a check on the Transmission Complete bit status before closing the
com port. Prevents the port closure before the end of the transmission.
TC poll loop is moved from stm32_tx_dma_complete to stm32_shutdown
routine, in order to check TC before shutdown in both dma and
PIO tx modes.
TC clear is added in stm32_transmit_char routine, in order to be cleared
before transmitting in both dma and PIO tx modes.

Fixes: 3489187204eb ("serial: stm32: adding dma support")
Signed-off-by: Erwan Le Ray <erwan.leray@st.com>

diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index 2e7757d..d603be9 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -290,21 +290,6 @@ static void stm32_tx_dma_complete(void *arg)
 	struct uart_port *port = arg;
 	struct stm32_port *stm32port = to_stm32_port(port);
 	struct stm32_usart_offsets *ofs = &stm32port->info->ofs;
-	unsigned int isr;
-	int ret;
-
-	ret = readl_relaxed_poll_timeout_atomic(port->membase + ofs->isr,
-						isr,
-						(isr & USART_SR_TC),
-						10, 100000);
-
-	if (ret)
-		dev_err(port->dev, "terminal count not set\n");
-
-	if (ofs->icr == UNDEF_REG)
-		stm32_clr_bits(port, ofs->isr, USART_SR_TC);
-	else
-		stm32_set_bits(port, ofs->icr, USART_CR_TC);
 
 	stm32_clr_bits(port, ofs->cr3, USART_CR3_DMAT);
 	stm32port->tx_dma_busy = false;
@@ -396,7 +381,6 @@ static void stm32_transmit_chars_dma(struct uart_port *port)
 	/* Issue pending DMA TX requests */
 	dma_async_issue_pending(stm32port->tx_ch);
 
-	stm32_clr_bits(port, ofs->isr, USART_SR_TC);
 	stm32_set_bits(port, ofs->cr3, USART_CR3_DMAT);
 
 	xmit->tail = (xmit->tail + count) & (UART_XMIT_SIZE - 1);
@@ -425,6 +409,11 @@ static void stm32_transmit_chars(struct uart_port *port)
 		return;
 	}
 
+	if (ofs->icr == UNDEF_REG)
+		stm32_clr_bits(port, ofs->isr, USART_SR_TC);
+	else
+		stm32_set_bits(port, ofs->icr, USART_ICR_TCCF);
+
 	if (stm32_port->tx_ch)
 		stm32_transmit_chars_dma(port);
 	else
@@ -601,12 +590,21 @@ static void stm32_shutdown(struct uart_port *port)
 	struct stm32_port *stm32_port = to_stm32_port(port);
 	struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
 	struct stm32_usart_config *cfg = &stm32_port->info->cfg;
-	u32 val;
+	u32 val, isr;
+	int ret;
 
 	val = USART_CR1_TXEIE | USART_CR1_RXNEIE | USART_CR1_TE | USART_CR1_RE;
 	val |= BIT(cfg->uart_enable_bit);
 	if (stm32_port->fifoen)
 		val |= USART_CR1_FIFOEN;
+
+	ret = readl_relaxed_poll_timeout(port->membase + ofs->isr,
+					 isr, (isr & USART_SR_TC),
+					 10, 100000);
+
+	if (ret)
+		dev_err(port->dev, "transmission complete not set\n");
+
 	stm32_clr_bits(port, ofs->cr1, val);
 
 	dev_pm_clear_wake_irq(port->dev);
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
