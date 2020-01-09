Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 845AD135BA3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:47:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HFff+PlVhj7Wnyh5bOW+anGGEZVw++NX5grmmbMUizM=; b=D+pagQ04bhcLJ3
	NXwK0KZ9S5waTz4nAKqSJoVS6hb95mNAc4/h0naml+1sjVm+M5L/+aWW5B6JdbRA1PAfi64fjq+DL
	Ig12x1Q7XlJ3mUyR+u1Pk3FA6dXyaMntTs3whqsSUjWLDyJfTQOQCDmnXHoLRWVyLTlLvADd3/329
	sRL83Y7fiPWEpVeJDl6Fj/roQzA2W1w6MZm3bmvo7IFJKcGpTOyv1W037mFOoMQvRkJJhxjVwpBHD
	gtqO86iup+yXbn3DZ9+pOtFO5eB0V7hUV6vLN2ASSn5AMQlRCxMfdOTM/fdNAozxNz5kwRKvtxDuD
	V/6iSLkAEaRLNkjMKH+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipZ5O-0001Fx-0a; Thu, 09 Jan 2020 14:46:58 +0000
Received: from mailoutvs19.siol.net ([185.57.226.210] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipZ5G-0001EP-Cj
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:46:52 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 313305220DE;
 Thu,  9 Jan 2020 15:46:42 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id Jkx5YzaTqnNS; Thu,  9 Jan 2020 15:46:41 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id B7B3452123B;
 Thu,  9 Jan 2020 15:46:41 +0100 (CET)
Received: from jernej-laptop.localnet (unknown [194.6.237.34])
 (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 93E4E5220DE;
 Thu,  9 Jan 2020 15:46:40 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v2 3/4] media: uapi: hevc: Add segment address field
Date: Thu, 09 Jan 2020 15:46:40 +0100
Message-ID: <4523910.31r3eYUQgx@jernej-laptop>
In-Reply-To: <20200108153126.49698491@kernel.org>
References: <20191213160428.54303-1-jernej.skrabec@siol.net>
 <20191213160428.54303-4-jernej.skrabec@siol.net>
 <20200108153126.49698491@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_064650_590052_AEBB9C24 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.210 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hi!

Dne sreda, 08. januar 2020 ob 15:31:26 CET je Mauro Carvalho Chehab 
napisal(a):
> Em Fri, 13 Dec 2019 17:04:27 +0100
> 
> Jernej Skrabec <jernej.skrabec@siol.net> escreveu:
> > If HEVC frame consists of multiple slices, segment address has to be
> > known in order to properly decode it.
> > 
> > Add segment address field to slice parameters.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  Documentation/media/uapi/v4l/ext-ctrls-codec.rst | 5 ++++-
> >  include/media/hevc-ctrls.h                       | 5 ++++-
> >  2 files changed, 8 insertions(+), 2 deletions(-)
> > 
> > diff --git a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> > b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst index
> > aab1451e54d4..5415d5babcc2 100644
> > --- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> > +++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> > @@ -3975,6 +3975,9 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
> > 
> >      * - __u32
> >      
> >        - ``data_bit_offset``
> >        - Offset (in bits) to the video data in the current slice data.
> > 
> > +    * - __u32
> > +      - ``slice_segment_addr``
> > +      -
> > 
> >      * - __u8
> >      
> >        - ``nal_unit_type``
> >        -
> > 
> > @@ -4052,7 +4055,7 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
> > 
> >        - ``num_rps_poc_lt_curr``
> >        - The number of reference pictures in the long-term set.
> >      
> >      * - __u8
> > 
> > -      - ``padding[7]``
> > +      - ``padding[5]``
> > 
> >        - Applications and drivers must set this to zero.
> >      
> >      * - struct :c:type:`v4l2_hevc_dpb_entry`
> >      
> >        - ``dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX]``
> > 
> > diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> > index 1592e52c3614..3e2e32098312 100644
> > --- a/include/media/hevc-ctrls.h
> > +++ b/include/media/hevc-ctrls.h
> > @@ -167,6 +167,9 @@ struct v4l2_ctrl_hevc_slice_params {
> > 
> >  	__u32	bit_size;
> >  	__u32	data_bit_offset;
> > 
> > +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: General slice segment header 
*/
> > +	__u32	slice_segment_addr;
> > +
> 
> Why are you adding it in the middle of the data? This will break any
> existing userspace code that might be relying on it.
> 
> Ok, I know that this header is not yet under include/uapi,and there's a
> warning on it for letting people know that it shouldn't be used anywhere.
> 
> Still, people might be using it.

I did it that way to keep fields aligned. Cedrus is currently the only 
mainlined driver to use this structure and userspace users are also very rare 
at this time.

Anyway, not all HEVC features are supported at this time, which means that 
this structure might grow. Once that happens, you'll lose binary compatibility 
anyway, but source compatibility should be fine.

Best regards,
Jernej

> 
> >  	/* ISO/IEC 23008-2, ITU-T Rec. H.265: NAL unit header */
> >  	__u8	nal_unit_type;
> >  	__u8	nuh_temporal_id_plus1;
> > 
> > @@ -200,7 +203,7 @@ struct v4l2_ctrl_hevc_slice_params {
> > 
> >  	__u8	num_rps_poc_st_curr_after;
> >  	__u8	num_rps_poc_lt_curr;
> > 
> > -	__u8	padding;
> > +	__u8	padding[5];
> > 
> >  	/* ISO/IEC 23008-2, ITU-T Rec. H.265: General slice segment header 
*/
> >  	struct v4l2_hevc_dpb_entry dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> 
> Cheers,
> Mauro





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
