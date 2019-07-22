Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDF66FF7B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 14:23:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=zOAXHZF7Tv7XcfTACU1J97s7cFHqtXw6YA/rRc5Y03E=; b=n/V
	uU1n3OFUKmeTzTUZ5nKaKNhMl/6vZjTVlFwoBq0wDvspEqZIGZKSRiKF7HkkFiLfl7s971PjydPuN
	gwqwDdjc/YuZftuYvRRkCLQdRPHBvOPhYeBTzd9fk0GIwvHDkGSwNyE0FR9mecZGLBlLjY4+KCBSl
	MdL8pgbaED7ts6EB5HCTHkx51yPvQhXxIlNqRXoa7h4dP2zdd0rpCUMHA6+NmPcvn3icGihw5qRg8
	2uKHz7QX2Gmfyb1jGa0rcIoVpWuIZTXANqR57JLVcP7BdAzD/t09Z29ikVj1KFCtdmRcZUiMhghcF
	vcZAfEyapwWhu+I9Ul/I/qpv0/k7bQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpXLI-0005mt-Fm; Mon, 22 Jul 2019 12:23:00 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpXKa-0005kz-8A; Mon, 22 Jul 2019 12:22:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=+TMbBa7jX8uUjOd/fKTs9EqZROGbLGEuI+x5vkFsDS0=; b=V/2VuKZT47Kh
 O+jYSXtZR1BrviwdbYuBXd1mQF0VUZH2JP3Z+jT3CZ6gMFbVN8syi62KcsbfETBfGrGFr2jUGdzO6
 kvds68WwxTjwoWLNdiVLThez58ITzVgDJjsxY+OsiRtFpXmV4bbYy8bK5vliEAd2jcPd/tvavX1e3
 ipIcE=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hpXKU-0007dq-JT; Mon, 22 Jul 2019 12:22:10 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 1A0462740463; Mon, 22 Jul 2019 13:22:10 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Applied "SoC: rockchip: rockchip_max98090: Enable MICBIAS for headset
 keypress detection" to the asoc tree
In-Reply-To: <20190719173929.24065-1-enric.balletbo@collabora.com>
X-Patchwork-Hint: ignore
Message-Id: <20190722122210.1A0462740463@ypsilon.sirena.org.uk>
Date: Mon, 22 Jul 2019 13:22:10 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_052216_296610_74DC8D79 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, dianders@chromium.org,
 Jaroslav Kysela <perex@perex.cz>, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org, cychiang@chromium.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   SoC: rockchip: rockchip_max98090: Enable MICBIAS for headset keypress detection

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.3

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

From f86621cd6c6f54edfdd62da347b2bbb8d7fddc8d Mon Sep 17 00:00:00 2001
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Date: Fri, 19 Jul 2019 19:39:29 +0200
Subject: [PATCH] SoC: rockchip: rockchip_max98090: Enable MICBIAS for headset
 keypress detection

The TS3A227E says that the headset keypress detection needs the MICBIAS
power in order to report the key events to ensure proper operation
The headset keypress detection needs the MICBIAS power in order to report
the key events all the time as long as MIC is present. So MICBIAS pin
is forced on when a MICROPHONE is detected.

On Veyron Minnie I observed that if the MICBIAS power is not present and
the key press detection is activated (just because it is enabled when you
insert a headset), it randomly reports a keypress on insert.
E.g. (KEY_PLAYPAUSE)

 Event: (SW_HEADPHONE_INSERT), value 1
 Event: (SW_MICROPHONE_INSERT), value 1
 Event: -------------- SYN_REPORT ------------
 Event: (KEY_PLAYPAUSE), value 1

Userspace thinks that KEY_PLAYPAUSE is pressed and produces the annoying
effect that the media player starts a play/pause loop.

Note that, although most of the time the key reported is the one
associated with BTN_0, not always this is true. On my tests I also saw
different keys reported

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Link: https://lore.kernel.org/r/20190719173929.24065-1-enric.balletbo@collabora.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/rockchip/rockchip_max98090.c | 32 ++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index c5fc24675a33..782e534d4c0d 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -61,6 +61,37 @@ static const struct snd_kcontrol_new rk_mc_controls[] = {
 	SOC_DAPM_PIN_SWITCH("Speaker"),
 };
 
+static int rk_jack_event(struct notifier_block *nb, unsigned long event,
+			 void *data)
+{
+	struct snd_soc_jack *jack = (struct snd_soc_jack *)data;
+	struct snd_soc_dapm_context *dapm = &jack->card->dapm;
+
+	if (event & SND_JACK_MICROPHONE)
+		snd_soc_dapm_force_enable_pin(dapm, "MICBIAS");
+	else
+		snd_soc_dapm_disable_pin(dapm, "MICBIAS");
+
+	snd_soc_dapm_sync(dapm);
+
+	return 0;
+}
+
+static struct notifier_block rk_jack_nb = {
+	.notifier_call = rk_jack_event,
+};
+
+static int rk_init(struct snd_soc_pcm_runtime *runtime)
+{
+	/*
+	 * The jack has already been created in the rk_98090_headset_init()
+	 * function.
+	 */
+	snd_soc_jack_notifier_register(&headset_jack, &rk_jack_nb);
+
+	return 0;
+}
+
 static int rk_aif1_hw_params(struct snd_pcm_substream *substream,
 			     struct snd_pcm_hw_params *params)
 {
@@ -119,6 +150,7 @@ SND_SOC_DAILINK_DEFS(hifi,
 static struct snd_soc_dai_link rk_dailink = {
 	.name = "max98090",
 	.stream_name = "Audio",
+	.init = rk_init,
 	.ops = &rk_aif1_ops,
 	/* set max98090 as slave */
 	.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
