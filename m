Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8604E9D5D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 20:29:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJD3w2py/EkHINlWCykb/gwL9Zs7iaRIGVyHzkyAQ1s=; b=qAAydrm71eYN+G
	ByEW/R0LCkmOAQdg2VKM9UUf+77MOw44g3dRme2pBTVyel48FtVtlTsd0DA+228XBzKPKzI5KwCO4
	9FnvwPG26RhFaCCnvT89z75zXW/4dTzXpYzEgtBtv36r7WN6Tx7++BA+R0xbOPZjNwz5qWk6vS9Qu
	lmoXT/qiT75xFvIDUOuZ6aJ9qZNSHRoZ+GToC1ZkoRGBtvjUegmo0kPAaXcPFkgq0vh1okZpdkkO7
	0pYI82ZlmtC8LRsZZOFB5yiT65h+WG9rpEav0ouxrsbOtn6MTQKcpjerEvJjzcEQEqB5Y30jwiVWg
	xyqVJw9DMO3oWFlsKKfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Jjd-0003vT-KV; Mon, 26 Aug 2019 18:28:57 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JjL-0003pT-Q7
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 18:28:41 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id F28C92804E7;
 Mon, 26 Aug 2019 19:28:34 +0100 (BST)
Date: Mon, 26 Aug 2019 20:28:31 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 5/8] media: cedrus: Detect first slice of a frame
Message-ID: <20190826202831.311c7c20@collabora.com>
In-Reply-To: <20190822194500.2071-6-jernej.skrabec@siol.net>
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
 <20190822194500.2071-6-jernej.skrabec@siol.net>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_112839_980180_3FBFD6FD 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devel@driverdev.osuosl.org, acourbot@chromium.org, pawel@osciak.com,
 jonas@kwiboo.se, gregkh@linuxfoundation.org, wens@csie.org, mripard@kernel.org,
 tfiga@chromium.org, paul.kocialkowski@bootlin.com, kyungmin.park@samsung.com,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org, ezequiel@collabora.com,
 linux-kernel@vger.kernel.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jernej,

On Thu, 22 Aug 2019 21:44:57 +0200
Jernej Skrabec <jernej.skrabec@siol.net> wrote:

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

Can't we use slice->first_mb_in_slice to determine if a slice is the
first? I'd expect ->first_mb_in_slice to be 0 (unless we decide to
support ASO).

>  
>  	/* Apply request(s) controls if needed. */
>  	src_req = run.src->vb2_buf.req_obj.req;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
