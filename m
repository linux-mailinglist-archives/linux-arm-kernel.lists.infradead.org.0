Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5281EF17A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 08:43:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQk7qlij+44ba90LWSzTs+ElSHx3QElEltHgHr9LRMk=; b=nwhhletTD7kVbO
	Thx2mMKgBuF56nT4g0QycrAGuOD8XVxI1u/PnMTX5GvKQRsRGftI79EPAF0rNqOSEX8hM6fY+7Z/B
	jaOAvGmlIuPhtIH8nFQnmPxRrO3abPdw2oz15CWe5zvnj44sl/mc07y4Haq/tjGWvYSUrWl5FSn6z
	WFiJ75wc/71eiVa9g5rGzTg0R4u1yUckhDGIiRtfCn6nUyae9UnZjPo+UtsV+HvMTjt6Mb/i02cK1
	MPXzzJBEMvAhizo5lfaWp6QhxWZu+A2xoJ3GB8PoZoO/4BY9pHQ9rSMeX3q0fcqOvHLHJEVMELdFw
	GI0Sa4LMb4qpjEXg9dnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh64c-0008EK-N4; Fri, 05 Jun 2020 06:43:26 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh64T-0008CY-Bv; Fri, 05 Jun 2020 06:43:19 +0000
X-UUID: 270ed4d3972f424ba1e79fd8e99c0695-20200604
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=82/gwfumID/oDEq9itix4sSuGV1n3vqDdEBL9hhAtBc=; 
 b=I9HwEpM9lUYZOY+EBsFEW0vlf7DotszroqJKLhMSAaCr4mGgcJ5HObZGqttRx+JnyTv4TtwWj2opZKrw/2dys62pZMiNfnAQv7BI5iFoU1Eg5emTQmYmQX2sCrieZ0j+B3bVo6tWIek2heBYc/s6heeVCFIAaLM1cTKvEWPkcMk=;
X-UUID: 270ed4d3972f424ba1e79fd8e99c0695-20200604
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 630909380; Thu, 04 Jun 2020 22:43:09 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 23:43:11 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Fri, 5 Jun 2020 14:43:06 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 5 Jun 2020 14:43:06 +0800
Message-ID: <1591339263.32607.0.camel@mhfsdcap03>
Subject: Re: [PATCH v8 07/14] media: platform: Use kernel native functions
 for improving code quality
From: Xia Jiang <xia.jiang@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 5 Jun 2020 14:41:03 +0800
In-Reply-To: <20200521154137.GG209565@chromium.org>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
 <20200403094033.8288-8-xia.jiang@mediatek.com>
 <20200521154137.GG209565@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: D73C96593E44FF63D98051F58AC859BAAECFB308B2E0EFAE3235D87A954605152000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_234317_417325_7C969520 
X-CRM114-Status: GOOD (  19.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: drinkcat@chromium.org, devicetree@vger.kernel.org, mojahsu@chromium.org,
 srv_heupstream@mediatek.com, Rick Chang <rick.chang@mediatek.com>,
 senozhatsky@chromium.org, linux-kernel@vger.kernel.org,
 maoguang.meng@mediatek.com, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 sj.huang@mediatek.com, Rob Herring <robh+dt@kernel.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 linux-mediatek@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-05-21 at 15:41 +0000, Tomasz Figa wrote:
> Hi Xia,
> 
> On Fri, Apr 03, 2020 at 05:40:26PM +0800, Xia Jiang wrote:
> 
> Thank you for the patch. Please see my comments inline.
> 
> nit: I'd remove "for improving code quality" from the subject, as it's
> obvious that we don't intend to make the code quality worse. ;)
> On the contrary, I'd make it more specific, e.g.
> 
> media: mtk-jpeg: Use generic rounding helpers
> 
> WDYT?
Done
> 
> > Use clamp() to replace mtk_jpeg_bound_align_image() and round() to
> > replace mtk_jpeg_align().
> > 
> > Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> > ---
> > v8: no changes
> > ---
> >  .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 41 +++++--------------
> >  .../media/platform/mtk-jpeg/mtk_jpeg_core.h   |  8 ++--
> >  drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.c |  8 ++--
> >  drivers/media/platform/mtk-jpeg/mtk_jpeg_hw.h |  5 ---
> >  4 files changed, 19 insertions(+), 43 deletions(-)
> > 
> > diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> > index 2fa3711fdc9b..4e64046a6854 100644
> > --- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> > +++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> > @@ -157,25 +157,6 @@ static struct mtk_jpeg_fmt *mtk_jpeg_find_format(struct mtk_jpeg_ctx *ctx,
> >  	return NULL;
> >  }
> >  
> > -static void mtk_jpeg_bound_align_image(u32 *w, unsigned int wmin,
> > -				       unsigned int wmax, unsigned int walign,
> > -				       u32 *h, unsigned int hmin,
> > -				       unsigned int hmax, unsigned int halign)
> > -{
> > -	int width, height, w_step, h_step;
> > -
> > -	width = *w;
> > -	height = *h;
> > -	w_step = 1 << walign;
> > -	h_step = 1 << halign;
> > -
> > -	v4l_bound_align_image(w, wmin, wmax, walign, h, hmin, hmax, halign, 0);
> > -	if (*w < width && (*w + w_step) <= wmax)
> > -		*w += w_step;
> > -	if (*h < height && (*h + h_step) <= hmax)
> > -		*h += h_step;
> > -}
> > -
> >  static void mtk_jpeg_adjust_fmt_mplane(struct mtk_jpeg_ctx *ctx,
> >  				       struct v4l2_format *f)
> >  {
> > @@ -218,25 +199,25 @@ static int mtk_jpeg_try_fmt_mplane(struct v4l2_format *f,
> >  	if (q_type == MTK_JPEG_FMT_TYPE_OUTPUT) {
> >  		struct v4l2_plane_pix_format *pfmt = &pix_mp->plane_fmt[0];
> >  
> > -		mtk_jpeg_bound_align_image(&pix_mp->width, MTK_JPEG_MIN_WIDTH,
> > -					   MTK_JPEG_MAX_WIDTH, 0,
> > -					   &pix_mp->height, MTK_JPEG_MIN_HEIGHT,
> > -					   MTK_JPEG_MAX_HEIGHT, 0);
> > +		pix_mp->height = clamp(pix_mp->height, MTK_JPEG_MIN_HEIGHT,
> > +				       MTK_JPEG_MAX_HEIGHT);
> > +		pix_mp->width = clamp(pix_mp->width, MTK_JPEG_MIN_WIDTH,
> > +				      MTK_JPEG_MAX_WIDTH);
> >  
> >  		memset(pfmt->reserved, 0, sizeof(pfmt->reserved));
> >  		pfmt->bytesperline = 0;
> >  		/* Source size must be aligned to 128 */
> > -		pfmt->sizeimage = mtk_jpeg_align(pfmt->sizeimage, 128);
> > +		pfmt->sizeimage = round_up(pfmt->sizeimage, 128);
> >  		if (pfmt->sizeimage == 0)
> >  			pfmt->sizeimage = MTK_JPEG_DEFAULT_SIZEIMAGE;
> >  		goto end;
> >  	}
> >  
> >  	/* type is MTK_JPEG_FMT_TYPE_CAPTURE */
> > -	mtk_jpeg_bound_align_image(&pix_mp->width, MTK_JPEG_MIN_WIDTH,
> > -				   MTK_JPEG_MAX_WIDTH, fmt->h_align,
> > -				   &pix_mp->height, MTK_JPEG_MIN_HEIGHT,
> > -				   MTK_JPEG_MAX_HEIGHT, fmt->v_align);
> > +	pix_mp->height = clamp(round_up(pix_mp->height, fmt->v_align),
> > +			       MTK_JPEG_MIN_HEIGHT, MTK_JPEG_MAX_HEIGHT);
> > +	pix_mp->width = clamp(round_up(pix_mp->width, fmt->h_align),
> > +			      MTK_JPEG_MIN_WIDTH, MTK_JPEG_MAX_WIDTH);
> >  
> >  	for (i = 0; i < fmt->colplanes; i++) {
> >  		struct v4l2_plane_pix_format *pfmt = &pix_mp->plane_fmt[i];
> > @@ -751,8 +732,8 @@ static void mtk_jpeg_set_dec_src(struct mtk_jpeg_ctx *ctx,
> >  {
> >  	bs->str_addr = vb2_dma_contig_plane_dma_addr(src_buf, 0);
> >  	bs->end_addr = bs->str_addr +
> > -			 mtk_jpeg_align(vb2_get_plane_payload(src_buf, 0), 16);
> > -	bs->size = mtk_jpeg_align(vb2_plane_size(src_buf, 0), 128);
> > +		       round_up(vb2_get_plane_payload(src_buf, 0), 16);
> > +	bs->size = round_up(vb2_plane_size(src_buf, 0), 128);
> >  }
> >  
> >  static int mtk_jpeg_set_dec_dst(struct mtk_jpeg_ctx *ctx,
> > diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
> > index 999bd1427809..28e9b30ad5c3 100644
> > --- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
> > +++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
> > @@ -21,10 +21,10 @@
> >  #define MTK_JPEG_FMT_TYPE_OUTPUT	1
> >  #define MTK_JPEG_FMT_TYPE_CAPTURE	2
> >  
> > -#define MTK_JPEG_MIN_WIDTH	32
> > -#define MTK_JPEG_MIN_HEIGHT	32
> > -#define MTK_JPEG_MAX_WIDTH	8192
> > -#define MTK_JPEG_MAX_HEIGHT	8192
> > +#define MTK_JPEG_MIN_WIDTH	32U
> > +#define MTK_JPEG_MIN_HEIGHT	32U
> > +#define MTK_JPEG_MAX_WIDTH	8192U
> > +#define MTK_JPEG_MAX_HEIGHT	8192U
> 
> This change is not mentioned in the commit message. It should go to a
> separate patch, possibly merged with other really minor stylistic changes
> like this, e.g. patch 08/14.
Done
> 
> Otherwise the patch looks good, so after addressing the above minor changes
> please feel free to add
> 
> Reviewed-by: Tomasz Figa <tfiga@chromium.org>
> 
> Best regards,
> Tomasz
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
