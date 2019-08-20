Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54DB967C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 19:42:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=uiE4lMhOjZvcDB/vfSCEiEThLNLN7dOkpbLVjR4yS18=; b=gfG
	676b0dVDG6jzVXOU5UDmjG6OPMHbBhHb3DVYLHK1g0ignJXELDvz29fjtac4Z9ohZCn3hjBbyJey8
	25TONIBEb1vOpoHBxyxsNFNBVp31qrntjcJaP58uOVE5FmJCeNkkqydiukFc4T8C06dmnnWgqkzt1
	+4YgO+acyaaAahUTpwaTDRs+rnEzF/z7Y7rs51dHtstWdd0l9fXvmZqytBwAjCwSr0Ya0NzE4ZBir
	zKPo7/gkMaaQ83c3PmihqFwr+QnZ9affcXI4PWs9wLQwFGBjg0f72eF96IWgOKttrSmiqCO1fujZm
	QSvsa3vVMiaxSM3pJfInzObdj/cPm8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i089Y-0003Ec-GY; Tue, 20 Aug 2019 17:42:40 +0000
Received: from mail-ed1-f99.google.com ([209.85.208.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0882-0001vm-Ih
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 17:41:11 +0000
Received: by mail-ed1-f99.google.com with SMTP id r12so7263287edo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 10:41:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=qBAo3cxSBUzYkQwP713qVmqAb1nzWJ6m9zk9ALNnNwY=;
 b=m/KoX/z8Ad8ZYVAPiNh+CQyrGYO3f/TspdLlpuQqmOFS1tG6uVDsIqkQXKNMkSwhfx
 J3LpLU/ldvURUXENOz+AhnPYg85FSfEn7MReqX3gwCdZVLISLlBcJ5J6Qj4wQpcceG7X
 KEyEPFbBEPDamjhhmuxtVvocil2srEFdvKwnwV0T76YChXyK3sDcXm7TYfv4wpjjyZiY
 CSyXSc4s+5WY9qkoySNn9JnEihsyjOn1Sz02bl6bujxSmqAiZsdWVYDof/Qs1cuNzqsH
 q/V7O0rK4r3HSCVa3aM/67Rx9mqUgC7zNBjfEGV+SgAYgNTJofM7pyNPJ0mH2Vyb6QKD
 xwmQ==
X-Gm-Message-State: APjAAAX07nygNr26mwxnQdOiAfu92JW4nVyQm4KhUP6gwmmVgpwBUA7K
 HfMWrVyL44WCcH/IQQX10N/T8KqqJWPz97hLUI2tIL1DhnDrtvCP+aBnslAjzD6SCQ==
X-Google-Smtp-Source: APXvYqz9otcJ0QBmKRz9DZ4q7HPAEoZRKoZlzxcnzAH3geHkf4DUyiFZJoL74mc5pqbc0agxyiSHzNnEpxOv
X-Received: by 2002:a17:907:4362:: with SMTP id
 nd2mr26896901ejb.29.1566322865208; 
 Tue, 20 Aug 2019 10:41:05 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id v11sm329824eds.33.2019.08.20.10.41.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 10:41:05 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i0880-00032R-TY; Tue, 20 Aug 2019 17:41:04 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 6884D274314C; Tue, 20 Aug 2019 18:41:04 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Applied "ASoC: sun4i-i2s: Fix the LRCK period on A83t" to the asoc
 tree
In-Reply-To: <6a0ee0bc1375bcb53840d3fb2d2f3d9732b8e57e.1566242458.git-series.maxime.ripard@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190820174104.6884D274314C@ypsilon.sirena.org.uk>
Date: Tue, 20 Aug 2019 18:41:04 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_104106_612798_0FB861A8 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 codekipper@gmail.com, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: sun4i-i2s: Fix the LRCK period on A83t

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.4

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

From 69e450e50ca6dde566f3ac3f2c329fb0492441ef Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Mon, 19 Aug 2019 21:25:23 +0200
Subject: [PATCH] ASoC: sun4i-i2s: Fix the LRCK period on A83t

Unlike the previous SoCs, the A83t, like the newer ones, need the LRCK
bitfield to be set. Let's add it.

Fixes: 21faaea1343f ("ASoC: sun4i-i2s: Add support for A83T")
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Link: https://lore.kernel.org/r/6a0ee0bc1375bcb53840d3fb2d2f3d9732b8e57e.1566242458.git-series.maxime.ripard@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sunxi/sun4i-i2s.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 0fce3c476772..9468584f4eb0 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -1047,6 +1047,7 @@ static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
 	.has_reset		= true,
 	.reg_offset_txdata	= SUN8I_I2S_FIFO_TX_REG,
 	.sun4i_i2s_regmap	= &sun4i_i2s_regmap_config,
+	.has_fmt_set_lrck_period = true,
 	.field_clkdiv_mclk_en	= REG_FIELD(SUN4I_I2S_CLK_DIV_REG, 8, 8),
 	.field_fmt_wss		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 2),
 	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 6),
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
