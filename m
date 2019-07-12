Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C5166AA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 12:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CTuVtJhDjsg0/l+RiJarA7PyW283UFKh2CX6QkdLoM4=; b=DlL35aoCk89FAL
	rd6MC85jzyYn+SpnC5UdyFl6XKPaJKhRvniCrXferXA1Qa1Ji9P7Fnb73cPF4NPcijST+ObXdYslQ
	6F5iByk3gZLmm1b+mGLMaApNcFEY/t4XP95ZpDLlXUP9FgcHtX7V0FqAAYq5GZG3eLLjQFxeFuG8r
	E/0WULV2oaDWydzJniZFYx4saMZQ68p0Xo0O60f5k36EC28cFB6k1TdUh/L/0J7gpqMSK0WbuOe28
	YB9v3yCDfC6sDtv6aXSyKxqCFec2BcvjiRPpMkrTndePPtrCTD9R5U1Ie8aKRS9mqbM4obZ470Mdy
	1ISyLfnA1SxMM7KcpKng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlsRb-0001J7-Vs; Fri, 12 Jul 2019 10:06:23 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlsQt-0000s6-8A
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 10:05:44 +0000
Received: by mail-pg1-x542.google.com with SMTP id s27so4337880pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 03:05:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zPKXIcHbusk77dMlfPCa/1sWixdVcbelRHTA0cg2L4Q=;
 b=C2cKw5mlbFxaHuef/Zblshvk3SCxivxN7Cokh8Trvy8IBC0frCC7vhAVAMrGzP9wVT
 2YWphmoTtgc6EoCPK14M+IpDI0uCpaDpMgOtSrZKZEcddcIln79L0hNRSdg6pK5I9OHS
 FZxYzonT8GmKPEb0e+jLeF4RKYC6nCV0bqp6s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zPKXIcHbusk77dMlfPCa/1sWixdVcbelRHTA0cg2L4Q=;
 b=Ielpmqczn+Hi7iFZT7SYziHwf8i+bWGDcnx5gaq4boIHYGBoegQ7Sxp0NE+jWK+Wky
 Oz0A6vxo1wKyAwF4DY1Z2/6YG5K32PM9BCFXMlCzYDbP1IjjrgGRCm36yvEjNmZDSyIM
 +4S3eNt7jdvvYdFwKYNXKnDUtluMCWjzlZ4uaSS7jufsyo2wDe083jhC8oXRarcg4Cak
 BD4GeMf2+ev8/dnyePIbl368FbGjX56dLyLkIzL7f3Rf7NyU1DCo9wN4LaCnjkYLG+K1
 ZXxfIYhGkWZexgLdHcfIxjG0QwktXGdsaZCtd9XEbawP/QDg+snyru7T9TgK7xvNXiA8
 1qBg==
X-Gm-Message-State: APjAAAX0uYmUl94mh0UIsjZc7pIdIDeiPxO2o97J14sx6/WUBhvcn6E0
 V7KCLuGtPP0i1V1KxmP50ggGxQ==
X-Google-Smtp-Source: APXvYqyjMZCuuRdrj1uSqLUYcwCfp0hvoou5rl8zrRf7wxnMCSbMhZiH3x7uULLXEqA75Rd6MAfEvg==
X-Received: by 2002:a17:90a:c588:: with SMTP id
 l8mr10572153pjt.16.1562925938350; 
 Fri, 12 Jul 2019 03:05:38 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id u23sm8647935pfn.140.2019.07.12.03.05.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jul 2019 03:05:37 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/5] drm: dw-hdmi-i2s: Use fixed id for codec device
Date: Fri, 12 Jul 2019 18:04:41 +0800
Message-Id: <20190712100443.221322-4-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
In-Reply-To: <20190712100443.221322-1-cychiang@chromium.org>
References: <20190712100443.221322-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_030539_435768_55F5613E 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 tzungbi@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, dgreid@chromium.org,
 linux-arm-kernel@lists.infradead.org, Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The problem of using auto ID is that the device name will be like
hdmi-audio-codec.<id number>.auto.

The number might be changed when there are other platform devices being
created before hdmi-audio-codec device.
Use a fixed name so machine driver can set codec name on the DAI link.

Using the fixed name should be fine because there will only be one
hdmi-audio-codec device.

Fix the codec name in rockchip rk3288_hdmi_analog machine driver.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c | 2 +-
 sound/soc/rockchip/rk3288_hdmi_analog.c             | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
index 7b93cf05c985..4974a32af31f 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
@@ -134,7 +134,7 @@ static int snd_dw_hdmi_probe(struct platform_device *pdev)
 
 	memset(&pdevinfo, 0, sizeof(pdevinfo));
 	pdevinfo.parent		= pdev->dev.parent;
-	pdevinfo.id		= PLATFORM_DEVID_AUTO;
+	pdevinfo.id		= PLATFORM_DEVID_NONE;
 	pdevinfo.name		= HDMI_CODEC_DRV_NAME;
 	pdevinfo.data		= &pdata;
 	pdevinfo.size_data	= sizeof(pdata);
diff --git a/sound/soc/rockchip/rk3288_hdmi_analog.c b/sound/soc/rockchip/rk3288_hdmi_analog.c
index 767700c34ee2..8286025a8747 100644
--- a/sound/soc/rockchip/rk3288_hdmi_analog.c
+++ b/sound/soc/rockchip/rk3288_hdmi_analog.c
@@ -15,6 +15,7 @@
 #include <linux/gpio.h>
 #include <linux/of_gpio.h>
 #include <sound/core.h>
+#include <sound/hdmi-codec.h>
 #include <sound/jack.h>
 #include <sound/pcm.h>
 #include <sound/pcm_params.h>
@@ -142,7 +143,7 @@ static const struct snd_soc_ops rk_ops = {
 SND_SOC_DAILINK_DEFS(audio,
 	DAILINK_COMP_ARRAY(COMP_EMPTY()),
 	DAILINK_COMP_ARRAY(COMP_CODEC(NULL, NULL),
-			   COMP_CODEC("hdmi-audio-codec.2.auto", "i2s-hifi")),
+			   COMP_CODEC(HDMI_CODEC_DRV_NAME, "i2s-hifi")),
 	DAILINK_COMP_ARRAY(COMP_EMPTY()));
 
 static struct snd_soc_dai_link rk_dailink = {
-- 
2.22.0.510.g264f2c817a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
