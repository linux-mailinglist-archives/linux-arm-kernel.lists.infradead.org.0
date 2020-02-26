Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82433170871
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 20:06:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hqfwipVujDaxptTCQ3YBvkrilyH1XmiTDmOoL15mY4w=; b=Ok9zJ0LxCdC34sd/IgAY5xD0GI
	cpqjz257Q68qdEjRQPRHb233DA1Psphf6Dfjw8tz/FE2f51A4SoaDytpsuv0P6omymxnGQ3MK7xfw
	0455GEkcv6bUhGrlHaNyB4Mx/zCFa101rUig1X22PRylfKueg5mQvfCDE+HbEUB1ySKfLd+ixPMJg
	ZLSSCgnU5iLlsx7pxtplj68SFxLrsG8rNLMgwLwvvdhg6YUsbpYHLKr4L+gu/5or9oqaXHXSX4qmr
	Zge23oGs1S7oMckUKjL1Ww7espA6ELP7nzRnqU8E/nXET2ZvKSyDXUa08IH4xPyOOw9dzHlKLu6c+
	3nLsRjew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j721E-0005Ch-Sa; Wed, 26 Feb 2020 19:06:52 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7217-0005Bs-9w
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 19:06:46 +0000
Received: by mail-qk1-x744.google.com with SMTP id m9so578107qke.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 11:06:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=M9niB/YnWE/mLPULIH87VulO14ku7TY288Cxvxcfeys=;
 b=m1sFXJWAMrJMsYaGgcCtAGpf8EaIm5PCgIxV1iKtHvR5+dpc9QTf8u/9ABYitkG6pd
 TwsZyKmjIRrTUsColw9pGQXQCoQNDIZd7WwGlTUjMliBWyK8lL2om+9ZK07C/wnLwmWN
 lC71l0SyiMyslAqAQKKdiKOsCt31Xu2kIU0rS5fyLp9vR/4+zsVwGo+NwzMHdAIwg/xT
 xeHZCSAseH+k80jLpc4q5H2bp3nD3XG9uZ1PjOxgzpdlAt2XFiyyZB0MAVn69B6+ryZN
 SDAK2u3KTjT4U7Z6s+hqWOs8q7xdQggpcqJ92L85lVRcT4qJVy1pqf7BWZ5Bi6Q+nWr9
 ly4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=M9niB/YnWE/mLPULIH87VulO14ku7TY288Cxvxcfeys=;
 b=BdUcJGD2ZIqzRKoA9FmPzbWAEnU3AD6osooctp4yM5O2iWI1XX0Z8Oguvf3rLQgnxn
 7INKff3WYJu57ID1/DAmrTfzdfygudSn/VnI3sYklpJ6gzkMEnzyo46/d4vp8EARBGbK
 BEtiHSzpPtEjOtYRDxRrFvEkeGCr5GB6Hfo0w+0vA8E0FRvgDqCPGTbm7fVvfqxeL1lR
 mLT2QLV0wy63UcZA9LFv0YoTBFgcQNIw7i+WbFKrnn3J6QreAM2XwU7/Of3KEWGRzYAU
 CufELvK/8NG60RV4BHx4fJ+jxXaJmyXtwVlvKm5InNlcVUqVrVUL21AFRZZzU69Sj/Fx
 /NSg==
X-Gm-Message-State: APjAAAXdW2ViOWqFP7NFRH3nE5np0liN4Sk1/WyYPbvFziDByD3abU/z
 xRV8RbZnT7R8qSCPCaVxYOMoqwmU9Pu3l2r2xN0swVGMb+vrdQ==
X-Google-Smtp-Source: APXvYqyjurfsyKDoTMJ4WSbU70QdA9TtasCgybTEtfeAuvAhr0Qw4NI8q5lbdJVqkzh7xKqVEaAqdPQ+oRW7x7VyHlI=
X-Received: by 2002:ae9:f012:: with SMTP id l18mr712442qkg.22.1582744002146;
 Wed, 26 Feb 2020 11:06:42 -0800 (PST)
MIME-Version: 1.0
References: <20200226081011.1347245-1-anarsoul@gmail.com>
 <20200226081011.1347245-2-anarsoul@gmail.com>
In-Reply-To: <20200226081011.1347245-2-anarsoul@gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Wed, 26 Feb 2020 11:06:34 -0800
Message-ID: <CA+E=qVdUV5wBcyFpwPZvi4=8bPgVBZiRB0XrEE=SPJT+cTgZ9g@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] drm/bridge: anx6345: Fix getting anx6345 regulators
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <maxime@cerno.tech>,
 Chen-Yu Tsai <wens@csie.org>, 
 Andrzej Hajda <a.hajda@samsung.com>, Neil Armstrong <narmstrong@baylibre.com>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, 
 Jernej Skrabec <jernej.skrabec@siol.net>, Torsten Duwe <duwe@suse.de>,
 Icenowy Zheng <icenowy@aosc.io>, 
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, 
 Stephan Gerhold <stephan@gerhold.net>, Mark Brown <broonie@kernel.org>, 
 Stephen Rothwell <sfr@canb.auug.org.au>, Samuel Holland <samuel@sholland.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>,
 devicetree <devicetree@vger.kernel.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>, 
 arm-linux <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_110645_370966_240A0BFA 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 12:10 AM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> From: Samuel Holland <samuel@sholland.org>

This patch can be dropped since equivalent was merged:

https://cgit.freedesktop.org/drm/drm-misc/commit/?id=6726ca1a2d531f5a6efc1f785b15606ce837c4dc

> We don't need to pass '-supply' suffix to devm_regulator_get()
>
> Fixes: 6aa192698089 ("drm/bridge: Add Analogix anx6345 support")
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix-anx6345.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> index 56f55c53abfd..0d8d083b0207 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> @@ -712,14 +712,14 @@ static int anx6345_i2c_probe(struct i2c_client *client,
>                 DRM_DEBUG("No panel found\n");
>
>         /* 1.2V digital core power regulator  */
> -       anx6345->dvdd12 = devm_regulator_get(dev, "dvdd12-supply");
> +       anx6345->dvdd12 = devm_regulator_get(dev, "dvdd12");
>         if (IS_ERR(anx6345->dvdd12)) {
>                 DRM_ERROR("dvdd12-supply not found\n");
>                 return PTR_ERR(anx6345->dvdd12);
>         }
>
>         /* 2.5V digital core power regulator  */
> -       anx6345->dvdd25 = devm_regulator_get(dev, "dvdd25-supply");
> +       anx6345->dvdd25 = devm_regulator_get(dev, "dvdd25");
>         if (IS_ERR(anx6345->dvdd25)) {
>                 DRM_ERROR("dvdd25-supply not found\n");
>                 return PTR_ERR(anx6345->dvdd25);
> --
> 2.25.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
