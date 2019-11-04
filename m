Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D12EBEE53C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 17:54:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Kc04VThfl3k6cru8w8sJXauyTTBPgu9kLa1gTH6lvM=; b=DC+ugCcoa2MECi
	XDX2kg1TCykGs/E6SKt1PsBCCX51Vr/5q2MyIr+pr6VqvSrPe8TGYelJLXyHKgpslFdnn1GqNGG1z
	ZeQFNTXpxRuRALxAN3c+wXGyKcKClwdjaGy3siWrOS02bn4Ab84vsLvVfgrXlrjSmPvceUR1obxT4
	xptxdFrbQsmaig4pUHbD8IbmkZBPopHKSLJelDP48CZipGlYw25v0O8nXOkqr+JYd9Q4YgFb/LaKG
	XvKPmG5eOvbbUdRrtbzvKoJDCJlVIAgQRiksSLsTpm7IT29F7NBJFciHH5pDi8oOXtcvjNwKLhgMR
	kMoy5kiWu98oV21wXbsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRfcI-000622-IZ; Mon, 04 Nov 2019 16:54:10 +0000
Received: from mailoutvs57.siol.net ([185.57.226.248] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRfbw-0005tD-FX
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 16:53:51 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 82E51525510;
 Mon,  4 Nov 2019 17:53:45 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id h5r5Z-FvXCQO; Mon,  4 Nov 2019 17:53:44 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id DB135525512;
 Mon,  4 Nov 2019 17:53:44 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-86-58-102-7.static.triera.net
 [86.58.102.7]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Zimbra) with ESMTPA id 2F7425254D2;
 Mon,  4 Nov 2019 17:53:44 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 2/3] media: cedrus: Fix H264 4k support
Date: Mon, 04 Nov 2019 17:53:43 +0100
Message-ID: <3046190.od5LHOKkzS@jernej-laptop>
In-Reply-To: <20191104101319.GE502900@aptenodytes>
References: <20191026074959.1073512-1-jernej.skrabec@siol.net>
 <20191026074959.1073512-3-jernej.skrabec@siol.net>
 <20191104101319.GE502900@aptenodytes>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_085348_688093_0F97D939 
X-CRM114-Status: GOOD (  25.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.248 listed in list.dnswl.org]
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne ponedeljek, 04. november 2019 ob 11:13:19 CET je Paul Kocialkowski 
napisal(a):
> Hi,
> 
> On Sat 26 Oct 19, 09:49, Jernej Skrabec wrote:
> > H264 decoder needs additional or bigger buffers in order to decode 4k
> > videos.
> 
> Thanks for the fixup, we hadn't looked into those bits at all during initial
> bringup of H.264!
> 
> See a few minor comments below.
> 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  drivers/staging/media/sunxi/cedrus/cedrus.h   |  7 ++
> >  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 83 +++++++++++++++++--
> >  .../staging/media/sunxi/cedrus/cedrus_regs.h  | 11 +++
> >  3 files changed, 93 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h
> > b/drivers/staging/media/sunxi/cedrus/cedrus.h index
> > c45fb9a7ad07..96765555ab8a 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus.h
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
> > @@ -116,8 +116,15 @@ struct cedrus_ctx {
> > 
> >  			ssize_t		mv_col_buf_size;
> >  			void		*pic_info_buf;
> >  			dma_addr_t	pic_info_buf_dma;
> > 
> > +			ssize_t		pic_info_buf_size;
> > 
> >  			void		*neighbor_info_buf;
> >  			dma_addr_t	neighbor_info_buf_dma;
> > 
> > +			void		*deblk_buf;
> > +			dma_addr_t	deblk_buf_dma;
> > +			ssize_t		deblk_buf_size;
> > +			void		*intra_pred_buf;
> > +			dma_addr_t	intra_pred_buf_dma;
> > +			ssize_t		intra_pred_buf_size;
> > 
> >  		} h264;
> >  		struct {
> >  		
> >  			void		*mv_col_buf;
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c index
> > d2c854ecdf15..19962f4213d4 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > @@ -39,7 +39,6 @@ struct cedrus_h264_sram_ref_pic {
> > 
> >  #define CEDRUS_H264_FRAME_NUM		18
> >  
> >  #define CEDRUS_NEIGHBOR_INFO_BUF_SIZE	(16 * SZ_1K)
> > 
> > -#define CEDRUS_PIC_INFO_BUF_SIZE	(128 * SZ_1K)
> 
> Could we keep a define with the minimum size that you are using later
> (increased to 130 * SZ_1K)?

Sure.

> 
> >  static void cedrus_h264_write_sram(struct cedrus_dev *dev,
> >  
> >  				   enum cedrus_h264_sram_off off,
> > 
> > @@ -342,6 +341,20 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
> > 
> >  		     VE_H264_VLD_ADDR_FIRST | VE_H264_VLD_ADDR_VALID |
> >  		     VE_H264_VLD_ADDR_LAST);
> > 
> > +	if (ctx->src_fmt.width > 2048) {
> > +		cedrus_write(dev, VE_BUF_CTRL,
> > +			     VE_BUF_CTRL_INTRAPRED_MIXED_RAM |
> > +			     VE_BUF_CTRL_DBLK_MIXED_RAM);
> > +		cedrus_write(dev, VE_DBLK_DRAM_BUF_ADDR,
> > +			     ctx->codec.h264.deblk_buf_dma);
> > +		cedrus_write(dev, VE_INTRAPRED_DRAM_BUF_ADDR,
> > +			     ctx->codec.h264.intra_pred_buf_dma);
> > +	} else {
> > +		cedrus_write(dev, VE_BUF_CTRL,
> > +			     VE_BUF_CTRL_INTRAPRED_INT_SRAM |
> > +			     VE_BUF_CTRL_DBLK_INT_SRAM);
> > +	}
> > +
> > 
> >  	/*
> >  	
> >  	 * FIXME: Since the bitstream parsing is done in software, and
> >  	 * in userspace, this shouldn't be needed anymore. But it
> > 
> > @@ -502,18 +515,28 @@ static void cedrus_h264_setup(struct cedrus_ctx
> > *ctx,
> > 
> >  static int cedrus_h264_start(struct cedrus_ctx *ctx)
> >  {
> >  
> >  	struct cedrus_dev *dev = ctx->dev;
> > 
> > +	unsigned int pic_info_size;
> > 
> >  	unsigned int field_size;
> >  	unsigned int mv_col_size;
> >  	int ret;
> 
> Maybe add a comment here this is a half-magic sub-optimal formula?

Well, I'm not sure how much suboptimal formulas this and those below are. They 
are taken from CedarX source. I would imagine that they didn't waste too much 
memory. What kind of comment would be ok for you? "Formula taken from CedarX 
source"?

Best regards,
Jernej

> 
> > +	if (ctx->src_fmt.width > 2048)
> > +		pic_info_size = CEDRUS_H264_FRAME_NUM * 0x4000;
> > +	else
> > +		pic_info_size = CEDRUS_H264_FRAME_NUM * 0x1000;
> > +
> > 
> >  	/*
> > 
> > -	 * FIXME: It seems that the H6 cedarX code is using a formula
> > -	 * here based on the size of the frame, while all the older
> > -	 * code is using a fixed size, so that might need to be
> > -	 * changed at some point.
> > +	 * FIXME: If V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY is set,
> > +	 * there is no need to multiply by 2.
> > 
> >  	 */
> > 
> > +	pic_info_size += ctx->src_fmt.height * 2 * 64;
> > +
> > +	if (pic_info_size < 130 * SZ_1K)
> > +		pic_info_size = 130 * SZ_1K;
> 
> This is where I think we could have a "minimum pic info size" define.
> 
> > +
> > +	ctx->codec.h264.pic_info_buf_size = pic_info_size;
> > 
> >  	ctx->codec.h264.pic_info_buf =
> > 
> > -		dma_alloc_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
> > +		dma_alloc_coherent(dev->dev, ctx-
>codec.h264.pic_info_buf_size,
> > 
> >  				   &ctx-
>codec.h264.pic_info_buf_dma,
> >  				   GFP_KERNEL);
> >  	
> >  	if (!ctx->codec.h264.pic_info_buf)
> > 
> > @@ -566,15 +589,51 @@ static int cedrus_h264_start(struct cedrus_ctx *ctx)
> > 
> >  		goto err_neighbor_buf;
> >  	
> >  	}
> > 
> > +	if (ctx->src_fmt.width > 2048) {
> 
> Feel free to add a comment here to explain where the 12 below comes from if
> you have some idea, or that it's a somewhat magical value that generally
> works.
> > +		ctx->codec.h264.deblk_buf_size =
> > +			ALIGN(ctx->src_fmt.width, 32) * 12;
> > +		ctx->codec.h264.deblk_buf =
> > +			dma_alloc_coherent(dev->dev,
> > +					   ctx-
>codec.h264.deblk_buf_size,
> > +					   &ctx-
>codec.h264.deblk_buf_dma,
> > +					   GFP_KERNEL);
> > +		if (!ctx->codec.h264.deblk_buf) {
> > +			ret = -ENOMEM;
> > +			goto err_mv_col_buf;
> > +		}
> > +
> 
> Same here, a comment would be welcome about the 5 value below.
> 
> Cheers,
> 
> Paul
> 
> > +		ctx->codec.h264.intra_pred_buf_size =
> > +			ALIGN(ctx->src_fmt.width, 64) * 5;
> > +		ctx->codec.h264.intra_pred_buf =
> > +			dma_alloc_coherent(dev->dev,
> > +					   ctx-
>codec.h264.intra_pred_buf_size,
> > +					   &ctx-
>codec.h264.intra_pred_buf_dma,
> > +					   GFP_KERNEL);
> > +		if (!ctx->codec.h264.intra_pred_buf) {
> > +			ret = -ENOMEM;
> > +			goto err_deblk_buf;
> > +		}
> > +	}
> > +
> > 
> >  	return 0;
> > 
> > +err_deblk_buf:
> > +	dma_free_coherent(dev->dev, ctx->codec.h264.deblk_buf_size,
> > +			  ctx->codec.h264.deblk_buf,
> > +			  ctx->codec.h264.deblk_buf_dma);
> > +
> > +err_mv_col_buf:
> > +	dma_free_coherent(dev->dev, ctx->codec.h264.mv_col_buf_size,
> > +			  ctx->codec.h264.mv_col_buf,
> > +			  ctx->codec.h264.mv_col_buf_dma);
> > +
> > 
> >  err_neighbor_buf:
> >  	dma_free_coherent(dev->dev, CEDRUS_NEIGHBOR_INFO_BUF_SIZE,
> >  	
> >  			  ctx->codec.h264.neighbor_info_buf,
> >  			  ctx->codec.h264.neighbor_info_buf_dma);
> >  
> >  err_pic_buf:
> > -	dma_free_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
> > +	dma_free_coherent(dev->dev, ctx->codec.h264.pic_info_buf_size,
> > 
> >  			  ctx->codec.h264.pic_info_buf,
> >  			  ctx->codec.h264.pic_info_buf_dma);
> >  	
> >  	return ret;
> > 
> > @@ -590,9 +649,17 @@ static void cedrus_h264_stop(struct cedrus_ctx *ctx)
> > 
> >  	dma_free_coherent(dev->dev, CEDRUS_NEIGHBOR_INFO_BUF_SIZE,
> >  	
> >  			  ctx->codec.h264.neighbor_info_buf,
> >  			  ctx->codec.h264.neighbor_info_buf_dma);
> > 
> > -	dma_free_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
> > +	dma_free_coherent(dev->dev, ctx->codec.h264.pic_info_buf_size,
> > 
> >  			  ctx->codec.h264.pic_info_buf,
> >  			  ctx->codec.h264.pic_info_buf_dma);
> > 
> > +	if (ctx->codec.h264.deblk_buf_size)
> > +		dma_free_coherent(dev->dev, ctx-
>codec.h264.deblk_buf_size,
> > +				  ctx->codec.h264.deblk_buf,
> > +				  ctx->codec.h264.deblk_buf_dma);
> > +	if (ctx->codec.h264.intra_pred_buf_size)
> > +		dma_free_coherent(dev->dev, ctx-
>codec.h264.intra_pred_buf_size,
> > +				  ctx->codec.h264.intra_pred_buf,
> > +				  ctx-
>codec.h264.intra_pred_buf_dma);
> > 
> >  }
> >  
> >  static void cedrus_h264_trigger(struct cedrus_ctx *ctx)
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h index
> > ace3d49fcd82..7beb03d3bb39 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > @@ -46,6 +46,17 @@
> > 
> >  #define VE_MODE_DEC_H264			(0x01 << 0)
> >  #define VE_MODE_DEC_MPEG			(0x00 << 0)
> > 
> > +#define VE_BUF_CTRL				0x50
> > +
> > +#define VE_BUF_CTRL_INTRAPRED_EXT_RAM		(0x02 << 2)
> > +#define VE_BUF_CTRL_INTRAPRED_MIXED_RAM		(0x01 << 2)
> > +#define VE_BUF_CTRL_INTRAPRED_INT_SRAM		(0x00 << 2)
> > +#define VE_BUF_CTRL_DBLK_EXT_RAM		(0x02 << 0)
> > +#define VE_BUF_CTRL_DBLK_MIXED_RAM		(0x01 << 0)
> > +#define VE_BUF_CTRL_DBLK_INT_SRAM		(0x00 << 0)
> > +
> > +#define VE_DBLK_DRAM_BUF_ADDR			0x54
> > +#define VE_INTRAPRED_DRAM_BUF_ADDR		0x58
> > 
> >  #define VE_PRIMARY_CHROMA_BUF_LEN		0xc4
> >  #define VE_PRIMARY_FB_LINE_STRIDE		0xc8





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
