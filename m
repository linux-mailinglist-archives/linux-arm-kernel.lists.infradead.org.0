Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA83D74B3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 13:16:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=nKTwXCCKwlECtHgXfv4LvxWOCW8cBGlWQnXf3yWNsBM=; b=fvR
	jibFt+u1+ti9w4C6C4tNNsikwyrtlmiNaoIvqMreaoWi4ddkGHYTVKCq6C6+kAwulMlu0A1artD9R
	UTMJO+JWjCzxdEbSJ4BKdBYeaBi0e+ROuiFGXg9JwUnMrjGdM5LosRJ/1DlRgIC+TcSBxYh+bA2PO
	V51sVsvEcf8M9KYlM4fBvIqhKYndZQpFkt9tfO0ya+0kru+qyf4Y+ry7mQ0+7IW36EXxOu5k4U6jM
	sZRWlqDi+b8qVgEBL8FiLuEJHhwLBEWX3uQS/KkgAVeXqYjgl5nZ2xJsoQSd/bmRMxXAaP1Or7QB2
	6BWIK171DK65CBqCAo8tZvz4/3/9W0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKoM-0003Od-Lr; Tue, 15 Oct 2019 11:16:18 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKkg-0007Bk-8Q
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 11:12:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=qbDy1QjYo7Y9HLm2+PkGIA6oe2QcmXmsffZY81/aSwk=; b=Udr0d3CBzgEn
 FxfWdTqqbGRN8OyN3DziEu9jrb36OPhb/d4H3nuEJFG1495BGbOOdFxV3tp5jkGDuztrkm3wf48uA
 Giui4BOJZY+Bl7zvQC3/BMV9fpopZWvXzjZ9g0mQ78hUDEvwHXD3TDh9cJlcL+4icYEK+RcfZZueZ
 B9vu0=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iKKkc-00021r-2M; Tue, 15 Oct 2019 11:12:26 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 8434427419E4; Tue, 15 Oct 2019 12:12:25 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Applied "spi: spidev: use new `word_delay` field for spi transfers"
 to the spi tree
In-Reply-To: <20190926105147.7839-7-alexandru.ardelean@analog.com>
X-Patchwork-Hint: ignore
Message-Id: <20191015111225.8434427419E4@ypsilon.sirena.org.uk>
Date: Tue, 15 Oct 2019 12:12:25 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_041230_334781_DFB48FBA 
X-CRM114-Status: GOOD (  14.04  )
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

   spi: spidev: use new `word_delay` field for spi transfers

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

From ec3fa72fa8404128771a095d5a56b738752ba9ff Mon Sep 17 00:00:00 2001
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
Date: Thu, 26 Sep 2019 13:51:34 +0300
Subject: [PATCH] spi: spidev: use new `word_delay` field for spi transfers

The `word_delay` field had it's type changed to `struct spi_delay`.
This allows users to specify nano-second or clock-cycle delays (if needed).

Converting to use `word_delay` is straightforward: it's just assigning the
value to `word_delay.value` and hard-coding the `word_delay.unit` to
`SPI_DELAY_UNIT_USECS`

This keeps the uapi for spidev un-changed. Changing it can be part of
another changeset and discussion.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
Link: https://lore.kernel.org/r/20190926105147.7839-7-alexandru.ardelean@analog.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spidev.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spidev.c b/drivers/spi/spidev.c
index 3ea9d8a3e6e8..d63235dcb231 100644
--- a/drivers/spi/spidev.c
+++ b/drivers/spi/spidev.c
@@ -267,7 +267,8 @@ static int spidev_message(struct spidev_data *spidev,
 		k_tmp->bits_per_word = u_tmp->bits_per_word;
 		k_tmp->delay_usecs = u_tmp->delay_usecs;
 		k_tmp->speed_hz = u_tmp->speed_hz;
-		k_tmp->word_delay_usecs = u_tmp->word_delay_usecs;
+		k_tmp->word_delay.value = u_tmp->word_delay_usecs;
+		k_tmp->word_delay.unit = SPI_DELAY_UNIT_USECS;
 		if (!k_tmp->speed_hz)
 			k_tmp->speed_hz = spidev->speed_hz;
 #ifdef VERBOSE
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
