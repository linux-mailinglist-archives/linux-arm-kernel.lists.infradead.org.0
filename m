Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BDB1CA1F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 06:19:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+a2CmTVkVs+QgDV07JzTfaOm0y05Uf7opDPIax68Yw=; b=FGIV/ShYqyvT88
	dw3CnYNarw9Jx2TBLo2plcSrb+D66sPcfQwKD51AtpimLEbRqOtfvOoPCqYm7OcecUAmmqezSLWtA
	FEvZxsX/D7tlUHRpE2D/ATygM7PvqknPurx5U+9YTZC+rmVfxYl9XMhPvVCB1dyB/LNbSL3kxt8jg
	sAKPCmQBHElA9OyRS0BixjH4OFv+C/2KdKoPWSyNRaJFE9kVNDuiD0Kux49QYxu78y5leF1F1/LrR
	P74VA5q8JHlu9b02u5A9suFu2uwy0U63aVJpA7Vp1QW3kZPnRBb3gk+fEvPw5FSlDUqING5EkZo3m
	ToN/J5M1yk78iC4cljZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWuTd-00020b-Bx; Fri, 08 May 2020 04:19:09 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWuTW-0001zy-SH; Fri, 08 May 2020 04:19:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id B110A2A2D84
Message-ID: <d765f2ef6da5db7927d3718ceb43ab66f18686d3.camel@collabora.com>
Subject: Re: [PATCH v3 3/4] media: rockchip: rga: Introduce color fmt macros
 and refactor CSC mode logic
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Fri, 08 May 2020 01:18:49 -0300
In-Reply-To: <20200430164245.1630174-4-paul.kocialkowski@bootlin.com>
References: <20200430164245.1630174-1-paul.kocialkowski@bootlin.com>
 <20200430164245.1630174-4-paul.kocialkowski@bootlin.com>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_211903_045756_47AF9665 
X-CRM114-Status: GOOD (  14.47  )
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
Cc: Hans Verkuil <hansverk@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-04-30 at 18:42 +0200, Paul Kocialkowski wrote:
> This introduces two macros: RGA_COLOR_FMT_IS_YUV and RGA_COLOR_FMT_IS_RGB
> which allow quick checking of the colorspace familily of a RGA color format.
> 
> These macros are then used to refactor the logic for CSC mode selection.
> The two nested tests for input colorspace are simplified into a single one,
> with a logical and, making the whole more readable.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>

Thanks a lot for the nice cleanup.

> ---
>  drivers/media/platform/rockchip/rga/rga-hw.c | 23 +++++++++-----------
>  drivers/media/platform/rockchip/rga/rga-hw.h |  5 +++++
>  2 files changed, 15 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media/platform/rockchip/rga/rga-hw.c
> index 4be6dcf292ff..5607ee8d1917 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -200,22 +200,19 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
>  	dst_info.data.format = ctx->out.fmt->hw_format;
>  	dst_info.data.swap = ctx->out.fmt->color_swap;
>  
> -	if (ctx->in.fmt->hw_format >= RGA_COLOR_FMT_YUV422SP) {
> -		if (ctx->out.fmt->hw_format < RGA_COLOR_FMT_YUV422SP) {
> -			switch (ctx->in.colorspace) {
> -			case V4L2_COLORSPACE_REC709:
> -				src_info.data.csc_mode =
> -					RGA_SRC_CSC_MODE_BT709_R0;
> -				break;
> -			default:
> -				src_info.data.csc_mode =
> -					RGA_SRC_CSC_MODE_BT601_R0;
> -				break;
> -			}
> +	if (RGA_COLOR_FMT_IS_YUV(ctx->in.fmt->hw_format) &&
> +	    RGA_COLOR_FMT_IS_RGB(ctx->out.fmt->hw_format)) {
> +		switch (ctx->in.colorspace) {
> +		case V4L2_COLORSPACE_REC709:
> +			src_info.data.csc_mode = RGA_SRC_CSC_MODE_BT709_R0;
> +			break;
> +		default:
> +			src_info.data.csc_mode = RGA_SRC_CSC_MODE_BT601_R0;
> +			break;
>  		}
>  	}
>  
> -	if (ctx->out.fmt->hw_format >= RGA_COLOR_FMT_YUV422SP) {
> +	if (RGA_COLOR_FMT_IS_YUV(ctx->out.fmt->hw_format)) {
>  		switch (ctx->out.colorspace) {
>  		case V4L2_COLORSPACE_REC709:
>  			dst_info.data.csc_mode = RGA_SRC_CSC_MODE_BT709_R0;
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.h b/drivers/media/platform/rockchip/rga/rga-hw.h
> index 96cb0314dfa7..e8917e5630a4 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.h
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.h
> @@ -95,6 +95,11 @@
>  #define RGA_COLOR_FMT_CP_8BPP 15
>  #define RGA_COLOR_FMT_MASK 15
>  
> +#define RGA_COLOR_FMT_IS_YUV(fmt) \
> +	(((fmt) >= RGA_COLOR_FMT_YUV422SP) && ((fmt) < RGA_COLOR_FMT_CP_1BPP))
> +#define RGA_COLOR_FMT_IS_RGB(fmt) \
> +	((fmt) < RGA_COLOR_FMT_YUV422SP)
> +
>  #define RGA_COLOR_NONE_SWAP 0
>  #define RGA_COLOR_RB_SWAP 1
>  #define RGA_COLOR_ALPHA_SWAP 2



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
