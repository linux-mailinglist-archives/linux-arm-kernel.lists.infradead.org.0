Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4804F35E19
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 15:40:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wlIOwbi9mOEuhuEk7SPS7vTzg6jl/rLT/mJE1Qj46Zg=; b=rGiu8hkyh4BB+l
	AmxxRVZiQuFeINxxglNH6/fSRNVGjG8TneCulblwlYgi7QBu9PDGUqOk16OmC0/TeRs6NWLei0BVA
	jg8kPxJh2yK6eYlA+oaM5sbc9fXSc7jtPsijf4/DGMW38hakqv8L3G25spPOs7bzMnPfmq6jViAv/
	6a7ERb5fCvU/VbQSxKRBom0zaZly8bncMscmyg+JVyhOVeFs3IcmoPKxXHXL7D9EAF2hoieWvyry+
	lS9jZY8/Qf+bNkQ+pmMdeDD1RP97d3kbsgchDsD44QoYJx97fXQ88YSLdq8GP1JG2iKF1bOtCSHTP
	P/T1yNjt/3kCqEec2yww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYW90-0002YW-Dz; Wed, 05 Jun 2019 13:39:58 +0000
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYW8r-0002Wx-BY; Wed, 05 Jun 2019 13:39:51 +0000
Received: from [IPv6:2001:420:44c1:2579:c806:4d76:5b3c:eea9]
 ([IPv6:2001:420:44c1:2579:c806:4d76:5b3c:eea9])
 by smtp-cloud7.xs4all.net with ESMTPA
 id YW8ihmUzN3qlsYW8mhgRsz; Wed, 05 Jun 2019 15:39:44 +0200
Subject: Re: [PATCH v7 2/4] media: videodev2: add
 V4L2_FMT_FLAG_FIXED_RESOLUTION
To: Maxime Jourdan <mjourdan@baylibre.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>
References: <20190531093126.26956-1-mjourdan@baylibre.com>
 <20190531093126.26956-3-mjourdan@baylibre.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <9731b2db-efd4-87d0-c48d-87adec433747@xs4all.nl>
Date: Wed, 5 Jun 2019 15:39:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190531093126.26956-3-mjourdan@baylibre.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfL/7ZtmqqJer1hsK60jgZcgv+ioTMnBw2zhprc8Tz/bSylE8VX716nESUCWjidOuDf++DgPrGp2TlmKV5m4/D8Uig0rBNJDhyiYnBcNPYN0uSWQYEbqc
 iGPqk330/IS2JJurKbAu7zb5CiKZnIF0mh86cRmofiHBhEJpBAvfw+b2ZhBs0791Ti17gyoh1Kb1p+cj8jTcxar9xMevoSncdv+OcQj7vqP9QX3QDu1/V0fw
 Cjr+Ss9igdPPnCorYJa7CRHkI6LmnZ26jdOuCy2C6GkXKAf6SVG242m4NBWVYP0O4wS3q/QhCD+1UWVihM8BdbN/2RhSH4G9kgp/0oZGV2jvYX76BzgVgyQM
 1q1rGgIaYu252pObFB0QHBhd2nxcVRaflTFhSv6QNXOwWqdAiETXCVJ/B0HTr9Zb3/OltbHHB5mo7rrQFCdu4xf/8mCX8/0vgOTTUdDKpLfpCU08YO4blDdv
 NPpTQMBErTJOwzpD4/R0i6O6lfR0ZIdtbTcCA/VXx8Y+UVRAB9QwVtn9tGLSYyVWjHd7l+TzvFNZ1fbTVjPTIO5NewY9QQCybH3da4oeZ0GBkwCazm3iLiJB
 guYMTtfR7IUQGlSU2YYVcJJwj/gLClyKMlV6r5DU4Dhs+Kd2kVHTL950rjCC6IKKR7yKnEsKMoShErTrTGGsWxPZPexQf2CbHAjql8hY9QJT1rTSoMwjdDPD
 c0iwon8trQ0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_063949_551053_816DF43E 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.31 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-amlogic@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

I am wondering if this flag shouldn't be inverted: you set
V4L2_FMT_FLAG_DYN_RESOLUTION if dynamic resolution is supported,
otherwise it isn't.

Can all the existing mainlined codec drivers handle midstream
resolution changes?

s5p-mfc, venus and mediatek can, but I see no SOURCE_CHANGE event in
the coda drivers, so I suspect that that can't handle this.

Philipp, what is the status of the coda driver for dynamic resolution
changes?

Another reason is that AFAIK all encoders are of the fixed resolution
type.

And a final reason is that usually flags should indicate the presence
of a feature, not the absence.

Regards,

	Hans

On 5/31/19 11:31 AM, Maxime Jourdan wrote:
> When a v4l2 driver exposes V4L2_EVENT_SOURCE_CHANGE, some (usually
> OUTPUT) formats may not be able to trigger this event.
> 
> For instance, MPEG2 on Amlogic hardware does not support resolution
> switching on the fly, and a decode session must operate at a set
> resolution defined before the decoding start.
> 
> Add a enum_fmt format flag to tag those specific formats.
> 
> Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
> ---
>  Documentation/media/uapi/v4l/vidioc-enum-fmt.rst | 6 ++++++
>  include/uapi/linux/videodev2.h                   | 5 +++--
>  2 files changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/media/uapi/v4l/vidioc-enum-fmt.rst b/Documentation/media/uapi/v4l/vidioc-enum-fmt.rst
> index 822d6730e7d2..b11448a1848b 100644
> --- a/Documentation/media/uapi/v4l/vidioc-enum-fmt.rst
> +++ b/Documentation/media/uapi/v4l/vidioc-enum-fmt.rst
> @@ -127,6 +127,12 @@ one until ``EINVAL`` is returned.
>        - This format is not native to the device but emulated through
>  	software (usually libv4l2), where possible try to use a native
>  	format instead for better performance.
> +    * - ``V4L2_FMT_FLAG_FIXED_RESOLUTION``
> +      - 0x0004
> +      - Dynamic resolution switching is not supported for this format,
> +        even if the event ``V4L2_EVENT_SOURCE_CHANGE`` is supported by
> +        the device.
> +
>  
>  
>  Return Value
> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> index 1050a75fb7ef..9b0a7f82dd92 100644
> --- a/include/uapi/linux/videodev2.h
> +++ b/include/uapi/linux/videodev2.h
> @@ -768,8 +768,9 @@ struct v4l2_fmtdesc {
>  	__u32		    reserved[4];
>  };
>  
> -#define V4L2_FMT_FLAG_COMPRESSED 0x0001
> -#define V4L2_FMT_FLAG_EMULATED   0x0002
> +#define V4L2_FMT_FLAG_COMPRESSED	0x0001
> +#define V4L2_FMT_FLAG_EMULATED		0x0002
> +#define V4L2_FMT_FLAG_FIXED_RESOLUTION	0x0004
>  
>  	/* Frame Size and frame rate enumeration */
>  /*
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
