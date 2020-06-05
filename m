Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B35071EF182
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 08:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lmuFMynGFUOiIpj4Xno7uRXGBmlxCBArnI7pLzCfAIU=; b=Xd9A8A0k3jsYHc
	r2dBMSUhRkwmKaJ7nfulrnGpgcTW8K7fpUxgTSweALbrZtnE2Cyy9kdPMS0/D56uRG5YsQF7IPg3g
	+K4ly+lAN9GLkTM5Z5SeSu4sa/YbvZYoxfUlTDcv79iRpl0STvQ4KckxixZRTp5EksSfmEOoqwa/F
	yQndFnWsqhmap/R5zYI8tFnRLz9GAi9mcTs9JWkZliHqZX42eTJ7TyCZQr8XNLmmONtfCkOFYkDWl
	1uOXkXtmjNQOO60QyBXqHVVBUtayrccBCLWVraN87kv4vrqlUmdmDJ0HKgtpqP3u0mc+e2lSVMhpn
	L6b/0pnM82qQRMv+doBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh655-00009H-HA; Fri, 05 Jun 2020 06:43:55 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh64w-00007F-9N; Fri, 05 Jun 2020 06:43:47 +0000
X-UUID: 58a2492d38314057a94c8d403180adbc-20200604
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=2NIYixWsd8OlqvdqL7k42R4lVtIiWeWmPEs4+j5aw84=; 
 b=scrmkA2Q1gMCLG7mO0qBnWOnetWhjs8WDqtJEw6LFgvy1UozYo+AzuZ0LIxN1EewXI+KKMfWxGT7uq0rVt8zZHbH6Su+V+9hxNZycBMFjDmJmbHkJpCMWeMbvJXam9SRxdmOLi5DDQItZKtZvKodhH5n1kYuL9WPH11O+z6Q8KI=;
X-UUID: 58a2492d38314057a94c8d403180adbc-20200604
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 104031713; Thu, 04 Jun 2020 22:43:38 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 23:43:39 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Fri, 5 Jun 2020 14:43:37 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 5 Jun 2020 14:43:35 +0800
Message-ID: <1591339293.32607.1.camel@mhfsdcap03>
Subject: Re: [PATCH v8 10/14] media: platform: Delete redundant code for
 improving code quality
From: Xia Jiang <xia.jiang@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 5 Jun 2020 14:41:33 +0800
In-Reply-To: <20200521154958.GI209565@chromium.org>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
 <20200403094033.8288-11-xia.jiang@mediatek.com>
 <20200521154958.GI209565@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: F245DA40095EEB20DE8BBC128389585E3910708CD5A9103CE40F6172721A704B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_234346_333573_FB98BCAD 
X-CRM114-Status: GOOD (  19.89  )
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

On Thu, 2020-05-21 at 15:49 +0000, Tomasz Figa wrote:
> Hi Xia,
> 
> On Fri, Apr 03, 2020 at 05:40:29PM +0800, Xia Jiang wrote:
> > Delete unused member variables annotation.
> > Delete unused variable definition.
> > Delete redundant log print, because V4L2 debug logs already print it.
> > 
> > Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> > ---
> > v8: no changes
> > ---
> >  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 16 ++--------------
> >  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h |  5 +++--
> >  2 files changed, 5 insertions(+), 16 deletions(-)
> > 
> 
> Thank you for the patch. Please see my comments inline.
> 
> > diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> > index 4e64046a6854..9e59b9a51ef0 100644
> > --- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> > +++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> > @@ -182,7 +182,6 @@ static int mtk_jpeg_try_fmt_mplane(struct v4l2_format *f,
> >  				   struct mtk_jpeg_ctx *ctx, int q_type)
> >  {
> >  	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
> > -	struct mtk_jpeg_dev *jpeg = ctx->jpeg;
> >  	int i;
> >  
> >  	memset(pix_mp->reserved, 0, sizeof(pix_mp->reserved));
> > @@ -190,7 +189,7 @@ static int mtk_jpeg_try_fmt_mplane(struct v4l2_format *f,
> >  
> >  	if (ctx->state != MTK_JPEG_INIT) {
> >  		mtk_jpeg_adjust_fmt_mplane(ctx, f);
> > -		goto end;
> > +		return 0;
> >  	}
> >  
> >  	pix_mp->num_planes = fmt->colplanes;
> > @@ -210,7 +209,7 @@ static int mtk_jpeg_try_fmt_mplane(struct v4l2_format *f,
> >  		pfmt->sizeimage = round_up(pfmt->sizeimage, 128);
> >  		if (pfmt->sizeimage == 0)
> >  			pfmt->sizeimage = MTK_JPEG_DEFAULT_SIZEIMAGE;
> > -		goto end;
> > +		return 0;
> >  	}
> >  
> >  	/* type is MTK_JPEG_FMT_TYPE_CAPTURE */
> > @@ -224,20 +223,9 @@ static int mtk_jpeg_try_fmt_mplane(struct v4l2_format *f,
> >  		u32 stride = pix_mp->width * fmt->h_sample[i] / 4;
> >  		u32 h = pix_mp->height * fmt->v_sample[i] / 4;
> >  
> > -		memset(pfmt->reserved, 0, sizeof(pfmt->reserved));
> 
> This change is not mentioned in the description. I'd suggest moving it
> to a separate patch, because it's a functional change.
> 
> >  		pfmt->bytesperline = stride;
> >  		pfmt->sizeimage = stride * h;
> >  	}
> > -end:
> > -	v4l2_dbg(2, debug, &jpeg->v4l2_dev, "wxh:%ux%u\n",
> > -		 pix_mp->width, pix_mp->height);
> > -	for (i = 0; i < pix_mp->num_planes; i++) {
> > -		v4l2_dbg(2, debug, &jpeg->v4l2_dev,
> > -			 "plane[%d] bpl=%u, size=%u\n",
> > -			 i,
> > -			 pix_mp->plane_fmt[i].bytesperline,
> > -			 pix_mp->plane_fmt[i].sizeimage);
> > -	}
> >  	return 0;
> >  }
> >  
> > diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
> > index 64a731261214..9bbd615b1067 100644
> > --- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
> > +++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
> > @@ -30,6 +30,9 @@
> >  
> >  #define MTK_JPEG_DEFAULT_SIZEIMAGE	(1 * 1024 * 1024)
> >  
> > +/**
> > + * enum mtk_jpeg_ctx_state - contex state of jpeg
> 
> typo: s/contex/context/
> 
> But I'd rephrase it to "states of the context state machine".
> 
> > + */
> 
> Not mentioned in the description. Also, the documentation of an enum
> should have descriptions for the values.
Done.
> 
> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
