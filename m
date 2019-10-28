Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F604E6F66
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 10:52:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sXr0ygKiRewmZkZrqI7MnDpVVWBIlDRwp2snHj0BgkE=; b=JL/BMvISWF+s1O
	iftDO2tl1De+Unxq7W9RN3w+LOjlyEVjMYrtj9zKCpuawZQtjlxwK0noLV3NhFEzc/bm9VDdPjuyr
	D16a6FWvsTCNOqwM2Bsqz9MDnjL+6IVSn4bWZO2AzFoPQo9pXWvcE32S7CEzy/HEBau4g/vcBWifH
	h2aE/4ZNWyUsboylJQNCAtbwmv/ds3FaPeuj4jmZfegPUJCq2MbN1s3+5B81YpjfRVdXl85JyOa/B
	49jVMOSNrN74eAQ0WAbE5M35hcreWPctGckjPi13gT2GPRFCwtQgTvdN4x52KMakoasdRNqbzIXv4
	BOVOu/g21QvCyazC7/PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP1hn-0002zj-0d; Mon, 28 Oct 2019 09:52:55 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP1hZ-0002yf-Tm
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 09:52:43 +0000
Received: by mail-pf1-x442.google.com with SMTP id b128so6588734pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 02:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=00GH+7MY7gv6VeGZTXVYIreq96BqJ0QE/x20tMZ+6ks=;
 b=Z2BgNGzJ7q4FPtJU4fW2x3DMrNZlTDM5dHyQ8Hf5kSrB3beK/s9ztKON5ojRLhAuMU
 Nyza/b0Moh08dmhqk8Sbj4HZo5KxZBPDr9IKjplFa2wWNOjsepMPXWzF68Gq1+GogWj3
 F5uKtCRH9q/B9Y/z0A5OS6pkzkgTaPndd1a/g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=00GH+7MY7gv6VeGZTXVYIreq96BqJ0QE/x20tMZ+6ks=;
 b=TTsOVgdqz+xVU1BOl2Xwzv73whP317iUjJX71CBvIY+7KM/mv3hSbIRSdWuEILb/yZ
 IxDeRZv8VTfecQ7Khs5rDXqaYhZSS67RONM0J7j3xxbUzOtVfFZIVtpCivHJrYXUMgaY
 9dkSzGSmGPMgKcg9/5r9p04Rc2tyBlYWTLxw2fYI86jmAlvmPyDX6eKwK9nDTKkHouCx
 fLJvN1yecpLCbEJqP4ijFcVc7864hmPby+WZZcK2voJBVfUvPe/1FfN8y4Fkq6n86AUY
 l/71y6yfL93htn56oIeICA1fvqYODGyqVEt350XWJuNSF6RqcoPe6H55t8ep0pNRCno/
 F38Q==
X-Gm-Message-State: APjAAAXKd9Y+OWf0GKu+k6P8DEN3E4yuoA1PhsCLnVXkK6sJXKzb/6Lt
 zrWNNdYCgeW7FpmicLVFPTJxgw==
X-Google-Smtp-Source: APXvYqzdMK0gStf/HLg07oXhPJn5lFdaQhPuDeCWUTAcDq3Av+TyeUSuRXkSsM7OLCc3qJH164huew==
X-Received: by 2002:a63:6901:: with SMTP id e1mr19755671pgc.373.1572256360802; 
 Mon, 28 Oct 2019 02:52:40 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id p3sm9897517pgp.41.2019.10.28.02.52.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Oct 2019 02:52:40 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] ASoC: rockchip: rockchip_max98090: Enable SHDN to fix headset
 detection
Date: Mon, 28 Oct 2019 17:52:29 +0800
Message-Id: <20191028095229.99438-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_025241_986649_D0975D8F 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, dianders@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, Takashi Iwai <tiwai@suse.com>,
 tzungbi@chromium.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 enric.balletbo@collabora.com, dgreid@chromium.org,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
