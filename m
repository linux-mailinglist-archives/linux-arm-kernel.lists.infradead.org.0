Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBDF1E7D24
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 14:26:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jzEOXqbwc0amDUsaiZTZu6GyxWLPCKVKy1ahWrZcp3w=; b=jYhODg/UCRH1NF
	eaP3hXCdjK/l0xtvos+faiVVZT7OpABwek2ckba2mtbWhfZ7OGfwtZ4x2+ewB8Yf2q3oaTZBS8VD7
	DpU/upIMIs91bZxN4z0SDgDLwFSe1GIop5s8sarHlz8kNCcGqXWbV77mOaeZqiKZLsqE9GZY07RjK
	SdUmNskpp5zKmZ4USg7FroBhyRH2V1VeQthICwB1/B/KQ+Powuy1tjtCSA7jj9l6ACyODve4CY0Jb
	a3yqqJ+4hPSB3tDz/QDSFOMrO60nd4Sfwtm/y9dE5X6SL1R6qpsenFdUbJVtujQ+FUqb36EnasstP
	kVOjSfVBeXKib4ux2N4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jee5i-0001U3-DW; Fri, 29 May 2020 12:26:26 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jee5V-0001SZ-5j; Fri, 29 May 2020 12:26:15 +0000
X-UUID: d00eae95229d4aac84bf76508c30060c-20200529
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=zfpxSkdpO7rTfqKhocwmN5eNlOC3rZRkTd4ySCjxGpY=; 
 b=DPuKFP5Cx/YjCKUixvhFSZPzFaU52LR/wTgMr8pKfN/svxjsK6R3wk4K6qO+TKhf025oPrLgjY4fcSK8Ob29Du8IPpYu2TGgqFEUSqweLKo0wZ1Atu0OXG5b+YNmDOqlScPbZTuLQryEzMl7POPK+KsazNnHAxmVXLHFPTkUBQo=;
X-UUID: d00eae95229d4aac84bf76508c30060c-20200529
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2124535601; Fri, 29 May 2020 04:25:54 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 29 May 2020 05:26:01 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 29 May 2020 20:26:01 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 29 May 2020 20:26:01 +0800
Message-ID: <1590755163.23156.24.camel@mtksdccf07>
Subject: Re: [RFC PATCH V4 4/4] platform: mtk-isp: Add Mediatek FD driver
From: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 29 May 2020 20:26:03 +0800
In-Reply-To: <CAAFQd5DodDfWsHkhQZP-M70k9_2sUwwb4zHtWfTx5EDyEKkwow@mail.gmail.com>
References: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
 <20191204124732.10932-5-Jerry-Ch.chen@mediatek.com>
 <20200521182825.GA249683@chromium.org>
 <1590156658.27807.84.camel@mtksdccf07>
 <CAAFQd5DodDfWsHkhQZP-M70k9_2sUwwb4zHtWfTx5EDyEKkwow@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_052613_226161_68B546A9 
X-CRM114-Status: GOOD (  34.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-devicetree <devicetree@vger.kernel.org>,
 Sean Cheng =?UTF-8?Q?=28=E9=84=AD=E6=98=87=E5=BC=98=29?=
 <Sean.Cheng@mediatek.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 zwisler@chromium.org, srv_heupstream <srv_heupstream@mediatek.com>,
 Christie Yu =?UTF-8?Q?=28=E6=B8=B8=E9=9B=85=E6=83=A0=29?=
 <christie.yu@mediatek.com>, jerry-ch.chen@mediatek.com,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Jungo Lin =?UTF-8?Q?=28=E6=9E=97=E6=98=8E=E4=BF=8A=29?=
 <jungo.lin@mediatek.com>, Sj
 Huang <sj.huang@mediatek.com>, yuzhao@chromium.org,
 Hans Verkuil <hans.verkuil@cisco.com>, Pi-Hsun Shih <pihsun@chromium.org>,
 Frederic Chen =?UTF-8?Q?=28=E9=99=B3=E4=BF=8A=E5=85=83=29?=
 <frederic.chen@mediatek.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, "moderated list:ARM/Mediatek
 SoC support" <linux-mediatek@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, "list@263.net:IOMMU
 DRIVERS <iommu@lists.linux-foundation.org>,  Joerg  Roedel
 <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz,

I Appreciate your review comments, here's the reply.

On Mon, 2020-05-25 at 14:24 +0200, Tomasz Figa wrote:
> r
> 
> On Fri, May 22, 2020 at 4:11 PM Jerry-ch Chen
> <Jerry-ch.Chen@mediatek.com> wrote:
> >
> > Hi Tomasz,
> >
> > On Thu, 2020-05-21 at 18:28 +0000, Tomasz Figa wrote:
> > > Hi Jerry,
> > >
> > > On Wed, Dec 04, 2019 at 08:47:32PM +0800, Jerry-ch Chen wrote:
> [snip]
> > > > +
> > > > +enum face_angle {
> > > > +   MTK_FD_FACE_FRONT,
> > > > +   MTK_FD_FACE_RIGHT_50,
> > > > +   MTK_FD_FACE_LEFT_50,
> > > > +   MTK_FD_FACE_RIGHT_90,
> > > > +   MTK_FD_FACE_LEFT_90,
> > > > +   MTK_FD_FACE_ANGLE_NUM,
> > > > +};
> > >
> > > This enum seems to define values for the V4L2_CID_MTK_FD_DETECT_POSE
> > > control. Considering that this is an enumeration and the values are
> > > actually integers (-90, -50, 0, 50, 90), perhaps this should be an
> > > INTEGER_MENU control instead?
> > >
> >
> > this ioctl let user select multiple face positions(combination of angles
> > and directions) to be detected. so I thought I am not able to use the
> > INTEGER_MENU for this purpose.
> 
> Ah, okay, I thought there is only one selection possible.
> 
> >
> > A bit-field as following should be used by user.
> > I consider adding it to uapi.
> >
> > struct face_direction_def {
> > __u16 MTK_FD_FACE_DIR_0 : 1,
> >         MTK_FD_FACE_DIR_30 : 1,
> >         MTK_FD_FACE_DIR_60 : 1,
> >         MTK_FD_FACE_DIR_90 : 1,
> >         MTK_FD_FACE_DIR_120 : 1,
> >         MTK_FD_FACE_DIR_150 : 1,
> >         MTK_FD_FACE_DIR_180 : 1,
> >         MTK_FD_FACE_DIR_210 : 1,
> >         MTK_FD_FACE_DIR_240 : 1,
> >         MTK_FD_FACE_DIR_270 : 1,
> >         MTK_FD_FACE_DIR_300 : 1,
> >         MTK_FD_FACE_DIR_330 : 1,
> >         : 4;
> > };
> 
> Note that bit fields are not recommended in UAPI because of not being
> well specified by the language. Instead bits should be defined using
> macros with explicit masks or sometimes enums.
> 
Ok, I'll define them in macro with masks.

> >
> > User can also select some face directions of each face angle in one
> > ioctl, for example:
> >
> > /*
> >  * u16 face_directions[MTK_FD_FACE_ANGLE_NUM] = {0};
> >  *
> >  *      face_directions[MTK_FD_FACE_FRONT] = 0x7; //angle:0, dir:0,30,60
> >  *      face_directions[MTK_FACE_RIGHT_50] = 0x2; //angle:50, dir:30
> >  *
> >  */
> 
> Makes sense, thanks.
> 
> >
> > > > +
> > > > +struct fd_buffer {
> > > > +   __u32 scp_addr; /* used by SCP */
> > > > +   __u32 dma_addr; /* used by DMA HW */
> > > > +} __packed;
> > fd buffer is used for scp ipi
> >
> > > > +
> > > > +struct fd_face_result {
> > > > +   char data[16];
> > > > +};
> > fd_face_result is used for user, so it should be moved to
> > include/uapi/linux.
> > In fact, it has bit-field definition for user, so I would like to define
> > it in include/uapi/linux as following:
> >
> > struct fd_face_result {
> >   __u64 face_idx : 12,
> >         type : 1,
> >         x0 : 10,
> >         y0 : 10,
> >         x1 : 10,
> >         y1 : 10,
> >         fcv1 : 11;
> >   __u64 fcv2 : 7,
> >         rip_dir : 4,
> >         rop_dir : 3,
> >         det_size : 5;
> > };
> >
> 
> Indeed this should be defined, but as per my comment above, please
> avoid using the bitfield construct and define shifts and masks
> instead.
> 
Ok, I'll fix it.

> >
> > > > +
> > > > +struct fd_user_output {
> > > > +   struct fd_face_result results[MTK_FD_MAX_RESULT_NUM];
> > > > +   __u16 number;
> > >
> > > Is this perhaps the number of results? If so, would num_results be a better
> > > name?
> > >
> > yes, fixed.
> > > > +};
> > >
> > > Since this struct is the meta buffer format, it is a part of the userspace
> > > interface and should be defined in a header under include/uapi/linux/.
> > >
> > Ok, I will create include/uapi/linux/mtk_fd_40.h
> > which suppose to include structures that userspace will use.
> > should the private IOCTLs be placed in it together?
> >
> 
> Sorry, what private IOCTLs are you referring to? If you mean private
> control IDs, then yes, they should go to that header.
yes, the IDs, sorry for the wrong expression.

> 
> [snip]
> > > > +static int mtk_fd_vb2_queue_setup(struct vb2_queue *vq,
> > > > +                             unsigned int *num_buffers,
> > > > +                             unsigned int *num_planes,
> > > > +                             unsigned int sizes[],
> > > > +                             struct device *alloc_devs[])
> > > > +{
> > > > +   struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > > > +   unsigned int size[2];
> > > > +   unsigned int plane;
> > > > +
> > > > +   switch (vq->type) {
> > > > +   case V4L2_BUF_TYPE_META_CAPTURE:
> > > > +           size[0] = ctx->dst_fmt.buffersize;
> > > > +           break;
> > > > +   case V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE:
> > > > +           size[0] = ctx->src_fmt.plane_fmt[0].sizeimage;
> > > > +           if (*num_planes == 2)
> > > > +                   size[1] = ctx->src_fmt.plane_fmt[1].sizeimage;
> > > > +           break;
> > > > +   }
> > >
> > > Is this code above needed? The code below sets sizes[] and it uses a for loop,
> > > without opencoded assignment for the second plane.
> > >
> >
> > Looks like not really useful here,
> > it should check sizes and num_planes if num_plane not zero,
> > and for V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, it will at most have 2
> > planes, maybe no need for loop as well.
> 
> Loops generally make the code cleaner and there might be some desire
> to add support for more formats in the future, e.g. in case a next
> generation of the hardware shows up.
> 
Ok, got it.

> > I will refine this function as following:
> > mtk_fd_vb2_queue_setup(...)
> > {
> >         struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> >
> >         if (*num_planes == 0) {
> >                 if (vq->type == V4L2_BUF_TYPE_META_CAPTURE) {
> >                         sizes[0] = ctx->dst_fmt.buffersize;
> >                         *num_planes = 1;
> >                         return 0;
> >                 } else if (vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
> >                         *num_planes = ctx->src_fmt.num_planes;
> >                         sizes[0] = ctx->src_fmt.plane_fmt[0].sizeimage;
> >                         if (*num_planes == 2)
> >                                 sizes[1] = ctx->src_fmt.plane_fmt[1].sizeimage;
> >                         return 0;
> >                 }
> >                 return -EINVAL;
> >         }
> >
> >         /* If num_plane not zero, check the num_plane and sizes*/
> >         if (vq->type == V4L2_BUF_TYPE_META_CAPTURE) {
> >                 if ((*num_planes == 1) &&
> >                     (sizes[0] <= ctx->dst_fmt.buffersize))
> >                         return 0;
> 
> nit: The typical convention is to check for problems and return the
> error code earlier, with the success handled at the end of the block.
> 
Got it.

> >                 else
> >                         return -EINVAL;
> >         }
> >         if (vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
> >                 if ((*num_planes == 1) &&
> >                     (sizes[0] <= ctx->src_fmt.plane_fmt[0].sizeimage))
> >                         return 0;
> >                 else if ((*num_planes == 2) &&
> >                          (sizes[0] <= ctx->src_fmt.plane_fmt[0].sizeimage) &&
> >                          (sizes[1] <= ctx->src_fmt.plane_fmt[1].sizeimage))
> >                         return 0;
> 
> Wouldn't a loop eliminate the need to if/else if through the various
> supported cases and duplicate the size checks?
> 
> >                 else
> >                         return -EINVAL;
> >
> >         }
> >         return 0;
> > }
> 
> How about the following?
> 
> mtk_fd_vb2_queue_setup(...)
> {
>         struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> 
>         if (vq->type == V4L2_BUF_TYPE_META_CAPTURE) {
>                 if (*num_planes == 0) {
>                         *num_planes = 1;
>                         sizes[0] = ctx->dst_fmt.buffersize;
>                         return 0;
>                 }
> 
>                 if (*num_planes != 1 || sizes[0] < ctx->dst_fmt.buffersize)
>                                 return -EINVAL;
> 
>                 return 0;
>         }
> 
>         /* V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE */
>         if (*num_planes == 0) {
>                         *num_planes = ctx->src_fmt.num_planes;
>                         for (i = 0; i < ctx->src_fmt.num_planes; ++i)
>                                 sizes[i] = ctx->src_fmt.plane_fmt[i].sizeimage;
>                         return 0;
>         }
> 
>         if (*num_planes < ctx->src_fmt.num_planes)
>                 return -EINVAL;
> 
>         for (i = 0; i < ctx->src_fmt.num_planes; ++i)
>                 if (sizes[i] < ctx->src_fmt.plane_fmt[i].sizeimage)
>                         return -EINVAL;
> 
>         return 0;
> }
> 
> Note that it fully separates the code dealing with each queue and thus
> improves the readability.
> 
> In this case, it could actually be beneficial to split the vb2_ops
> implementation into one that deals only with video_output_mplane and
> one only with meta_capture. This would allow eliminating the special
> casing based on vq->type and thus further simplify the code. Not sure
> if it applies to the other vb2 callbacks, though.
> 
Got it, thanks for the comments.

> [snip]
> > > > +static void mtk_fd_fill_pixfmt_mp(struct v4l2_pix_format_mplane *dfmt,
> > > > +                             const struct v4l2_pix_format_mplane *sfmt)
> > > > +{
> > > > +   dfmt->field = V4L2_FIELD_NONE;
> > > > +   dfmt->colorspace = V4L2_COLORSPACE_BT2020;
> > > > +   dfmt->num_planes = sfmt->num_planes;
> > > > +   dfmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> > > > +   dfmt->quantization = V4L2_QUANTIZATION_DEFAULT;
> > > > +   dfmt->xfer_func =
> > > > +           V4L2_MAP_XFER_FUNC_DEFAULT(dfmt->colorspace);
> > > > +
> > > > +   /* Keep user setting as possible */
> > > > +   dfmt->width = clamp(dfmt->width,
> > > > +                       MTK_FD_OUTPUT_MIN_WIDTH,
> > > > +                       MTK_FD_OUTPUT_MAX_WIDTH);
> > > > +   dfmt->height = clamp(dfmt->height,
> > > > +                        MTK_FD_OUTPUT_MIN_HEIGHT,
> > > > +                        MTK_FD_OUTPUT_MAX_HEIGHT);
> > > > +
> > > > +   if (sfmt->num_planes == 2) {
> > > > +           /* NV16M and NV61M has 1 byte per pixel */
> > > > +           dfmt->plane_fmt[0].bytesperline = dfmt->width;
> > > > +           dfmt->plane_fmt[1].bytesperline = dfmt->width;
> > > > +   } else {
> > > > +           /* 2 bytes per pixel */
> > > > +           dfmt->plane_fmt[0].bytesperline = dfmt->width * 2;
> > > > +   }
> > > > +
> > > > +   dfmt->plane_fmt[0].sizeimage =
> > > > +           dfmt->height * dfmt->plane_fmt[0].bytesperline;
> > >
> > > Could some of the code above be replaced with v4l2_fill_pixfmt_mp()?
> > >
> > I would like to refine as following
> >
> > mtk_fd_fill_pixfmt_mp(...){
> >         v4l2_fill_pixfmt_mp(dfmt, sfmt->pixelformat, dfmt->width,
> > dfmt->height);
> >
> >         dfmt->field = V4L2_FIELD_NONE;
> >         dfmt->colorspace = V4L2_COLORSPACE_BT2020;
> >         dfmt->num_planes = sfmt->num_planes;
> 
> num_planes should be already filled in by the helper. That actually
> raises a question on whether there is any need to have sfmt passed to
> this function at all. Perhaps all we need is the value of pixelformat?
> 
Yes, I'll replace sfmt with u32 pixfmt.

> >         dfmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> >         dfmt->quantization = V4L2_QUANTIZATION_DEFAULT;
> >         dfmt->xfer_func =
> >                 V4L2_MAP_XFER_FUNC_DEFAULT(dfmt->colorspace);
> > }
> >
> 
> Isn't still a need to clamp() width and height to min/max, though?
Yes, I'll add them back.

This function will be refined as :

static void mtk_fd_fill_pixfmt_mp(struct v4l2_pix_format_mplane *dfmt,
                                  u32 pixfmt)
{
        v4l2_fill_pixfmt_mp(dfmt, pixfmt, dfmt->width, dfmt->height);

        dfmt->field = V4L2_FIELD_NONE;
        dfmt->colorspace = V4L2_COLORSPACE_BT2020;
        dfmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
        dfmt->quantization = V4L2_QUANTIZATION_DEFAULT;
        dfmt->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(dfmt->colorspace);

        /* Keep user setting as possible */
        dfmt->width = clamp(dfmt->width,
                            MTK_FD_OUTPUT_MIN_WIDTH,
                            MTK_FD_OUTPUT_MAX_WIDTH);
        dfmt->height = clamp(dfmt->height,
                             MTK_FD_OUTPUT_MIN_HEIGHT,
                             MTK_FD_OUTPUT_MAX_HEIGHT);
}


> 
> [snip]
> > > > +   fd_param.user_param.src_img_fmt =
> > > > +           get_fd_img_fmt(ctx->src_fmt.pixelformat);
> > > > +   if (ctx->src_fmt.num_planes == 2)
> > > > +           fd_param.src_img[1].dma_addr =
> > > > +                   vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 1);
> > >
> > > nit: Could this be moved above, to be just below src_img[0] initialization,
> > > for readability reasons?
> > >
> > Ok, this function will be refined as
> >
> > static void mtk_fd_device_run(void *priv)
> > {
> >         struct mtk_fd_ctx *ctx = priv;
> >         struct mtk_fd_dev *fd = ctx->fd_dev;
> >         struct vb2_v4l2_buffer *src_buf, *dst_buf;
> >         struct fd_enq_param fd_param;
> >
> >         src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
> >         dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> >
> >         fd_param.src_img[0].dma_addr =
> >                 vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 0);
> >         if (ctx->src_fmt.num_planes == 2)
> >                 fd_param.src_img[1].dma_addr =
> >                         vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 1);
> 
> How about making this a loop in terms of ctx->src_fmt.num_planes?
> 
yes, it will be refined as following, I use the src_vb2_buf to reduce
the length for fitting 80 columns

src_vb2_buf = &src_buf->vb2_buf;
dst_vb2_buf = &dst_buf->vb2_buf;

for (i = 0; i < ctx->src_fmt.num_planes; i++)
	fd_param.src_img[i].dma_addr =
		vb2_dma_contig_plane_dma_addr(src_vb2_buf,i);

fd_param.user_result.dma_addr =
	vb2_dma_contig_plane_dma_addr(dst_vb2_buf, 0);

> >         fd_param.user_result.dma_addr =
> >                 vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
> >         fd_param.user_param.src_img_fmt =
> >                 get_fd_img_fmt(fd->dev, ctx->src_fmt.pixelformat);
> >
> >         mtk_fd_fill_user_param(&fd_param.user_param, &ctx->hdl);
> >
> >         /* Complete request controls if any */
> >         v4l2_ctrl_request_complete(src_buf->vb2_buf.req_obj.req, &ctx->hdl);
> >
> >         fd->output = vb2_plane_vaddr(&dst_buf->vb2_buf, 0);
> >         mtk_fd_hw_job_exec(fd, &fd_param);
> > }
> 
> Best regards,
> Tomasz

Thanks and Best regards,
Jerry
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
