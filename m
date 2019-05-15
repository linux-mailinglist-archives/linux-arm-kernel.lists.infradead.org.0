Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 516CC1F4D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 14:50:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WdhfHyBUwJYhe+UX7YnGjrU+MRg0fj2Xna20Tjf2XQ=; b=HxSX3jyqAAa35U
	AiklKhehtOZZ67IZi4sVsXnTBry0PiI0918DUeT7sRMQolZ2L9TMpvVxcP2Vr4jze0QM81GfsDjzV
	OnlbpLliRSELH5sXykxMGIxsLTje0W9A+MqYICK9GLdS1hfxLB5joSdiim/hEQR0KZYVIKvKpgS2H
	4mEM4Z9SG3at+4qFLv5NyUoLRhbazbU8KGGDaVGJko80cYv4DIg9/bO8oTixCs+/3h4Q/5jgHhykv
	Fu9qhqZiY2c3Cc+ysA4krp1YGnhhJ91+mowgvR7KKmIMCx3qzO8vH9SJyhjpQUW9DyVxA+ZNYPUQy
	qGFCvU+5aCL9yMg+p2JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQtM7-0000qD-Vn; Wed, 15 May 2019 12:49:59 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQtM0-0000pZ-AA; Wed, 15 May 2019 12:49:54 +0000
X-UUID: 02beb1857e144677bd82b830c4dac088-20190515
X-UUID: 02beb1857e144677bd82b830c4dac088-20190515
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 639512267; Wed, 15 May 2019 04:49:43 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 15 May 2019 05:49:43 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 15 May 2019 20:49:40 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 15 May 2019 20:49:39 +0800
Message-ID: <1557924579.5721.5.camel@mtksdccf07>
Subject: Re: [RFC, V2, 06/11] media: platform: Add Mediatek ISP P1 image &
 meta formats
From: Jungo Lin <jungo.lin@mediatek.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Date: Wed, 15 May 2019 20:49:39 +0800
In-Reply-To: <5aad30f8-04b0-e3f1-e1d1-def349fd2974@xs4all.nl>
References: <Jungo Lin <jungo.lin@mediatek.com>
 <20190510015755.51495-7-jungo.lin@mediatek.com>
 <5aad30f8-04b0-e3f1-e1d1-def349fd2974@xs4all.nl>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 1CCEB0FC81A333AE5BC56B0F71FB2257A386FDA685253B160604E3EC0E7228382000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_054952_358863_91C911A5 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: ryan.yu@mediatek.com, frankie.chiu@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 suleiman@chromium.org, Jerry-ch.Chen@mediatek.com, hans.verkuil@cisco.com,
 frederic.chen@mediatek.com, seraph.huang@mediatek.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, sj.huang@mediatek.com,
 yuzhao@chromium.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, shik@chromium.org, tfiga@chromium.org,
 christie.yu@mediatek.com, zwisler@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Hans:

Thanks for your comments.

On Mon, 2019-05-13 at 10:35 +0200, Hans Verkuil wrote:
> On 5/10/19 3:57 AM, Jungo Lin wrote:
> > Add packed/unpacked/full-g bayer format with 8/10/12/14 bit
> > for image output. Add Pass 1 (P1) specific meta formats for
> > parameter processing and 3A/other statistics.
> 
> These pixel formats will need to be documented in Documentation/media/uapi/v4l/pixfmt-<something>.rst.
> 

Ok, we will add these pixfmt-<something>.rst files in next patch to
explain these pixel formats.

> > 
> > Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
> > ---
> >  include/uapi/linux/videodev2.h | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> > 
> > diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> > index 1db220da3bcc..b79046d2d812 100644
> > --- a/include/uapi/linux/videodev2.h
> > +++ b/include/uapi/linux/videodev2.h
> > @@ -711,6 +711,20 @@ struct v4l2_pix_format {
> >  #define V4L2_PIX_FMT_IPU3_SGRBG10	v4l2_fourcc('i', 'p', '3', 'G') /* IPU3 packed 10-bit GRBG bayer */
> >  #define V4L2_PIX_FMT_IPU3_SRGGB10	v4l2_fourcc('i', 'p', '3', 'r') /* IPU3 packed 10-bit RGGB bayer */
> >  
> > +/* Vendor specific - Mediatek ISP compressed formats */
> > +#define V4L2_PIX_FMT_MTISP_U8	v4l2_fourcc('M', 'T', 'U', '8') /* Unpacked bayer format, 16-bit */
> > +#define V4L2_PIX_FMT_MTISP_U10  v4l2_fourcc('M', 'T', 'U', 'A') /* Unpacked bayer format, 16-bit */
> > +#define V4L2_PIX_FMT_MTISP_U12  v4l2_fourcc('M', 'T', 'U', 'C') /* Unpacked bayer format, 16-bit */
> > +#define V4L2_PIX_FMT_MTISP_U14  v4l2_fourcc('M', 'T', 'U', 'E') /* Unpacked bayer format, 16-bit */
> > +#define V4L2_PIX_FMT_MTISP_B8	v4l2_fourcc('M', 'T', 'B', '8') /* Packed   bayer format,  8-bit */
> > +#define V4L2_PIX_FMT_MTISP_B10  v4l2_fourcc('M', 'T', 'B', 'A') /* Packed   bayer format, 10-bit */
> > +#define V4L2_PIX_FMT_MTISP_B12  v4l2_fourcc('M', 'T', 'B', 'C') /* Packed   bayer format, 12-bit */
> > +#define V4L2_PIX_FMT_MTISP_B14  v4l2_fourcc('M', 'T', 'B', 'E') /* Packed   bayer format, 14-bit */
> > +#define V4L2_PIX_FMT_MTISP_F8	v4l2_fourcc('M', 'T', 'F', '8') /* Full-G   bayer format,  8-bit */
> > +#define V4L2_PIX_FMT_MTISP_F10  v4l2_fourcc('M', 'T', 'F', 'A') /* Full-G   bayer format, 10-bit */
> > +#define V4L2_PIX_FMT_MTISP_F12  v4l2_fourcc('M', 'T', 'F', 'C') /* Full-G   bayer format, 12-bit */
> > +#define V4L2_PIX_FMT_MTISP_F14  v4l2_fourcc('M', 'T', 'F', 'E') /* Full-G   bayer format, 14-bit */
> 
> Are these all compressed formats? What sort of compression is used? Can software unpack it,
> or this is meant to be fed to other mediatek hardware blocks?
> 

No, these are not compressed formats. These images could be unpacked by
software, not depended on Mediatek hardware blocks.

> > +
> >  /* SDR formats - used only for Software Defined Radio devices */
> >  #define V4L2_SDR_FMT_CU8          v4l2_fourcc('C', 'U', '0', '8') /* IQ u8 */
> >  #define V4L2_SDR_FMT_CU16LE       v4l2_fourcc('C', 'U', '1', '6') /* IQ u16le */
> > @@ -732,6 +746,12 @@ struct v4l2_pix_format {
> >  #define V4L2_META_FMT_VSP1_HGT    v4l2_fourcc('V', 'S', 'P', 'T') /* R-Car VSP1 2-D Histogram */
> >  #define V4L2_META_FMT_UVC         v4l2_fourcc('U', 'V', 'C', 'H') /* UVC Payload Header metadata */
> >  #define V4L2_META_FMT_D4XX        v4l2_fourcc('D', '4', 'X', 'X') /* D4XX Payload Header metadata */
> > +/* Vendor specific - Mediatek ISP parameters for firmware */
> > +#define V4L2_META_FMT_MTISP_PARAMS v4l2_fourcc('M', 'T', 'f', 'p') /* ISP tuning parameters */
> > +#define V4L2_META_FMT_MTISP_3A	   v4l2_fourcc('M', 'T', 'f', 'a') /* AE/AWB histogram */
> > +#define V4L2_META_FMT_MTISP_AF	   v4l2_fourcc('M', 'T', 'f', 'f') /* AF histogram */
> > +#define V4L2_META_FMT_MTISP_LCS	   v4l2_fourcc('M', 'T', 'f', 'c') /* Local contrast enhanced statistics */
> > +#define V4L2_META_FMT_MTISP_LMV	   v4l2_fourcc('M', 'T', 'f', 'm') /* Local motion vector histogram */
> 
> The documentation for these meta formats either needs to point to
> freely available mediatek documentation (i.e. no NDA needed), or it
> has to be documented in a header or in the pixelformat documentation.
> 

Ok, we are under internal discussion how to export these meta
information.

> Regards,
> 
> 	Hans
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
