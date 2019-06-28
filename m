Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C535A18C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 18:57:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=/3Svj2ai3WMgZOcHCWBnrjMV2z8H67XXH4UWeHBhDIo=; b=Rcc
	85u5VPuHi6v647mnUwI162JpgtZdI8yT2vL/k+MGY3h1hpULd4ZbW3uX5TBYuWBXXxTrJC265wHnf
	d6VwpNZ9pRVnbuBTMUIGzzWtJoAMO9pcggp+0aeIQtJ6Vqy57OAh18r8jwoDAm6rE9b62Z3tJpAYJ
	s8JgVPqRad8+o3LJGlpR+hOcdPlXs7E839lqYRjxmHvBuTKZw8O0N7ceHzRY2UZeahzPNVK/79VnN
	MFZ9gWUdbK16kdjT3q7IyVXd9N3GMxonHovBNfsZTm73u3taf2AFT8SCnlov7qHXU/5ngRQ5LtOBl
	rs7A3kEdAS3QkiyhHnug8zgukMmRqCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hguBH-0004Ab-8Z; Fri, 28 Jun 2019 16:56:59 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hguAv-00043A-7E; Fri, 28 Jun 2019 16:56:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=lK0iOan3AVtLl5dzxhYffiHPtchPL13jyFaUkzzdnGY=; b=obVpWn5MXCPj
 xsB7YM7Fl/AleM+yoj8xzMyX8MH6l9FGSrYsiLhtQYDHnbihQfnQNAgHQGSJBYYa7isdgs+zog5xP
 sYNtslMjaYfQNaLjcglfBmSQi1qZ1FR7Hrhy3qyFSnQK5kZv9FeLJ54GeO8tvR3xlSrkSfuuMrhMU
 /kTLo=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hguAs-0007D3-B1; Fri, 28 Jun 2019 16:56:34 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id E5C44440046; Fri, 28 Jun 2019 17:56:33 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Ludovic Barre <ludovic.barre@st.com>
Subject: Applied "spi: stm32-qspi: remove signal sensitive on completion" to
 the spi tree
In-Reply-To: <1561621439-7305-2-git-send-email-ludovic.Barre@st.com>
X-Patchwork-Hint: ignore
Message-Id: <20190628165633.E5C44440046@finisterre.sirena.org.uk>
Date: Fri, 28 Jun 2019 17:56:33 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_095637_641167_3C6FC56B 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 Boris Brezillon <bbrezillon@kernel.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-spi@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, Mark Brown <broonie@kernel.org>,
 linux-mtd@lists.infradead.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: stm32-qspi: remove signal sensitive on completion

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.3

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 775c4c0032c408b8a57a3fc2695eeda101da003a Mon Sep 17 00:00:00 2001
From: Ludovic Barre <ludovic.barre@st.com>
Date: Thu, 27 Jun 2019 09:43:59 +0200
Subject: [PATCH] spi: stm32-qspi: remove signal sensitive on completion

On umount step a sigkill signal is set (without user specific
action), due to sigkill signal the completion will be interrupted and
the data transfer can't be finished if a sync is needed.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-stm32-qspi.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/spi/spi-stm32-qspi.c b/drivers/spi/spi-stm32-qspi.c
index 42f8e3c6aa1f..0b07182f5660 100644
--- a/drivers/spi/spi-stm32-qspi.c
+++ b/drivers/spi/spi-stm32-qspi.c
@@ -245,12 +245,8 @@ static int stm32_qspi_tx_dma(struct stm32_qspi *qspi,
 	writel_relaxed(cr | CR_DMAEN, qspi->io_base + QSPI_CR);
 
 	t_out = sgt.nents * STM32_COMP_TIMEOUT_MS;
-	if (!wait_for_completion_interruptible_timeout(&qspi->dma_completion,
-						       msecs_to_jiffies(t_out)))
-		err = -ETIMEDOUT;
-
-	if (dma_async_is_tx_complete(dma_ch, cookie,
-				     NULL, NULL) != DMA_COMPLETE)
+	if (!wait_for_completion_timeout(&qspi->dma_completion,
+					 msecs_to_jiffies(t_out)))
 		err = -ETIMEDOUT;
 
 	if (err)
@@ -304,7 +300,7 @@ static int stm32_qspi_wait_cmd(struct stm32_qspi *qspi,
 	cr = readl_relaxed(qspi->io_base + QSPI_CR);
 	writel_relaxed(cr | CR_TCIE | CR_TEIE, qspi->io_base + QSPI_CR);
 
-	if (!wait_for_completion_interruptible_timeout(&qspi->data_completion,
+	if (!wait_for_completion_timeout(&qspi->data_completion,
 				msecs_to_jiffies(STM32_COMP_TIMEOUT_MS))) {
 		err = -ETIMEDOUT;
 	} else {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
