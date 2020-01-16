Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D634313EDFD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:06:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m9wIIAvz7yeuxaFQwn5tIow1JoT8kkklZYZHnfynXgU=; b=MPAYwZPwZowB2I
	CcXTZrw3nlbDQ0CG20Ibm1nSdM72DbbtXxfcu7zbk0tJXhq4atiaKLFuY86N9sfi8KskJPF8Kcons
	tCJEwx13qbC5pVXNZVqDny7ilVK7BNwcF54jLsaScwR0JOtd4BUblIstS7v8+n+cHEjTbqGRETcPM
	nrJmhCaYGaMaCVfvbCJU8iEwTpJ2gLJWhrE3ofxitt7rVFIYvqvQDywXTIBMjJpJ8SAWIaJPOAQIT
	ZGLVF1RqKp3vKrX7ld5egYHr4oitIboFWkdVjVCcFXXPHUoPnOqHKlo1zqI1RHdejLwpd84VKe7iD
	4Ddi+RGUY8uIdY/VsRRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9XJ-0004NX-1m; Thu, 16 Jan 2020 18:06:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8wv-0006B1-F4
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:28:58 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B84C8246E8;
 Thu, 16 Jan 2020 17:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579195732;
 bh=wp8H6JrP5r7Xu478e+qmlSSOd3BEKvsKmv9Oq1SZ05c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G29w+FI3OaFUaIAQ4BncKp3AsyDqEEI+KfgpuY4WdL0MZhwLgOLJx4ve2IBhlsec8
 sHicx6vpsyGs/S2K3obNMA5zyH92tygbRCu+6Kr3nDwkKTqHDBy5G1tu4Eec0Wu9OK
 i0hUOG9xyfitbDrMKjj3GTN8KbHM+w4XmdL75iHw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 271/371] ASoC: sun4i-i2s: RX and TX counter
 registers are swapped
Date: Thu, 16 Jan 2020 12:22:23 -0500
Message-Id: <20200116172403.18149-214-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_092853_554264_82D94570 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Sasha Levin <sashal@kernel.org>,
 alsa-devel@alsa-project.org, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

[ Upstream commit cf2c0e1ce9544df42170fb921f12da82dc0cc8d6 ]

The RX and TX counters registers offset have been swapped, fix that.

Fixes: fa7c0d13cb26 ("ASoC: sunxi: Add Allwinner A10 Digital Audio driver")
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Link: https://lore.kernel.org/r/8b26477560ad5fd8f69e037b167c5e61de5c26a3.1566242458.git-series.maxime.ripard@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 sound/soc/sunxi/sun4i-i2s.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index da0a2083e12a..d2802fd8c1dd 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -80,8 +80,8 @@
 #define SUN4I_I2S_CLK_DIV_MCLK_MASK		GENMASK(3, 0)
 #define SUN4I_I2S_CLK_DIV_MCLK(mclk)			((mclk) << 0)
 
-#define SUN4I_I2S_RX_CNT_REG		0x28
-#define SUN4I_I2S_TX_CNT_REG		0x2c
+#define SUN4I_I2S_TX_CNT_REG		0x28
+#define SUN4I_I2S_RX_CNT_REG		0x2c
 
 #define SUN4I_I2S_TX_CHAN_SEL_REG	0x30
 #define SUN4I_I2S_CHAN_SEL(num_chan)		(((num_chan) - 1) << 0)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
