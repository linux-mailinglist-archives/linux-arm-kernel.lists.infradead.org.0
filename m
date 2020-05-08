Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 737C11CA1FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 06:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xTcgNX6lZSQHPreZXc5lACHrCtgiVWu/6Yabk5UN7Jo=; b=o5nEp5MX9t4dkb
	bc0rP//lyGKTeQZy3a988jgJTeRBCTD+2UHNaTb0x6EEXCvbRHSrsx3U+EBeFPqSa1y1tOPGjep6J
	xlAaIu0z3coRd7JKvezqZcN9m7ek1WbUFnh2Msw++v47CZHmHkdNc4nitOggj1qj7CiYR7LvFvev2
	zTxyrBhDAsj0kE425s0tSPat7VHMiSjPRbYMQKV+lTSrLxULGiRxl95cEDBppJ6Fj0/HxXdnCSTIL
	RkRAJv0FEjipudq0yc9kb2fxiYn0mTHAmC/c8IKSpPYP7l6rvUWcQLAo/Q+DAFKJLeYBi6qMh6BuZ
	7SR3zoZXP+++kN9gZ9UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWuU7-0002JH-LR; Fri, 08 May 2020 04:19:39 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWuTy-0002Im-1J; Fri, 08 May 2020 04:19:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 936272A2D84
Message-ID: <96c35183ad7cde60afb8617e334b060e718ee532.camel@collabora.com>
Subject: Re: [PATCH v3 4/4] media: rockchip: rga: Only set output CSC mode
 for RGB input
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Fri, 08 May 2020 01:19:17 -0300
In-Reply-To: <20200430164245.1630174-5-paul.kocialkowski@bootlin.com>
References: <20200430164245.1630174-1-paul.kocialkowski@bootlin.com>
 <20200430164245.1630174-5-paul.kocialkowski@bootlin.com>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_211930_206081_B4B81749 
X-CRM114-Status: GOOD (  16.35  )
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
> Setting the output CSC mode is required for a YUV output, but must not
> be set when the input is also YUV. Doing this (as tested with a YUV420P
> to YUV420P conversion) results in wrong colors.
> 
> Adapt the logic to only set the output CSC mode when the output is YUV and
> the input is RGB. Also add a comment to clarify the rationale.
> 
> Fixes: f7e7b48e6d79 ("[media] rockchip/rga: v4l2 m2m support")
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>

Thanks!

> ---
>  drivers/media/platform/rockchip/rga/rga-hw.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media/platform/rockchip/rga/rga-hw.c
> index 5607ee8d1917..aaa96f256356 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -200,6 +200,11 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
>  	dst_info.data.format = ctx->out.fmt->hw_format;
>  	dst_info.data.swap = ctx->out.fmt->color_swap;
>  
> +	/*
> +	 * CSC mode must only be set when the colorspace families differ between
> +	 * input and output. It must remain unset (zeroed) if both are the same.
> +	 */
> +
>  	if (RGA_COLOR_FMT_IS_YUV(ctx->in.fmt->hw_format) &&
>  	    RGA_COLOR_FMT_IS_RGB(ctx->out.fmt->hw_format)) {
>  		switch (ctx->in.colorspace) {
> @@ -212,7 +217,8 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
>  		}
>  	}
>  
> -	if (RGA_COLOR_FMT_IS_YUV(ctx->out.fmt->hw_format)) {
> +	if (RGA_COLOR_FMT_IS_RGB(ctx->in.fmt->hw_format) &&
> +	    RGA_COLOR_FMT_IS_YUV(ctx->out.fmt->hw_format)) {
>  		switch (ctx->out.colorspace) {
>  		case V4L2_COLORSPACE_REC709:
>  			dst_info.data.csc_mode = RGA_SRC_CSC_MODE_BT709_R0;



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
