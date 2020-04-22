Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 852671B388B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 09:11:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EpezU6RiEgPVOjUEjjfLcoEvd+FfXASSW8/ZQDJ0F6w=; b=W2prDGd8eqyD4p
	yl3zYAjKEL4DUIzH5THhF0fM/Mgpuek9JZJmbQ7Ukg2xLKfdpuhwgAHnaxNQrDhCoxPeahFbl45UD
	ruUe6A3e5q62uz8XAgqPBujzCSA1LWIQbGhx2y8e3yrHJ3QTegsiW4zaVFjySSQRAbDPEfzKnHwMi
	+T6eJIqzhSDL0x5IDZnaMVidi6+xRYOyo1F7obS87GfSZaIPhcD2Z4lPLCevLpGI0Z4T/LMI/YYU9
	QzngG0QWckzPh2dn/Z/fN87yEotvPwY5J3XlKArAOT7bjYv572q9dIuZ17ql/6ZFnTzJMfdMjFrLC
	3BhGwm3lYTOtOtsLNDjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR9XQ-0004OM-8D; Wed, 22 Apr 2020 07:11:16 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR9Wx-0004Gl-UZ; Wed, 22 Apr 2020 07:10:54 +0000
X-UUID: c82cc515734a43e3918476e13b4e2c3b-20200421
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=WZlVM4OFd9xlCa1HjfJepeR66sjCPRA5ojG3YrOAAXg=; 
 b=PIdqx8uFu16qo03Lghostthy9PtQVFXGO4jwVgcU6qYR/0Waaz4kVfupYk1hYKKlzu87FYbKW1X7mt+NTgZGbdEdb4BYvvqxsz/b31wkQglatQHPyBMHIOO8926MXt5v2D8vY1JeqbRw76VUE6sS91GPOJMCr/simvL41cH0nV0=;
X-UUID: c82cc515734a43e3918476e13b4e2c3b-20200421
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1394338171; Tue, 21 Apr 2020 23:10:37 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 22 Apr 2020 00:00:45 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs07n1.mediatek.inc
 (172.21.101.16) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Wed, 22 Apr 2020 15:00:44 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 22 Apr 2020 15:00:41 +0800
Message-ID: <1587538807.24163.102.camel@mhfsdcap03>
Subject: Re: [PATCH v4 5/5] media: platform: Add jpeg dec/enc feature
From: Xia Jiang <xia.jiang@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 22 Apr 2020 15:00:07 +0800
In-Reply-To: <CAAFQd5A8XAT-7kZgaKktbBk1ogdfY3LRsK0xapHps4VqCQ_BZA@mail.gmail.com>
References: <20191017084033.28299-1-xia.jiang@mediatek.com>
 <20191017084033.28299-6-xia.jiang@mediatek.com>
 <20191023103945.GA41089@chromium.org>
 <1575626384.17879.81.camel@mhfsdcap03>
 <CAAFQd5A8XAT-7kZgaKktbBk1ogdfY3LRsK0xapHps4VqCQ_BZA@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_001048_029733_E272FA3C 
X-CRM114-Status: GOOD (  40.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Rick Chang <Rick.Chang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-03-10 at 13:17 +0900, Tomasz Figa wrote:
> Hi Xia,
> 
> On Fri, Dec 6, 2019 at 6:59 PM Xia Jiang <xia.jiang@mediatek.com> wrote:
> >
> > On Wed, 2019-10-23 at 18:39 +0800, Tomasz Figa wrote:
> > > Hi Xia,
> > >
> > > On Thu, Oct 17, 2019 at 04:40:38PM +0800, Xia Jiang wrote:
> > > > Add mtk jpeg encode v4l2 driver based on jpeg decode, because that jpeg
> > > > decode and encode have great similarities with function operation.
> > > >
> > > > Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> > > > ---
> > > > v4: split mtk_jpeg_try_fmt_mplane() to two functions, one for encoder,
> > > >     one for decoder.
> > > >     split mtk_jpeg_set_default_params() to two functions, one for
> > > >     encoder, one for decoder.
> > > >     add cropping support for encoder in g/s_selection ioctls.
> > > >     change exif mode support by using V4L2_JPEG_ACTIVE_MARKER_APP1.
> > > >     change MTK_JPEG_MAX_WIDTH/MTK_JPEG_MAX_HEIGH from 8192 to 65535 by
> > > >     specification.
> > > >     move width shifting operation behind aligning operation in
> > > >     mtk_jpeg_try_enc_fmt_mplane() for bug fix.
> > > >     fix user abuseing data_offset issue for DMABUF in
> > > >     mtk_jpeg_set_enc_src().
> > > >     fix kbuild warings: change MTK_JPEG_MIN_HEIGHT/MTK_JPEG_MAX_HEIGHT
> > > >                         and MTK_JPEG_MIN_WIDTH/MTK_JPEG_MAX_WIDTH from
> > > >                         'int' type to 'unsigned int' type.
> > > >                         fix msleadingly indented of 'else'.
> > > >
> > > > v3: delete Change-Id.
> > > >     only test once handler->error after the last v4l2_ctrl_new_std().
> > > >     seperate changes of v4l2-ctrls.c and v4l2-controls.h to new patch.
> > > >
> > > > v2: fix compliance test fail, check created buffer size in driver.
> > > > ---
> > > >  drivers/media/platform/mtk-jpeg/Makefile      |   5 +-
> > > >  .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 731 +++++++++++++++---
> > > >  .../media/platform/mtk-jpeg/mtk_jpeg_core.h   | 123 ++-
> > > >  .../media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h |   7 +-
> > > >  .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c | 175 +++++
> > > >  .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h |  60 ++
> > > >  .../platform/mtk-jpeg/mtk_jpeg_enc_reg.h      |  49 ++
> > > >  7 files changed, 1004 insertions(+), 146 deletions(-)
> > > >  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c
> > > >  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h
> > > >  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_reg.h
> > > >
> > >
> > > First of all, thanks for the patch!
> > >
> > > Please check my comments below.
> > >
> > > My general feeling about this code is that the encoder hardware block is
> > > completely orthogonal from the decoder block and there is very little code
> > > reuse from the original decoder driver.
> > >
> > > Moreover, a lot of existing code now needs if (decoder) { ... } else {... }
> > > segments, which complicates the code.
> > >
> > > Would it perhaps make sense to instead create a separate mtk-jpeg-enc
> > > driver?
> > >
> > > It would also give us a fresh start in terms of code quality, as the
> > > existing mtk-jpeg driver has a lot of quality issues unfortunately. (Some
> > > of my comments to this patch actually relate to the issues with the
> > > original code, not introduced by this patch, but we need to fix them if
> > > changing this driver already.)
> > >
> > Dear Tomasz,
> >
> > I haved fixed the driver by following your advice in general.
> >
> > Please check my reply below.
> 
> Sorry, I missed this message originally. Replied below.

Dear Tomasz,

Thank you for your reply.I have changed the driver in the V8 version
by following your good advice.
> 
> [snip]
> > > > +   }
> > > > +   param->enc_w = q_data_src->w;
> > > > +   param->enc_h = q_data_src->h;
> > > > +
> > > > +   if (jpeg_params->enc_quality >= 97)
> > > > +           param->enc_quality = JPEG_ENCODE_QUALITY_Q97;
> > > > +   else if (jpeg_params->enc_quality >= 95)
> > > > +           param->enc_quality = JPEG_ENCODE_QUALITY_Q95;
> > >
> > > I'm wondering if the application requests 96, it doesn't expect the quality to
> > > be _at_least_ 96.
> > our jpeg enc hw do not support quality 96,only support 15 kinds of quant
> > table listed here, so if the application requests 96,a nearest and
> > highest quality will be given.
> > >
> 
> Just to clarify my comment, if I remember correctly, the JPEG standard
> defines the 100 levels, so if the application requests level 96, but
> the hardware provides only 95 and 97, the quality should be favored
> and 97 used.
done.
> 
> [snip]
> > >
> > > > +   param->mem_stride = mtk_jpeg_align(width_even, (is_420 ? 16 : 32));
> > >
> > > What's the difference between img_stride and mem_stride?
> >
> > In theory, mem_stride need >= img_stride,but we use the same is ok
> > >
> > > > +   param->total_encdu =
> > > > +           ((padding_width >> 4) * (padding_height >> (is_420 ? 4 : 3)) *
> > > > +           (is_420 ? 6 : 4)) - 1;
> > >
> > > The comment above the struct says this is the total number of 8x8 blocks.
> > > Why would it depend on whether the format is YUV 4:2:0? Since we should
> > > have already aligned the width and height in try_fmt, this should be as
> > > simple as (width / 8) * (height / 8).
> > becuase the image size is w*h*1.5 for yuv420 format, but w*h*2 for
> > yuv422,so for yuv420: w_16/8*h_16/8*1.5-1(because the hw will start at
> > number 0), yuv422: w_32/8*h_8/8*2-1,this number is equal to my code.
> 
> Do you mean that this also includes the Cb and Cr 8x8 blocks separately?
> If so, could it be rewritten as below to improve the readability?
> 
> luma_blocks = width / 8 * height / 8;
> if (is_420)
>     chroma_blocks = luma_blocks / 4;
> else
>     chroma_blocks = luma_blocks / 2;
> param->last_encdu = luma_blocks + 2 * chroma_blocks - 1;
> 
> Also, does it mean that this number is actually the index of the last
> block, not the total number of blocks?
yes.
> If so, the field should be probably renamed to last_encdu and the
> description updated accordingly.
> 
> [snip]
> > > Could we instead check the buffer address alignment in .buf_prepare and fail if
> > > it's not big enough?
> > >
> > > > +   bs->dma_addr_offset = p->enable_exif ? MTK_JPEG_DEFAULT_EXIF_SIZE : 0;
> > > > +   bs->dma_addr_offsetmask = bs->dma_addr & JPEG_ENC_DST_ADDR_OFFSET_MASK;
> > >
> > > What is the meaning of this offset mask?
> > our actual destination address = destination address + offset address+
> > destination address offset mask.The mask 0:No offset,1~15:offset byte
> > from the 16-byte aligned
> 
> So we have dma_addr, dma_addr_offset and dma_addr_offsetmask. Why do
> we need dma_addr_offset? Would the same operation be achieved with the
> code below?
Because in exif mode, the beginning of the destination buffer(offset) should be reserved
for the application to fill(I explained this more in my reply to the v7
revision).
> dma_addr = vb2_dma_contig_plane_dma_addr(dst_buf, 0);
> if (p->enable_exif)
>     dma_addr += MTK_JPEG_DEFAULT_EXIF_SIZE;
> bs->dma_addr = dma_addr & ~JPEG_ENC_DST_ADDR_OFFSET_MASK;
> bs->dma_addr_offset = 0;
> bs->dma_addr_offsetmask = dma_addr & JPEG_ENC_DST_ADDR_OFFSET_MASK;
> 
> Or does the hardware write something directly at bs->dma_addr (some
> tags?) and then the encoded image at the final desintation address?
> 
Hardware just write encoded image at the final destination address.
> [snip]
> > > > -static void mtk_jpeg_set_default_params(struct mtk_jpeg_ctx *ctx)
> > > > +static void mtk_jpeg_set_enc_default_params(struct mtk_jpeg_ctx *ctx)
> > > > +{
> > > > +   struct mtk_jpeg_q_data *q = &ctx->out_q;
> > > > +   int align_w, align_h;
> > > > +
> > > > +   ctx->fh.ctrl_handler = &ctx->ctrl_hdl;
> > > > +
> > > > +   ctx->colorspace = V4L2_COLORSPACE_JPEG,
> > > > +   ctx->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> > > > +   ctx->quantization = V4L2_QUANTIZATION_DEFAULT;
> > > > +   ctx->xfer_func = V4L2_XFER_FUNC_DEFAULT;
> > > > +
> > > > +   q->w = MTK_JPEG_MIN_WIDTH;
> > > > +   q->h = MTK_JPEG_MIN_HEIGHT;
> > > > +
> > > > +   q->fmt = mtk_jpeg_find_format(ctx, V4L2_PIX_FMT_YUYV,
> > > > +                                 MTK_JPEG_FMT_TYPE_OUTPUT);
> > > > +
> > > > +   align_w = q->w;
> > > > +   align_h = q->h;
> > > > +   align_w = round_up(align_w, 2);
> > > > +   v4l_bound_align_image(&align_w, MTK_JPEG_MIN_WIDTH, MTK_JPEG_MAX_WIDTH,
> > > > +                         5, &align_h, MTK_JPEG_MIN_HEIGHT,
> > > > +                         MTK_JPEG_MAX_HEIGHT, 3, 0);
> > > > +   align_w = align_w << 1;
> > > > +
> > > > +   if (align_w < MTK_JPEG_MIN_WIDTH &&
> > > > +       (align_w + 32) <= MTK_JPEG_MAX_WIDTH)
> > > > +           align_w += 32;
> > > > +   if (align_h < MTK_JPEG_MIN_HEIGHT &&
> > > > +       (align_h + 8) <= MTK_JPEG_MAX_HEIGHT)
> > > > +           align_h += 8;
> > > > +
> > > > +   q->sizeimage[0] = align_w * align_h;
> > > > +   q->bytesperline[0] = align_w;
> > > > +
> > > > +   q = &ctx->cap_q;
> > > > +   q->w = MTK_JPEG_MIN_WIDTH;
> > > > +   q->h = MTK_JPEG_MIN_HEIGHT;
> > > > +   q->fmt = mtk_jpeg_find_format(ctx, V4L2_PIX_FMT_JPEG,
> > > > +                                 MTK_JPEG_FMT_TYPE_CAPTURE);
> > > > +   q->bytesperline[0] = 0;
> > > > +   q->sizeimage[0] = MTK_JPEG_DEFAULT_SIZEIMAGE;
> > > > +}
> > >
> > > Could we just create an arbitrary v4l2_pix_format_mplane struct and call
> > > s_fmt instead? In general, all of the constant values and alignments should
> > > be already ensured by try_fmt, so this function should be redundant.
> > if cancel this function,the v4l2-compliance test will fail
> 
> Sorry, I guess my comment was not clear. We need to initialize the
> default parameters. However, the contents of this function seem to
> heavily duplicate with the code that should be in try_fmt, so could we
> just call try_fmt from here instead of repeating the calculations?
done.
> 
> [snip]
> > > > -   ret = devm_request_irq(&pdev->dev, dec_irq, mtk_jpeg_dec_irq, 0,
> > > > +   ret = devm_request_irq(&pdev->dev, jpeg_irq, mtk_jpeg_irq, 0,
> > > >                            pdev->name, jpeg);
> > > >     if (ret) {
> > > > -           dev_err(&pdev->dev, "Failed to request dec_irq %d (%d)\n",
> > > > -                   dec_irq, ret);
> > > > -           ret = -EINVAL;
> > >
> > > This removal of ret assignment looks like a separate fix that should be
> > > done in its own patch.
> > this change is because of the adding of jpeg enc driver,not the orignal
> > driver' question, should I move it to the orignal driver's patch?
> 
> Yes, please.
done.
> 
> > >
> > > > +           dev_err(&pdev->dev, "Failed to request jpeg_irq %d (%d)\n",
> > > > +                   jpeg_irq, ret);
> > > >             goto err_req_irq;
> > > >     }
> > > >
> > > > @@ -1140,33 +1602,35 @@ static int mtk_jpeg_probe(struct platform_device *pdev)
> > > >             goto err_m2m_init;
> > > >     }
> > > >
> > > > -   jpeg->dec_vdev = video_device_alloc();
> > > > -   if (!jpeg->dec_vdev) {
> > > > +   jpeg->vfd_jpeg = video_device_alloc();
> > > > +   if (!jpeg->vfd_jpeg) {
> > > >             ret = -ENOMEM;
> > > > -           goto err_dec_vdev_alloc;
> > > > +           goto err_vfd_jpeg_alloc;
> > > >     }
> > > > -   snprintf(jpeg->dec_vdev->name, sizeof(jpeg->dec_vdev->name),
> > > > -            "%s-dec", MTK_JPEG_NAME);
> > > > -   jpeg->dec_vdev->fops = &mtk_jpeg_fops;
> > > > -   jpeg->dec_vdev->ioctl_ops = &mtk_jpeg_ioctl_ops;
> > > > -   jpeg->dec_vdev->minor = -1;
> > > > -   jpeg->dec_vdev->release = video_device_release;
> > > > -   jpeg->dec_vdev->lock = &jpeg->lock;
> > > > -   jpeg->dec_vdev->v4l2_dev = &jpeg->v4l2_dev;
> > > > -   jpeg->dec_vdev->vfl_dir = VFL_DIR_M2M;
> > > > -   jpeg->dec_vdev->device_caps = V4L2_CAP_STREAMING |
> > > > +   snprintf(jpeg->vfd_jpeg->name, sizeof(jpeg->vfd_jpeg->name),
> > > > +            "%s-%s", MTK_JPEG_NAME,
> > > > +            jpeg->mode == MTK_JPEG_ENC ? "enc" : "dec");
> > > > +   jpeg->vfd_jpeg->fops = &mtk_jpeg_fops;
> > > > +   jpeg->vfd_jpeg->ioctl_ops = &mtk_jpeg_ioctl_ops;
> > > > +   jpeg->vfd_jpeg->minor = -1;
> > > > +   jpeg->vfd_jpeg->release = video_device_release;
> > > > +   jpeg->vfd_jpeg->lock = &jpeg->lock;
> > > > +   jpeg->vfd_jpeg->v4l2_dev = &jpeg->v4l2_dev;
> > > > +   jpeg->vfd_jpeg->vfl_dir = VFL_DIR_M2M;
> > > > +   jpeg->vfd_jpeg->device_caps = V4L2_CAP_STREAMING |
> > > >                                   V4L2_CAP_VIDEO_M2M_MPLANE;
> > > >
> > > > -   ret = video_register_device(jpeg->dec_vdev, VFL_TYPE_GRABBER, 3);
> > > > +   ret = video_register_device(jpeg->vfd_jpeg, VFL_TYPE_GRABBER, -1);
> > >
> > > The change from 3 to -1 also looks like something for a separate patch.
> > same as the above reply
> 
> Ditto.
done.
> 
> [snip]
> > > > @@ -17,23 +18,77 @@
> > > >
> > > >  #define MTK_JPEG_FMT_FLAG_DEC_OUTPUT       BIT(0)
> > > >  #define MTK_JPEG_FMT_FLAG_DEC_CAPTURE      BIT(1)
> > > > +#define MTK_JPEG_FMT_FLAG_ENC_OUTPUT       BIT(2)
> > > > +#define MTK_JPEG_FMT_FLAG_ENC_CAPTURE      BIT(3)
> > > >
> > > >  #define MTK_JPEG_FMT_TYPE_OUTPUT   1
> > > >  #define MTK_JPEG_FMT_TYPE_CAPTURE  2
> > > >
> > > > -#define MTK_JPEG_MIN_WIDTH 32
> > > > -#define MTK_JPEG_MIN_HEIGHT        32
> > > > -#define MTK_JPEG_MAX_WIDTH 8192
> > > > -#define MTK_JPEG_MAX_HEIGHT        8192
> > > > +#define MTK_JPEG_MIN_WIDTH 32U
> > > > +#define MTK_JPEG_MIN_HEIGHT        32U
> > > > +#define MTK_JPEG_MAX_WIDTH 65535U
> > > > +#define MTK_JPEG_MAX_HEIGHT        65535U
> > >
> > > Why is it okay to change this from 8192 to 65535?
> > our hw support max width/height to 65535
> 
> Does this also apply to the JPEG decoder on MT8173 for which the
> driver was developed?
yes.
> 
> [snip]
> > > > +/**
> > > > + * jpeg_enc_param - parameters of jpeg encode control
> > > > + * @enable_exif:   EXIF enable for jpeg encode mode
> > > > + * @enc_quality:   destination image quality in encode mode
> > > > + * @restart_interval:      JPEG restart interval for JPEG encoding
> > > > + */
> > > > +struct jpeg_enc_param {
> > > > +   u32 enable_exif;
> > >
> > > Shouldn't this be a bool?
> > this value is seted by V4L2_CID_JPEG_ACTIVE_MARKER control,its' value is
> > V4L2_JPEG_ACTIVE_MARKER_APP1(1<<1),not a bool
> 
> In this case, please call it active_marker and also update the comment
> above accordingly.
> 
> Still, if this driver only cares about V4L2_JPEG_ACTIVE_MARKER_APP1,
> bool enable_exif, assigned  by the code appropriately, would make more
> sense.
done.
> 
> [snip]
> > > > +
> > > > +static void mtk_jpeg_enc_set_encFormat(void __iomem *base, u32 enc_format)
> > > > +{
> > > > +   u32 value;
> > > > +
> > > > +   value = readl(base + JPGENC_CTRL);
> > > > +   value &= ~JPEG_ENC_CTRL_YUV_BIT;
> > > > +   value |= JPGENC_FORMAT(enc_format);
> > > > +   writel(value, base + JPGENC_CTRL);
> > >
> > > The model I suggested above also avoids this kind of read modify write
> > > operations, which just unnecessarily add synchronous MMIO round trips, which
> > > means more CPU overhead.
> > >
> > > Given that the full state is always known by the driver, it can just write
> > > all the register values without the need to read them back.
> > the JPGENC_CTRL register has 32 bits,different bits have different
> > meanings. encformat is bit 3~4,so we need ready before write to
> > guarantee other bits' value not be changed
> 
> I explained this more in my review comments to the latest revision,
> but this is just solving a problem that is introduced by the design of
> the code. If the code was designed so that 1 register is only changed
> in 1 function, there would be no need to read back the registers,
> because the function would initialize the full register at a time.
> That's what most of the other drivers do.
done.
> 
> [snip]
> > > > +enum {
> > > > +   MTK_JPEG_ENC_RESULT_DONE                = 0,
> > > > +   MTK_JPEG_ENC_RESULT_STALL,
> > > > +   MTK_JPEG_ENC_RESULT_VCODEC_IRQ,
> > > > +   MTK_JPEG_ENC_RESULT_ERROR_UNKNOWN
> > > > +};
> > >
> > > Do we need these intermediate error codes? Could we just use errno values
> > > instead?
> > we can just use errno values,but our interrupt status have three
> > state,done/stall,vcodec irq,maybe listing them here makes more clarity
> 
> I suggested another approach in my comments for the latest revision.
> Generally the interrupt handler is the only place where this error
> handling is done, so the intermediate error codes shouldn't be
> necessary, as the interrupt handler would directly signal any issues
> to V4L2.
I have removed the MTK_JPEG_ENC_RESULT_ERROR_UNKNOWN.
> 
> [snip]
> > > > +#define JPGENC_FORMAT(x)           (((x) & 3) << 3)
> > > > +#define JPGENC_WIDTH_HEIGHT(w, h)  (((w) << 16) | (h))
> > > > +#define JPGENC_INIT_OFFSET(x)              ((x) & (~0xF))
> > > > +#define JPGENC_OFFSET_MASK(x)              ((x) & 0xF)
> > > > +#define JPGENC_DST_ADDR(x)         ((x) & (~0xF))
> > > > +#define JPGENC_STALL_ADDR(x, y)            (((x) + (y)) & (~0xF))
> > > > +#define JPGENC_QUALITY_MASK                0xFFFF0000
> > > > +#define JPGENC_SET_QUALITY(x, y)   (((x) & JPGENC_QUALITY_MASK) | (y))
> > >
> > > JPGENC_QUALITY_MASK is only used here, so 0xffff0000 could be just used
> > > directly.
> > done
> > >
> > > > +
> > > > +#endif /* _MTK_JPEG_ENC_REG_H */
> > >
> > > I can see some bits defined in mtk_jpeg_enc_hw.h as well. Perhaps all these
> > > could be moved there too, which would make us have 1 file less?
> > moved bits defined  and register defined to mtk_jpeg_enc_reg.h, but the
> > functions declaration about jpeg enc hw were in mtk_jpeg_enc_hw.h, is
> > that ok?
> 
> My suggestion was the other way around - have all the encoder-specific
> definitions in mtk_jpeg_enc_hw.h and remove mtk_jpeg_enc_reg.h.
> 
> In general, this is a relatively simple hardware block and we should
> be able to just have one file that deals with hardware registers. Then
> there would be no need for headers, as the register definitions could
> be put directly in the source file. A rule of thumb is to use a header
> when something needs to be shared between multiple source files.
done.
> 
> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
