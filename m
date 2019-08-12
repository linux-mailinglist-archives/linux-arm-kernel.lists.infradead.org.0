Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B063D89DC5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 14:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rjFh34c7HJDxt91Ay8g5jYubBIJgHlUWZH831JzEm9E=; b=q0BldTwhI6DFCo
	qY/m+WOorZoM6g2G3HM90LoMXbe09zmeP9CG6ecdKsIkdHoz7jkiwwPJShczCs5pG/SveyP/TBqoB
	53wZYeLdHWvu0Vtki7I157Vv9dNVBMsi5XlWK8/A9ToBjiElw0eRjivT3v5B/Tk32wA88d3oSIPxy
	8nj4iKFGmRinppehkmcq/UAqipB5V8NOYSs3qMikjoo27x6QujDBXJRQj9F3HHoTrB5coJOw+Fg1W
	T0OuamGD54rSgb4ysIXdzzy6lCLxcqmf9UZdqgZJio/Cb4g5qJzJfKGTHLrLz+EYtH0uiC9DBggro
	RRyPTXBj0zYdYHCYNYmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9Bx-000112-Dj; Mon, 12 Aug 2019 12:12:49 +0000
Received: from lb1-smtp-cloud7.xs4all.net ([194.109.24.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9Bf-000103-99
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 12:12:32 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud7.xs4all.net with ESMTPA
 id x9BVhQe5dur8Tx9BYhiGAM; Mon, 12 Aug 2019 14:12:29 +0200
Subject: Re: [PATCH 0/7] media: cedrus: Improvements/cleanup
To: Jernej Skrabec <jernej.skrabec@siol.net>, paul.kocialkowski@bootlin.com,
 maxime.ripard@bootlin.com
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <274221f1-b2d2-83aa-d84b-e1c572a1b832@xs4all.nl>
Date: Mon, 12 Aug 2019 14:12:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190530211516.1891-1-jernej.skrabec@siol.net>
Content-Language: en-US
X-CMAE-Envelope: MS4wfAFWVdV0JuxSwgL/k0OdJ/hvoW5zZZWMBGhCaQMUPuAYTfosQIyoA4MERBpQBFRKsudj+6sf32UIuymx2PzdO5yuRrH1TFwLkOyZO/Jia4K+L6oFojCb
 IIe7VxjGIqmR8mYrzfFwErnbwyITZAN0wTNOcQvAcL9vpCAMTo8SaOqdRDk+vQHW1m21nzhxt5VoS9wrv3e0yrnJvGYNzpcMZmeeomvpKU4H2DWnBVt2X6ml
 R9paVRT1QEKGDTpR8lizWT3XfkF5Isu+67yb99S1rzew7UBWHbCdFhDi7ZW5WMsFSYifZwshD2cfYiW1oNMNda2ToBW1HHkX7WSuHsPqC2Uvk0DlXaVODubC
 JzMzvRXTU6+i3qrVT7DkigTNVvKKt/vUrippGWoSGA0rOjImrWxNiWibhVpDSDWBS3vN6Q1NYRI9Lut+KrnP1jl6BjWObynPHn3xVqANmpiiiEIvgFnAea4m
 gGWSASJtf+wp6Qwd0DZNd/487v2g5kPOBY/wRxsTDYVdbVCQYg3ysW9VANo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_051231_485508_FA965728 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/30/19 11:15 PM, Jernej Skrabec wrote:
> Here is first batch of random Cedrus improvements/cleanups. Only patch 2
> has a change which raises a question about H264 controls.
> 
> Changes were tested on H3 SoC using modified ffmpeg and Kodi.
> 
> Please take a look.

This has been sitting in patchwork for quite some time. I've updated the
status of the various patches and most needed extra work.

It seems that patches 4/7 and 5/7 are OK. Maxime, can you please confirm
that these two are still valid? They apply cleanly on the latest master
at least, but since they are a bit old I prefer to have confirmation that
it's OK to merge them.

Regards,

	Hans

> 
> Best regards,
> Jernej
> 
> Jernej Skrabec (7):
>   media: cedrus: Disable engine after each slice decoding
>   media: cedrus: Fix H264 default reference index count
>   media: cedrus: Fix decoding for some H264 videos
>   media: cedrus: Remove dst_bufs from context
>   media: cedrus: Don't set chroma size for scale & rotation
>   media: cedrus: Add infra for extra buffers connected to capture
>     buffers
>   media: cedrus: Improve H264 memory efficiency
> 
>  drivers/staging/media/sunxi/cedrus/cedrus.h   |  12 +-
>  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 115 ++++++++----------
>  .../staging/media/sunxi/cedrus/cedrus_hw.c    |   4 +-
>  .../staging/media/sunxi/cedrus/cedrus_video.c |  25 ++--
>  4 files changed, 68 insertions(+), 88 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
