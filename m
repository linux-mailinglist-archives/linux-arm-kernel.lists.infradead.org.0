Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A6F1CBE49
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 08:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QVIHdhQcWaXJGyYCOcPqhYAfm47BRUrcjvHekl86sp4=; b=W5q07zXJW3Cf7U0qefvunf7fs6
	OOk/IASL73fSR9x1YiV04gv86GimCvzUteMyEpGpB64M9zpW2ZdrNaLam2yGWdI3oxQ4SXpmTtby4
	3CLuONwH/Pk5KBBdagA5e7nPsixlrwKwLRe1jkMc7pqxvMhGW5ziDuY+hAbQgwOPmZ55RiKVbijwH
	v1Lv/SjZX/vZQWLaswagtLQUPFPpKbMJnyQWl8faWaL6ytBCaS9Qy5CH5gqoDrylAM9PE3P+E5sUF
	f1yNkoZuY4yr9VqX83fcCc/gh/B57AM07Eiou6LAUZO0GOPqHbzK8/iABbWy08OqPKJ9dkBRyJVso
	iqW/fKuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXJSM-0001Ci-LH; Sat, 09 May 2020 06:59:30 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXJRZ-0000Qc-SS
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 06:58:43 +0000
Received: by mail-pf1-x444.google.com with SMTP id p25so2147166pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 23:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=YXySs4zUZLsOuTSP8VAFnCNIxqD4YlvKNUR69g+WATI=;
 b=FTLFO1BhyZGIyN9NAcgxU6PdaFrch0mUM/kADDevRFco0mRjcUMeGp3fRcXLjnFs2M
 HkUDyWaeV+UqEiUYc4sC0h8l8Pj4LAacD7KR10AEg1F3VjMk+Zk5rXEaAO2ovkxFjho8
 2J1bTAkJ/dJUp8FMG+dQ881N/ZSE6pnTqcOkF63Zck8AnebDsyYkD33Gb827KEEuio84
 mulmTnyab9MXXOnwgUdWE5csUWJaOOdG4T25B5KEwAEzOBY+pdHkP7NAluiLPyPl0MbN
 cTdbkgGvdxJQhEIZAMGT+qcsPo68FYvLEDBM5EHdUT6wBfrIUFmuCzOMZvvqzdhx+eRV
 uuJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=YXySs4zUZLsOuTSP8VAFnCNIxqD4YlvKNUR69g+WATI=;
 b=c4uePXTjhKgRd9ipdQSdXnUP4chnBAc+rrRhnpyNoiA9hWdzQPp/NLLPHiV9hiqg1s
 l592VHZH0a/OMcxfRDeHAS8Mi5VnNFWjg/VpggHY870eWgzek4vu27WEIzupiW/elYyF
 N/QlFewQv8FIZZvEdQLurz9SF5nCXmMFB6ivm4W5+ZuyBXaVsgJAPQoa65+rqwMk8XvC
 BN6bWTDjxyRXiGl5SQgfNt2lOZUntr8zHmx1gDRYb6k+T8HGtcr0QR1OtMB3DZU0IYNh
 VvNUXaPBkSbpRixMwwC4BwM3TykOa6vjvvTSFIV+20Cxt0dxREmUE60UDTDOkwfpzVXB
 WeFA==
X-Gm-Message-State: AGi0PuaokGkBVc6yeB/IQi2TjOO0AaqH4UwhgfFn7J4ymwEz8z/PW15K
 ddW5347kNgBbUJOY42+S8PQ=
X-Google-Smtp-Source: APiQypKJa/F9hGL23m/DdbkZTyV3jDAPDegtFd78ZZNfFPkERLH3hgikEbPDgMsm2gn6tNiCTtuDAQ==
X-Received: by 2002:a63:41c2:: with SMTP id o185mr5363006pga.139.1589007519639; 
 Fri, 08 May 2020 23:58:39 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id w192sm3811572pff.126.2020.05.08.23.58.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 08 May 2020 23:58:39 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 broonie@kernel.org, p.zabel@pengutronix.de
Subject: [PATCH 3/3] spi: stm32: Add SPI_SIMPLEX_RX,
 SPI_3WIRE_RX support for stm32f4
Date: Sat,  9 May 2020 14:58:23 +0800
Message-Id: <1589007503-9523-4-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589007503-9523-1-git-send-email-dillon.minfei@gmail.com>
References: <1589007503-9523-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_235841_950758_52E1A0BD 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, dillonhua@gmail.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 dillon min <dillon.minfei@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
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

first: send command to l3gd20 with read id command in tx_buf, rx_buf
is null.
second: read id with tx_buf is null, rx_buf not null.

so, for second step, stm32 driver recongise this process is SPI_SIMPLE_RX
from stm32_spi_communication_type, but there is no related process for this
type in stm32f4_spi_set_mode, then we get error from
stm32_spi_transfer_one_setup.

we can use two method to fix this bug.
1, use stm32 spi's "In unidirectional receive-only mode (BIDIMODE=0 and
RXONLY=1)". but as our code running in sdram, the read latency is too large
to get so many receive overrun error in interrupts handler.

2, use stm32 spi's "In full-duplex (BIDIMODE=0 and RXONLY=0)", as tx_buf is
null, we must add dummy data sent out before read data.
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
