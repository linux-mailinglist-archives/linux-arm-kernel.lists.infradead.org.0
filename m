Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB711F0546
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 07:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNAHGTIzHFDyFqmMwoCAvv0K4I4K0Tra2m8scfl9kJg=; b=ic7v+RRJv+sXzC
	na0FsKsesreLopvZOnlftcgJfUqnrNS5+kGV7Nl/faGaRVH2tgv6shiyKZ9gCQ7roh4GvyHv6wfUK
	njRMrT9XfwTMv9Tb+x+G5juuHlNyEY4vUjDvKDeXjFFxitHYPYyFnMZjQDUt/Kv6hE7ZH+XpH+zdB
	EMoLvP8lhTN6XIB7o+AMLjff3tErz0jm7x8NmhBrR3YI/PGY40M5KvTJIuPno+S32HQZf4Tf6ThGI
	BA8L3bP/tISGoeQAfvoSrMPclfvhAmrLAGxxWICEsgB+h08bgQJvBV3X3BNLd3lRu4S4XaMYEHC6F
	VdSCLO2lkylNCy5/SMhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhRZC-0004Wp-0v; Sat, 06 Jun 2020 05:40:26 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhRZ6-0004WI-3a
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jun 2020 05:40:21 +0000
Received: by mail-ed1-x542.google.com with SMTP id c35so9095108edf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 22:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wMJkhQnWLIK0t2nhWF/2eUs4TMDM1FwvFYEyzsHbS2k=;
 b=oT9c+V5GfGutAJ8014uEjd++MW4JDywDazRZT9HiOfz/byK/B3E3HwW/7Be+dS9xhx
 JF48qTS+1CbxoUufXNEWn/DXWjQmAf0GrTQg9cHMlSeQLe7TeKhvk8BGD7XFv54oVEMq
 lcq4HZCIzNbchMlSci98gWrdFYNwBFSBHDu4KJJ0K8dNIl11lJhMRT80oaQNmpJ0JyaK
 Rsn2CLKZs5i32GWDaDniLn8H4xg0Pi4vVqspYlmQiXwri71Ew/GjLPxCjcAV4Mb7hs2J
 K0hjZ2S35SGjPcMZnqhl5h9/b8Tyl/9Zo87EGdVLFdju3320HRrskjJauYmNuvNZaGbY
 7mDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wMJkhQnWLIK0t2nhWF/2eUs4TMDM1FwvFYEyzsHbS2k=;
 b=rozsHFw89fn+a5iI/q6rJF/PMCJ3ygCAZFQdMieLnhiqnGdEJC/LePzM6hbBhnNViJ
 fWU1Oodp3kggfYrwTYMg3fqoZRV4RHwmH8ATD9rURiJESNu/f47SX2CRrNCI977EDmM5
 vKaPOMrM429e+HWa+MhwkCP0USauuIrPiypWm+FBb4FKRn0kcMlcyPDAbO1OhQusNAIj
 7tm8U7FDtLPfMiDWCn+rHIXdvJX73ZtCCPrA2NGo6TbPs/aGfk8EyFNtcLZh9VyJLSlh
 K5/+dZGY36NgG5NSnlXehIOtpLaeLjwOu+tRgZFSERoNOemC13F1I1HcJJpstNGpfIIv
 c1bg==
X-Gm-Message-State: AOAM531NS68BAUUfkZ88cK3aYtXW/R23UsUmXh9IGA5BgWdJNU403IJ3
 V3nElaYfr69UXKMY85jiBaETNkWwhdwzWWOkJOVizg==
X-Google-Smtp-Source: ABdhPJypPEN+3QTtet+AfbpuEfd0Jqz2YHf3qVsFbXVSBjLFnbM9Sv84m0UmAGLyMZleeanm+YT2sFXqR7xqGXtfFpM=
X-Received: by 2002:aa7:d483:: with SMTP id b3mr5079356edr.71.1591422016776;
 Fri, 05 Jun 2020 22:40:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200520171457.11937-1-jernej.skrabec@siol.net>
In-Reply-To: <20200520171457.11937-1-jernej.skrabec@siol.net>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Sat, 6 Jun 2020 02:40:05 -0300
Message-ID: <CAAEAJfD2MeaZrRqjYU9uD9cbJZE1JZUz0VeMw01YJSL+Vro-Hg@mail.gmail.com>
Subject: Re: [PATCH] media: cedrus: Add support for additional output formats
To: Jernej Skrabec <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_224020_335889_81E6693A 
X-CRM114-Status: GOOD (  21.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Jernej,

Thanks for the patch.

On Wed, 20 May 2020 at 14:12, Jernej Skrabec <jernej.skrabec@siol.net> wrote:
>
> If VPU supports untiled output, it actually supports several different
> YUV 4:2:0 layouts, namely NV12, NV21, YUV420 and YVU420.
>
> Add support for all of them.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_hw.c | 18 +++++++++++++++++-
>  .../staging/media/sunxi/cedrus/cedrus_video.c  | 18 ++++++++++++++++++
>  2 files changed, 35 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> index daf5f244f93b..c119fd8c4b92 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> @@ -83,9 +83,25 @@ void cedrus_dst_format_set(struct cedrus_dev *dev,
>
>         switch (fmt->pixelformat) {
>         case V4L2_PIX_FMT_NV12:
> +       case V4L2_PIX_FMT_NV21:
> +       case V4L2_PIX_FMT_YUV420:
> +       case V4L2_PIX_FMT_YVU420:
>                 chroma_size = ALIGN(width, 16) * ALIGN(height, 16) / 2;
>
> -               reg = VE_PRIMARY_OUT_FMT_NV12;
> +               switch (fmt->pixelformat) {
> +               case V4L2_PIX_FMT_NV12:
> +                       reg = VE_PRIMARY_OUT_FMT_NV12;
> +                       break;
> +               case V4L2_PIX_FMT_NV21:
> +                       reg = VE_PRIMARY_OUT_FMT_NV21;
> +                       break;
> +               case V4L2_PIX_FMT_YUV420:
> +                       reg = VE_PRIMARY_OUT_FMT_YU12;
> +                       break;
> +               case V4L2_PIX_FMT_YVU420:
> +                       reg = VE_PRIMARY_OUT_FMT_YV12;
> +                       break;
> +               }
>                 cedrus_write(dev, VE_PRIMARY_OUT_FMT, reg);
>

I think it would result in a cleaner code if you extend
cedrus_format to include the hw_format.

Something along these lines (not a complete patch):

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 15cf1f10221b..618daaa65a82 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -48,10 +48,12 @@ static struct cedrus_format cedrus_formats[] = {
        },
        {
                .pixelformat    = V4L2_PIX_FMT_SUNXI_TILED_NV12,
+               .hw_format      = VE_PRIMARY_OUT_FMT_TILED_32_NV12,
                .directions     = CEDRUS_DECODE_DST,
        },
        {
                .pixelformat    = V4L2_PIX_FMT_NV12,
+               .hw_format      = VE_PRIMARY_OUT_FMT_NV12,
                .directions     = CEDRUS_DECODE_DST,
                .capabilities   = CEDRUS_CAPABILITY_UNTILED,
        },
@@ -274,6 +276,7 @@ static int cedrus_s_fmt_vid_cap(struct file *file,
void *priv,
 {
        struct cedrus_ctx *ctx = cedrus_file2ctx(file);
        struct cedrus_dev *dev = ctx->dev;
+       struct cedrus_format *fmt;
        struct vb2_queue *vq;
        int ret;

@@ -287,7 +290,10 @@ static int cedrus_s_fmt_vid_cap(struct file
*file, void *priv,

        ctx->dst_fmt = f->fmt.pix;

-       cedrus_dst_format_set(dev, &ctx->dst_fmt);
+       fmt = cedrus_find_format(ctx->dst_fmt.pixelformat,
+                                CEDRUS_DECODE_DST,
+                                dev->capabilities);
+       cedrus_dst_format_set(dev, fmt);

        return 0;
 }

So then in cedrus_dst_format_set() you can just
write VE_PRIMARY_OUT_FMT with fmt->hw_format.

>                 reg = chroma_size / 2;
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> index 15cf1f10221b..016021d71df2 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -55,6 +55,21 @@ static struct cedrus_format cedrus_formats[] = {
>                 .directions     = CEDRUS_DECODE_DST,
>                 .capabilities   = CEDRUS_CAPABILITY_UNTILED,
>         },
> +       {
> +               .pixelformat    = V4L2_PIX_FMT_NV21,
> +               .directions     = CEDRUS_DECODE_DST,
> +               .capabilities   = CEDRUS_CAPABILITY_UNTILED,
> +       },
> +       {
> +               .pixelformat    = V4L2_PIX_FMT_YUV420,
> +               .directions     = CEDRUS_DECODE_DST,
> +               .capabilities   = CEDRUS_CAPABILITY_UNTILED,
> +       },
> +       {
> +               .pixelformat    = V4L2_PIX_FMT_YVU420,
> +               .directions     = CEDRUS_DECODE_DST,
> +               .capabilities   = CEDRUS_CAPABILITY_UNTILED,
> +       },
>  };
>
>  #define CEDRUS_FORMATS_COUNT   ARRAY_SIZE(cedrus_formats)
> @@ -130,6 +145,9 @@ void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
>                 break;
>
>         case V4L2_PIX_FMT_NV12:
> +       case V4L2_PIX_FMT_NV21:
> +       case V4L2_PIX_FMT_YUV420:
> +       case V4L2_PIX_FMT_YVU420:
>                 /* 16-aligned stride. */
>                 bytesperline = ALIGN(width, 16);
>
> --
> 2.26.2
>

Thanks,
Ezequiel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
