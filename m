Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9419613CAFF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 18:29:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kr0IRoqKpf9BDxqWM36rxs+VOAY42pccQrEGscWd2wc=; b=Jwb3/YgciUIk6L
	umwXC/krrD4zT1tl1YGrCkg4VkFaiEgUJaXJ24247ZKv6PO/cU7SI2F3pBYFCVYA4e1I32gccjlz0
	A+NdxGFLbSepUjGUacMin9G2aE0WQIacUJahpgrYXkAXPdJbrFOUfJutU46rpWuFPeUFLGATp2b0Y
	/9gAj1uhaUrdCyMPqY8FzV+SpvodFXKF8p5sLQ23jqOm/UWcbT7OaoEomREjeBWgrcYxhjvQ889gJ
	JZwkqI/mbVYB0H9uhEZaAuHMXzIEhV2MiupFjovIj1xH58RBIl7whOOSxZaZppt+9k8SSI1CFcGZk
	8GcQkvuZCgMwh7Liqj4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irmTZ-0006iQ-Tn; Wed, 15 Jan 2020 17:29:05 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irmTI-0006fK-GA
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 17:28:56 +0000
Received: from pendragon.ideasonboard.com (85-76-106-26-nat.elisa-mobile.fi
 [85.76.106.26])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8BAC62BA;
 Wed, 15 Jan 2020 18:28:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1579109319;
 bh=GTgiNckxVZKqQw4JXS+z539Vsk6pXreiOLeWxF8/ceY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SdVmbgcjhqKpJ6Wp78xWcDXte9rFyELUrb4onsnKzjwGOxjSb7NdZ3JO8pgAC+UR4
 lkH+/JafgnTAVEJLgfP6tAsR8l/X2R9Fj93XpskQSZYhqmL/xpJsuPwW3wzRManz+R
 yKMhx+dbsUoHh8vfVPbJgYMEiLuvhOciARjT4tLw=
Date: Wed, 15 Jan 2020 19:28:22 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v2] media: xilinx: Use dma_request_chan() instead
 dma_request_slave_channel()
Message-ID: <20200115172822.GB7139@pendragon.ideasonboard.com>
References: <20200110071648.15690-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110071648.15690-1-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_092848_718272_6877AD26 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: hyun.kwon@xilinx.com, michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil@xs4all.nl>, vkoul@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

(CC'ing Hans)

Thank you for the patch.

On Fri, Jan 10, 2020 at 09:16:48AM +0200, Peter Ujfalusi wrote:
> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> eating up the error code.
> 
> By using dma_request_chan() directly the driver can support deferred
> probing against DMA.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

and taken in my tree. Hans, you asked me on IRC to review this, did you
plan to get it merged upstream yourself ? If so I'll drop it.

> ---
> Hi,
> 
> Changes since v1:
> - Fix cleanup path when DMA request failed as suggested by Laurent
> - Print error only in case when the error is not EPROBE_DEFER
> 
>  drivers/media/platform/xilinx/xilinx-dma.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/media/platform/xilinx/xilinx-dma.c b/drivers/media/platform/xilinx/xilinx-dma.c
> index b211380a11f2..3bb54a4db6a4 100644
> --- a/drivers/media/platform/xilinx/xilinx-dma.c
> +++ b/drivers/media/platform/xilinx/xilinx-dma.c
> @@ -725,10 +725,11 @@ int xvip_dma_init(struct xvip_composite_device *xdev, struct xvip_dma *dma,
>  
>  	/* ... and the DMA channel. */
>  	snprintf(name, sizeof(name), "port%u", port);
> -	dma->dma = dma_request_slave_channel(dma->xdev->dev, name);
> -	if (dma->dma == NULL) {
> -		dev_err(dma->xdev->dev, "no VDMA channel found\n");
> -		ret = -ENODEV;
> +	dma->dma = dma_request_chan(dma->xdev->dev, name);
> +	if (IS_ERR(dma->dma)) {
> +		ret = PTR_ERR(dma->dma);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(dma->xdev->dev, "no VDMA channel found\n");
>  		goto error;
>  	}
>  
> @@ -752,7 +753,7 @@ void xvip_dma_cleanup(struct xvip_dma *dma)
>  	if (video_is_registered(&dma->video))
>  		video_unregister_device(&dma->video);
>  
> -	if (dma->dma)
> +	if (!IS_ERR_OR_NULL(dma->dma))
>  		dma_release_channel(dma->dma);
>  
>  	media_entity_cleanup(&dma->video.entity);

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
