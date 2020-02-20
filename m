Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBAD165F16
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 14:47:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E9Qz8WPbvUKkxpNCkQDnZy5reDco4/e6/33AYLBBkWw=; b=VBX3CLAjnGTnYX
	EyoRBlKMa9929/LPazKhuLarQzhv2W3lMlG5MLryny2a/TRsdQs0aZVzFZqVjcl0ZIcx9/JvAnnfg
	6qI3UvH/c5Jtj+zjPbw+er5YPrKh0BpJJlM/YX/SQiYgdY09OCltDfdgoGBdYu5uP6c6ZA2ZiPljl
	hfm+3FR+M7qLJ+whM7HaiTjzHbprjnVo6RZQ/9YTEuTKPNiy5oUktNKsjNW8jlnh/1VIJvt/5lI52
	BK61lp5Lq7yTIQ02vn3Roy3TcVwduXpwQwiwwVvfSZsLrzmEwp5oaz6PbrANcwiYfk1BWAo4FeA5b
	hRL81Don7kDWnG6cC5SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4mAn-0005zY-JG; Thu, 20 Feb 2020 13:47:25 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4mAf-0005yY-Q2
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 13:47:19 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id A7EBF563;
 Thu, 20 Feb 2020 14:47:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1582206422;
 bh=uiVkPCvjcZdbiY3qcGURFlvVQ3c1CcE3A2NnKP1Gewo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MtgKWlPnwMeA86TLEK/5cvysfXWA1tk4Oq5Bi3hPaI8PFUv6u74R4gH6iBbDBz+lv
 9yuMr9/Yg1uwc31+VVI6mNTWIZbC+aCmorWGlxualPlBre5pNvFD2tQ36tJeb1ubBl
 ezWEmwz7OYlmwBlMRm4wDz3G54bdiGesQx1R2xVU=
Date: Thu, 20 Feb 2020 15:46:43 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH 1/6] drm/bridge: anx6345: Fix getting anx6345 regulators
Message-ID: <20200220134643.GB4998@pendragon.ideasonboard.com>
References: <20200220083508.792071-1-anarsoul@gmail.com>
 <20200220083508.792071-2-anarsoul@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220083508.792071-2-anarsoul@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_054717_990751_D2D48EAE 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Samuel Holland <samuel@sholland.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Chen-Yu Tsai <wens@csie.org>, Icenowy Zheng <icenowy@aosc.io>,
 Stephan Gerhold <stephan@gerhold.net>, Jonas Karlman <jonas@kwiboo.se>,
 Torsten Duwe <duwe@suse.de>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vasily,

Thank you for the patch.

On Thu, Feb 20, 2020 at 12:35:03AM -0800, Vasily Khoruzhick wrote:
> From: Samuel Holland <samuel@sholland.org>
> 
> We don't need to pass '-supply' suffix to devm_get_regulator()
> 
> Fixes: 6aa192698089 ("drm/bridge: Add Analogix anx6345 support")
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/gpu/drm/bridge/analogix/analogix-anx6345.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> index 56f55c53abfd..0d8d083b0207 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> @@ -712,14 +712,14 @@ static int anx6345_i2c_probe(struct i2c_client *client,
>  		DRM_DEBUG("No panel found\n");
>  
>  	/* 1.2V digital core power regulator  */
> -	anx6345->dvdd12 = devm_regulator_get(dev, "dvdd12-supply");
> +	anx6345->dvdd12 = devm_regulator_get(dev, "dvdd12");
>  	if (IS_ERR(anx6345->dvdd12)) {
>  		DRM_ERROR("dvdd12-supply not found\n");
>  		return PTR_ERR(anx6345->dvdd12);
>  	}
>  
>  	/* 2.5V digital core power regulator  */
> -	anx6345->dvdd25 = devm_regulator_get(dev, "dvdd25-supply");
> +	anx6345->dvdd25 = devm_regulator_get(dev, "dvdd25");
>  	if (IS_ERR(anx6345->dvdd25)) {
>  		DRM_ERROR("dvdd25-supply not found\n");
>  		return PTR_ERR(anx6345->dvdd25);

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
