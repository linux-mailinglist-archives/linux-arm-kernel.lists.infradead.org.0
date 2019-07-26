Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF0376533
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jq81JwhESpicBwMA1uREwnV4kCY1lPGf7OJxz29rMWQ=; b=B0vT2RduUeB7oh
	35YXQlI+747PePYajAyGk3awvU0meC5TlrfXO7b7TwEASnTgNeVhidsqR5bHsK7o2IVlMQDmXWsUK
	VaV+j+dWzRRbmLsyoY6J0a1NHK+q3tHT2PXyypDtKzzfF5lz5BSpZQyiczAHcZLq/bUSeGZANwe0E
	bhDXebLF8fRDGPslgs81ajklHEytRLRFcneqvtj+giS7gfxzkfaBKONPI+5V4jTiHBDgql5wR+JUa
	L/W1227emsMgnv/9fnNjp2v5UcXkVkvITC+t9aMoFWSNyC/SmWjX3gWXoC2x8/Tm675K6CCrt93c5
	uvlu2fzz+yzuFTmdbgXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqz1s-0003jq-Kk; Fri, 26 Jul 2019 12:08:56 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqz1d-0003jC-Cx
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:08:42 +0000
Received: by mail-pg1-x541.google.com with SMTP id x15so14356016pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 05:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Cbwmacy9vNq4B+n0PukpHrIPl4ScNgVEPcJ32HL8owE=;
 b=AObi35zUYJig2WeybEddiDzaj/fnCxwM2Qj8U5BZrRxfR7DqT4XA6WSF7zyiUwBiqg
 7yBr/+X/fyFPhrst6RV5yT7Jak4QkmSzMlIGvboPQSv6DlB5VgLqLjkRyDrp1/cFZCE5
 paPvLI+dXkBmqIhc5bCOvjWN7Fk+X7xb919Ck=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Cbwmacy9vNq4B+n0PukpHrIPl4ScNgVEPcJ32HL8owE=;
 b=mt1npauZcFL6fPPa2iOVU2wNATlHuwc88loOF5vQnJ99fHn9RRTqqAvwTEUDqr+orj
 j58V+rY1hCfxGJG6ZQUwYGtjJ+JwE/hKTunsDzb9v8hzHAbKh0a2RHPjZ/kqAMlOm3Ru
 8ev03tApOBaS0SZEtzUhrLsVIncpMD/MvbUmUuVSKhsOPb0Z+1+H2UGNJQhepilsNWMZ
 oZOQ0ozGMme125aToOSJdj2AcDExX3F5j1kr9ADilb2F8UqmE48Ak6+TnJawR2T0S99i
 xhMsS5TbmP/x5fJGXbIVUxfUHT3K95SJZPK4LTryq7WkNEqUMuK0RBiRkeKcXSvLLugg
 xeQg==
X-Gm-Message-State: APjAAAW1SaxKnjbOPV87PgiHaIFTEbG8rHKLcweI0sDTSjpTtzN8v1pH
 Q8fJxuH3ReZzt/6SLK5OZ2Ufag==
X-Google-Smtp-Source: APXvYqz9ldY9m4MPhE5vPXUihPALYRe2GG7mFkrh7mMDn8k9KRoYh+ADGCd1vq8cRpZmJBcyhGuM9A==
X-Received: by 2002:a17:90a:bc0c:: with SMTP id
 w12mr65162344pjr.111.1564142920570; 
 Fri, 26 Jul 2019 05:08:40 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id m20sm54800981pff.79.2019.07.26.05.08.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jul 2019 05:08:39 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2] ASoC: rockchip: i2s: Revert "ASoC: rockchip: i2s: Support
 mono capture"
Date: Fri, 26 Jul 2019 20:08:33 +0800
Message-Id: <20190726120833.186833-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_050841_465858_9BBFC872 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, dianders@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, tzungbi@chromium.org,
 Jaroslav Kysela <perex@perex.cz>, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, dgreid@chromium.org, mka@chromium.org,
 linux-arm-kernel@lists.infradead.org, Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit db51707b9c9aeedd310ebce60f15d5bb006567e0.

Commit db51707b9c9a ("ASoC: rockchip: i2s: Support mono capture")
adds support of mono capture to rockchip_i2s_dai.

However, I2S controller is still generating a 2-channel stream
because it only supports even number of channels.
When user space reads the data and assumes it is a mono stream,
the rate will be slowed down.

Revert the change so the DAI no longer claims that mono capture
is supported.

Fixes: db51707b9c9a ("ASoC: rockchip: i2s: Support mono capture")
Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 sound/soc/rockchip/rockchip_i2s.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 0a34d0eb8dba..88ebaf6e1880 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -326,7 +326,6 @@ static int rockchip_i2s_hw_params(struct snd_pcm_substream *substream,
 		val |= I2S_CHN_4;
 		break;
 	case 2:
-	case 1:
 		val |= I2S_CHN_2;
 		break;
 	default:
@@ -459,7 +458,7 @@ static struct snd_soc_dai_driver rockchip_i2s_dai = {
 	},
 	.capture = {
 		.stream_name = "Capture",
-		.channels_min = 1,
+		.channels_min = 2,
 		.channels_max = 2,
 		.rates = SNDRV_PCM_RATE_8000_192000,
 		.formats = (SNDRV_PCM_FMTBIT_S8 |
@@ -659,7 +658,7 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 	}
 
 	if (!of_property_read_u32(node, "rockchip,capture-channels", &val)) {
-		if (val >= 1 && val <= 8)
+		if (val >= 2 && val <= 8)
 			soc_dai->capture.channels_max = val;
 	}
 
-- 
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
