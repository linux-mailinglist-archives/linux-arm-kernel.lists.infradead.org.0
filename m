Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4531C192F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 17:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZaN+dhqNOXVjkBc7krbc9RNnpLuTxn2JhvpfyMHlO60=; b=eeKv6BpXe9wrIR
	iMQ/pu2qfOjuYCdWAI81ckULM0lPBkW5y3EzDQfVEtCXaXFfj9gIMehVeHXPZWKJpmW9D25mSnaod
	5zliGzseN2fOOYDkhz1mbxAlaVp0Mayb7NT0NSYgAdobkucRV+nv/dZeyFd8DCiJl0l4nBiMh0eyZ
	cXXX1YMVdWLABR57zNhFmu0esTy1FeSWj1qV6CX1ehhZqpHznLhNCCcdJb/5NZNwWt/0N1BeHYfRV
	EpOdrhmn9G9nKOwQTdcIPVgtlYgGJNpjZSOsvMf9KgflySv2DFycXXI4IUZi+kF4jTZc951eTege6
	q5KQaK70xXZ42pEWWbNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXO1-00062j-7C; Fri, 01 May 2020 15:15:33 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXNg-0004NY-JP
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 15:15:18 +0000
Received: by mail-wr1-x444.google.com with SMTP id d15so11879447wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 08:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KNUORWcwL3FSkeux2ng3gL4l9kURWCa7CLUv75uTN0o=;
 b=kJVtwBWRYjcuIl9VmtqDN/kqtjCrOipvzjcUOFhqY73oSFboipAzh3yGNtu3a5MOBa
 rYCm8PXHh8iXAboqNTn4Oq3sxscZs9eP1KWSWcdTuQFs/B/Y6xE7l9eG1RYLEACRAbF/
 1vm3ktQQNd1jSEVrg5S/imPOX2v9aO+x8jIbk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KNUORWcwL3FSkeux2ng3gL4l9kURWCa7CLUv75uTN0o=;
 b=ts0ZsvFjR5J4cG2O9ke2GuDsMdejxk0kZGX98Z0sF9+DzWb5V79jnc+xFP+COKFy+V
 iYJkx+F3bnRWxrfsBOgfUVErIy7hGHBnNTiQXzECqFIU2wZtXe2zcXXUCbtHsUaX+LWR
 7MGZ2QDmBE5C7QHnWl+JGS1t65ZpKptdc+Nz0BgPdcZKxn6/AQs2BMWVL4lyErwy5s5L
 EwzMMbWPtMUhYTDYg8x5X3/WWsmrGUXoJRSVy1xp58yBK16GTg3JpWv+Ues7Tb44NqUm
 IAWTDcB0dtBdEaiROmEI2s+ghZ1tuGkUVkW2MsCQ62qEULrSqy9P0kZEs22xDVYkeBlk
 Zx8A==
X-Gm-Message-State: AGi0PuYsYy3foWH7LJQU/zYfv/y2kpB7W7eoFS5twmKcq7PwxcXM0aec
 EUjtI21/JwC+eGkotyvWgEaD8g==
X-Google-Smtp-Source: APiQypJkp2XUhMDivkz4wONeUVafHQwd0uBUFo9fxzfQsCOQ3u1sazzz1LSYAjen78ioDAnLXqP8yQ==
X-Received: by 2002:adf:e4cf:: with SMTP id v15mr2052737wrm.43.1588346107231; 
 Fri, 01 May 2020 08:15:07 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id n2sm4606805wrt.33.2020.05.01.08.15.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 May 2020 08:15:06 -0700 (PDT)
Date: Fri, 1 May 2020 15:15:05 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH v4 5/5] media: platform: Add jpeg dec/enc feature
Message-ID: <20200501151505.GA218308@chromium.org>
References: <20191017084033.28299-1-xia.jiang@mediatek.com>
 <20191017084033.28299-6-xia.jiang@mediatek.com>
 <20191023103945.GA41089@chromium.org>
 <1575626384.17879.81.camel@mhfsdcap03>
 <CAAFQd5A8XAT-7kZgaKktbBk1ogdfY3LRsK0xapHps4VqCQ_BZA@mail.gmail.com>
 <1587538807.24163.102.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587538807.24163.102.camel@mhfsdcap03>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_081513_016239_87DD7D66 
X-CRM114-Status: GOOD (  50.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Rick Chang <Rick.Chang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xia,

Finally found time to take a look again. Really sorry for the late
reply.

On Wed, Apr 22, 2020 at 03:00:07PM +0800, Xia Jiang wrote:
> On Tue, 2020-03-10 at 13:17 +0900, Tomasz Figa wrote:
> > Hi Xia,
> > 
> > On Fri, Dec 6, 2019 at 6:59 PM Xia Jiang <xia.jiang@mediatek.com> wrote:
> > >
> > > On Wed, 2019-10-23 at 18:39 +0800, Tomasz Figa wrote:
> > > > Hi Xia,
> > > >
> > > > On Thu, Oct 17, 2019 at 04:40:38PM +0800, Xia Jiang wrote:
> > > > > Add mtk jpeg encode v4l2 driver based on jpeg decode, because that jpeg
> > > > > decode and encode have great similarities with function operation.
> > > > >
> > > > > Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> > > > > ---
> > > > > v4: split mtk_jpeg_try_fmt_mplane() to two functions, one for encoder,
> > > > >     one for decoder.
> > > > >     split mtk_jpeg_set_default_params() to two functions, one for
> > > > >     encoder, one for decoder.
> > > > >     add cropping support for encoder in g/s_selection ioctls.
> > > > >     change exif mode support by using V4L2_JPEG_ACTIVE_MARKER_APP1.
> > > > >     change MTK_JPEG_MAX_WIDTH/MTK_JPEG_MAX_HEIGH from 8192 to 65535 by
> > > > >     specification.
> > > > >     move width shifting operation behind aligning operation in
> > > > >     mtk_jpeg_try_enc_fmt_mplane() for bug fix.
> > > > >     fix user abuseing data_offset issue for DMABUF in
> > > > >     mtk_jpeg_set_enc_src().
> > > > >     fix kbuild warings: change MTK_JPEG_MIN_HEIGHT/MTK_JPEG_MAX_HEIGHT
> > > > >                         and MTK_JPEG_MIN_WIDTH/MTK_JPEG_MAX_WIDTH from
> > > > >                         'int' type to 'unsigned int' type.
> > > > >                         fix msleadingly indented of 'else'.
> > > > >
> > > > > v3: delete Change-Id.
> > > > >     only test once handler->error after the last v4l2_ctrl_new_std().
> > > > >     seperate changes of v4l2-ctrls.c and v4l2-controls.h to new patch.
> > > > >
> > > > > v2: fix compliance test fail, check created buffer size in driver.
> > > > > ---
> > > > >  drivers/media/platform/mtk-jpeg/Makefile      |   5 +-
> > > > >  .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 731 +++++++++++++++---
> > > > >  .../media/platform/mtk-jpeg/mtk_jpeg_core.h   | 123 ++-
> > > > >  .../media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h |   7 +-
> > > > >  .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c | 175 +++++
> > > > >  .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h |  60 ++
> > > > >  .../platform/mtk-jpeg/mtk_jpeg_enc_reg.h      |  49 ++
> > > > >  7 files changed, 1004 insertions(+), 146 deletions(-)
> > > > >  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c
> > > > >  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h
> > > > >  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_reg.h
> > > > >
> > > >
> > > > First of all, thanks for the patch!
> > > >
> > > > Please check my comments below.
> > > >
> > > > My general feeling about this code is that the encoder hardware block is
> > > > completely orthogonal from the decoder block and there is very little code
> > > > reuse from the original decoder driver.
> > > >
> > > > Moreover, a lot of existing code now needs if (decoder) { ... } else {... }
> > > > segments, which complicates the code.
> > > >
> > > > Would it perhaps make sense to instead create a separate mtk-jpeg-enc
> > > > driver?
> > > >
> > > > It would also give us a fresh start in terms of code quality, as the
> > > > existing mtk-jpeg driver has a lot of quality issues unfortunately. (Some
> > > > of my comments to this patch actually relate to the issues with the
> > > > original code, not introduced by this patch, but we need to fix them if
> > > > changing this driver already.)
> > > >
> > > Dear Tomasz,
> > >
> > > I haved fixed the driver by following your advice in general.
> > >
> > > Please check my reply below.
> > 
> > Sorry, I missed this message originally. Replied below.
> 
> Dear Tomasz,
> 
> Thank you for your reply.I have changed the driver in the V8 version
> by following your good advice.
> > 
> > [snip]
> > > > > +   }
> > > > > +   param->enc_w = q_data_src->w;
> > > > > +   param->enc_h = q_data_src->h;
> > > > > +
> > > > > +   if (jpeg_params->enc_quality >= 97)
> > > > > +           param->enc_quality = JPEG_ENCODE_QUALITY_Q97;
> > > > > +   else if (jpeg_params->enc_quality >= 95)
> > > > > +           param->enc_quality = JPEG_ENCODE_QUALITY_Q95;
> > > >
> > > > I'm wondering if the application requests 96, it doesn't expect the quality to
> > > > be _at_least_ 96.
> > > our jpeg enc hw do not support quality 96,only support 15 kinds of quant
> > > table listed here, so if the application requests 96,a nearest and
> > > highest quality will be given.
> > > >
> > 
> > Just to clarify my comment, if I remember correctly, the JPEG standard
> > defines the 100 levels, so if the application requests level 96, but
> > the hardware provides only 95 and 97, the quality should be favored
> > and 97 used.
> done.
> > 
> > [snip]
> > > >
> > > > > +   param->mem_stride = mtk_jpeg_align(width_even, (is_420 ? 16 : 32));
> > > >
> > > > What's the difference between img_stride and mem_stride?
> > >
> > > In theory, mem_stride need >= img_stride,but we use the same is ok
> > > >
> > > > > +   param->total_encdu =
> > > > > +           ((padding_width >> 4) * (padding_height >> (is_420 ? 4 : 3)) *
> > > > > +           (is_420 ? 6 : 4)) - 1;
> > > >
> > > > The comment above the struct says this is the total number of 8x8 blocks.
> > > > Why would it depend on whether the format is YUV 4:2:0? Since we should
> > > > have already aligned the width and height in try_fmt, this should be as
> > > > simple as (width / 8) * (height / 8).
> > > becuase the image size is w*h*1.5 for yuv420 format, but w*h*2 for
> > > yuv422,so for yuv420: w_16/8*h_16/8*1.5-1(because the hw will start at
> > > number 0), yuv422: w_32/8*h_8/8*2-1,this number is equal to my code.
> > 
> > Do you mean that this also includes the Cb and Cr 8x8 blocks separately?
> > If so, could it be rewritten as below to improve the readability?
> > 
> > luma_blocks = width / 8 * height / 8;
> > if (is_420)
> >     chroma_blocks = luma_blocks / 4;
> > else
> >     chroma_blocks = luma_blocks / 2;
> > param->last_encdu = luma_blocks + 2 * chroma_blocks - 1;
> > 
> > Also, does it mean that this number is actually the index of the last
> > block, not the total number of blocks?
> yes.
> > If so, the field should be probably renamed to last_encdu and the
> > description updated accordingly.
> > 
> > [snip]
> > > > Could we instead check the buffer address alignment in .buf_prepare and fail if
> > > > it's not big enough?
> > > >
> > > > > +   bs->dma_addr_offset = p->enable_exif ? MTK_JPEG_DEFAULT_EXIF_SIZE : 0;
> > > > > +   bs->dma_addr_offsetmask = bs->dma_addr & JPEG_ENC_DST_ADDR_OFFSET_MASK;
> > > >
> > > > What is the meaning of this offset mask?
> > > our actual destination address = destination address + offset address+
> > > destination address offset mask.The mask 0:No offset,1~15:offset byte
> > > from the 16-byte aligned
> > 
> > So we have dma_addr, dma_addr_offset and dma_addr_offsetmask. Why do
> > we need dma_addr_offset? Would the same operation be achieved with the
> > code below?
> Because in exif mode, the beginning of the destination buffer(offset) should be reserved
> for the application to fill(I explained this more in my reply to the v7
> revision).

Thanks. I'll check the explanation in v7.

> > dma_addr = vb2_dma_contig_plane_dma_addr(dst_buf, 0);
> > if (p->enable_exif)
> >     dma_addr += MTK_JPEG_DEFAULT_EXIF_SIZE;
> > bs->dma_addr = dma_addr & ~JPEG_ENC_DST_ADDR_OFFSET_MASK;
> > bs->dma_addr_offset = 0;
> > bs->dma_addr_offsetmask = dma_addr & JPEG_ENC_DST_ADDR_OFFSET_MASK;
> > 
> > Or does the hardware write something directly at bs->dma_addr (some
> > tags?) and then the encoded image at the final desintation address?
> > 
> Hardware just write encoded image at the final destination address.

Okay, so it sounds like we should be able to simplify the calculation.

> > [snip]
> > > > > -static void mtk_jpeg_set_default_params(struct mtk_jpeg_ctx *ctx)
> > > > > +static void mtk_jpeg_set_enc_default_params(struct mtk_jpeg_ctx *ctx)
> > > > > +{
> > > > > +   struct mtk_jpeg_q_data *q = &ctx->out_q;
> > > > > +   int align_w, align_h;
> > > > > +
> > > > > +   ctx->fh.ctrl_handler = &ctx->ctrl_hdl;
> > > > > +
> > > > > +   ctx->colorspace = V4L2_COLORSPACE_JPEG,
> > > > > +   ctx->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> > > > > +   ctx->quantization = V4L2_QUANTIZATION_DEFAULT;
> > > > > +   ctx->xfer_func = V4L2_XFER_FUNC_DEFAULT;
> > > > > +
> > > > > +   q->w = MTK_JPEG_MIN_WIDTH;
> > > > > +   q->h = MTK_JPEG_MIN_HEIGHT;
> > > > > +
> > > > > +   q->fmt = mtk_jpeg_find_format(ctx, V4L2_PIX_FMT_YUYV,
> > > > > +                                 MTK_JPEG_FMT_TYPE_OUTPUT);
> > > > > +
> > > > > +   align_w = q->w;
> > > > > +   align_h = q->h;
> > > > > +   align_w = round_up(align_w, 2);
> > > > > +   v4l_bound_align_image(&align_w, MTK_JPEG_MIN_WIDTH, MTK_JPEG_MAX_WIDTH,
> > > > > +                         5, &align_h, MTK_JPEG_MIN_HEIGHT,
> > > > > +                         MTK_JPEG_MAX_HEIGHT, 3, 0);
> > > > > +   align_w = align_w << 1;
> > > > > +
> > > > > +   if (align_w < MTK_JPEG_MIN_WIDTH &&
> > > > > +       (align_w + 32) <= MTK_JPEG_MAX_WIDTH)
> > > > > +           align_w += 32;
> > > > > +   if (align_h < MTK_JPEG_MIN_HEIGHT &&
> > > > > +       (align_h + 8) <= MTK_JPEG_MAX_HEIGHT)
> > > > > +           align_h += 8;
> > > > > +
> > > > > +   q->sizeimage[0] = align_w * align_h;
> > > > > +   q->bytesperline[0] = align_w;
> > > > > +
> > > > > +   q = &ctx->cap_q;
> > > > > +   q->w = MTK_JPEG_MIN_WIDTH;
> > > > > +   q->h = MTK_JPEG_MIN_HEIGHT;
> > > > > +   q->fmt = mtk_jpeg_find_format(ctx, V4L2_PIX_FMT_JPEG,
> > > > > +                                 MTK_JPEG_FMT_TYPE_CAPTURE);
> > > > > +   q->bytesperline[0] = 0;
> > > > > +   q->sizeimage[0] = MTK_JPEG_DEFAULT_SIZEIMAGE;
> > > > > +}
> > > >
> > > > Could we just create an arbitrary v4l2_pix_format_mplane struct and call
> > > > s_fmt instead? In general, all of the constant values and alignments should
> > > > be already ensured by try_fmt, so this function should be redundant.
> > > if cancel this function,the v4l2-compliance test will fail
> > 
> > Sorry, I guess my comment was not clear. We need to initialize the
> > default parameters. However, the contents of this function seem to
> > heavily duplicate with the code that should be in try_fmt, so could we
> > just call try_fmt from here instead of repeating the calculations?
> done.
> > 
> > [snip]
> > > > > -   ret = devm_request_irq(&pdev->dev, dec_irq, mtk_jpeg_dec_irq, 0,
> > > > > +   ret = devm_request_irq(&pdev->dev, jpeg_irq, mtk_jpeg_irq, 0,
> > > > >                            pdev->name, jpeg);
> > > > >     if (ret) {
> > > > > -           dev_err(&pdev->dev, "Failed to request dec_irq %d (%d)\n",
> > > > > -                   dec_irq, ret);
> > > > > -           ret = -EINVAL;
> > > >
> > > > This removal of ret assignment looks like a separate fix that should be
> > > > done in its own patch.
> > > this change is because of the adding of jpeg enc driver,not the orignal
> > > driver' question, should I move it to the orignal driver's patch?
> > 
> > Yes, please.
> done.
> > 
> > > >
> > > > > +           dev_err(&pdev->dev, "Failed to request jpeg_irq %d (%d)\n",
> > > > > +                   jpeg_irq, ret);
> > > > >             goto err_req_irq;
> > > > >     }
> > > > >
> > > > > @@ -1140,33 +1602,35 @@ static int mtk_jpeg_probe(struct platform_device *pdev)
> > > > >             goto err_m2m_init;
> > > > >     }
> > > > >
> > > > > -   jpeg->dec_vdev = video_device_alloc();
> > > > > -   if (!jpeg->dec_vdev) {
> > > > > +   jpeg->vfd_jpeg = video_device_alloc();
> > > > > +   if (!jpeg->vfd_jpeg) {
> > > > >             ret = -ENOMEM;
> > > > > -           goto err_dec_vdev_alloc;
> > > > > +           goto err_vfd_jpeg_alloc;
> > > > >     }
> > > > > -   snprintf(jpeg->dec_vdev->name, sizeof(jpeg->dec_vdev->name),
> > > > > -            "%s-dec", MTK_JPEG_NAME);
> > > > > -   jpeg->dec_vdev->fops = &mtk_jpeg_fops;
> > > > > -   jpeg->dec_vdev->ioctl_ops = &mtk_jpeg_ioctl_ops;
> > > > > -   jpeg->dec_vdev->minor = -1;
> > > > > -   jpeg->dec_vdev->release = video_device_release;
> > > > > -   jpeg->dec_vdev->lock = &jpeg->lock;
> > > > > -   jpeg->dec_vdev->v4l2_dev = &jpeg->v4l2_dev;
> > > > > -   jpeg->dec_vdev->vfl_dir = VFL_DIR_M2M;
> > > > > -   jpeg->dec_vdev->device_caps = V4L2_CAP_STREAMING |
> > > > > +   snprintf(jpeg->vfd_jpeg->name, sizeof(jpeg->vfd_jpeg->name),
> > > > > +            "%s-%s", MTK_JPEG_NAME,
> > > > > +            jpeg->mode == MTK_JPEG_ENC ? "enc" : "dec");
> > > > > +   jpeg->vfd_jpeg->fops = &mtk_jpeg_fops;
> > > > > +   jpeg->vfd_jpeg->ioctl_ops = &mtk_jpeg_ioctl_ops;
> > > > > +   jpeg->vfd_jpeg->minor = -1;
> > > > > +   jpeg->vfd_jpeg->release = video_device_release;
> > > > > +   jpeg->vfd_jpeg->lock = &jpeg->lock;
> > > > > +   jpeg->vfd_jpeg->v4l2_dev = &jpeg->v4l2_dev;
> > > > > +   jpeg->vfd_jpeg->vfl_dir = VFL_DIR_M2M;
> > > > > +   jpeg->vfd_jpeg->device_caps = V4L2_CAP_STREAMING |
> > > > >                                   V4L2_CAP_VIDEO_M2M_MPLANE;
> > > > >
> > > > > -   ret = video_register_device(jpeg->dec_vdev, VFL_TYPE_GRABBER, 3);
> > > > > +   ret = video_register_device(jpeg->vfd_jpeg, VFL_TYPE_GRABBER, -1);
> > > >
> > > > The change from 3 to -1 also looks like something for a separate patch.
> > > same as the above reply
> > 
> > Ditto.
> done.
> > 
> > [snip]
> > > > > @@ -17,23 +18,77 @@
> > > > >
> > > > >  #define MTK_JPEG_FMT_FLAG_DEC_OUTPUT       BIT(0)
> > > > >  #define MTK_JPEG_FMT_FLAG_DEC_CAPTURE      BIT(1)
> > > > > +#define MTK_JPEG_FMT_FLAG_ENC_OUTPUT       BIT(2)
> > > > > +#define MTK_JPEG_FMT_FLAG_ENC_CAPTURE      BIT(3)
> > > > >
> > > > >  #define MTK_JPEG_FMT_TYPE_OUTPUT   1
> > > > >  #define MTK_JPEG_FMT_TYPE_CAPTURE  2
> > > > >
> > > > > -#define MTK_JPEG_MIN_WIDTH 32
> > > > > -#define MTK_JPEG_MIN_HEIGHT        32
> > > > > -#define MTK_JPEG_MAX_WIDTH 8192
> > > > > -#define MTK_JPEG_MAX_HEIGHT        8192
> > > > > +#define MTK_JPEG_MIN_WIDTH 32U
> > > > > +#define MTK_JPEG_MIN_HEIGHT        32U
> > > > > +#define MTK_JPEG_MAX_WIDTH 65535U
> > > > > +#define MTK_JPEG_MAX_HEIGHT        65535U
> > > >
> > > > Why is it okay to change this from 8192 to 65535?
> > > our hw support max width/height to 65535
> > 
> > Does this also apply to the JPEG decoder on MT8173 for which the
> > driver was developed?
> yes.

Okay, then the limit change should be a separate patch that fixes the
wrong limits in existing code. It could be also merged to stable
kernels.

Best regards,
Tomasz


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
