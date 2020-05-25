Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7349C1E05A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 05:48:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yD0zA3TXFE+6CURpBFmM7RSXuc7+AZWvDvmf8kSvMVg=; b=i9VFTZvxOUCqQQEM2aaxgyevkc
	njoSqEwhJvq09n68DJFCwn3N5fqqj1Jq6qgoFAsHGNh/Nk4g7/oB53Wqo33RZ7WhYQKVq8zlJVcJF
	R5B+xTHd6EM+q4p2gnbJfCmROjVDEK1HHgeBggPwxahcrIcpSyJSG6MsY0J2wMuYVvc+O1qQ26y7b
	svfJC9KKRe//eHhJ5AWYEk36xJGCRFfe5m2iSseE+WcSZsBcEj7/Cf2eD91vazwr2Ad9f/AdOYf7F
	OLMveZvWEbLW+vVHnDiH59t3/nhIUY1jt6UqYKdMrkde6IpH3nZL5knSFexQB84SBQrmVByqT1QTz
	408g2arg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd45u-0000m0-Rf; Mon, 25 May 2020 03:48:06 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd448-0007yR-J5
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 03:46:22 +0000
Received: by mail-pl1-x644.google.com with SMTP id t16so6992761plo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 20:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iDnn3wwO4wgWkpXGhO1cGw9dx9qYzbrC+ZSQIhZHNL0=;
 b=hqbOEvcw06OY6j3P7+bFBZ29tnRr4/lpC0xWTFSN6coegVRH2XXkL7urt589wLipMm
 9D4u54qRumndh0M+ynNLd96aBTpv7rGuosIsdqoKe0oUl09oonBhHmQ1tftXIdKCUrUz
 62r7TG3KJrQ+tAgIfJKzURWIhVbz3VKiSMY190B0+LyG9PDnt4kDrs+bB0/LzLq85dl6
 eLEf/b6pdIViPbDiIwS4nvh52jdOXsvOuRIF7ZiN1248VZHInm9Kr77/fyKcA8+RxAmt
 IjL7mUnnYCgtdrfKHGl1cPKuM7VATRS76PKlRBtTlSy6+tg0eHO+u+JUHIYmKJU4dsHO
 JjUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iDnn3wwO4wgWkpXGhO1cGw9dx9qYzbrC+ZSQIhZHNL0=;
 b=hrbDnPFhtLHxY9vNNuLKmAaLqnxIFlz1C4gXnj7xjhHHuciwXWQBBxx77DhfUudGiJ
 xgrOoGzanlL2vBfE+d6X47pIad7q+q8EOyK1a/NtQch3CdGLhDo3MSehKn6oUqWWJyLb
 EX8YE3HUrV5NseHbyb97GNstecdLY6cy7GLz9njPr1zhiNhMfwFXIav5jVXELBT2Hgh9
 sxWmOtCMPVZgQ7Lm3xkHmc0oVTu6LqJp2OmYpV+++NKsnAv5+0Sj0GkEeq00Hf1vweIK
 pKyX1QqbrwFPpRYf/aOW3fP2aQ8OlGI+mgcjGfJuRBupjin0Btn+68rlsgNrPf9Kc/sB
 gtJQ==
X-Gm-Message-State: AOAM532rOlCLab4zQVbMaOJNEZJKIkdX/lvhQQtEdDjLpcoMAEq7NGSD
 vq9ynn7WdZS74oSYOXppbXc=
X-Google-Smtp-Source: ABdhPJzOrloW/eMzu31HMmNOhDwme/dtL8g4+OfgiK8OjPyb12J5sr16DZd4Hwdw4Wh811wotDAc6Q==
X-Received: by 2002:a17:90a:985:: with SMTP id 5mr17795701pjo.23.1590378375787; 
 Sun, 24 May 2020 20:46:15 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.44])
 by smtp.gmail.com with ESMTPSA id i98sm12152831pje.37.2020.05.24.20.46.12
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 24 May 2020 20:46:15 -0700 (PDT)
From: dillon.minfei@gmail.com
To: linus.walleij@linaro.org,
	broonie@kernel.org
Subject: [PATCH v5 7/8] spi: stm32: Add 'SPI_SIMPLEX_RX',
 'SPI_3WIRE_RX' support for stm32f4
Date: Mon, 25 May 2020 11:45:47 +0800
Message-Id: <1590378348-8115-8-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590378348-8115-1-git-send-email-dillon.minfei@gmail.com>
References: <1590378348-8115-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_204617_446573_BBFC4A6E 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-spi@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

in l3gd20 driver startup, there is a setup failed error return from
stm32 spi driver

     "
     [    2.687630] st-gyro-spi spi0.0: supply vdd not found, using dummy
     regulator
     [    2.696869] st-gyro-spi spi0.0: supply vddio not found, using dummy
     regulator
     [    2.706707] spi_stm32 40015000.spi: SPI transfer setup failed
     [    2.713741] st-gyro-spi spi0.0: SPI transfer failed: -22
     [    2.721096] spi_master spi0: failed to transfer one message from queue
     [    2.729268] iio iio:device0: failed to read Who-Am-I register.
     [    2.737504] st-gyro-spi: probe of spi0.0 failed with error -22
     "

after debug into spi-stm32 driver, st-gyro-spi split two steps to read
l3gd20 id

first: send command to l3gd20 with read id command in tx_buf, rx_buf
is null.
second: read id with tx_buf is null, rx_buf not null.

so, for second step, stm32 driver recongise this process as 'SPI_SIMPLE_RX'
from stm32_spi_communication_type(), but there is no related process for this
type in stm32f4_spi_set_mode(), then we get error from
stm32_spi_transfer_one_setup().

we can use two method to fix this bug.
1, use stm32 spi's "In unidirectional receive-only mode (BIDIMODE=0 and
RXONLY=1)". but as our code running in sdram, the read latency is too large
to get so many receive overrun error in interrupts handler.

2, use stm32 spi's "In full-duplex (BIDIMODE=0 and RXONLY=0)", as tx_buf is
null, so add flag 'SPI_MASTER_MUST_TX' to spi master.

Change since V4:
1 remove dummy data sent out by stm32 spi driver
2 add flag 'SPI_MASTER_MUST_TX' to spi master

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---

Hi Mark,

This changes add 'SPI_MASTER_MUST_TX' for stm32 spi controller

thanks.


 drivers/spi/spi-stm32.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-stm32.c b/drivers/spi/spi-stm32.c
index 44ac6eb3..4c643df 100644
--- a/drivers/spi/spi-stm32.c
+++ b/drivers/spi/spi-stm32.c
@@ -811,7 +811,9 @@ static irqreturn_t stm32f4_spi_irq_event(int irq, void *dev_id)
 		mask |= STM32F4_SPI_SR_TXE;
 	}
 
-	if (!spi->cur_usedma && spi->cur_comm == SPI_FULL_DUPLEX) {
+	if (!spi->cur_usedma && (spi->cur_comm == SPI_FULL_DUPLEX ||
+				spi->cur_comm == SPI_SIMPLEX_RX ||
+				spi->cur_comm == SPI_3WIRE_RX)) {
 		/* TXE flag is set and is handled when RXNE flag occurs */
 		sr &= ~STM32F4_SPI_SR_TXE;
 		mask |= STM32F4_SPI_SR_RXNE | STM32F4_SPI_SR_OVR;
@@ -850,7 +852,7 @@ static irqreturn_t stm32f4_spi_irq_event(int irq, void *dev_id)
 		stm32f4_spi_read_rx(spi);
 		if (spi->rx_len == 0)
 			end = true;
-		else /* Load data for discontinuous mode */
+		else if (spi->tx_buf)/* Load data for discontinuous mode */
 			stm32f4_spi_write_tx(spi);
 	}
 
@@ -1151,7 +1153,9 @@ static int stm32f4_spi_transfer_one_irq(struct stm32_spi *spi)
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
@@ -1462,10 +1466,16 @@ static int stm32f4_spi_set_mode(struct stm32_spi *spi, unsigned int comm_type)
 		stm32_spi_set_bits(spi, STM32F4_SPI_CR1,
 					STM32F4_SPI_CR1_BIDIMODE |
 					STM32F4_SPI_CR1_BIDIOE);
-	} else if (comm_type == SPI_FULL_DUPLEX) {
+	} else if (comm_type == SPI_FULL_DUPLEX ||
+				comm_type == SPI_SIMPLEX_RX) {
 		stm32_spi_clr_bits(spi, STM32F4_SPI_CR1,
 					STM32F4_SPI_CR1_BIDIMODE |
 					STM32F4_SPI_CR1_BIDIOE);
+	} else if (comm_type == SPI_3WIRE_RX) {
+		stm32_spi_set_bits(spi, STM32F4_SPI_CR1,
+					STM32F4_SPI_CR1_BIDIMODE);
+		stm32_spi_clr_bits(spi, STM32F4_SPI_CR1,
+					STM32F4_SPI_CR1_BIDIOE);
 	} else {
 		return -EINVAL;
 	}
@@ -1906,6 +1916,7 @@ static int stm32_spi_probe(struct platform_device *pdev)
 	master->prepare_message = stm32_spi_prepare_msg;
 	master->transfer_one = stm32_spi_transfer_one;
 	master->unprepare_message = stm32_spi_unprepare_msg;
+	master->flags = SPI_MASTER_MUST_TX;
 
 	spi->dma_tx = dma_request_chan(spi->dev, "tx");
 	if (IS_ERR(spi->dma_tx)) {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
