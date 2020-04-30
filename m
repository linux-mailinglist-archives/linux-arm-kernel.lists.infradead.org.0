Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8068C1BF463
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 11:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HmbIp1AKWLRYVR6jSFkZeC/8ibq2lar+gvWMH1bzHs4=; b=QHD
	0ead0nN3kEwnXUrUgdcianC66Z2mpw8CY0kWuafmH71ixd4pLwelzdsX3iDssygPXpRY/GX0oNPJA
	drJ0jb2ilKsz5CDv7F8aIOKKuP81gqthmWovegQQEmwR2+AjVMnbAdbE0VAQNRnqNUz4rpBf0L12G
	a/2xxctT/h0midx80EkpNWs12TYmfoEtL8G48XsWn6NdN2lOOAm+Pw/WAIU/2dgoTk1XmNavZ5a2X
	TavjBmiXW910n88wERCf4l4WYOashcBN0d+CTpf9xXqJyktSIJmlwNqmNvEc8s53KPn2k59wh2zmF
	5EMt797iVou8is3neOI/aj5mrilT5qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU5jw-0006Uw-Cd; Thu, 30 Apr 2020 09:44:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU5jj-0006T1-0v
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 09:44:08 +0000
Received: by mail-pf1-x444.google.com with SMTP id x15so2647369pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 02:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=3iE0ENs3U+fv2Eqqm2Bnr8UjitFetI73gpHRJaYjHKU=;
 b=ilIpKR0xTF1aZ/g6hXsNtlH3zf2fYi/M9PCp7dr2ymfF41Gje6JPtrCXmX6Ir7fFP7
 y7qqJ/RCU4YiWlYTmQssquDtdWptfOGfVr01IPJMz1T64/t3/0YFMipsXm7bYT0KCcFZ
 GhADDDtSWZTUOnrTm5tUIsXalg4P/SZnHluKCIi4CdUM5eD8B0d7t5hSp8A0t4t26jmY
 uloL2KYSNp8+DnGusiFvAl9oN03NT3HybGOP0+DcaHLXIMxliA8T6x6SvVMHfkPdyIHa
 KfgeQtAiVtD/pWNA+gbzxrrbs8eK2VInhgKwjmKTULw91A6+qT2hIhoDD9qPyiEP/xPt
 TfOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3iE0ENs3U+fv2Eqqm2Bnr8UjitFetI73gpHRJaYjHKU=;
 b=JbM3k0EbW7J2G2pKIqkAgH+6PODBggu3lOYzkyxiRUZD+jFrEeOgDBqyNAenHe7xc5
 jU4T+8yB61lciul5pKR86FbzbI/0TqXYoZX8bLK8pq7Ol2PFNZmYYM3EK80SLkrgMz51
 nJE2jJdopHuv4o9FEX4HfhXbMRRzi1yDKvY7iSeUVjCFGaEe54TseyZq5CC9Mso3Yi2o
 2IrZk8Kity4wY6NRf1fAT7VL+7fqv16qpBvdwGM0wqIRI7GS3Z6efBWx6x/J1Jd9+JDM
 ua1h66DPNHdiaardYNTZRD3/4D/4IalH5ffvPEs+twUuXYpYKBrFyOzVaCUCsWYcPtAJ
 jrRQ==
X-Gm-Message-State: AGi0PuZZaucTe5tCrtgwnLSyvlU4zpTscbTMuV7DDyQseGgPUjQ7dpZm
 A3IFAD412qMrQgOR04F44V16vMKAtyqkIg==
X-Google-Smtp-Source: APiQypKnHvgqqqAo0U6w7NfYRJ1g2+uwUdHqCvqsCYwfXM+SnrqOWtoCuCALu+75Kg/qIGU36FZMOg==
X-Received: by 2002:a62:1a46:: with SMTP id a67mr2493063pfa.284.1588239846437; 
 Thu, 30 Apr 2020 02:44:06 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([137.59.101.138])
 by smtp.gmail.com with ESMTPSA id cp22sm1288431pjb.28.2020.04.30.02.44.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 Apr 2020 02:44:05 -0700 (PDT)
From: dillon.minfei@gmail.com
To: alexandre.torgue@st.com
Subject: [PATCH 4/4] add SPI_SIMPLEX_RX/SPI_3WIRE_RX support for spi-stm32f4
Date: Thu, 30 Apr 2020 17:44:00 +0800
Message-Id: <1588239840-11582-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_024407_067884_0BB68BCA 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mcoquelin.stm32@gmail.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, broonie@kernel.org, p.zabel@pengutronix.de,
 dillon.minfei@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

add SPI_SIMPLEX_RX/SPI_3WIRE_RX in spi-stm32f4.c
for SPI_SIMPLEX_RX , as we running kernel in sdram, so
that the performance is not as good as internal flash,
need add send dummy data out while in rx,
otherwise will get many overrun errors.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 drivers/spi/spi-stm32.c | 26 ++++++++++++++++++++++----
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-stm32.c b/drivers/spi/spi-stm32.c
index 44ac6eb3..680cede 100644
--- a/drivers/spi/spi-stm32.c
+++ b/drivers/spi/spi-stm32.c
@@ -388,6 +388,10 @@ static int stm32h7_spi_get_fifo_size(struct stm32_spi *spi)
 	return count;
 }
 
+static void stm32f4_spi_tx_dummy(struct stm32_spi *spi)
+{
+	writeb_relaxed(0x55, spi->base + STM32F4_SPI_DR);
+}
 /**
  * stm32f4_spi_get_bpw_mask - Return bits per word mask
  * @spi: pointer to the spi controller data structure
@@ -811,7 +815,9 @@ static irqreturn_t stm32f4_spi_irq_event(int irq, void *dev_id)
 		mask |= STM32F4_SPI_SR_TXE;
 	}
 
-	if (!spi->cur_usedma && spi->cur_comm == SPI_FULL_DUPLEX) {
+	if (!spi->cur_usedma && (spi->cur_comm == SPI_FULL_DUPLEX ||
+				 spi->cur_comm == SPI_SIMPLEX_RX ||
+				 spi->cur_comm == SPI_3WIRE_RX)) {
 		/* TXE flag is set and is handled when RXNE flag occurs */
 		sr &= ~STM32F4_SPI_SR_TXE;
 		mask |= STM32F4_SPI_SR_RXNE | STM32F4_SPI_SR_OVR;
@@ -850,8 +856,10 @@ static irqreturn_t stm32f4_spi_irq_event(int irq, void *dev_id)
 		stm32f4_spi_read_rx(spi);
 		if (spi->rx_len == 0)
 			end = true;
-		else /* Load data for discontinuous mode */
+		else if (spi->tx_buf)/* Load data for discontinuous mode */
 			stm32f4_spi_write_tx(spi);
+		else if (spi->cur_comm == SPI_SIMPLEX_RX)
+			stm32f4_spi_tx_dummy(spi);
 	}
 
 end_irq:
@@ -1151,7 +1159,9 @@ static int stm32f4_spi_transfer_one_irq(struct stm32_spi *spi)
 	/* Enable the interrupts relative to the current communication mode */
 	if (spi->cur_comm == SPI_SIMPLEX_TX || spi->cur_comm == SPI_3WIRE_TX) {
 		cr2 |= STM32F4_SPI_CR2_TXEIE;
-	} else if (spi->cur_comm == SPI_FULL_DUPLEX) {
+	} else if (spi->cur_comm == SPI_FULL_DUPLEX ||
+				spi->cur_comm == SPI_SIMPLEX_RX ||
+				spi->cur_comm == SPI_3WIRE_RX) {
 		/* In transmit-only mode, the OVR flag is set in the SR register
 		 * since the received data are never read. Therefore set OVR
 		 * interrupt only when rx buffer is available.
@@ -1170,6 +1180,8 @@ static int stm32f4_spi_transfer_one_irq(struct stm32_spi *spi)
 	/* starting data transfer when buffer is loaded */
 	if (spi->tx_buf)
 		stm32f4_spi_write_tx(spi);
+	else if (spi->cur_comm == SPI_SIMPLEX_RX)
+		stm32f4_spi_tx_dummy(spi);
 
 	spin_unlock_irqrestore(&spi->lock, flags);
 
@@ -1462,9 +1474,15 @@ static int stm32f4_spi_set_mode(struct stm32_spi *spi, unsigned int comm_type)
 		stm32_spi_set_bits(spi, STM32F4_SPI_CR1,
 					STM32F4_SPI_CR1_BIDIMODE |
 					STM32F4_SPI_CR1_BIDIOE);
-	} else if (comm_type == SPI_FULL_DUPLEX) {
+	} else if (comm_type == SPI_FULL_DUPLEX ||
+				comm_type == SPI_SIMPLEX_RX) {
 		stm32_spi_clr_bits(spi, STM32F4_SPI_CR1,
 					STM32F4_SPI_CR1_BIDIMODE |
+					STM32F4_SPI_CR1_RXONLY);
+	} else if (comm_type == SPI_3WIRE_RX) {
+		stm32_spi_set_bits(spi, STM32F4_SPI_CR1,
+					STM32F4_SPI_CR1_BIDIMODE);
+		stm32_spi_clr_bits(spi, STM32F4_SPI_CR1,
 					STM32F4_SPI_CR1_BIDIOE);
 	} else {
 		return -EINVAL;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
