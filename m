Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9EBB5F5E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 10:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0FdN6WmxiAndcYQSoEUK9DWX8wD3QAUMN6kzP7lzDKo=; b=KFwfz3H2PdzMzsGYOq1K4ig71G
	Yv8BeprWHObp/CUESFKPQCZO4oOR5e7xVm1Wn6MWRfbDgckiRy4k1AmqNySqZf0FyocoK6SOKDNHq
	Z155VqM+9zBm4SN4hJQq0oj68Y3ssynAnt886V8x2PUv71lwF3KnLqU6/hB2b9t6G/IW993TEhCvS
	uwDNjzBJsh0Y325XrosWp+9HYAxteUsCHP+OHz8IulyxGvfdKDmH5zZOB8WFfptdYWFF/KRRQRp7n
	2NEN8O2lNkm+UkzQqtI04XeR/0ti20MMbqyLi977lLmHLEJBu6MHXwcqYPWPjPUZJM3z4mt9ik3gj
	Q+P2qz7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAVZH-0003tW-2J; Wed, 18 Sep 2019 08:44:07 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAVZ3-0003sW-Ci
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 08:43:55 +0000
Received: by mail-wr1-x442.google.com with SMTP id h7so5929750wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 01:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:references:user-agent:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=Es/bmU3c9XGaRtzCiMLIVrPNjr9MNI0eTxg3xMnbUYc=;
 b=S2FCcJGdZtO1gO4SQHnOHraw90NxGk+ySbB9OIxE1vfxheAusATdTaw/syxuwdGWQI
 92sF2Nr9TgHxs7w9AuZJMkw35AR0EvurNbRLvbFBj0IhXv8+CtvAmZEn4/1JRD/sQl+7
 tNMt7J5QEAw5awSGxUcQ8/C/fS2112pJR0ilZf81yL8vBnGNaugVKY9xmUmAErDUp2Sh
 VlGTEU7rvD1DW5sD4FehEg9RXAfUKfdQ8YV5iBOpMAeohp1oWwhAsgleYcPMPeSmZEgO
 sl+eIrDHwIH3Ei22m0zaGRvVaJHEvtf5PLgIY9dlvf0pyHhxZ0Kxb/8q3jOurf9y3lOh
 +X0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:references:user-agent:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=Es/bmU3c9XGaRtzCiMLIVrPNjr9MNI0eTxg3xMnbUYc=;
 b=XQpMrry84AsXb0o7th/+9FEiAy7WCBJkQA9KDTVFF1niQCTAbBzIp7W9GHxWMzUprI
 X36tiY7VDQoJIe5MlzwN3QRe9bjQCGR0sL72j0FCM2hZD+cs2G0H10kIEPOP3BuABvVK
 k9J3lcDHqlcsiF7OFVFysUEOA9CtSkqIo2YBj805yeowQYsidUeMV4Q2FHbS7evNhH48
 tOYDIXN1ieo7g3RXGxqKyHrFnC1OWbT4yZkKt9/nHh2ccXX+lqB6JApsIwNIHKcQhDxw
 4tNmguuWvZAVcO0T0N+b4R+Ph+7uqFvhbFE+mt+s/ivd0qiUHFBYvyan2yhfFc354+Qc
 DUdA==
X-Gm-Message-State: APjAAAXVMY4O76lFLJf6STzmhuU6KyPq/JXV7zLS6YCor4vj8e2ISshR
 tbcm41szQJMUmrWT26u77mvPUA==
X-Google-Smtp-Source: APXvYqz3Kpju44v9NdaCUS71dFKfNZ3q3V7oya0OqrnOC9uxnDdFSkv5zrOWWA/QCE/CJM9pIPUidg==
X-Received: by 2002:a5d:52c8:: with SMTP id r8mr2192409wrv.256.1568796231510; 
 Wed, 18 Sep 2019 01:43:51 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id q10sm9774982wrd.39.2019.09.18.01.43.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 01:43:50 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
X-Google-Original-From: Jerome Brunet <jbrunet@starbuckisacylon.baylibre.com>
References: <20190918082500.209281-1-cychiang@chromium.org>
 <20190918082500.209281-3-cychiang@chromium.org>
User-agent: mu4e 1.3.1; emacs 26.2
To: Cheng-Yi Chiang <cychiang@chromium.org>
Subject: Re: [PATCH v6 2/4] drm: dw-hdmi-i2s: Use fixed id for codec device
In-reply-to: <20190918082500.209281-3-cychiang@chromium.org>
Date: Wed, 18 Sep 2019 10:43:49 +0200
Message-ID: <1j7e663sfu.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_014353_436339_9E8CDDB3 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Takashi Iwai <tiwai@suse.com>, linux-rockchip@lists.infradead.org,
 dgreid@chromium.org, tzungbi@chromium.org, Jonas Karlman <jonas@kwiboo.se>,
 Liam Girdwood <lgirdwood@gmail.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 dianders@chromium.org, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Wed 18 Sep 2019 at 10:24, Cheng-Yi Chiang <cychiang@chromium.org> wrote:

> The problem of using auto ID is that the device name will be like
> hdmi-audio-codec.<id number>.auto.
>
> The number might be changed when there are other platform devices being
> created before hdmi-audio-codec device.
> Use a fixed name so machine driver can set codec name on the DAI link.
>
> Using the fixed name should be fine because there will only be one
> hdmi-audio-codec device.

While this is true all platforms we know of (I suppose), It might not be
the case later on. I wonder if making such assumption is really
desirable in a code which is used by quite a few different platforms.

Instead of trying to predict what the device name will be, can't you just
query it in your machine driver ? Using a device tree phandle maybe ?

It is quite usual to set the dai links this way, "simple-card" is a good
example of this.

>
> Fix the codec name in rockchip rk3288_hdmi_analog machine driver.
>
> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c | 2 +-
>  sound/soc/rockchip/rk3288_hdmi_analog.c             | 3 ++-
>  2 files changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> index d7e65c869415..86bd482b9f94 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> @@ -193,7 +193,7 @@ static int snd_dw_hdmi_probe(struct platform_device *pdev)
>  
>  	memset(&pdevinfo, 0, sizeof(pdevinfo));
>  	pdevinfo.parent		= pdev->dev.parent;
> -	pdevinfo.id		= PLATFORM_DEVID_AUTO;
> +	pdevinfo.id		= PLATFORM_DEVID_NONE;
>  	pdevinfo.name		= HDMI_CODEC_DRV_NAME;
>  	pdevinfo.data		= &pdata;
>  	pdevinfo.size_data	= sizeof(pdata);
> diff --git a/sound/soc/rockchip/rk3288_hdmi_analog.c b/sound/soc/rockchip/rk3288_hdmi_analog.c
> index 767700c34ee2..8286025a8747 100644
> --- a/sound/soc/rockchip/rk3288_hdmi_analog.c
> +++ b/sound/soc/rockchip/rk3288_hdmi_analog.c
> @@ -15,6 +15,7 @@
>  #include <linux/gpio.h>
>  #include <linux/of_gpio.h>
>  #include <sound/core.h>
> +#include <sound/hdmi-codec.h>
>  #include <sound/jack.h>
>  #include <sound/pcm.h>
>  #include <sound/pcm_params.h>
> @@ -142,7 +143,7 @@ static const struct snd_soc_ops rk_ops = {
>  SND_SOC_DAILINK_DEFS(audio,
>  	DAILINK_COMP_ARRAY(COMP_EMPTY()),
>  	DAILINK_COMP_ARRAY(COMP_CODEC(NULL, NULL),
> -			   COMP_CODEC("hdmi-audio-codec.2.auto", "i2s-hifi")),
> +			   COMP_CODEC(HDMI_CODEC_DRV_NAME, "i2s-hifi")),
>  	DAILINK_COMP_ARRAY(COMP_EMPTY()));
>  
>  static struct snd_soc_dai_link rk_dailink = {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
