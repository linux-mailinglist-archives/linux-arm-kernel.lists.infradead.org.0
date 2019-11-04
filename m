Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9370FEE663
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 18:42:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GEy1qbZY15618mbM9Ho/PjubAGUDJH5QV1X6EHb+KZk=; b=WWOcBfzVI516SV
	srvzLAF+wOvdxMdej+H/8dLJU/4ZZdY/exL1VFq/axlJ1Ki5WzUyN1vygzN2FjMhCrvKfdp/dKz4c
	XdweZbKaRZoYJJox/RjhYiKsWq1eRSa9taCx1iMZJAP/eKABJ8ZYVNSatKIrtdrSGmOwtTDvQbugj
	0t7WOzivjuUAPmvGSMBmwmmq0GkChVC4cEZiWGtekv92BtmvR7i6jkQrqSP9sj1N6RQklyFRgsvxQ
	w8ndsXHvnOIyhmST0+yoRMZJPVT0gYy1hMVwLkgU4XKIgPZUKRSSKDO5Uj/tlJvOMFUhpbt+srDQP
	ivNsgOkLlFFeCHSV+7oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgN3-0003G4-NC; Mon, 04 Nov 2019 17:42:29 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgMx-0003F4-BM
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 17:42:24 +0000
Received: by mail-wr1-x444.google.com with SMTP id a11so18105188wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 09:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=5ogVv9yu3iXpW756OAqxBZcAaxMrrDVeZyf4/i652TM=;
 b=jvjHe6OReDuWCuVv2+9UAh0oNSew20Cf90E08ulRCvHLHeXfSPKJ1HoefQFlUG7hM8
 cvxTxB0gdhOTdqmAYguK071cnJKBuGonRdGwubEbmvi30uVk49BVOBFvBbnXyV6fgY1B
 /GBBc6/JCDu4mXohl8A5LHq8adjS1+871lhRU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=5ogVv9yu3iXpW756OAqxBZcAaxMrrDVeZyf4/i652TM=;
 b=rbYUaBaw82rGpZ1dML5Sbbh+4Fn8mCtqYcjqVeoPz/REqgcL/OolUaCLZkKdeOVeGV
 ec2fukoK8XUvT37F/lcTlHUYf8QiLl6ma5u3imgtI/tPTpWaKm5Q5hmbb0l1J20CbBxQ
 VzO3J5qlVjvIOLDCrLhDbD4FnoER3UyfMAfLLtPjxlIZGs7INpjTSCsG9nKVctr57Bma
 tM5eHNWd+vzH83t0SZ2ujU4zjX9s4XCWI9zn6ruoBWcIM41pDEpSTIUaywfy1eIQ2ZLP
 VHiEwzdmtYkgnm3N6o6NN0A3JeDvPPhwM5yGVqc8tP54i7grSzjWVe2WFGewPKOzvmwb
 USCg==
X-Gm-Message-State: APjAAAU5c+ocIzeFFs4OI5xuiwkNyGIUmyIOaGmkomX59DLI+45ZZQNF
 Wwy84vzUQ/VQk8Ajc+ECH/t5Jg==
X-Google-Smtp-Source: APXvYqyo30Cx3N9aLHROc1bhJ+WNVO3huy0tpFL+gtfZWVC0nSZZlSOaRK2D60u0zqloh6U7cb3wBA==
X-Received: by 2002:adf:e889:: with SMTP id d9mr26191161wrm.266.1572889341116; 
 Mon, 04 Nov 2019 09:42:21 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id f13sm17424754wrq.96.2019.11.04.09.42.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 09:42:20 -0800 (PST)
Date: Mon, 4 Nov 2019 18:42:18 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH v2] drm: sun4i: Add support for suspending the display
 driver
Message-ID: <20191104174218.GL10326@phenom.ffwll.local>
Mail-Followup-To: Ondrej Jirman <megous@megous.com>,
 linux-sunxi@googlegroups.com, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, David Airlie <airlied@linux.ie>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
References: <20191029112846.3604925-1-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029112846.3604925-1-megous@megous.com>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_094223_389369_0F9B38AC 
X-CRM114-Status: GOOD (  18.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Airlie <airlied@linux.ie>, Chen-Yu Tsai <wens@csie.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10"
 <dri-devel@lists.freedesktop.org>, open list <linux-kernel@vger.kernel.org>,
 linux-sunxi@googlegroups.com, Maxime Ripard <mripard@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 12:28:46PM +0100, Ondrej Jirman wrote:
> Shut down the display engine during suspend.
> 
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
> Changes in v2:
> - spaces -> tabs
> 
>  drivers/gpu/drm/sun4i/sun4i_drv.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/gpu/drm/sun4i/sun4i_drv.c b/drivers/gpu/drm/sun4i/sun4i_drv.c
> index a5757b11b730..c519d7cfcf43 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_drv.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_drv.c
> @@ -346,6 +346,27 @@ static int sun4i_drv_add_endpoints(struct device *dev,
>  	return count;
>  }
>  
> +#ifdef CONFIG_PM_SLEEP
> +static int sun4i_drv_drm_sys_suspend(struct device *dev)
> +{
> +	struct drm_device *drm = dev_get_drvdata(dev);
> +
> +	return drm_mode_config_helper_suspend(drm);
> +}
> +
> +static int sun4i_drv_drm_sys_resume(struct device *dev)
> +{
> +	struct drm_device *drm = dev_get_drvdata(dev);
> +
> +	return drm_mode_config_helper_resume(drm);
> +}
> +#endif
> +
> +static const struct dev_pm_ops sun4i_drv_drm_pm_ops = {
> +	SET_SYSTEM_SLEEP_PM_OPS(sun4i_drv_drm_sys_suspend,
> +				sun4i_drv_drm_sys_resume)
> +};

I wonder whether we should have these as default helpers somewhere,
there's probably a few drivers that could use them? It's just a handful of
lines we're saving here, but we have enough kms drivers to justify this
kind of stuff nowadays ...
-Daniel

> +
>  static int sun4i_drv_probe(struct platform_device *pdev)
>  {
>  	struct component_match *match = NULL;
> @@ -418,6 +439,7 @@ static struct platform_driver sun4i_drv_platform_driver = {
>  	.driver		= {
>  		.name		= "sun4i-drm",
>  		.of_match_table	= sun4i_drv_of_table,
> +		.pm = &sun4i_drv_drm_pm_ops,
>  	},
>  };
>  module_platform_driver(sun4i_drv_platform_driver);
> -- 
> 2.23.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
