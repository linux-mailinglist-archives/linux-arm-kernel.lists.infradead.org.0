Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4111B385D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 09:58:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZubI8maMGpvGzgPAFI4VmFt0KDRaJ60lZIgXhXOOWE8=; b=dHu+4JzgOwurdC
	h22gHYpDmWj5il6rwPU1unFNYZFXbMVlYA0OPCTAT1oLBwNV4S0i3vI4Y8sVxbmp3Nh5ri/tOwQOw
	npEr9+Y/iLSCoc/YO6ZmFVlNkGllRj1RucWIHsO2xrOZViu88nqTp5ysHLyZm/PS4jaRcYYr0wxRb
	eSdU7fp6rpqGjvl6sbPD47hajGCJFNOocNB6z2M32TMgG56AgRnVesNrEv5zcBFCSUpMTMhfw3P+B
	Tf047v71V4R+D9EGwsMuyCBUkUk0Kv+o9+PAQelf/BSf97rIkFGsCCWFLhZeDQrmYrO93MVL/imqA
	OdEKDeBtrZTfdJJeXJQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ9l7-0005ln-PV; Fri, 07 Jun 2019 07:57:57 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ9kj-0005l0-99
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 07:57:34 +0000
Received: by mail-ed1-x541.google.com with SMTP id z25so1692385edq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 00:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=1Y0dqNgN5GRlPumwnSwim+P7xV+jz6U0uadHjVytHrk=;
 b=KW+UbysjArNVACv4q6+549r7+cTv3EkG+0hIgp5Gzs8ersC7PVJ/arg0EbqcKW/BDT
 7m/td0oX1nSkgEGBxV+/rFF94cYaaujJuBaZbnkb6j43aX9EoDSuUh2jbUn90a72Q1m6
 wWSpptOZ5QJhMjkYz1VNG/I1tEoevoc3dgNZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=1Y0dqNgN5GRlPumwnSwim+P7xV+jz6U0uadHjVytHrk=;
 b=gG4MN/f3CxSqeZkb7H27vtMzhsKrJuV5LJtIP2zf6kZC3uB6EGH7P2OYrCdXyQrZpr
 lzHIquEA45q94NTlZkGs/bMDV8dvOzWYUUT2vwTYcVY0eVqLAVapO3UquDiBnuv9VyBZ
 +HFAeOJFHG5rUnmKC0rWG7kAVs+lUXHmnN+I934EcfqMTWIh5dsjPZPHpbhZvuUpTWXJ
 /y10kQxtAWZw1s16bhzR+iBxZKijAwh/D21X1Gvyexz66Xge+4IpT8LxIeX/ZhwMRnPF
 5JpW1pCtwXQe2lVeWO0GRpx1wBgAq3RH+5v+aytrOq1gn4xY+UbI/JsAGKoHt4hJnh8I
 9Z1w==
X-Gm-Message-State: APjAAAWV+0ZhZgSqX+w5UMwARVsY8xvQlSDDfAGfBnF8uoZnuey3nhnN
 Iy9MRDlEn9RkUU+xTG8Sdqx5nA==
X-Google-Smtp-Source: APXvYqxb9k77uDmPH+x6SZW7m5DzVGO6PSl0oSp7JXNVVPERM605KEjklDJiu0Eyo4Ib14+dHcCJGA==
X-Received: by 2002:a17:906:4f8f:: with SMTP id
 o15mr45250693eju.129.1559894251343; 
 Fri, 07 Jun 2019 00:57:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id f3sm241948ejc.15.2019.06.07.00.57.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 00:57:30 -0700 (PDT)
Date: Fri, 7 Jun 2019 09:57:28 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Anders Roxell <anders.roxell@linaro.org>
Subject: Re: [PATCH 3/8] drivers: (video|gpu): fix warning same module names
Message-ID: <20190607075728.GE21222@phenom.ffwll.local>
Mail-Followup-To: Anders Roxell <anders.roxell@linaro.org>, marex@denx.de,
 stefan@agner.ch, airlied@linux.ie, shawnguo@kernel.org,
 s.hauer@pengutronix.de, b.zolnierkie@samsung.com, andrew@lunn.ch,
 vivien.didelot@gmail.com, f.fainelli@gmail.com, a.hajda@samsung.com,
 mchehab@kernel.org, p.zabel@pengutronix.de, hkallweit1@gmail.com,
 lee.jones@linaro.org, lgirdwood@gmail.com, broonie@kernel.org,
 davem@davemloft.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org,
 linux-media@vger.kernel.org
References: <20190606094712.23715-1-anders.roxell@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606094712.23715-1-anders.roxell@linaro.org>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_005733_334731_E5031BEF 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: andrew@lunn.ch, linux-fbdev@vger.kernel.org, airlied@linux.ie,
 stefan@agner.ch, linux-kernel@vger.kernel.org, a.hajda@samsung.com,
 lee.jones@linaro.org, marex@denx.de, f.fainelli@gmail.com,
 vivien.didelot@gmail.com, linux-media@vger.kernel.org, daniel@ffwll.ch,
 b.zolnierkie@samsung.com, s.hauer@pengutronix.de, broonie@kernel.org,
 dri-devel@lists.freedesktop.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 lgirdwood@gmail.com, p.zabel@pengutronix.de, shawnguo@kernel.org,
 davem@davemloft.net, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 11:47:12AM +0200, Anders Roxell wrote:
> When building with CONFIG_DRM_MXSFB and CONFIG_FB_MXS enabled as
> loadable modules, we see the following warning:
> 
> warning: same module names found:
>   drivers/video/fbdev/mxsfb.ko
>   drivers/gpu/drm/mxsfb/mxsfb.ko
> 
> Rework so the names matches the config fragment.
> 
> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

I'm assuming Bart will pick this one up for fbdev.
-Daniel

> ---
>  drivers/gpu/drm/mxsfb/Makefile | 4 ++--
>  drivers/video/fbdev/Makefile   | 3 ++-
>  2 files changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mxsfb/Makefile b/drivers/gpu/drm/mxsfb/Makefile
> index ff6e358088fa..5d49d7548e66 100644
> --- a/drivers/gpu/drm/mxsfb/Makefile
> +++ b/drivers/gpu/drm/mxsfb/Makefile
> @@ -1,3 +1,3 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> -mxsfb-y := mxsfb_drv.o mxsfb_crtc.o mxsfb_out.o
> -obj-$(CONFIG_DRM_MXSFB)	+= mxsfb.o
> +drm-mxsfb-y := mxsfb_drv.o mxsfb_crtc.o mxsfb_out.o
> +obj-$(CONFIG_DRM_MXSFB)	+= drm-mxsfb.o
> diff --git a/drivers/video/fbdev/Makefile b/drivers/video/fbdev/Makefile
> index 655f2537cac1..7ee967525af2 100644
> --- a/drivers/video/fbdev/Makefile
> +++ b/drivers/video/fbdev/Makefile
> @@ -131,7 +131,8 @@ obj-$(CONFIG_FB_VGA16)            += vga16fb.o
>  obj-$(CONFIG_FB_OF)               += offb.o
>  obj-$(CONFIG_FB_MX3)		  += mx3fb.o
>  obj-$(CONFIG_FB_DA8XX)		  += da8xx-fb.o
> -obj-$(CONFIG_FB_MXS)		  += mxsfb.o
> +obj-$(CONFIG_FB_MXS)		  += fb-mxs.o
> +fb-mxs-objs			  := mxsfb.o
>  obj-$(CONFIG_FB_SSD1307)	  += ssd1307fb.o
>  obj-$(CONFIG_FB_SIMPLE)           += simplefb.o
>  
> -- 
> 2.20.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
