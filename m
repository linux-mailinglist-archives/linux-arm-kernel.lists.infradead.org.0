Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 266022033E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 12:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SkdnOI2zrMfoFEmGmEKNWH2VOSsRb9MoYKzz4JztfVE=; b=g3Xf3arN3YVyCL
	3ilpiiTW1M+rw9QGFL2yEPtJFVNDUJshJ0il2G68QfSLCcXS0/0/8Bcx0bVXiAb1s/hwiySMbAsUb
	dxUApzcPoWOorSmxJ5lFEjRgPpaUs+gwRBEcHug2h9yWGEVMzQpWT7KjmLL/I6v5APuM8/nrIHJE8
	eIzKj0FfOFcShzRbZprfKCFsv0uFiGXPpGslnwXYEXp3EfiRTUASn2zsTLfg7hOwLi7aO9pGhUQyM
	BBdJO+IwGiAx9JFUeCtlCoyjSYR8jzV5s1Q6Ll+kW4QDh1Q2bwRL/bkBnx/BixoIYX6+dRI1qj8ob
	xMR7d9jpDjA2EsS/F+QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDPu-0005sH-04; Thu, 16 May 2019 10:15:14 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDPl-0004iY-MQ; Thu, 16 May 2019 10:15:07 +0000
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id ED7C3320;
 Thu, 16 May 2019 12:14:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1558001695;
 bh=hdHDpOn6XPeT8HCeSsf6x0SVf0Wl4BDWp5vvALPWmUk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AqEuEc+3Hkk+pq/L7bssYGNH3Yllxa/OlVeqwuBQkQdGyAkzaQU6EeJfTk8WVJnPs
 MjsLwRz1GcjHCRDFkQlUdbPypKpo5WOf0+nyM2iAS+nk86NSrM0MaqfojXDCwZ8JKa
 0fz6L4cv85S3qT8xR0hIekDP5rSwZGn5lYYdQ1fc=
Date: Thu, 16 May 2019 13:14:38 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 2/2] drm/rockchip: dw_hdmi: Handle suspend/resume
Message-ID: <20190516101438.GD4995@pendragon.ideasonboard.com>
References: <20190502223808.185180-1-dianders@chromium.org>
 <20190502223808.185180-2-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502223808.185180-2-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_031505_891766_8F04D246 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
 mka@chromium.org, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Douglas,

Thank you for the patch.

On Thu, May 02, 2019 at 03:38:08PM -0700, Douglas Anderson wrote:
> On Rockchip rk3288-based Chromebooks when you do a suspend/resume
> cycle:
> 
> 1. You lose the ability to detect an HDMI device being plugged in.
> 
> 2. If you're using the i2c bus built in to dw_hdmi then it stops
> working.
> 
> Let's call the core dw-hdmi's suspend/resume functions to restore
> things.
> 
> NOTE: in downstream Chrome OS (based on kernel 3.14) we used the
> "late/early" versions of suspend/resume because we found that the VOP
> was sometimes resuming before dw_hdmi and then calling into us before
> we were fully resumed.  For now I have gone back to the normal
> suspend/resume because I can't reproduce the problems.

Should this be solved with device links if needed ?

> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index 4cdc9f86c2e5..deb0e8c30c03 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -542,11 +542,31 @@ static int dw_hdmi_rockchip_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static int __maybe_unused dw_hdmi_rockchip_suspend(struct device *dev)
> +{
> +	struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
> +
> +	return dw_hdmi_suspend(hdmi->hdmi);
> +}
> +
> +static int __maybe_unused dw_hdmi_rockchip_resume(struct device *dev)
> +{
> +	struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
> +
> +	return dw_hdmi_resume(hdmi->hdmi);
> +}
> +
> +const struct dev_pm_ops dw_hdmi_rockchip_pm = {

Missing static keyword ?

Apart from this,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +	SET_SYSTEM_SLEEP_PM_OPS(dw_hdmi_rockchip_suspend,
> +				dw_hdmi_rockchip_resume)
> +};
> +
>  struct platform_driver dw_hdmi_rockchip_pltfm_driver = {
>  	.probe  = dw_hdmi_rockchip_probe,
>  	.remove = dw_hdmi_rockchip_remove,
>  	.driver = {
>  		.name = "dwhdmi-rockchip",
> +		.pm = &dw_hdmi_rockchip_pm,
>  		.of_match_table = dw_hdmi_rockchip_dt_ids,
>  	},
>  };

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
