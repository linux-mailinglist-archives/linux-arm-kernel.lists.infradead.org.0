Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E52DB75DE3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 06:42:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vc0POEDw6VC7Jpaj0M+yEGdTCcYLztEu+IhghCdjTtA=; b=O9xocePv0bpJEg
	NTAyvbadZMo3mJeFYCKM8QIwR5faaqteqt6lonYLaEfS+PjezO6wlGCzNi25Mt4Lw/7/OjVQ5mIJT
	bNcIHnp5pE3wYrvHVfO7nEVJ5mlfWJbJwqRms936D2+cKfUojlSybijnBffecoTSjPZeHRN74yHKm
	5YLPiRagKB2i7FQotJdxZ1ux89fKy2CoZ6P06rY/4M1u+sXdxmlXBWVrgYS4lUtemgnVNn6ygJI4w
	EAFAgIY2Wa4KT114KQOZCZLIFWIx2XHh+eNlAKdhnKpOo23+y8OqI7cxuWA6f/XyrgqRp21arpDqI
	lEHVgwIME5A2QkC8IO4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqs3s-00017x-VV; Fri, 26 Jul 2019 04:42:33 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqs3d-000178-7T
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 04:42:18 +0000
Received: by mail-pg1-x544.google.com with SMTP id l21so24125790pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 21:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eq62dV3aG3jd/W9zqRWfepVRB8FhgcYvUn8Cc6l9GkA=;
 b=Hm635lZZN0RARpzAb9ayexcKn9YXj1XlLee2lITYorBDY2KOsISLHVejwgEYcg6Nc0
 ZqhT1sHlG9s/X0ETZP/JU0sFKEZfCI/zwx6FZHpw1WBMbMM+jyC+fd8EFxcdysy7wZMH
 YYPvEnctY6Zda/l2Cl2oxKrjCh5ExnnUiBHjE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eq62dV3aG3jd/W9zqRWfepVRB8FhgcYvUn8Cc6l9GkA=;
 b=cvbtgvs8sXOcS6T/DCRyzHgKhHlQ5Z5Z8xMZuuoJ90n8Y3G0oSVopCLifMp22UGAHT
 /NOpT/SvCdvvygL41KRc3dIGncbDhQ7h+KaUdWxE3Lz7javR5xdmlTETqSiihwvGg8fV
 y/YP4lpq6a6Dplr4bTjxObCLWyVkbcpAAx/TxDf+z6BijKaLbEhqV38U5PjY8dd643ST
 4J8AP15+U/eaakHXwjLnc2qL5BjCFOEDEWBvjAq6yOwNcnLvuRZ15g5EQcUIaUIpkMoo
 hVJTJwJpmobcHuPmURux/7Twrg82FKc75wp0aRtsbaApSkFZDADhUTBKwynZzRRH+lxk
 WOQA==
X-Gm-Message-State: APjAAAVf9tZVgc/wfsthyYnNE+pI3hqAbPuNp9p09fdA034x2Tl5/fzj
 ADyTarAHDIJr5k9R7zD6/hwbHQ==
X-Google-Smtp-Source: APXvYqzyDNFdueHohA8SGN1O6dmRutvK/f1c35LtOqHGnJFqaLCJWNkNKPAQTGdjzMb/377e4SAgXA==
X-Received: by 2002:a17:90a:9905:: with SMTP id
 b5mr98357683pjp.70.1564116135769; 
 Thu, 25 Jul 2019 21:42:15 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id t7sm41702252pjq.15.2019.07.25.21.42.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 21:42:14 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] Revert "ASoC: rockchip: i2s: Support mono capture"
Date: Fri, 26 Jul 2019 12:42:02 +0800
Message-Id: <20190726044202.26866-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_214217_298049_89623536 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Previous discussion in

https://patchwork.kernel.org/patch/10147153/

explains the issue of the patch.
While device is configured as 1-ch, hardware is still
generating a 2-ch stream.
When user space reads the data and assumes it is a 1-ch stream,
the rate will be slower by 2x.

Revert the change so 1-ch is not supported.
User space can selectively take one channel data out of two channel
if 1-ch is preferred.
Currently, both channels record identical data.

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
