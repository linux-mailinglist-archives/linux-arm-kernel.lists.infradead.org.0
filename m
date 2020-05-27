Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6280E1E3A92
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 09:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b01Iy2a2ZgMd2E7BiMZITVQcVU7e77stEyPRNT0ReQU=; b=Xo26SHLGKtaaoQogQEM/a89liq
	OktZv6NAwO4O/Ecac+kGGmVRpl+P1CzaIIyv+wImxys5c+Z3STQi1+YdEsS6/W8A7H/OyTiPI9FK2
	oeB5WE1ETH7UmZchCWPkE9h57cAQ6pEoLuHiTfOq/L83k8PqwVEQKTMkzx9juGb18Zs1MVxVswzQ8
	BTwdTsgi9fKtxbiuWUVAGJ+kP4ND9GzyJ8Rvr24IjZK2TRWMWTQJzMoCSS6oLNQhu6UWMAUfk8Su+
	bx8sXsregm9PWpIsoijCbNKGE+Anc2vGjI1Hh4B1GzmJPhXikW9r0lVklLHRKwNgMkBhH3SJFDUxv
	Bl08eTdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdqWK-0007Q5-PK; Wed, 27 May 2020 07:30:36 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdqUC-0003Re-KJ
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 07:28:35 +0000
Received: by mail-pj1-x1042.google.com with SMTP id 5so1146119pjd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 00:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7c19kwVIK7YMb2VDQnjAkuLRbBPFNqIJf4ySzLQ40dc=;
 b=CBp7io6nA+ULs0w/SG87ZCXPyfFCNszfBoi7ZalWhHpUY9cFxGBjNGlZ1cufrGa7eQ
 v2xQCGcYSjskwKs2GgIIEnIuJEijyvx2X6m30TH72U1pMCTdcjfdXaTBl3mkXgq1Xlob
 5kO3/aTTtneJZgf7zbXkDzr8ldYdcc7IX9Wt1q9/WyawIE1XXcY5vDmHQdpGePM8099V
 kUwY/z6+iSjcUtpccbV8LTPd+EgClgVShtCtxVhvtOwa+//Fdx1G+rGJV+TlmYL8/dEt
 0yPlYk6HXm+is8UT8OXEZ4bDTXc41+rDh+8y+cA9oddW8vWjCme9su7p9M+p7Hu4TIwT
 St1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7c19kwVIK7YMb2VDQnjAkuLRbBPFNqIJf4ySzLQ40dc=;
 b=AE+K2BppMPcjM1+wAUyTZ1EiY3ZX2FNAa71ovT/rSEvw8XvQvx/Zh4JIDi9ApiiaE2
 dnYnfvBhHNQWEet4zWLsUrISD4CRKmccY4sTNaaKMvV7W3+WyRafek0skEEvFzW5Wla6
 /HmW5paNR1CRsblJABgQPuALhWyPJKZlvjO3Zc4/mVWrD94+zhAbn953vDnMvB2kExOY
 hPLUGoAFNZXknzZ+pqdmX0FZy2CKlo8bs1PQPVtEdZtGsHrVT9uD/YVmo5MEiU0S0jGz
 VQEyziaE4bDBUNFYuvG4EnJDwDYqoLvdkQFCcadrSjsfRMHlXsCqTcLzXtVcnFn9qdFH
 bvng==
X-Gm-Message-State: AOAM533mdkoSNojTQy2mak+ReKjhtokdU7FoisbjNKaI1KvnRhExSzzS
 F+TO5nKrmEKJ0QwB6fbjExU=
X-Google-Smtp-Source: ABdhPJzmNwgAWWhu5YVWLS46Tva4OgHqGGW1miyDNcKQ6JiTF8BTywmtNNhuDPhseLmetj5Czd4PMA==
X-Received: by 2002:a17:90b:e0c:: with SMTP id
 ge12mr3640548pjb.3.1590564503101; 
 Wed, 27 May 2020 00:28:23 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.44])
 by smtp.gmail.com with ESMTPSA id q201sm1371842pfq.40.2020.05.27.00.28.18
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 27 May 2020 00:28:22 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, p.zabel@pengutronix.de, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, thierry.reding@gmail.com, sam@ravnborg.org,
 airlied@linux.ie, daniel@ffwll.ch, mturquette@baylibre.com,
 sboyd@kernel.org, andy.shevchenko@gmail.com, noralf@tronnes.org,
 linus.walleij@linaro.org, broonie@kernel.org
Subject: [PATCH v6 8/9] spi: stm32: Add 'SPI_SIMPLEX_RX',
 'SPI_3WIRE_RX' support for stm32f4
Date: Wed, 27 May 2020 15:27:32 +0800
Message-Id: <1590564453-24499-9-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
References: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_002824_690469_C4067B04 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, dillonhua@gmail.com, linux-clk@vger.kernel.org,
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

so, for second step, stm32 driver recongise this process is 'SPI_SIMPLE_RX'
from stm32_spi_communication_type(), but there is no related process for this
type in stm32f4_spi_set_mode(), then we get error from
stm32_spi_transfer_one_setup().

we can use two method to fix this bug.
1, use stm32 spi's "In unidirectional receive-only mode (BIDIMODE=0 and
RXONLY=1)". but as our code running in sdram, the read latency is too large
to get so many receive overrun error in interrupts handler.

2, use stm32 spi's "In full-duplex (BIDIMODE=0 and RXONLY=0)", as tx_buf is
null, so add flag 'SPI_MASTER_MUST_TX' to spi master.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---

Change since V4:
1 remove dummy data sent out by stm32 spi driver
2 add flag 'SPI_MASTER_MUST_TX' to spi master

 drivers/spi/spi-stm32.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-stm32.c b/drivers/spi/spi-stm32.c
index 44ac6eb3298d..4c643dfc7fbb 100644
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
