Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69521967DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 19:43:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=TZsdwAYyqzLyMvpfcwsGtn4hZ1iLzVxTUpExbK+dozQ=; b=Mrp
	U5gOKbdPFPODA1Fo6KtLyOFXyz/FCSVsG6X8q0wWYgSkpmS4KAvoQTy9Dh+ybqpXbxWOf9TRwedje
	jKBCksRayVE7jrX7+DWEAvgMJr06hu5PThGzIxgHP8M8eRMFRJRWsMQY6ZCyKv6CTM/CbK62jG9Z7
	ZTDrawxc5Zrfsf7q68LAnRbMLZP8aK48MsQjIOnMs8RlOcd8B0ho/F/gGIVZRPYit19efWuMwOPfd
	uhWjuv7WHUFDqUU5GtBMWXgG2wZE2iAL6w9FYM8+U50ZD2qrvCsCA9SArVBnKIJ4xhR3+PHtog4rp
	36zrr0DzEYi/QNrRYPgg1NFCHzvZX3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i08AD-000401-VS; Tue, 20 Aug 2019 17:43:22 +0000
Received: from mail-wm1-f100.google.com ([209.85.128.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0883-0001x3-Qg
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 17:41:13 +0000
Received: by mail-wm1-f100.google.com with SMTP id d16so3398242wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 10:41:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=kKDiaFCwlI0LG0aQF2OZkw6zY1nZxCPFkp4+u3CT6J4=;
 b=SZ0eW0GZeAnpUk34Hv2IwHOYBkIIHcFmSwZlql3IHSgXsesrXtZtOzd7ESB+UGoqB7
 aIJck2Sr0AGla3MpewysS13YT5IdDBNWAJDQWmxCaAAfyJhOSlDFGSO7PeYszm+escHV
 BbhL9Ifab67Mn2XPt37iDnZ9oRAbxLrImaAxsH0Cjta8qzfyzjepiXJRDrpErMd//L+3
 1cbwiVRkBzjMa9lPWCfhe9DWxFRoLemXv4nJ/g3u6xSJVIR9fImxm0MxNf5/OfMd8VuW
 0OV/VtaiI+MyJy/94bg4vE5kZOGYvtCLwI2Oy6aKiee25bJiwT1ccc97cyz43fFZ3ZVV
 loGw==
X-Gm-Message-State: APjAAAXguUGv5Njcx6TFRzu1HrmSek62fo9AA+xv1+yltR15TvznA+i2
 JvQidy6el64nQrHiTqiXJl9YdvlxpsDN1Oap9LUXXY60w+WFa5d8EqTVS5lDs0BSDQ==
X-Google-Smtp-Source: APXvYqz01JLuHJLn0Dp3nZavjwETeEjksL0n8HDLWQn0OO42CozJjNxHMz07TpXOEgSP5pxKNxvMFZvfsmkH
X-Received: by 2002:a05:600c:2255:: with SMTP id
 a21mr1179446wmm.119.1566322866279; 
 Tue, 20 Aug 2019 10:41:06 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id x21sm7945wmj.52.2019.08.20.10.41.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 10:41:06 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i0882-00032m-0T; Tue, 20 Aug 2019 17:41:06 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 63827274314E; Tue, 20 Aug 2019 18:41:05 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Applied "ASoC: sun4i-i2s: RX and TX counter registers are swapped" to
 the asoc tree
In-Reply-To: <8b26477560ad5fd8f69e037b167c5e61de5c26a3.1566242458.git-series.maxime.ripard@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190820174105.63827274314E@ypsilon.sirena.org.uk>
Date: Tue, 20 Aug 2019 18:41:05 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_104107_882998_70D7D52B 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.100 listed in list.dnswl.org]
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

   ASoC: sun4i-i2s: RX and TX counter registers are swapped

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

From cf2c0e1ce9544df42170fb921f12da82dc0cc8d6 Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Mon, 19 Aug 2019 21:25:17 +0200
Subject: [PATCH] ASoC: sun4i-i2s: RX and TX counter registers are swapped

The RX and TX counters registers offset have been swapped, fix that.

Fixes: fa7c0d13cb26 ("ASoC: sunxi: Add Allwinner A10 Digital Audio driver")
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Link: https://lore.kernel.org/r/8b26477560ad5fd8f69e037b167c5e61de5c26a3.1566242458.git-series.maxime.ripard@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sunxi/sun4i-i2s.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 0a7f1d0f7371..53c95e5289f5 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -76,8 +76,8 @@
 #define SUN4I_I2S_CLK_DIV_MCLK_MASK		GENMASK(3, 0)
 #define SUN4I_I2S_CLK_DIV_MCLK(mclk)			((mclk) << 0)
 
-#define SUN4I_I2S_RX_CNT_REG		0x28
-#define SUN4I_I2S_TX_CNT_REG		0x2c
+#define SUN4I_I2S_TX_CNT_REG		0x28
+#define SUN4I_I2S_RX_CNT_REG		0x2c
 
 #define SUN4I_I2S_TX_CHAN_SEL_REG	0x30
 #define SUN4I_I2S_CHAN_SEL_MASK			GENMASK(2, 0)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
