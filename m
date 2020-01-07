Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C14B8132CAC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 18:11:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2CzATVhATEIH7Ugn+gUDptLRnKG4uKwX5mHbkH13o6g=; b=D+eGCfe3Ij6bhy
	xMBSo5U3Sr3u8aNjl2XWqD9ICsTXsxUhjQeTVfP11CgqvSw9qXzrN4J4+UwMUq/Z2F37M2/7JjCmU
	v1Y+TIQkAvt+Wd7zr9/L7NHrLjvM9g7DzC7O32WNnOLVlHHd4+RufkqtEnBlnCYTcS9i6TyFOplOw
	EBZqKyfFKpRySHNpUL+TZRBGHIxObfdxNzudCBuN5fkOvHXKSWhmvk6ldtx3ZWun0M/U75klVB8ya
	o3HKg0W7Jf2coNRkSKHf4wlvhNyedYJZYlk6nzX/MgqOYTNjPZ4ZQMgMbPLf11fzPFfAleCoAwMqB
	QK8ZGKaFQmk6ntHR9EbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iosNk-0000gp-Bi; Tue, 07 Jan 2020 17:11:04 +0000
Received: from mailoutvs40.siol.net ([185.57.226.231] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iosNb-0000fm-Hf
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 17:10:57 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id BFDFE5230E8;
 Tue,  7 Jan 2020 18:10:44 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id c4f-rLiq8ZIz; Tue,  7 Jan 2020 18:10:44 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 1CC93522F8A;
 Tue,  7 Jan 2020 18:10:44 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id BE7DE522FC5;
 Tue,  7 Jan 2020 18:10:42 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: mchehab@kernel.org, mripard@kernel.org, paul.kocialkowski@bootlin.com,
 Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v2 2/4] media: cedrus: hevc: Add support for scaling matrix
Date: Tue, 07 Jan 2020 18:10:42 +0100
Message-ID: <2627039.Y6S9NjorxK@jernej-laptop>
In-Reply-To: <4ac91ed5-a220-6a04-b1da-de27a306f8f2@xs4all.nl>
References: <20191213160428.54303-1-jernej.skrabec@siol.net>
 <20191213160428.54303-3-jernej.skrabec@siol.net>
 <4ac91ed5-a220-6a04-b1da-de27a306f8f2@xs4all.nl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_091055_899499_6B51CF4C 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Dne torek, 07. januar 2020 ob 16:01:16 CET je Hans Verkuil napisal(a):
> On 12/13/19 5:04 PM, Jernej Skrabec wrote:
> > HEVC frames may use scaling list feature. Add support for it.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  drivers/staging/media/sunxi/cedrus/cedrus.c   |  7 ++
> >  drivers/staging/media/sunxi/cedrus/cedrus.h   |  1 +
> >  .../staging/media/sunxi/cedrus/cedrus_dec.c   |  2 +
> >  .../staging/media/sunxi/cedrus/cedrus_h265.c  | 70 ++++++++++++++++++-
> >  .../staging/media/sunxi/cedrus/cedrus_regs.h  |  2 +
> >  5 files changed, 81 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus.c index
> > c6ddd46eff82..bf68bc6b20c8 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
> > @@ -116,6 +116,13 @@ static const struct cedrus_control cedrus_controls[]
> > = {> 
> >  		.codec		= CEDRUS_CODEC_H265,
> >  		.required	= true,
> >  	
> >  	},
> > 
> > +	{
> > +		.cfg = {
> > +			.id	= 
V4L2_CID_MPEG_VIDEO_HEVC_SCALING_MATRIX,
> > +		},
> > +		.codec		= CEDRUS_CODEC_H265,
> > +		.required	= true,
> 
> Should this be true? This means that existing applications are now
> suddenly required to always pass the scaling matrix for every buffer.
> 
> Especially since the commit log says: 'HEVC frames *may* use scaling list
> feature', indicating that this is an optional feature.

True. Can you fix this when applying if this is the only issue?

Best regards,
Jernej

> 
> Regards,
> 
> 	Hans
> 
> > +	},
> > 
> >  	{
> >  	
> >  		.cfg = {
> >  		
> >  			.id	= 
V4L2_CID_MPEG_VIDEO_HEVC_DECODE_MODE,
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h
> > b/drivers/staging/media/sunxi/cedrus/cedrus.h index
> > 96765555ab8a..d945f4f0ff2d 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus.h
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
> > @@ -73,6 +73,7 @@ struct cedrus_h265_run {
> > 
> >  	const struct v4l2_ctrl_hevc_sps			*sps;
> >  	const struct v4l2_ctrl_hevc_pps			*pps;
> >  	const struct v4l2_ctrl_hevc_slice_params	*slice_params;
> > 
> > +	const struct v4l2_ctrl_hevc_scaling_matrix	
*scaling_matrix;
> > 
> >  };
> >  
> >  struct cedrus_run {
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c index
> > 4a2fc33a1d79..327ed6c264dc 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > @@ -66,6 +66,8 @@ void cedrus_device_run(void *priv)
> > 
> >  			V4L2_CID_MPEG_VIDEO_HEVC_PPS);
> >  		
> >  		run.h265.slice_params = cedrus_find_control_data(ctx,
> >  		
> >  			V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS);
> > 
> > +		run.h265.scaling_matrix = cedrus_find_control_data(ctx,
> > +			V4L2_CID_MPEG_VIDEO_HEVC_SCALING_MATRIX);
> > 
> >  		break;
> >  	
> >  	default:
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c index
> > 6945dc74e1d7..888bfd5ca224 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> > @@ -220,6 +220,69 @@ static void cedrus_h265_pred_weight_write(struct
> > cedrus_dev *dev,> 
> >  	}
> >  
> >  }
> > 
> > +static void cedrus_h265_write_scaling_list(struct cedrus_ctx *ctx,
> > +					   struct cedrus_run 
*run)
> > +{
> > +	const struct v4l2_ctrl_hevc_scaling_matrix *scaling;
> > +	struct cedrus_dev *dev = ctx->dev;
> > +	u32 i, j, k, val;
> > +
> > +	scaling = run->h265.scaling_matrix;
> > +
> > +	cedrus_write(dev, VE_DEC_H265_SCALING_LIST_DC_COEF0,
> > +		     (scaling->scaling_list_dc_coef_32x32[1] << 24) |
> > +		     (scaling->scaling_list_dc_coef_32x32[0] << 16) |
> > +		     (scaling->scaling_list_dc_coef_16x16[1] << 8) |
> > +		     (scaling->scaling_list_dc_coef_16x16[0] << 0));
> > +
> > +	cedrus_write(dev, VE_DEC_H265_SCALING_LIST_DC_COEF1,
> > +		     (scaling->scaling_list_dc_coef_16x16[5] << 24) |
> > +		     (scaling->scaling_list_dc_coef_16x16[4] << 16) |
> > +		     (scaling->scaling_list_dc_coef_16x16[3] << 8) |
> > +		     (scaling->scaling_list_dc_coef_16x16[2] << 0));
> > +
> > +	cedrus_h265_sram_write_offset(dev,
> > VE_DEC_H265_SRAM_OFFSET_SCALING_LISTS); +
> > +	for (i = 0; i < 6; i++)
> > +		for (j = 0; j < 8; j++)
> > +			for (k = 0; k < 8; k += 4) {
> > +				val = ((u32)scaling-
>scaling_list_8x8[i][j + (k + 3) * 8] << 24) |
> > +				      ((u32)scaling-
>scaling_list_8x8[i][j + (k + 2) * 8] << 16) |
> > +				      ((u32)scaling-
>scaling_list_8x8[i][j + (k + 1) * 8] << 8) |
> > +				      scaling-
>scaling_list_8x8[i][j + k * 8];
> > +				cedrus_write(dev, 
VE_DEC_H265_SRAM_DATA, val);
> > +			}
> > +
> > +	for (i = 0; i < 2; i++)
> > +		for (j = 0; j < 8; j++)
> > +			for (k = 0; k < 8; k += 4) {
> > +				val = ((u32)scaling-
>scaling_list_32x32[i][j + (k + 3) * 8] << 24) |
> > +				      ((u32)scaling-
>scaling_list_32x32[i][j + (k + 2) * 8] << 16) |
> > +				      ((u32)scaling-
>scaling_list_32x32[i][j + (k + 1) * 8] << 8) |
> > +				      scaling-
>scaling_list_32x32[i][j + k * 8];
> > +				cedrus_write(dev, 
VE_DEC_H265_SRAM_DATA, val);
> > +			}
> > +
> > +	for (i = 0; i < 6; i++)
> > +		for (j = 0; j < 8; j++)
> > +			for (k = 0; k < 8; k += 4) {
> > +				val = ((u32)scaling-
>scaling_list_16x16[i][j + (k + 3) * 8] << 24) |
> > +				      ((u32)scaling-
>scaling_list_16x16[i][j + (k + 2) * 8] << 16) |
> > +				      ((u32)scaling-
>scaling_list_16x16[i][j + (k + 1) * 8] << 8) |
> > +				      scaling-
>scaling_list_16x16[i][j + k * 8];
> > +				cedrus_write(dev, 
VE_DEC_H265_SRAM_DATA, val);
> > +			}
> > +
> > +	for (i = 0; i < 6; i++)
> > +		for (j = 0; j < 4; j++) {
> > +			val = ((u32)scaling->scaling_list_4x4[i][j + 
12] << 24) |
> > +			      ((u32)scaling->scaling_list_4x4[i][j + 
8] << 16) |
> > +			      ((u32)scaling->scaling_list_4x4[i][j + 
4] << 8) |
> > +			      scaling->scaling_list_4x4[i][j];
> > +			cedrus_write(dev, VE_DEC_H265_SRAM_DATA, 
val);
> > +		}
> > +}
> > +
> > 
> >  static void cedrus_h265_setup(struct cedrus_ctx *ctx,
> >  
> >  			      struct cedrus_run *run)
> >  
> >  {
> > 
> > @@ -499,7 +562,12 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
> > 
> >  	/* Scaling list. */
> > 
> > -	reg = VE_DEC_H265_SCALING_LIST_CTRL0_DEFAULT;
> > +	if (sps->flags & V4L2_HEVC_SPS_FLAG_SCALING_LIST_ENABLED) {
> > +		cedrus_h265_write_scaling_list(ctx, run);
> > +		reg = VE_DEC_H265_SCALING_LIST_CTRL0_FLAG_ENABLED;
> > +	} else {
> > +		reg = VE_DEC_H265_SCALING_LIST_CTRL0_DEFAULT;
> > +	}
> > 
> >  	cedrus_write(dev, VE_DEC_H265_SCALING_LIST_CTRL0, reg);
> >  	
> >  	/* Neightbor information address. */
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h index
> > 7beb03d3bb39..0d9449fe2b28 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > @@ -492,6 +492,8 @@
> > 
> >  #define VE_DEC_H265_ENTRY_POINT_OFFSET_ADDR	(VE_ENGINE_DEC_H265 + 
0x64)
> >  #define VE_DEC_H265_TILE_START_CTB		(VE_ENGINE_DEC_H265 + 
0x68)
> >  #define VE_DEC_H265_TILE_END_CTB		(VE_ENGINE_DEC_H265 + 
0x6c)
> > 
> > +#define VE_DEC_H265_SCALING_LIST_DC_COEF0	(VE_ENGINE_DEC_H265 + 
0x78)
> > +#define VE_DEC_H265_SCALING_LIST_DC_COEF1	(VE_ENGINE_DEC_H265 + 
0x7c)
> > 
> >  #define VE_DEC_H265_LOW_ADDR			(VE_ENGINE_DEC_H265 + 
0x80)





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
