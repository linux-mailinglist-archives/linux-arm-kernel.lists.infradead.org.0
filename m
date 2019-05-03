Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BA113669
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 01:58:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o60am1+lAMqHPZqq7A5LE6rFTSlymAba3KxVtM8mtYw=; b=pYciajmvwhuPV3
	3eDwt8NBoDiDkQniP1k4h2dHMH86JkMDsOH2ZDmDWbYtB4+AV2ftfSW8lah4mwjrC+38X/oDx5TIJ
	vph6ZFVrf/z0gzrLit0aDxrdhCX9CQ/88XAYDsncX0ekWF89BDw8u0qsylM+ujI3NRFpkm2UIv2D4
	/AP5U0DUiBO92GVQMmr6fHK4UsbeHw8jLdodqgm8Fv6xdjtCktuwr4K74sAf6u4KprIzaH1xtUyGa
	caz2NL80sRti4xHerwn91ySdcGUw5fq5jJFqTkjpkmoLZytIkPg1eGAQnVjSUb9oygMLj3OQxr1pj
	V7SpGzTBgHx5KI8U+GuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMi4I-0001IP-OM; Fri, 03 May 2019 23:58:18 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMi4B-0001Hb-Hi
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 23:58:12 +0000
Received: by mail-pl1-x643.google.com with SMTP id y3so3444854plp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 16:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=v7+8a0jOi82vA98ZW8MLz4Zxp+tPvn5pEZ3hYsxU2i4=;
 b=KeUBh5m7XrqqJoGtrD6Ib6knt5i2ib8XP24NKJEJyGpAwUOaLX/x7UY2/uecLPiyDe
 9yyqjXnlM7Sdn7qZVIKCfp4lijNioihmlVmSLfE2FTzxpqPXWb817IqTmUzMWrglz7sL
 SQh/iyPbwkDdI8Zm3zUAt91zibej3pbV7DGpc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=v7+8a0jOi82vA98ZW8MLz4Zxp+tPvn5pEZ3hYsxU2i4=;
 b=reFmdrkE41K8S0SxfKdihyX7USJj+6VYOIlTWuo6SRX4eEtLPMsJ/vbpVMKXMgbc+n
 S5GNYA4ujhaZOjgoMiChwbl4DZDSMbAN09FCXbnjzJ3yvTsu+g5XhZ8yuWDXWenBD1fZ
 zDo4cGRNaKwzo/DobOHoOv8qk8Jo9+0OsJ371AptcW7UgSNG6ulcqhvjw+jlwwIiQwxp
 WLS7eIp4krrdiTwgWvQRBnclL42KAzSmDDvjUWsWQJGBWdmkh74QTVMLPHKUR7Holqh3
 JNG/8csItE0KXXQXBqqM6CZns/qF5yAsSxwsv1H0YOYdQSbpHnOaNi6zgDGpAT6bn0gR
 bC3Q==
X-Gm-Message-State: APjAAAUFgewqUlrSV79qCdR1Yx5/yCZc9AArmCWS9F7C3dFHlREItEwG
 L7AJkCP+LgKQXp+8tMWnpflsRw==
X-Google-Smtp-Source: APXvYqwCj3vkQhdXIGJu9EpWV0sc4q41te3mEjK0JRvTex2+xk1qSEGE3uWqGCe5EwjRzmV9owoA+A==
X-Received: by 2002:a17:902:7207:: with SMTP id
 ba7mr13779305plb.329.1556927890867; 
 Fri, 03 May 2019 16:58:10 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id h127sm4092709pgc.31.2019.05.03.16.58.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 16:58:10 -0700 (PDT)
Date: Fri, 3 May 2019 16:58:09 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ARM: dts: rockchip: Remove bogus 'i2s_clk_out' from
 rk3288-veyron-mickey
Message-ID: <20190503235809.GD40515@google.com>
References: <20190503234814.230901-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503234814.230901-1-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_165811_582822_1D821659 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, briannorris@chromium.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 amstan@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 04:48:14PM -0700, Douglas Anderson wrote:
> The rk3288-veyron-mickey device tree overrides the default "i2s" clock
> settings to add the clock for "i2s_clk_out".
> 
> That clock is only present in the bindings downstream Chrome OS 3.14
> tree.  Upstream the i2s port bindings doesn't specify that as a
> possible clock.
> 
> Let's remove it.
> 
> NOTE: for other rk3288-veyron devices this clock is consumed by
> 'maxim,max98090'.  Presumably if this clock is needed for mickey it'll
> need to be consumed by something similar.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
>  arch/arm/boot/dts/rk3288-veyron-mickey.dts | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rk3288-veyron-mickey.dts b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
> index e852594417b5..f9c4ece3c0d3 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-mickey.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
> @@ -142,8 +142,6 @@
>  
>  &i2s {
>  	status = "okay";
> -	clock-names = "i2s_hclk", "i2s_clk", "i2s_clk_out";
> -	clocks = <&cru HCLK_I2S0>, <&cru SCLK_I2S0>, <&cru SCLK_I2S0_OUT>;
>  };
>  
>  &rk808 {

effectively, 'i2s_clk_out' is not use in the upstream kernel.

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
