Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F098CE67
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 10:29:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lg5iDanaDj0OAW1pmnT1tj3GT/1gAOnwwnAffhoMVPg=; b=YBwYxK0ScuBM9w
	0q9xNC96Kn3r/qyd5mUYGAtkJnzmgXuVNY3yO3likiWwDP0jEQAsg3Wb270X2GXLsTh3rXV93W9Yq
	c3EKDVhZgqqrx1sPqkTFWwTlnZeEds1fVY+h79dX4d1OElfSHIlYNdWnA8jY9PYE0IllWC81MxW2Y
	gOY3SGm5ii4mz04PPE/BM6+2PYDCRWd6UARnEZZjA/oDwvs2AHVqcHMq9OmxrN5XaaNRqqL5uGde9
	eqMaqX9Q63cfLCwt3mMSfb1b1wWvrrb8aE7UCYn0WvygxYbDwRF8vrolSZkv4MkrRR9qZ9uFeefPZ
	lwgaij8eYUnn5vmOM0rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxoeP-0004Ry-RJ; Wed, 14 Aug 2019 08:28:57 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoeA-0004Ra-Ma
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 08:28:43 +0000
Received: by mail-wr1-x441.google.com with SMTP id z1so110248530wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 01:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rV0Mz1LNQzvwfE9rFCVwbU0EStrdYW7TBpsWP1IW94k=;
 b=R/8QS2C6ntQ7Vw97hDgxsv6vJAns05MqnUI4UFuGPSRmCoJ05TqEABqcMIfkWG1exU
 cp9plLXm78nimHu8lF0h3doDNzdGaPT60sfj5GtdtvHFBq539TXYdQUPj/pL4FsaPMIQ
 Jdlg8ctiByw/dcXuxZYE0eaiBVWPn4SdzlKczGPUmgANztrd9Ny+LuBnPeWZDVNbEHJj
 P2vw65H576GGAGZFgjJT1UyCudVW9XyINkzdviJy1ORXt0ZfRBG/86HVLYd5pvtEj+Us
 jmwZ69XopX27pRjlCz6c4BBw1P4V5pHQsJ0crfa+LLUKn1x7+jLuYZjlMwO3I7kB2HiE
 5CFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rV0Mz1LNQzvwfE9rFCVwbU0EStrdYW7TBpsWP1IW94k=;
 b=PpyQN+C4FoH2cV5cburuuneJJOCzeu/J7PeKWz+i4mPPtj0egwE/QeSb5/k6uRNpI4
 ff1eRYn4VzlUsI7C/tCnGlHcMZzH3aXHYA214PEvftSScNu7yYP5Pj/+ldts6JFvoynq
 pwA99WaxCvtTzjPAsVL76F3V7VE+BS0UJYe4mJaW7wt9SZvCQUV5hIJCD9p2Bee/aydP
 kb28/POULqI3+gxjqyv/b2tOXh/jjH3tO+dcnHpcNrnI8abMgnJYveGm6EiVkemY3gol
 iYEEIwIFhOrRRZSRGyrt5JFSrKvpFCFQLx5gBi+1vRKmlPHDY2ToNUODuXFszf2fgl32
 ML1A==
X-Gm-Message-State: APjAAAWUgsX33sbMB7f2tDJvpWeQnTQQaGYGQ48fgWNamij2zuUg7+z/
 BWfc9ZBMlYeXwcMVTdNRY70=
X-Google-Smtp-Source: APXvYqzGZTVcpusGFYgd50gndARlz4pVBXWu3ACZK/HgjK/hWUAFe/i91auTmLJNsZQhT/YeqHrPGQ==
X-Received: by 2002:a05:6000:1041:: with SMTP id
 c1mr18582439wrx.99.1565771321208; 
 Wed, 14 Aug 2019 01:28:41 -0700 (PDT)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net.
 [89.212.178.211])
 by smtp.gmail.com with ESMTPSA id b26sm4034990wmj.14.2019.08.14.01.28.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 01:28:40 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com, codekipper@gmail.com
Subject: Re: [linux-sunxi] [PATCH v5 14/15] ASoc: sun4i-i2s: Add 20,
 24 and 32 bit support
Date: Wed, 14 Aug 2019 10:28:39 +0200
Message-ID: <4297791.2mJM636zur@jernej-laptop>
In-Reply-To: <20190814060854.26345-15-codekipper@gmail.com>
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-15-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_012842_744465_B322D088 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 lgirdwood@gmail.com, be17068@iperbole.bo.it, wens@csie.org, broonie@kernel.org,
 maxime.ripard@free-electrons.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Dne sreda, 14. avgust 2019 ob 08:08:53 CEST je codekipper@gmail.com 
napisal(a):
> From: Marcus Cooper <codekipper@gmail.com>
> 
> Extend the functionality of the driver to include support of 20 and
> 24 bits per sample for the earlier SoCs.
> 
> Newer SoCs can also handle 32bit samples.
> 
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> ---
>  sound/soc/sunxi/sun4i-i2s.c | 21 +++++++++++++++++++--
>  1 file changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index a71969167053..d3c8789f70bb 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -690,6 +690,11 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream
> *substream, case 16:
>  		width = DMA_SLAVE_BUSWIDTH_2_BYTES;
>  		break;
> +	case 20:
> +	case 24:
> +	case 32:

params_physical_width() returns 32 also for 20 and 24-bit formats, so drop 20 
and 24.

Best regards,
Jernej

> +		width = DMA_SLAVE_BUSWIDTH_4_BYTES;
> +		break;
>  	default:
>  		dev_err(dai->dev, "Unsupported physical sample width: 
%d\n",
>  			params_physical_width(params));
> @@ -1015,6 +1020,13 @@ static int sun4i_i2s_dai_probe(struct snd_soc_dai
> *dai) return 0;
>  }
> 
> +#define SUN4I_FORMATS	(SNDRV_PCM_FMTBIT_S16_LE | \
> +			 SNDRV_PCM_FMTBIT_S20_LE | \
> +			 SNDRV_PCM_FMTBIT_S24_LE)
> +
> +#define SUN8I_FORMATS	(SUN4I_FORMATS | \
> +			 SNDRV_PCM_FMTBIT_S32_LE)
> +
>  static struct snd_soc_dai_driver sun4i_i2s_dai = {
>  	.probe = sun4i_i2s_dai_probe,
>  	.capture = {
> @@ -1022,14 +1034,14 @@ static struct snd_soc_dai_driver sun4i_i2s_dai = {
>  		.channels_min = 2,
>  		.channels_max = 2,
>  		.rates = SNDRV_PCM_RATE_8000_192000,
> -		.formats = SNDRV_PCM_FMTBIT_S16_LE,
> +		.formats = SUN4I_FORMATS,
>  	},
>  	.playback = {
>  		.stream_name = "Playback",
>  		.channels_min = 2,
>  		.channels_max = 2,
>  		.rates = SNDRV_PCM_RATE_8000_192000,
> -		.formats = SNDRV_PCM_FMTBIT_S16_LE,
> +		.formats = SUN4I_FORMATS,
>  	},
>  	.ops = &sun4i_i2s_dai_ops,
>  	.symmetric_rates = 1,
> @@ -1505,6 +1517,11 @@ static int sun4i_i2s_probe(struct platform_device
> *pdev) goto err_pm_disable;
>  	}
> 
> +	if (i2s->variant->has_fmt_set_lrck_period) {
> +		soc_dai->playback.formats = SUN8I_FORMATS;
> +		soc_dai->capture.formats = SUN8I_FORMATS;
> +	}
> +
>  	if (!of_property_read_u32(pdev->dev.of_node,
>  				  "allwinner,playback-channels", 
&val)) {
>  		if (val >= 2 && val <= 8)





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
