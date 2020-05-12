Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 416B81CEE59
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 09:38:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZynOXOnX+Gl3AdV8KHidkya3W7h8+KO6goMP0uPv9FM=; b=o4zrnW11fJsJTcon9UEPBwjsz3
	iCzMWni7hkPv/z1b/c17rSU8Uv7PAE3JIWboXMq6KIUPxNHLaLZ26pqNie4ZSYYo7pdUhPnpWc7cB
	nGTDZHgPb92REC2k9RYZveMPcZIIGUMxFyJdVF7hqOxRKshQ0/1TK7PVSuC8uSFxW1+KCiFnXkyg3
	LRo3FB3bG8Vzime0rIE282q34CKOeq38yr51jVz9DXXW3kvXFSDxzFlCVads+tgxIqILm2yA33DDV
	zttCMmbRBaS77To/dLJMKmy+Ot4VoshYjdALRObeR3VOjmUIHyt5r2Hvx9olw/1zmZZ8DvoDPpR+E
	XK8uertg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYPUQ-0002oE-6M; Tue, 12 May 2020 07:38:10 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPTP-00024n-Fa
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 07:37:09 +0000
Received: by mail-pj1-x1044.google.com with SMTP id a7so9002592pju.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 00:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=K+68zUT9ct7q6l7uIUZCLkOn4a7L9BomhNQ5jVg2Zxo=;
 b=dNh34QvshqjNp7DtA3MlOG2kBZxosBMZGl53Z/ldH18Yw5yg6Bcz+2gc/kgnq1Nd5y
 mIaBZTMnY7As80pi/E5gGV/PPR7kubeWI48JIFO6qcfDk13S+dMj5RItEcIsveEQFkLd
 eOi9fcmjAc0frIerTCer7F67YR1NhDS90OdLbshs3UeqTBIB2OhQLHOn8uykYTe+xC1S
 4UX2nIG6VldRDHeKMkKUW+Z+HMq/j8hxXvbgl/api+IT5rUVh7xtjsnU+xE9yZYPukBZ
 +n3pNfceWro8BjxsTesATA3SbdRFwATUv/jIRQUM/JpMC/69kFtz4L5lafJQTMxDIgn0
 NMBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=K+68zUT9ct7q6l7uIUZCLkOn4a7L9BomhNQ5jVg2Zxo=;
 b=abQx9oYUEsq7MH+VwoXyBkaNB28AEgVvGLkElzn/DQar0JUc5kR8Ok+4MxCY0W+W5/
 Jb5VkE4NsXh+wXc7VYPIC0WjJX5w6uzWFnX12e5BztVfG5ZNMI3IiyTWvynkEQ+4j8ts
 3BfqoGHorPo6NlO/dfcqY9IokGRKx7sG/raKUhXV368NdfH5WSrKUy4aT9ctZTdJOo3L
 MOhf5UockGT6zv+gUW5Ry7OBEUcZmnDOSmZ+WW7cHqGZDGTYSv7IflB/foSUjnw2seVr
 tWJLcojWMonHWyaxcgTP4Fbpq+4HjzZA2B1YtgMJU1HQ56QAJlDfOqwZxD3VDOukra5Z
 /sZg==
X-Gm-Message-State: AGi0PuYdwtb0xFyzNQusBiQU3IHOnmcrGiMJ2IGfS/Le66fz9wgPMA5S
 cvUPVDhocXmdILnE7H9JIbU=
X-Google-Smtp-Source: APiQypIIHFRhIkvjAwcUxwC+9xmufAvKnXQChJcabuuo7RX0G98cZV0dD+L+0+qw56P7H8SyGS0nRA==
X-Received: by 2002:a17:90a:8807:: with SMTP id
 s7mr17888970pjn.157.1589269026260; 
 Tue, 12 May 2020 00:37:06 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id 5sm11732471pjf.19.2020.05.12.00.37.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 May 2020 00:37:05 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 broonie@kernel.org, p.zabel@pengutronix.de
Subject: [PATCH v2 3/3] spi: stm32: Add SPI_SIMPLEX_RX,
 SPI_3WIRE_RX support for stm32f4
Date: Tue, 12 May 2020 15:36:50 +0800
Message-Id: <1589269010-18472-4-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589269010-18472-1-git-send-email-dillon.minfei@gmail.com>
References: <1589269010-18472-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_003707_638476_001CCDBA 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, dillonhua@gmail.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 dillon.minfei@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
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

first: send command to l3gd20 with read id command in tx_buf,
       rx_buf is null.
second: read id with tx_buf is null, rx_buf not null.

so, for second step, stm32 driver recongise this process is SPI_SIMPLE_RX
from stm32_spi_communication_type, but there is no related process for this
type in stm32f4_spi_set_mode, then we get error from
stm32_spi_transfer_one_setup.

we can use two method to fix this bug.
1, use stm32 spi's "In unidirectional receive-only mode (BIDIMODE=0 and
   RXONLY=1)". but as our code running in sdram, the read latency is
   too large to get so many receive overrun error in interrupts handler.

2, use stm32 spi's "In full-duplex (BIDIMODE=0 and RXONLY=0)", as
   tx_buf is null, we must add dummy data sent out before read data.
   so, add stm32f4_spi_tx_dummy to handle this situation.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 drivers/spi/spi-stm32.c | 29 +++++++++++++++++++++++++----
 1 file changed, 25 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-stm32.c b/drivers/spi/spi-stm32.c
index 44ac6eb3..bcf1ba7 100644
--- a/drivers/spi/spi-stm32.c
+++ b/drivers/spi/spi-stm32.c
@@ -388,6 +388,13 @@ static int stm32h7_spi_get_fifo_size(struct stm32_spi *spi)
 	return count;
 }
 
+static void stm32f4_spi_tx_dummy(struct stm32_spi *spi)
+{
+	if (spi->cur_bpw == 16)
+		writew_relaxed(0x5555, spi->base + STM32F4_SPI_DR);
+	else
+		writeb_relaxed(0x55, spi->base + STM32F4_SPI_DR);
+}
 /**
  * stm32f4_spi_get_bpw_mask - Return bits per word mask
  * @spi: pointer to the spi controller data structure
@@ -811,7 +818,9 @@ static irqreturn_t stm32f4_spi_irq_event(int irq, void *dev_id)
 		mask |= STM32F4_SPI_SR_TXE;
 	}
 
-	if (!spi->cur_usedma && spi->cur_comm == SPI_FULL_DUPLEX) {
+	if (!spi->cur_usedma && (spi->cur_comm == SPI_FULL_DUPLEX ||
+				 spi->cur_comm == SPI_SIMPLEX_RX ||
+				 spi->cur_comm == SPI_3WIRE_RX)) {
 		/* TXE flag is set and is handled when RXNE flag occurs */
 		sr &= ~STM32F4_SPI_SR_TXE;
 		mask |= STM32F4_SPI_SR_RXNE | STM32F4_SPI_SR_OVR;
@@ -850,8 +859,10 @@ static irqreturn_t stm32f4_spi_irq_event(int irq, void *dev_id)
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
@@ -1151,7 +1162,9 @@ static int stm32f4_spi_transfer_one_irq(struct stm32_spi *spi)
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
@@ -1170,6 +1183,8 @@ static int stm32f4_spi_transfer_one_irq(struct stm32_spi *spi)
 	/* starting data transfer when buffer is loaded */
 	if (spi->tx_buf)
 		stm32f4_spi_write_tx(spi);
+	else if (spi->cur_comm == SPI_SIMPLEX_RX)
+		stm32f4_spi_tx_dummy(spi);
 
 	spin_unlock_irqrestore(&spi->lock, flags);
 
@@ -1462,10 +1477,16 @@ static int stm32f4_spi_set_mode(struct stm32_spi *spi, unsigned int comm_type)
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
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
