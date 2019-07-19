Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A0C6EA47
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 19:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+7qdCfn9ywbXWkpTWWldEjrGnDlyEWourOyPEX0MsSc=; b=UVOJ30hMeMxFnu
	NSvK6XvsOaJ3yQlgiRWUw5+0XAGRp2CP1CUFhBe1p98TteoqLRpTeSILfEIQVEzeFXJb17Kvmb9DR
	TnEA3UZZmKsTo9L0pLM9W4bZBUV8qHnc8lobWPJCYZAeUj9xwkwIIIvzErwCYIFzz6DzwzLydW5Lb
	SmEsOHQofDKNGcW7FSXU9xal4nh/W2Br14q6aQNIXL9Ks4pRUVQltYECyypszh6Kr3GtO0byAZrbl
	M8ItPu2zbtQfp4iRwYhwbQIGBMqKBRKK95BY7QZ2l6oWWi66oz+1nghIX5WKAQ5ppXjuwpMF+qAuF
	6UNkkFlOS7NRSdKSHEsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoWrK-00014U-UG; Fri, 19 Jul 2019 17:39:55 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoWr7-00013X-1U; Fri, 19 Jul 2019 17:39:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 73B8E28C74F
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] SoC: rockchip: rockchip_max98090: Enable MICBIAS for headset
 keypress detection
Date: Fri, 19 Jul 2019 19:39:29 +0200
Message-Id: <20190719173929.24065-1-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_103941_345543_68CB16BE 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 dianders@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org, cychiang@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
---
Some notes about the patch

Steps to test (userspace GNOME3):
1. Play audio using a media player
2. Make sure the Internal MIC is selected as audio input device and
doesn't switches when you insert the headset.
3. Insert a headset (with buttons)

Audio switches to headphones and you can hear that enters on a loop
play/pause if the KEY_PLAYPAUSE was reported. Also you can check that
press to any headset button doesn't work.

The part where the datasheet says that power must be supplied in order
to have keypress detection work is in page 44 of [1]

"
The TS3A227E can monitor the microphone line of a 4-pole headset to
detect up to 4 key presses/releases and report the key press events
back to the host. The key press detection must be activated manually
by setting the KP Enable bit of the Device Settings 2 register. To
ensure proper operation the MICBIAS voltage must be applied to MICP
before enabling key press detection.
"

[1]  http://www.ti.com/lit/ds/symlink/ts3a227e.pdf

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
