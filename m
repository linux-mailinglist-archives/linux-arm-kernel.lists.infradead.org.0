Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74ACEE7422
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 15:57:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=kJ1e2qLiY70JnrMIGVxk1bQcSgxRMyXXrM11v5koPJg=; b=l4g
	I8Ln38d7ynQQaQL3C2fRlzHIFTPuX/HjpY0EH+sm+w3EGLoVwxhftFqInR38XAOzUMdTZ2CXbEfGJ
	E6k7QnSWXJ0sHpDJwcvzwWZxgaS6mmIPqRtolS/tEkqybcbldhppzD6l+/Kq11Xe/Gdorz8Noc9Eh
	rN/nSO3NCbfustgOBDNtx2sSRP5JxH9ZOh/Ec8PkadispMUUt3ZUhmVvLS/puqvjhM9FoSrSwqLVj
	thc3G2JCxoxubg/Eqdb/NnBgARqya2+BGGERUfxkXnU04RUnjLH+YPIv1/AJq1Mf1dm9UhLE3FDIs
	wii7O84M8UnCeYMQtgxb5i5PFb/CCbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP6S6-0001Il-5L; Mon, 28 Oct 2019 14:57:02 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP6Ro-0001I0-14; Mon, 28 Oct 2019 14:56:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=aacqV5nj/gG01sskTrzwE2VcR2Ffj1PwXKPwaCUoKC4=; b=cK5vMjbVyFJ2
 PQ0lTJrK00lRYGa9l2T71D0ELFEg367gD6DCLfhJpFoG9Nv378r2InvxQnftVxnaAEkkSJv4SICgx
 e2AbvyvQV8W1Vl6tUsJc0fev2ElW1EGmijfYpSaCQl12wjXg9FjAeps6cwf/6iim8yRcNKk6RfUJO
 erUeM=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iP6Rj-0008Rl-5g; Mon, 28 Oct 2019 14:56:39 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id BC4A127403E4; Mon, 28 Oct 2019 14:56:37 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Cheng-Yi Chiang <cychiang@chromium.org>
Subject: Applied "ASoC: rockchip: rockchip_max98090: Enable SHDN to fix
 headset detection" to the asoc tree
In-Reply-To: <20191028095229.99438-1-cychiang@chromium.org>
X-Patchwork-Hint: ignore
Message-Id: <20191028145637.BC4A127403E4@ypsilon.sirena.org.uk>
Date: Mon, 28 Oct 2019 14:56:37 +0000 (GMT)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_075644_077321_272D66A7 
X-CRM114-Status: GOOD (  13.24  )
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
Cc: alsa-devel@alsa-project.org, tzungbi@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 dianders@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 enric.balletbo@collabora.com, dgreid@chromium.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: rockchip: rockchip_max98090: Enable SHDN to fix headset detection

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

From 07c1b73e2a027ea9a52677beeb6a943a3e357139 Mon Sep 17 00:00:00 2001
From: Cheng-Yi Chiang <cychiang@chromium.org>
Date: Mon, 28 Oct 2019 17:52:29 +0800
Subject: [PATCH] ASoC: rockchip: rockchip_max98090: Enable SHDN to fix headset
 detection

max98090 spec states that chip needs to be in turned-on state to supply
mic bias. Enable SHDN dapm widget along with MICBIAS widget to
actually turn on mic bias for proper headset button detection.
This is similar to cht_ti_jack_event in
sound/soc/intel/boards/cht_bsw_max98090_ti.c.

Note that due to ts3a227e reports the jack event right away before the
notifier is registered, if headset is plugged on boot, headset button
will not get detected until headset is unplugged and plugged. This is
still an issue to be fixed.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
Link: https://lore.kernel.org/r/20191028095229.99438-1-cychiang@chromium.org
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/rockchip/rockchip_max98090.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index 0097df1fae66..e80b09143b63 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -66,10 +66,13 @@ static int rk_jack_event(struct notifier_block *nb, unsigned long event,
 	struct snd_soc_jack *jack = (struct snd_soc_jack *)data;
 	struct snd_soc_dapm_context *dapm = &jack->card->dapm;
 
-	if (event & SND_JACK_MICROPHONE)
+	if (event & SND_JACK_MICROPHONE) {
 		snd_soc_dapm_force_enable_pin(dapm, "MICBIAS");
-	else
+		snd_soc_dapm_force_enable_pin(dapm, "SHDN");
+	} else {
 		snd_soc_dapm_disable_pin(dapm, "MICBIAS");
+		snd_soc_dapm_disable_pin(dapm, "SHDN");
+	}
 
 	snd_soc_dapm_sync(dapm);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
