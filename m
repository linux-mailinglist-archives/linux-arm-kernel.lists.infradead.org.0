Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E7F1837DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 18:41:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=XntssaZfMWQyPJGglUduhtnWPvy20/ULYAQm26dxILI=; b=ls+
	Bl2t51Jh49AX0SGfGJ/zw4WThoojlxsNclbZe/Nd4gTqwzJgxFJ7XIIVhgM81Zlnr4/G9WQnZ7W2W
	aYIRJ3B8tV79DuaUwvg3mZaEIaleKEdO1yH4OziefZfcZKBUFskaWvGjofa4JEKUVsREwxkeJOkoc
	r++XiHql/HV1DkVrB+YS4g+YjP1rlphnjlPFhCHbqWp4bbT+jGu5IPmAI+2O/R5+SSSEwXAOjnU9v
	G55f5CtNbnW/cz+iRbW/iYr4+oEGfDwp/tCdVO5H1OYBltgaiEK3LHFwhLEMrgMbtIYfYAiWxepXh
	l8uh3KUt7/jxGgtWX5IUCN4c2gEXwyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCRpJ-0006FJ-7u; Thu, 12 Mar 2020 17:40:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCRnk-0003dZ-OX; Thu, 12 Mar 2020 17:39:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DDB8430E;
 Thu, 12 Mar 2020 10:39:19 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 633BB3F6CF;
 Thu, 12 Mar 2020 10:39:19 -0700 (PDT)
Date: Thu, 12 Mar 2020 17:39:17 +0000
From: Mark Brown <broonie@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Applied "spi: meson-spicc: support max 80MHz clock" to the spi tree
In-Reply-To: <20200312133131.26430-5-narmstrong@baylibre.com>
Message-Id: <applied-20200312133131.26430-5-narmstrong@baylibre.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_103920_916121_E2996890 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Yixun Lan <yixun.lan@amlogic.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-amlogic@lists.infradead.org, Sunny Luo <sunny.luo@amlogic.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: meson-spicc: support max 80MHz clock

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git 

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

From 3196816ff64bb3a21fbda89e7355b6b87c3f50a0 Mon Sep 17 00:00:00 2001
From: Neil Armstrong <narmstrong@baylibre.com>
Date: Thu, 12 Mar 2020 14:31:26 +0100
Subject: [PATCH] spi: meson-spicc: support max 80MHz clock

The SPICC controller in Meson-AXG is capable of running at 80M clock.
The ASIC IP is improved and the clock is actually running higher than
previous old SoCs.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Yixun Lan <yixun.lan@amlogic.com>
Signed-off-by: Sunny Luo <sunny.luo@amlogic.com>
Link: https://lore.kernel.org/r/20200312133131.26430-5-narmstrong@baylibre.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-meson-spicc.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/spi/spi-meson-spicc.c b/drivers/spi/spi-meson-spicc.c
index bd434d9055d9..710b4e780daa 100644
--- a/drivers/spi/spi-meson-spicc.c
+++ b/drivers/spi/spi-meson-spicc.c
@@ -35,7 +35,6 @@
  *   to have a CS go down over the full transfer
  */
 
-#define SPICC_MAX_FREQ	30000000
 #define SPICC_MAX_BURST	128
 
 /* Register Map */
@@ -132,6 +131,7 @@
 #define SPICC_FIFO_HALF 10
 
 struct meson_spicc_data {
+	unsigned int			max_speed_hz;
 	bool				has_oen;
 	bool				has_enhance_clk_div;
 };
@@ -693,11 +693,9 @@ static int meson_spicc_probe(struct platform_device *pdev)
 	master->transfer_one = meson_spicc_transfer_one;
 	master->use_gpio_descriptors = true;
 
-	/* Setup max rate according to the Meson GX datasheet */
-	if ((rate >> 2) > SPICC_MAX_FREQ)
-		master->max_speed_hz = SPICC_MAX_FREQ;
-	else
-		master->max_speed_hz = rate >> 2;
+	/* Setup max rate according to the Meson datasheet */
+	master->max_speed_hz = min_t(unsigned int, rate >> 1,
+				     spicc->data->max_speed_hz);
 
 	meson_spicc_oen_enable(spicc);
 
@@ -737,9 +735,11 @@ static int meson_spicc_remove(struct platform_device *pdev)
 }
 
 static const struct meson_spicc_data meson_spicc_gx_data = {
+	.max_speed_hz		= 30000000,
 };
 
 static const struct meson_spicc_data meson_spicc_axg_data = {
+	.max_speed_hz		= 80000000,
 	.has_oen		= true,
 	.has_enhance_clk_div	= true,
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
