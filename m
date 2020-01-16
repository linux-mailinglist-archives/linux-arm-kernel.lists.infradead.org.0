Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E4013E77E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:26:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EOrrmvTEEcNKhqQOqbxunrfrsr4thUhjLWWAOFNiOOA=; b=XCVipZ8IEQ/5z6
	Sse/raX0MH6j/PxzeN6zb1nsRupVPq0lBB+T+vkL+6PrF0yUu9E46RmS9MgW6ABez6B3WRRR+9/3/
	racZYyGaWBM113gB8lL7Lf2LakdTPXMe4RybX0FaGEf8wG2WzfegMTabexOfweix6BdsakDbHpc1a
	RNTlbyA7UuXDWxvYKX4qyS3PiJHFwyuUH9KkrO+iDrKRFIhzt//W4vlnK7deYjMseeioW9RJlUCz5
	bJ1WhakAIGwHSGMsCmMneklxiedfVq55NF3Bw4w0th0m2IIub9bdrbYFZBMQ7Pv+koaXyNyh4Ezbm
	LoaO3AUS5EeA9o130o4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8uT-0003o7-Uc; Thu, 16 Jan 2020 17:26:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8cb-0000sR-QP
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:07:56 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA41F21582;
 Thu, 16 Jan 2020 17:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194472;
 bh=UdImy3XGbb6aCS0QH1nljG7T3sP7qCMYcI6nIQMmEeo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=e/psCt5JXj9N7Pmyczt3NWfSuaFqzzlvEk6v/L8RhP1SG8jj+FS9DMqMZhpmFzk9B
 +UW7TjGvrqzFM0hZ6mA4LGpfejUtqbBYsDSPGTsroNXpY10Vf74fMiGGvshWMvshJ1
 G4GE9j71ETPqEkJmWQnHepQe6cNg2YvtguKasmEc=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 377/671] serial: stm32: Add support of TC bit
 status check
Date: Thu, 16 Jan 2020 12:00:15 -0500
Message-Id: <20200116170509.12787-114-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_090754_033472_96668B0A 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Erwan Le Ray <erwan.leray@st.com>, linux-serial@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Erwan Le Ray <erwan.leray@st.com>

[ Upstream commit 64c32eab660386f9904bb295a104c9c425e9f8b2 ]

Adds a check on the Transmission Complete bit status before closing the
com port. Prevents the port closure before the end of the transmission.
TC poll loop is moved from stm32_tx_dma_complete to stm32_shutdown
routine, in order to check TC before shutdown in both dma and
PIO tx modes.
TC clear is added in stm32_transmit_char routine, in order to be cleared
before transmitting in both dma and PIO tx modes.

Fixes: 3489187204eb ("serial: stm32: adding dma support")
Signed-off-by: Erwan Le Ray <erwan.leray@st.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/tty/serial/stm32-usart.c | 32 +++++++++++++++-----------------
 1 file changed, 15 insertions(+), 17 deletions(-)

diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index 2e7757d5e5d8..d603be9669a9 100644
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
