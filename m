Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E433108A71
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 10:04:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/4R000NUIIs5AZLRKYpnN+KtyMaSfqTdmKr7ffsd3/Q=; b=ovpgR+SDWrr8Z3
	9izcfFd8ynY/EEtwixYMNfYVi1g19uE2KGWHKxRlv/9q4aRTR2vMCvsNsTW9N22p8wFC3R88I+Xrz
	EWwUYsHxbV/XHTvQfRvM4wi3398W2FiJuLw6Q6UA/xlqYLIo2kVHSu8eVFE1J0oFukH5ChWA2L0Wt
	aRrhwzYfS55O4MzKFq7hl6H9pD+HPJsFEf/f7sY2wKGP5TjOduhcQKv7mteTG+mZxOV+ZWM8XUR0c
	FaBrVg3tdrbGjHbCExAzKFu0YT/FAkmyo8mez1d0s0BfBMQmX187Ity7/syLTEn0Qplm+tB31WICC
	LN1t35AAwQwBJraym1FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZAIU-0000Tq-42; Mon, 25 Nov 2019 09:04:42 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZAIK-0000St-SR
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 09:04:34 +0000
Received: by mail-wr1-x442.google.com with SMTP id z7so13464803wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 01:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FCcRXq9rJbMPMfoFuzPFIe7CFg7Q6ZOnAYxFNHJ2YvA=;
 b=Pckq8+ZBX0c5vXqXPdW0trgRD8vqBwKVOHlUk33mbPiLqxw35IH8UR0w3sDEVmDsTK
 755Bektz7Ti/C1L26KE6nGgar7kYjqM5NIUhjtqtXK8VEdSoS9fpd7IMsj2sOvFLvUx2
 qW0Kqn530++EQSW3YQsiWIMTzwIdm6azBwOfg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=FCcRXq9rJbMPMfoFuzPFIe7CFg7Q6ZOnAYxFNHJ2YvA=;
 b=HspJMBfCsVQet6TCE4bHd959PLIKt/hWBNn/rP28t+f7wY0jz4J0clKy1sIbQtbgjV
 3qGbJ7pgfjUQhz0kR4Z/F/DQXtBwCe/XDI2XUD0N6oftOTLybjiREBPxjH05x0fo8qbx
 glSdVmkT+SHUln+owWQeXemYTza4L0UE2Is0qC3iBo2dv50zKnCpoeRPLVYcZ/wbmYoI
 LwfTUhV2Q5XbYc4pRrrU5jLuNVDuLx4aiRkxiJve86VGBseS4n+C1u33nVjNG8qoDyMB
 xZGiIpkq9uhsqQc3FGEejA7zMc0pMot+xghya1OT4Lg1ecD6cbsklJB4udk4s2aLq50K
 QlGg==
X-Gm-Message-State: APjAAAU7+UcUbsJ3aPzU6itvCqu2SFJQP2oV60dRD4T+3pp/g7YnPAkO
 nBq43/NWXfRForkTG40wTf8z0A==
X-Google-Smtp-Source: APXvYqyQrihAxd9KIrI5g1bVfEDvkyJIYOfqMHWXRNrqbbA0K6a2Hi0OFP2QAYHm/PkP+X/BY9gfCw==
X-Received: by 2002:a5d:5227:: with SMTP id i7mr30428764wra.277.1574672670756; 
 Mon, 25 Nov 2019 01:04:30 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id 91sm10059586wrm.42.2019.11.25.01.04.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 01:04:30 -0800 (PST)
Date: Mon, 25 Nov 2019 10:04:28 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] drm/sun4i: Fix Kconfig indentation
Message-ID: <20191125090428.GD29965@phenom.ffwll.local>
Mail-Followup-To: Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
References: <20191121132924.29485-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121132924.29485-1-krzk@kernel.org>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_010432_918730_40F97C15 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 09:29:24PM +0800, Krzysztof Kozlowski wrote:
> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
> 	$ sed -e 's/^        /\t/' -i */Kconfig
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Queued in drm-misc-next for 5.6, thanks for your patch.
-Daniel

> ---
>  drivers/gpu/drm/sun4i/Kconfig | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/sun4i/Kconfig b/drivers/gpu/drm/sun4i/Kconfig
> index 37e90e42943f..5755f0432e77 100644
> --- a/drivers/gpu/drm/sun4i/Kconfig
> +++ b/drivers/gpu/drm/sun4i/Kconfig
> @@ -17,18 +17,18 @@ config DRM_SUN4I
>  if DRM_SUN4I
>  
>  config DRM_SUN4I_HDMI
> -       tristate "Allwinner A10 HDMI Controller Support"
> -       default DRM_SUN4I
> -       help
> +	tristate "Allwinner A10 HDMI Controller Support"
> +	default DRM_SUN4I
> +	help
>  	  Choose this option if you have an Allwinner SoC with an HDMI
>  	  controller.
>  
>  config DRM_SUN4I_HDMI_CEC
> -       bool "Allwinner A10 HDMI CEC Support"
> -       depends on DRM_SUN4I_HDMI
> -       select CEC_CORE
> -       select CEC_PIN
> -       help
> +	bool "Allwinner A10 HDMI CEC Support"
> +	depends on DRM_SUN4I_HDMI
> +	select CEC_CORE
> +	select CEC_PIN
> +	help
>  	  Choose this option if you have an Allwinner SoC with an HDMI
>  	  controller and want to use CEC.
>  
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
