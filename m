Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CE01F0FD9
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jun 2020 22:40:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VpLwqHB7wAANMZoAYNboLKZokapVcBu7ikhIf+kRhM0=; b=heGknROyoDd+8aFqCgvW/5KvzD
	aaReedHJBlDqD0bUk64JJY4kFYbyhqjm0SCa+X6Oap5mCASJxG/zI+6vNYsX+ZsKloDGG7a+s2vRy
	fad/cObQgMXYqk8HDtibpHgO/7nabZ6XZpZRnmD1nbByZHRlUEvptTynojlvoZsd6gM+dJtVPTaHc
	CEqCIsJD/3sPeZ79jRae9AELVvHqaZCdRNgjEqsRqz1IXg5R2QJ3Z9x9hKFTQ+KTLHi/OKOYrdfFa
	vVCMGdpLv7qeN0ct/5hhbK0p60Q86NLGvwzRLF4yeupkObcsAhQzQ6teKlKkXVhNLziYaLEpHi02E
	qVl2qBig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji25a-0001mf-RT; Sun, 07 Jun 2020 20:40:18 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji259-0001kV-M5
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jun 2020 20:39:53 +0000
Received: by mail-ej1-x644.google.com with SMTP id k11so16001541ejr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jun 2020 13:39:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=cxAlOko9t8uVXP+cvSgKgh4pcthYDznq/xdMjGJwWF8=;
 b=KdOyqU9ND3HG5d87XzvYCfQ2uByF1009R35nYXeDDMLn3vhVJNmlnwuNBXc0HasUMj
 LyKvjV0OHT0/GFgDE/03M8ppq31jNA/14gxV99DDyqL8qAre2/OHH5LtP6yQKvfznyX2
 LROlH2K/f/dx1Vn/5b4xOX0oA7ArWmNxLbjZ1JVMq+Vnt/1ms3tCRN/hGC71MCrsqjUd
 GIPFEFAU/eZqHJivwmZWwKWtr3PRkJqQ1obBpY+x+MD2ytvfqSzxenTN/wm1iaf4iXcG
 kNiefj+tDTqhRm+1eJYp0/rg7yaWUj0T9E5B1oGeYm2hbTCHEqv2buK6/vOkL0BGK6WX
 fsQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=cxAlOko9t8uVXP+cvSgKgh4pcthYDznq/xdMjGJwWF8=;
 b=tixw+sjZQJlrvgIvZARcIp2Okx+zvkAytcAMh8ZEUmGFpxHlNsuBP/Sekl2H7AiE5Y
 dp+HU90jac7PuZf2EDWDHeZ8gDe2ghI6iHiOVHBCkcEskSez7wLMz56+5GVnkIqc4r2s
 9EL2HrjqsTJD2MiUokbj1ZtB6+0+bnwR/8lE/OhLhPBPS0rbOSvJUTB7xPkxPaHezMS+
 xiYhjtLTuRYt+nz2DRo+3i/gYeBM7LoflEy4geokwi5px5f4xq+wggJJ0JMFgipItfrQ
 WBN+FI4bvfm3pO5AtyQHiqaWMwZ8GRlCRceVbZUdG6ng+fdv2x605aE/yJC2rkOgCmhj
 BgxA==
X-Gm-Message-State: AOAM530nFZGkjrCEIC27fe4A9/h4prQ0DazqMh6xj8yJWdoArQ7lIsrz
 Qgx7eJj0FL8K1vOCCCkfnNvzMQ==
X-Google-Smtp-Source: ABdhPJxhaSuBhybacMUdhNX3W1cQmnqaVuUYl4vqsJiFOjecWMYGoz4GLI7EUeGpnCcBDZ6WR7g6xQ==
X-Received: by 2002:a17:906:a387:: with SMTP id
 k7mr19195332ejz.408.1591562389607; 
 Sun, 07 Jun 2020 13:39:49 -0700 (PDT)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id v29sm10754839edb.62.2020.06.07.13.39.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Jun 2020 13:39:48 -0700 (PDT)
References: <20200604171216.60043-1-colin.king@canonical.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Colin King <colin.king@canonical.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Kevin Hilman <khilman@baylibre.com>,
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Subject: Re: [PATCH] ASoC: meson: fix memory leak of links if allocation of
 ldata fails
In-reply-to: <20200604171216.60043-1-colin.king@canonical.com>
Date: Sun, 07 Jun 2020 22:39:47 +0200
Message-ID: <1j7dwik3u4.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_133951_773649_22D70F83 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Thu 04 Jun 2020 at 19:12, Colin King <colin.king@canonical.com> wrote:

> From: Colin Ian King <colin.king@canonical.com>
>
> Currently if the allocation of ldata fails the error return path
> does not kfree the allocated links object.  Fix this by adding
> an error exit return path that performs the necessary kfree'ing.
>
> Addresses-Coverity: ("Resource leak")
> Fixes: 7864a79f37b5 ("ASoC: meson: add axg sound card support")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Looks good, Thx

Acked-by: Jerome Brunet <jbrunet@baylibre.com>

> ---
>  sound/soc/meson/meson-card-utils.c | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
>
> diff --git a/sound/soc/meson/meson-card-utils.c b/sound/soc/meson/meson-card-utils.c
> index 2ca8c98e204f..5a4a91c88734 100644
> --- a/sound/soc/meson/meson-card-utils.c
> +++ b/sound/soc/meson/meson-card-utils.c
> @@ -49,19 +49,26 @@ int meson_card_reallocate_links(struct snd_soc_card *card,
>  	links = krealloc(priv->card.dai_link,
>  			 num_links * sizeof(*priv->card.dai_link),
>  			 GFP_KERNEL | __GFP_ZERO);
> +	if (!links)
> +		goto err_links;
> +
>  	ldata = krealloc(priv->link_data,
>  			 num_links * sizeof(*priv->link_data),
>  			 GFP_KERNEL | __GFP_ZERO);
> -
> -	if (!links || !ldata) {
> -		dev_err(priv->card.dev, "failed to allocate links\n");
> -		return -ENOMEM;
> -	}
> +	if (!ldata)
> +		goto err_ldata;
>  
>  	priv->card.dai_link = links;
>  	priv->link_data = ldata;
>  	priv->card.num_links = num_links;
>  	return 0;
> +
> +err_ldata:
> +	kfree(links);
> +err_links:
> +	dev_err(priv->card.dev, "failed to allocate links\n");
> +	return -ENOMEM;
> +
>  }
>  EXPORT_SYMBOL_GPL(meson_card_reallocate_links);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
