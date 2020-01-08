Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 963CB134500
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 15:31:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4g8YiWPhk6H4RsV7Ns+PF1f7It8Nz5BhUqnq3Ji/uYo=; b=JcTjXYhGxXOmx4
	2y9ILlH6vHbK0/i22mTWf6TUx23sbb6tnnE750BJC2affEPguzyc/9WxwDh0NYj8QqaXHvKE6puL3
	ElnBN8skFeX6JMyc5dXYGb28aT+dsSkBwA4SvuYXWnOTS8S/TbkvTOd8bQQlS9O4NbmNMcMOCABZr
	MkbB2tnJVJrNEVdizjtjNe2XLPtN9IOBHa5MQ4MWGqMJbRgFjp46cKh9L+0DqfN9rkck1DjQwMwuq
	aXIhQCDd4BndiMEKTReNestDyRUY6wiysZSXLbGAmWDtSHtXPpIZgX777SHAzf/ha5bNN+ENPdpmR
	K5Xz+jF9eov7E/gDFGjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipCN9-0002ai-DP; Wed, 08 Jan 2020 14:31:47 +0000
Received: from 177.206.132.169.dynamic.adsl.gvt.net.br ([177.206.132.169]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipCN2-0002Z1-Py; Wed, 08 Jan 2020 14:31:41 +0000
Date: Wed, 8 Jan 2020 15:31:26 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 3/4] media: uapi: hevc: Add segment address field
Message-ID: <20200108153126.49698491@kernel.org>
In-Reply-To: <20191213160428.54303-4-jernej.skrabec@siol.net>
References: <20191213160428.54303-1-jernej.skrabec@siol.net>
 <20191213160428.54303-4-jernej.skrabec@siol.net>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, hverkuil@xs4all.nl, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Fri, 13 Dec 2019 17:04:27 +0100
Jernej Skrabec <jernej.skrabec@siol.net> escreveu:

> If HEVC frame consists of multiple slices, segment address has to be
> known in order to properly decode it.
> 
> Add segment address field to slice parameters.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  Documentation/media/uapi/v4l/ext-ctrls-codec.rst | 5 ++++-
>  include/media/hevc-ctrls.h                       | 5 ++++-
>  2 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> index aab1451e54d4..5415d5babcc2 100644
> --- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> +++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> @@ -3975,6 +3975,9 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>      * - __u32
>        - ``data_bit_offset``
>        - Offset (in bits) to the video data in the current slice data.
> +    * - __u32
> +      - ``slice_segment_addr``
> +      -
>      * - __u8
>        - ``nal_unit_type``
>        -
> @@ -4052,7 +4055,7 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>        - ``num_rps_poc_lt_curr``
>        - The number of reference pictures in the long-term set.
>      * - __u8
> -      - ``padding[7]``
> +      - ``padding[5]``
>        - Applications and drivers must set this to zero.
>      * - struct :c:type:`v4l2_hevc_dpb_entry`
>        - ``dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
> diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> index 1592e52c3614..3e2e32098312 100644
> --- a/include/media/hevc-ctrls.h
> +++ b/include/media/hevc-ctrls.h
> @@ -167,6 +167,9 @@ struct v4l2_ctrl_hevc_slice_params {
>  	__u32	bit_size;
>  	__u32	data_bit_offset;
>  
> +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: General slice segment header */
> +	__u32	slice_segment_addr;
> +

Why are you adding it in the middle of the data? This will break any 
existing userspace code that might be relying on it.

Ok, I know that this header is not yet under include/uapi,and there's a
warning on it for letting people know that it shouldn't be used anywhere.

Still, people might be using it.

>  	/* ISO/IEC 23008-2, ITU-T Rec. H.265: NAL unit header */
>  	__u8	nal_unit_type;
>  	__u8	nuh_temporal_id_plus1;
> @@ -200,7 +203,7 @@ struct v4l2_ctrl_hevc_slice_params {
>  	__u8	num_rps_poc_st_curr_after;
>  	__u8	num_rps_poc_lt_curr;
>  
> -	__u8	padding;
> +	__u8	padding[5];
>  
>  	/* ISO/IEC 23008-2, ITU-T Rec. H.265: General slice segment header */
>  	struct v4l2_hevc_dpb_entry dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];




Cheers,
Mauro

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
