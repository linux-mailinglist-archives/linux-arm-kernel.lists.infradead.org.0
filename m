Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E872F165F39
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 14:53:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IU1ilgvrTRigdB+KYrHez16/fi4l+Bh0v3FcSYngJa0=; b=jhlcgPzuUjssK6
	w6c+94708/r9gWBcqQJxgamu+6Pxh3dDK4RJAH7shMt5XU1EyNcCLfMatzNS94fzhTZ00bnUUBFMY
	KbK70G9gSbuI3JxGpgjrqWXWnnvXHigte97qfwM/gEQ7s0TAgSQnF4IfO+euMNVOQz7dfjjnru1jE
	D6PFEoBv2Ei1t0Kq4cMxQSSmg/1SpKDGjIq9Q7wuEABuY8iuZmj323xAOtc939ZVaZiW6EgMolBbg
	4L4NuWowiYmUhivv2k873cGk4JWDNujmrDC/B5VMEkJg+00ZKt9ySb9VFR87xNvEHVKlPtLpkkQzt
	Znk4Yk7RnYcD3jBDfoKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4mGh-0000XY-5O; Thu, 20 Feb 2020 13:53:31 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4mGX-0000Wj-Sl
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 13:53:23 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 63B1CE7C;
 Thu, 20 Feb 2020 14:53:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1582206798;
 bh=bIqv4ZGZOGT3b6xmaqujXh3xaygrfzUiArc2j1fuRB0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y/aOJcazvIBhp5356NPaYzBh8ptng3KYAzVlkyNIahWk4GT+WfCiq+Uv781MXXdHy
 wmwvMnJXDs1t/Mwf7e/OEdrwWCpQmsstG307HQv5+Cn7yXMtFU8Ptp5zHZMPPw9LOJ
 VCrPmcpkEf4a+liOR16kPm7uV/zJy8w1+qv8Efp8=
Date: Thu, 20 Feb 2020 15:52:59 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH 2/6] drm/bridge: anx6345: Clean up error handling in
 probe()
Message-ID: <20200220135259.GC4998@pendragon.ideasonboard.com>
References: <20200220083508.792071-1-anarsoul@gmail.com>
 <20200220083508.792071-3-anarsoul@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220083508.792071-3-anarsoul@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_055322_079723_3E25FACC 
X-CRM114-Status: GOOD (  16.67  )
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

On Thu, Feb 20, 2020 at 12:35:04AM -0800, Vasily Khoruzhick wrote:
> devm_regulator_get() returns either a dummy regulator or -EPROBE_DEFER,
> we don't need to print scary message in either case.
> 
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix-anx6345.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> index 0d8d083b0207..0204bbe4f0a0 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> @@ -713,17 +713,13 @@ static int anx6345_i2c_probe(struct i2c_client *client,
>  
>  	/* 1.2V digital core power regulator  */
>  	anx6345->dvdd12 = devm_regulator_get(dev, "dvdd12");
> -	if (IS_ERR(anx6345->dvdd12)) {
> -		DRM_ERROR("dvdd12-supply not found\n");
> +	if (IS_ERR(anx6345->dvdd12))
>  		return PTR_ERR(anx6345->dvdd12);
> -	}

There could be other errors such as -EBUSY or -EPERM. The following
would ensure a message gets printed in those cases, while avoiding
spamming the kernel log in the EPROBE_DEFER case.

	if (IS_ERR(anx6345->dvdd12)) {
		if (PTR_ERR(anx6345->dvdd12) != -EPROBE_DEFER)
			DRM_ERROR("Failed to get dvdd12 supply (%d)\n",
				  PTR_ERR(anx6345->dvdd12));
		return PTR_ERR(anx6345->dvdd12);
	}

But maybe it's overkill ? With or without that change (for the second
regulator below too),

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

>  	/* 2.5V digital core power regulator  */
>  	anx6345->dvdd25 = devm_regulator_get(dev, "dvdd25");
> -	if (IS_ERR(anx6345->dvdd25)) {
> -		DRM_ERROR("dvdd25-supply not found\n");
> +	if (IS_ERR(anx6345->dvdd25))
>  		return PTR_ERR(anx6345->dvdd25);
> -	}
>  
>  	/* GPIO for chip reset */
>  	anx6345->gpiod_reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
