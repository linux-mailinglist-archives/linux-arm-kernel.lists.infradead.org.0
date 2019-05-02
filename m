Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 788641112E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 04:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=L9Ndp0isgvieL5aS2M/hoUp6JJVTG16JdNj43Vy2Wfc=; b=o/I
	z4mxO/0RUFq1pSGm2XPL4L9ITetUh96NgPQk/WyU2WOlnEKwiD783X31u+TYFiVaYzvjfoNtBwJJs
	37n/x9Uj5odZ3PKDQnrBhvHpm/kOX4WCq/gVeOG7CWjZ0HVHmSAhJObapi540bBcTfTZ21ELrIGuS
	5EU5r5Nj1Q4gWtmeTyYRV6ansV6jNFa50bXXCaEfRvmNM2DpKEHeRheVEfjM1IapaUx5Aw3s9unGb
	pZiyDokOoZBf0hNunR8tn88qNZpjlyoaNKNmWm7dRLaXR4oKPhtRGKmZP3heT6Y62kND9Iiof6GXp
	sPQTXyFH47ElP4rcpiTGEUjxV//1pSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM1JX-0004YZ-2V; Thu, 02 May 2019 02:19:11 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM1J6-00049i-Uz
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 02:18:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=0yDQ8mpJU01WNjUag4mEZvrS2eyoOFnSJkZ+fvTaTrg=; b=Ks9gDZ1vx9BH
 GbMROOxW7vHVAStgwwSZZ2FuGChyLsoHMuiazpw8hAWgEfab9jfufpBL8aVECnJEJHx1p/M6fMzOk
 jipUepVcKekmC2DPz6+Wkos2jcpsKwUtCEl0Gg1y0d7FSFHkFPO1YuHpnqdyL+usY4oR/hxp/XhA9
 1jWBw=;
Received: from [211.55.52.15] (helo=finisterre.ee.mobilebroadband)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hM1Iz-0005sb-FU; Thu, 02 May 2019 02:18:37 +0000
Received: by finisterre.ee.mobilebroadband (Postfix, from userid 1000)
 id 90851441D3B; Thu,  2 May 2019 03:18:34 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Applied "ASoC: atmel: tse850: Make some functions static" to the asoc
 tree
In-Reply-To: <20190416144718.25576-1-yuehaibing@huawei.com>
X-Patchwork-Hint: ignore
Message-Id: <20190502021834.90851441D3B@finisterre.ee.mobilebroadband>
Date: Thu,  2 May 2019 03:18:34 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_191845_149328_045D3708 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alexandre.belloni@bootlin.com, alsa-devel@alsa-project.org,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 Hulk Robot <hulkci@huawei.com>, ludovic.desroches@microchip.com,
 Mark Brown <broonie@kernel.org>, tiwai@suse.com,
 codrin.ciubotariu@microchip.com, perex@perex.cz, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: atmel: tse850: Make some functions static

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git 

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

From 6f547c96b45de0d42de91ef56c7d291aa6d3c88f Mon Sep 17 00:00:00 2001
From: YueHaibing <yuehaibing@huawei.com>
Date: Tue, 16 Apr 2019 22:47:18 +0800
Subject: [PATCH] ASoC: atmel: tse850: Make some functions static

Fix sparse warnings:

sound/soc/atmel/tse850-pcm5142.c:120:5: warning: symbol 'tse850_get_mix' was not declared. Should it be static?
sound/soc/atmel/tse850-pcm5142.c:132:5: warning: symbol 'tse850_put_mix' was not declared. Should it be static?
sound/soc/atmel/tse850-pcm5142.c:154:5: warning: symbol 'tse850_get_ana' was not declared. Should it be static?
sound/soc/atmel/tse850-pcm5142.c:187:5: warning: symbol 'tse850_put_ana' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/atmel/tse850-pcm5142.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/sound/soc/atmel/tse850-pcm5142.c b/sound/soc/atmel/tse850-pcm5142.c
index 214adcad5419..ae445184614a 100644
--- a/sound/soc/atmel/tse850-pcm5142.c
+++ b/sound/soc/atmel/tse850-pcm5142.c
@@ -117,8 +117,8 @@ static int tse850_put_mux2(struct snd_kcontrol *kctrl,
 	return snd_soc_dapm_put_enum_double(kctrl, ucontrol);
 }
 
-int tse850_get_mix(struct snd_kcontrol *kctrl,
-		   struct snd_ctl_elem_value *ucontrol)
+static int tse850_get_mix(struct snd_kcontrol *kctrl,
+			  struct snd_ctl_elem_value *ucontrol)
 {
 	struct snd_soc_dapm_context *dapm = snd_soc_dapm_kcontrol_dapm(kctrl);
 	struct snd_soc_card *card = dapm->card;
@@ -129,8 +129,8 @@ int tse850_get_mix(struct snd_kcontrol *kctrl,
 	return 0;
 }
 
-int tse850_put_mix(struct snd_kcontrol *kctrl,
-		   struct snd_ctl_elem_value *ucontrol)
+static int tse850_put_mix(struct snd_kcontrol *kctrl,
+			  struct snd_ctl_elem_value *ucontrol)
 {
 	struct snd_soc_dapm_context *dapm = snd_soc_dapm_kcontrol_dapm(kctrl);
 	struct snd_soc_card *card = dapm->card;
@@ -151,8 +151,8 @@ int tse850_put_mix(struct snd_kcontrol *kctrl,
 	return 1;
 }
 
-int tse850_get_ana(struct snd_kcontrol *kctrl,
-		   struct snd_ctl_elem_value *ucontrol)
+static int tse850_get_ana(struct snd_kcontrol *kctrl,
+			  struct snd_ctl_elem_value *ucontrol)
 {
 	struct snd_soc_dapm_context *dapm = snd_soc_dapm_kcontrol_dapm(kctrl);
 	struct snd_soc_card *card = dapm->card;
@@ -184,8 +184,8 @@ int tse850_get_ana(struct snd_kcontrol *kctrl,
 	return 0;
 }
 
-int tse850_put_ana(struct snd_kcontrol *kctrl,
-		   struct snd_ctl_elem_value *ucontrol)
+static int tse850_put_ana(struct snd_kcontrol *kctrl,
+			  struct snd_ctl_elem_value *ucontrol)
 {
 	struct snd_soc_dapm_context *dapm = snd_soc_dapm_kcontrol_dapm(kctrl);
 	struct snd_soc_card *card = dapm->card;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
