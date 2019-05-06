Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D42AB14E90
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 17:04:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=cvdLSjM2ynRZb2shQtYH/Xk+hxk5Ygrsvkcod18/d6Y=; b=aZc
	G6GemtK4LB/l7ERcjhfcAmCo+tRe5OaewT2Gd2lRIp/jdKTUEwSwgSbRckT7SsuzeN7151n1Z0ywq
	pTHX1tRwaDKz8duPVQinyn3xmXdgRw77j1QLem+CKTxDDdEnUAoGCeKrIrQXEeYhXGdzvHEWTyrGU
	nFj5U+KfYd3Cl4VJw2aFfnnjY+bhm6esRolxYBJnxGuG6Z/QkSMnw/8qedLonmwp7KLG0BpoY2Ob4
	no7mfif8fK8QBags8I7c8LaZKmxF19DVUEkMablj4gpovxFNVrF4+X60FaHu2dbk+TQIyh4OCZPMa
	5KVSCsOriwlsPMVSLcuNAxyu96vqFSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNfAF-0005gp-Ik; Mon, 06 May 2019 15:04:23 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNf9n-0005IH-Md
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 15:03:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=zISSK7BMRYtIQviKajlbZmcAGpaqp8FrE1fMsg4iIKo=; b=IgXp/W6CoO4P
 BO28c6HBJ90m+XCsFGUw4N6vy5L6hc/Dx4mbWe+GybtKJwztrc2tlCEUjvdQNgvVkp55+a8AYHb+V
 Swobdgpkh3n+5u978/3qASuBEk+SyY6na/dKg+7P2h7SoNEuV4cYwfpQKJbuenq/m3iKb68WRrPw6
 VZz3Q=;
Received: from [2001:268:c0e6:658d:8f3d:d90b:c4e4:2fdf]
 (helo=finisterre.ee.mobilebroadband)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hNf9i-0001uZ-B8; Mon, 06 May 2019 15:03:50 +0000
Received: by finisterre.ee.mobilebroadband (Postfix, from userid 1000)
 id C12E7440035; Mon,  6 May 2019 16:03:44 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Applied "ASoC: stm32: spdifrx: update pcm hardware constraints" to
 the asoc tree
In-Reply-To: <1557146646-18150-2-git-send-email-olivier.moysan@st.com>
X-Patchwork-Hint: ignore
Message-Id: <20190506150344.C12E7440035@finisterre.ee.mobilebroadband>
Date: Mon,  6 May 2019 16:03:44 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_080355_879366_3EE348FF 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: alsa-devel@alsa-project.org, olivier.moysan@st.com, alexandre.torgue@st.com,
 tiwai@suse.com, arnaud.pouliquen@st.com, lgirdwood@gmail.com,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 mcoquelin.stm32@gmail.com, perex@perex.cz,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: stm32: spdifrx: update pcm hardware constraints

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.2

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

From 863137f0bc5eb2a3a65d1d29778ac65642171b17 Mon Sep 17 00:00:00 2001
From: Olivier Moysan <olivier.moysan@st.com>
Date: Mon, 6 May 2019 14:44:04 +0200
Subject: [PATCH] ASoC: stm32: spdifrx: update pcm hardware constraints

- Set period minimum size. Ensure at least 5ms period
up to 48kHz/16 bits to prevent underrun/overrun.
- Remove MDMA constraints on period maximum size and
set period maximum to half the buffer maximum size.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/stm/stm32_spdifrx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/sound/soc/stm/stm32_spdifrx.c b/sound/soc/stm/stm32_spdifrx.c
index b4c3d983e195..aa83b50efabb 100644
--- a/sound/soc/stm/stm32_spdifrx.c
+++ b/sound/soc/stm/stm32_spdifrx.c
@@ -845,7 +845,8 @@ static struct snd_soc_dai_driver stm32_spdifrx_dai[] = {
 static const struct snd_pcm_hardware stm32_spdifrx_pcm_hw = {
 	.info = SNDRV_PCM_INFO_INTERLEAVED | SNDRV_PCM_INFO_MMAP,
 	.buffer_bytes_max = 8 * PAGE_SIZE,
-	.period_bytes_max = 2048, /* MDMA constraint */
+	.period_bytes_min = 1024,
+	.period_bytes_max = 4 * PAGE_SIZE,
 	.periods_min = 2,
 	.periods_max = 8,
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
