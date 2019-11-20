Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BEB1040E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:37:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F5csoM2ZyaxVvl1zhw4fSDC5ZSih7n0rFApfWxBTk1k=; b=W/bkws1bpA/fum
	wsCnYR70by7ze1fDMMWBjZZGrpeCeeX16MG916IFiAqyzhI65eEsuUtIDTazdpxUTg9NfO+niflkg
	C3CGtANMrQi/DEAy+ZCQWZ6qy8a7w4RZ/YtnpFlbW27itp4/POqTvXMUOEnV7gZwQzRJVvbAoFvag
	u7uIXVNL0xjuYBwv5d6XsIbH3cpiYLoU0OS0Z6dn4QdLkLJ+/c7UGcdWn33mMJ/jaIFEqZgXchV7w
	WfWQnKhEzCTni+W88Pv+Eq/8r+raFAvdfbuDK9FXSfrTjSrgX4TCOe7aaARu0n9aEMIDIWOihefqv
	mPvlYHqDXj2dzfLRf7lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXSyS-0007uo-90; Wed, 20 Nov 2019 16:37:00 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXSyG-0007tK-FN
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 16:36:50 +0000
Received: by mail-wm1-x341.google.com with SMTP id l17so298005wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 08:36:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tesw3sq2dFVfQE6pmhyrzRi4mLidJzG8GCQ0JteIIRE=;
 b=F7HHpENW/MM6F+QovxPoI6sD3Q9wtMmI6R6dM0bwlSguWpp1dqIM349WqcCRZu+Ce/
 xR2k/uEyP92duYLa1gM6Nay/ZhmL1TIAV4PFaefUAcdv3x2XPhuzYyCaphD0yChAMbfG
 vx5JWEzsgxHGZFMh86C1dpXAPEIMGmgSSS52g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=tesw3sq2dFVfQE6pmhyrzRi4mLidJzG8GCQ0JteIIRE=;
 b=V0F+jXsxL0xKexJzL7KrcJqdhaPUbQwhm/20M7+c4fTfY9cpqCxaPy3fMiDpz0qAcq
 qC/AnaS9cZjDwQd0tnFixvRqO7JSIHi6Xet5XQxviExsel1jJMd34zYJFbDJfXHoejZL
 tuaMuNR21j45hIxiMnbXP45k7r3fb40P7cwBEHYJMZwIeoOgiuJvFooUcvRzUV3Y1Q5B
 ec69TgP02eS6341qnIlY+U194oDjalcy5f7ew+CNZH45lfWsgpsNochoGco84d+cb6uA
 kPP9EPc4e1XL5vW5jzRv/BOXaefuNEOYihcqVhWDipE/WzWnMv4Of09gSr+uTNClnV0m
 8v4A==
X-Gm-Message-State: APjAAAUYAncdskGp/N09sLUOzZdHEuODRScU3plVjTgsGB30lrNfmF+L
 n0ZmFEs6oR4i1p3LtlKcjuWIIA==
X-Google-Smtp-Source: APXvYqwrPubNXX8yGAPcnC9X0GNh3U53hk3U8rLobGyGtHY/2ZK1eXIvpY5fLmaxi+5jpeb51T2FsA==
X-Received: by 2002:a7b:cf05:: with SMTP id l5mr4550515wmg.44.1574267806819;
 Wed, 20 Nov 2019 08:36:46 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id g5sm7278951wma.43.2019.11.20.08.36.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 08:36:46 -0800 (PST)
Date: Wed, 20 Nov 2019 17:36:44 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] drm/rockchip: Fix Kconfig indentation
Message-ID: <20191120163644.GN30416@phenom.ffwll.local>
Mail-Followup-To: Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20191120133348.6640-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120133348.6640-1-krzk@kernel.org>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_083648_520045_F25038AA 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 09:33:48PM +0800, Krzysztof Kozlowski wrote:
> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
> 	$ sed -e 's/^        /\t/' -i */Kconfig
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Queued for 5.6 in drm-misc, thanks for your patch.
-Daniel
> ---
>  drivers/gpu/drm/rockchip/Kconfig | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
> index 6f4222f8beeb..1670a5cae3c7 100644
> --- a/drivers/gpu/drm/rockchip/Kconfig
> +++ b/drivers/gpu/drm/rockchip/Kconfig
> @@ -28,17 +28,17 @@ config ROCKCHIP_ANALOGIX_DP
>  	  on RK3288 or RK3399 based SoC, you should select this option.
>  
>  config ROCKCHIP_CDN_DP
> -        bool "Rockchip cdn DP"
> +	bool "Rockchip cdn DP"
>  	depends on EXTCON=y || (EXTCON=m && DRM_ROCKCHIP=m)
> -        help
> +	help
>  	  This selects support for Rockchip SoC specific extensions
>  	  for the cdn DP driver. If you want to enable Dp on
>  	  RK3399 based SoC, you should select this
>  	  option.
>  
>  config ROCKCHIP_DW_HDMI
> -        bool "Rockchip specific extensions for Synopsys DW HDMI"
> -        help
> +	bool "Rockchip specific extensions for Synopsys DW HDMI"
> +	help
>  	  This selects support for Rockchip SoC specific extensions
>  	  for the Synopsys DesignWare HDMI driver. If you want to
>  	  enable HDMI on RK3288 or RK3399 based SoC, you should select
> -- 
> 2.17.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
