Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7250BD74AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 13:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=IJPXObluuRgCUosaax6E3oAisDq7XmT5K8hb+q6PVUQ=; b=Bpu
	4XIx+SZxWPQb4mEFvPRgsK+Vs02W9Bpzo2DO3ZEYZItlM8zl02ZDrkJ+P95vNrlFq9ExMX0mOtjJ9
	gpw/J9smcM95aYGwqH/6fo8JJ0Hiso5j4YLeSojfOkX64kmTH2FfSFldG9fmncFtJPcAZSYwSA4Yx
	TXMF40t0BtvxdatYkIsD9JZA0SLHKw14UnZkGh6B8W9rvYYWcYtomqUv6zvf2xoKKZYdiS+GyiPAt
	G95jFS8dq8tU8i1nZTrPWNQRp45Wl++tI4XQqQokBByeUgjfcpNM4TvbCTXcdEuznDoQBIaoIUu2l
	hRVAX0rMMR/MF+GUl3NDi7yhxc/v/Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKn4-0001Di-9e; Tue, 15 Oct 2019 11:14:58 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKkd-00079I-V1
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 11:12:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=MgY4bxFY17PHIsD8EZBTx9xqaC4wci+W07NNCCTrDxg=; b=VwP6mNLys83T
 EwBLJHsdCOVbIVn37RACoo2clg2uiG8A75BZCWyB8SkdNmik8S3qKBqyu9p3lifRyVwlk5El3NuqH
 j7ZLSxWvsmkOvsrkqJClQ25fp6J8yTQ43dk/RHxMcwvzByv3WmEbGcMZky64KIeD/4jvJUw83VMXe
 RJgEI=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iKKka-00021B-7B; Tue, 15 Oct 2019 11:12:24 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id A18602741CD7; Tue, 15 Oct 2019 12:12:23 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Applied "spi: spidev: use new `delay` field for spi transfers" to the
 spi tree
In-Reply-To: <20190926105147.7839-14-alexandru.ardelean@analog.com>
X-Patchwork-Hint: ignore
Message-Id: <20191015111223.A18602741CD7@ypsilon.sirena.org.uk>
Date: Tue, 15 Oct 2019 12:12:23 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_041227_993750_F5164A70 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: f.fainelli@gmail.com, baolin.wang@linaro.org, linux-iio@vger.kernel.org,
 zhang.lyra@gmail.com, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org, orsonzhai@gmail.com, jic23@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: spidev: use new `delay` field for spi transfers

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.5

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

From 8e319dd5f1ebbc1fffa9e550b2a643cbce7515b1 Mon Sep 17 00:00:00 2001
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
Date: Thu, 26 Sep 2019 13:51:41 +0300
Subject: [PATCH] spi: spidev: use new `delay` field for spi transfers

The `delay` field has type `struct spi_delay`.
This allows users to specify nano-second or clock-cycle delays (if needed).

Converting to use `delay` is straightforward: it's just assigning the
value to `delay.value` and hard-coding the `delay.unit` to
`SPI_DELAY_UNIT_USECS`.

This keeps the uapi for spidev un-changed. Changing it can be part of
another changeset and discussion.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
Link: https://lore.kernel.org/r/20190926105147.7839-14-alexandru.ardelean@analog.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spidev.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spidev.c b/drivers/spi/spidev.c
index d63235dcb231..1e217e3e9486 100644
--- a/drivers/spi/spidev.c
+++ b/drivers/spi/spidev.c
@@ -265,7 +265,8 @@ static int spidev_message(struct spidev_data *spidev,
 		k_tmp->tx_nbits = u_tmp->tx_nbits;
 		k_tmp->rx_nbits = u_tmp->rx_nbits;
 		k_tmp->bits_per_word = u_tmp->bits_per_word;
-		k_tmp->delay_usecs = u_tmp->delay_usecs;
+		k_tmp->delay.value = u_tmp->delay_usecs;
+		k_tmp->delay.unit = SPI_DELAY_UNIT_USECS;
 		k_tmp->speed_hz = u_tmp->speed_hz;
 		k_tmp->word_delay.value = u_tmp->word_delay_usecs;
 		k_tmp->word_delay.unit = SPI_DELAY_UNIT_USECS;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
