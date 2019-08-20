Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D634F967BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 19:42:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=vNypAFif9QhnWrma3S/OVKz89E4ThEMlHRjiyUBWtSs=; b=Tpk
	SoWy5PHeGCXz/LwCm+rbqeJ09lzgb97GxKGhxTEBqQNdyjlzQ4a6j0PinWjO4uupYy049M71RWU/z
	JzTQoQU5yz6LcNY0Mi1Gk4ARU9s43tp8uuOTmC0kzL0bX0oEjpc3hpCvpLBIUd5Ash3fTXVQEQHG5
	jsvvvU7NTo42ShirVpZLkWsvKDj7ZGJYjH9oVd8s31CqYo2UB63uDNx/PoSmE/SP1aiHEFeSfngZQ
	j60VNMxA0WJhr4m+757OMJZ6yqY+zeSWxd/UrgjAUIp37Ke5WpaOt0ZmTA/H+1ehiVlmaJUcxI4dJ
	eMMz8DH+e5Q4FNZfPa3PMfKXp/mwjDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0897-0002je-N8; Tue, 20 Aug 2019 17:42:13 +0000
Received: from mail-wm1-f97.google.com ([209.85.128.97])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0882-0001w7-PB
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 17:41:11 +0000
Received: by mail-wm1-f97.google.com with SMTP id k1so3074811wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 10:41:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=0sfeTaSMLRPw6OQW2nsE+rZY6o1t1xUbogKZMDZLLEw=;
 b=ImS/QKQvGymddPxcDcRknQUJrU1Q9LIlPhb0/oymISknen92WFRwqfQRdXhRGFNPmc
 FzrYpWw4s7RDPdYfgNPtx3Yzh/JV16RhBQ+s3d5G50BmsPlgB2jMZ1FadJhK/1/pNBsK
 YXkp7///88KfBXlSOmjaqkZq8YscyLlCn23i5Vx/aBXB56zZMTnLaVH/F0K5KhOm2dx4
 oID0nKPW70vF3/c7x53lc0spPIL6Dw5sWL4I8zD3JB3G5aGNK06kA4YzAU0ZzM8/icPs
 yhE/XBElkx6g6o2kOcpkqyW15EhrlJozBMSaoQVXNlvIBvpSKdmcMvrjEjJ1FqISrsaf
 Kkpg==
X-Gm-Message-State: APjAAAUXl0jXe7CDNupJsbIwpo0APSABeTlYZdewm3doTBRH3oWheykw
 P5hRwzkjfBMYTP7eExzsU/jzUIfN9jPye3+CyiOfCiYkeSN6RFfTK2UGBQ9kBBbwkQ==
X-Google-Smtp-Source: APXvYqyIoehCXJci24dNeS0SujgmrXX94WJNLwdaZsUvlBYtjeo3m37ZNLL3PxpVGQ7oj91dmq6wrflUgmRj
X-Received: by 2002:a05:600c:2102:: with SMTP id
 u2mr1243986wml.105.1566322865711; 
 Tue, 20 Aug 2019 10:41:05 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id s11sm3417wmj.44.2019.08.20.10.41.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 10:41:05 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i0881-00032b-EF; Tue, 20 Aug 2019 17:41:05 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id C46BB274314F; Tue, 20 Aug 2019 18:41:04 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Applied "ASoC: sun4i-i2s: Fix WSS and SR fields for the A83t" to the
 asoc tree
In-Reply-To: <d93f0943cc39d880750daf459a0eeab34c63518e.1566242458.git-series.maxime.ripard@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190820174104.C46BB274314F@ypsilon.sirena.org.uk>
Date: Tue, 20 Aug 2019 18:41:04 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_104106_813729_31A3D4C7 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.97 listed in list.dnswl.org]
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

   ASoC: sun4i-i2s: Fix WSS and SR fields for the A83t

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

From 2e04fc4dbf50195262aa5a2ae6d35baa5b598cae Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Mon, 19 Aug 2019 21:25:21 +0200
Subject: [PATCH] ASoC: sun4i-i2s: Fix WSS and SR fields for the A83t

The A83t has the same bit fields offsets than the A10 and A31, while this
was the first device with the new layout, fix that.

Fixes: 21faaea1343f ("ASoC: sun4i-i2s: Add support for A83T")
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Link: https://lore.kernel.org/r/d93f0943cc39d880750daf459a0eeab34c63518e.1566242458.git-series.maxime.ripard@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sunxi/sun4i-i2s.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 29b5eacd3abe..59d809df8d2a 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -1048,8 +1048,8 @@ static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
 	.reg_offset_txdata	= SUN8I_I2S_FIFO_TX_REG,
 	.sun4i_i2s_regmap	= &sun4i_i2s_regmap_config,
 	.field_clkdiv_mclk_en	= REG_FIELD(SUN4I_I2S_CLK_DIV_REG, 7, 7),
-	.field_fmt_wss		= REG_FIELD(SUN4I_I2S_FMT0_REG, 2, 3),
-	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 5),
+	.field_fmt_wss		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 2),
+	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 6),
 	.bclk_dividers		= sun8i_i2s_clk_div,
 	.num_bclk_dividers	= ARRAY_SIZE(sun8i_i2s_clk_div),
 	.mclk_dividers		= sun8i_i2s_clk_div,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
