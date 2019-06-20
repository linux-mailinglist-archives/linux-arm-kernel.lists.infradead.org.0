Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C68784CF5B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 15:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+1jXOOPFKmUX9REDNDyfFLd4T8ntSkX2eWpUGL4nOaE=; b=HFlZbd5qzqUrm5
	AQUy3cNwNBpP5F/hKax2mJHunmy7ymtQLy/1Hef2149vqf/1CP0Czbtz0wAiRRlp7VsGmqO7aEFtm
	0AiLe/uEqX2AZKPNhfV65jrE0Uaee5GrU905YRLmWYCAbWKeu5Zk8PQ1P/wyFLS8M0VlXVhnDzgw0
	cTKS5Y2EU6xiuPibbIGl94iw2UYnPCPPuQcSrCV2s0PucSECHrbuGpR3j5RKyzB4zteDUVv8yspjM
	oLO277MJEbBOXveu4e7Uo96nlE8zDOmGhRwFfTTQ0kh9XEkcUzTc0aVbpDR22Ag1l5EOtuQAKfzuz
	gBUFMtODkQo0DhwbuHWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdxPf-0001Qw-Oi; Thu, 20 Jun 2019 13:47:39 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdxPM-0001L9-BC; Thu, 20 Jun 2019 13:47:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id C036826126D
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] ASoC: rk3399_gru_sound: Support 32,
 44.1 and 88.2 kHz sample rates
Date: Thu, 20 Jun 2019 15:47:08 +0200
Message-Id: <20190620134708.28311-1-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_064720_600883_9DE8C048 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Xing Zheng <zhengxing@rock-chips.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 Collabora Kernel ML <kernel@collabora.com>, Benson Leung <bleung@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the datasheet the max98357a also supports 32, 44.1 and
88.2 kHz sample rate. This support was also introduced recently by
commit fdf34366d324 ("ASoC: max98357a: add missing supported rates").
This patch adds support for these rates also for the machine driver so
we get rid of the errors like the below and we are able to play files
using these sample rates.

  rk3399-gru-sound sound: rockchip_sound_max98357a_hw_params() doesn't support this sample rate: 44100
  rk3399-gru-sound sound: ASoC: machine hw_params failed: -22

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 sound/soc/rockchip/rk3399_gru_sound.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/sound/soc/rockchip/rk3399_gru_sound.c b/sound/soc/rockchip/rk3399_gru_sound.c
index 3d0cc6e90d7b..8dfe1a560e42 100644
--- a/sound/soc/rockchip/rk3399_gru_sound.c
+++ b/sound/soc/rockchip/rk3399_gru_sound.c
@@ -59,7 +59,10 @@ static int rockchip_sound_max98357a_hw_params(struct snd_pcm_substream *substrea
 	switch (params_rate(params)) {
 	case 8000:
 	case 16000:
+	case 32000:
+	case 44100:
 	case 48000:
+	case 88200:
 	case 96000:
 		mclk = params_rate(params) * SOUND_FS;
 		break;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
