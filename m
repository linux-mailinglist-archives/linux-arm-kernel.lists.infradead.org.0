Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B50A30FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 09:28:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDPgT0oWmei7TkKI/hxNNsAsuRL4Jv6KhYJVJX4nqos=; b=snYt6anHI5FSQc
	h6jrceH09TQuzrt2w61P+5K6iWsJAubj059J+E0HrjBk1lHxzHLM/76SqeyusZkx+DoT6zpZgAXnL
	nNmKkd9dk2LG6IZmQmr8pDSY/Yt0MF+rjU9SNVAA/aQ4ho1ioK43NJ+W9tWhyxjrZbQwiChYe7twb
	afR+3VIyCd/LdtdaQgAFOyFjJaGW3TjpTo9joutYNLvdoWTbYpw3udcX9W9vs8tBqgDnzxqiDeIfH
	LLfpYB9C6uez+/jBYR30I+gjHmU5p85BDW4WD2HdjXa32jxzgtA+6Dmq+TxcH9PKyx8YR2Zppo47X
	6hcPTUEvotE6YNp+fl4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3bKi-0004ho-Jm; Fri, 30 Aug 2019 07:28:32 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3bKX-0004gh-6g
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 07:28:22 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud9.xs4all.net with ESMTPA
 id 3bKLiM2X6zaKO3bKOiQPhh; Fri, 30 Aug 2019 09:28:18 +0200
Subject: Re: [PATCH 5/8] media: cedrus: Detect first slice of a frame
To: Jernej Skrabec <jernej.skrabec@siol.net>, mchehab@kernel.org,
 paul.kocialkowski@bootlin.com, mripard@kernel.org
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
 <20190822194500.2071-6-jernej.skrabec@siol.net>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <ee46d461-1be8-e803-9792-9fb9481acf16@xs4all.nl>
Date: Fri, 30 Aug 2019 09:28:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822194500.2071-6-jernej.skrabec@siol.net>
Content-Language: en-US
X-CMAE-Envelope: MS4wfAklJxN99U94VgVdrg/wZWzFtkJLsUOAcDBPdvvu7N4xnAGlcRiHNmIHd9ozKfJqnwU1xSC8qX3gGJWdJaYewvrK/js+bIxfWV/1ACz1dt1R+iYcmlxK
 foiXEWAMvXY+tghwfqmr/zsL8IqXb4dStPKOXA9jONcO2zWdfZZ9okaNghI7k6WaYzhtbthDMZYGbdq+IC0ZrxfOvZKdxH9fBEZr1Sg5h4SL+/Ci65S2vFhJ
 Tcq9qaQuXd1VsmGnVXN3dmv9a+7pxklKRl6Wckh4vSciUxUBY8AwDDVZRc32kyi4EHpuBXY5LCYD6QoSF09hNlueaMfADSknFO/vYKnbfdmrxuG0Ja6F1k5V
 bAWbtX8yMSt+k4HApzJI+bZA9wjWe6D3hOKufJffSe6OCY+vzua8DYxB267V39eAqDSc3NvGhkvuVExsCwyBI4IGgHrYVSJb3c2kCbn8W/JJG4/aLfj8M7/U
 dD6VcrzZmerQdF7fXGFWmumdbOmEnMMYkkzJVdQGnvaIhDN1HWxQZ3pfOPFZ9W0Ze4+9UkBoZWdbsgQ6vVtHasF9EsqXSey4dZ6vs9gKAXaFWX99Cl6XtFfQ
 a0cObES470eOMn8R6GyxokYst2TSMt8eCT0zkFoVlfoV1SzRj057QUhENYrjWT/IcO0ZfDQfaYV8F4F0L7ME+snr6bpviuUv6feHCsfZPdxyp4XRYwWcwk/b
 vdOI2SH8+nyNXgEreuWmqIiQjoXA5hkU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_002821_401152_94965C16 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.22 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, pawel@osciak.com, acourbot@chromium.org,
 jonas@kwiboo.se, gregkh@linuxfoundation.org, wens@csie.org, tfiga@chromium.org,
 kyungmin.park@samsung.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org, ezequiel@collabora.com,
 linux-kernel@vger.kernel.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/22/19 9:44 PM, Jernej Skrabec wrote:
> When codec supports multiple slices in one frame, VPU has to know when
> first slice of each frame is being processed, presumably to correctly
> clear/set data in auxiliary buffers.
> 
> Add first_slice field to cedrus_run structure and set it according to
> timestamps of capture and output buffers. If timestamps are different,
> it's first slice and viceversa.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus.h     | 1 +
>  drivers/staging/media/sunxi/cedrus/cedrus_dec.c | 2 ++
>  2 files changed, 3 insertions(+)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
> index 2f017a651848..32cb38e541c6 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus.h
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
> @@ -70,6 +70,7 @@ struct cedrus_mpeg2_run {
>  struct cedrus_run {
>  	struct vb2_v4l2_buffer	*src;
>  	struct vb2_v4l2_buffer	*dst;
> +	bool first_slice;
>  
>  	union {
>  		struct cedrus_h264_run	h264;
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> index 56ca4c9ad01c..d7b54accfe83 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> @@ -31,6 +31,8 @@ void cedrus_device_run(void *priv)
>  
>  	run.src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
>  	run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> +	run.first_slice =
> +		run.src->vb2_buf.timestamp != run.dst->vb2_buf.timestamp;

This is almost correct. To handle the corner case where no timestamp
was ever copied to run.dst->vb2_buf you need this check:

	run.first_slice = !run.dst->vb2_buf.copied_timestamp ||
		run.src->vb2_buf.timestamp != run.dst->vb2_buf.timestamp;

Regards,

	Hans

>  
>  	/* Apply request(s) controls if needed. */
>  	src_req = run.src->vb2_buf.req_obj.req;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
