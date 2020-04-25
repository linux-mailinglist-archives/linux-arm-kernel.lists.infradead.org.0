Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8FA1B86DF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 15:47:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fy1xPONeETNsbMDsyCH3xrj+wDt9s1fxH5n3/7JuPck=; b=sgnPq9XhdtnMey
	En6ifIfXiAIVe+lG2gXm0j7n/nhs6UF5m6MPe6fnc0u53YuqmUFOLVGOFe05QT4CyEnO0avYbLp/h
	4Pa5avlgElhd5hqDJ5YgcTyGwGyOoY4FX7IBXuovZ5Z/AIK9zP2aQ+fbfUWfpXorp/kIgohbOT6Lg
	gVawa/B2ajiAsiOW1M6a0C8+FjaplM5GGQyw+RJP5KfQVgikPiMw2PcjLbBke8ovgx/XQKGReGeWu
	8GBIz5i+6DyDE9JbUFXO2JKvxwn0wwFPZV9Xy9g7qsNDE41tzdljaceSmEEG4ChIOXqqk12OkxuuD
	M9DLZaZm1urJ4yYK4Tjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSL9D-0008FE-OI; Sat, 25 Apr 2020 13:47:11 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSL97-0008Dx-H7; Sat, 25 Apr 2020 13:47:07 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 6EA352A227C
Message-ID: <c49a060e7f5da9564e375fdd47117d3f901e5d00.camel@collabora.com>
Subject: Re: [PATCH v2 4/4] media: rockchip: rga: Only set output CSC mode
 for RGB input
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Sat, 25 Apr 2020 10:46:47 -0300
In-Reply-To: <20200423200937.1039257-5-paul.kocialkowski@bootlin.com>
References: <20200423200937.1039257-1-paul.kocialkowski@bootlin.com>
 <20200423200937.1039257-5-paul.kocialkowski@bootlin.com>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_064705_701596_9B734C42 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: justin.swartz@risingedge.co.za, Heiko Stuebner <heiko@sntech.de>,
 Hans Verkuil <hansverk@cisco.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Johan Jonker <jbx6244@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paul,

Thanks a lot for the patch.

I haven't had the chance to test this,
but I'd say you are fixing a long time issue here.

I really appreciate that.

On Thu, 2020-04-23 at 22:09 +0200, Paul Kocialkowski wrote:
> Setting the output CSC mode is required for a YUV output, but must not
> be set when the input is also YUV. Doing this (as tested with a YUV420P
> to YUV420P conversion) results in wrong colors.
> 
> Adapt the logic to only set the CSC mode when the output is YUV and the
> input is RGB.
> 
> Fixes: f7e7b48e6d79 ("[media] rockchip/rga: v4l2 m2m support")
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  drivers/media/platform/rockchip/rga/rga-hw.c | 18 +++++++++++-------
>  1 file changed, 11 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media/platform/rockchip/rga/rga-hw.c
> index 4be6dcf292ff..cbffcf986ccf 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -216,13 +216,17 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
>  	}
>  
>  	if (ctx->out.fmt->hw_format >= RGA_COLOR_FMT_YUV422SP) {

Since we are already here touching this code, would you mind
adding another patch, to do some cleaning first?

First, replace the nested ifs with a boolean operator.
Then, introduce some IS_YUV (or IS_RGB) macro, making the above test
more like IS_YUV(out_hw_format).

Finally, perhaps a comment along the lines of your commit message:

"""
Setting the output CSC mode is required for a YUV output,
but must not be set when the input is also YUV.
"""

Details up to you :-)

After the clean-up patch, which would be just cosmetics,
your fix should be cleaner and more clear.

Thanks,
Ezequiel
 
> -		switch (ctx->out.colorspace) {
> -		case V4L2_COLORSPACE_REC709:
> -			dst_info.data.csc_mode = RGA_SRC_CSC_MODE_BT709_R0;
> -			break;
> -		default:
> -			dst_info.data.csc_mode = RGA_DST_CSC_MODE_BT601_R0;
> -			break;
> +		if (ctx->in.fmt->hw_format < RGA_COLOR_FMT_YUV422SP) {
> +			switch (ctx->out.colorspace) {
> +			case V4L2_COLORSPACE_REC709:
> +				dst_info.data.csc_mode =
> +					RGA_SRC_CSC_MODE_BT709_R0;
> +				break;
> +			default:
> +				dst_info.data.csc_mode =
> +					RGA_DST_CSC_MODE_BT601_R0;
> +				break;
> +			}
>  		}
>  	}
>  



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
