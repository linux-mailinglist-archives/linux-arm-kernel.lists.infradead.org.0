Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E9BB776F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 12:28:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YbJW6u8lZpbwmwncDg3wXTukZLR2N4j6Ciw9NVPUEaM=; b=cixMszU+iT+JzB
	hbSgAtzEEpCcCz38Zn2oave2qFYHpdtj04eYRCNFtfShqHMHaRAd04AZlc5QO8gQNM9Wb/5JXHd6T
	OVASqjiFQdPropAU3t1MZeagl3PyILHNhVv+3YIXarPzgjef3oOnjwsSMJfWBqcC+oF0pw5JsXW6V
	i1grmz80xtcXxXRoJHxhHW5YYHqFC5OKw0eYWcDFgI6ZmqoinH3cCbtgDQNisUMgUK2shGjY1c3DB
	vsKUyEWOrhLx52NTHFLlFz0dDk3UFO9gicSJ8TKpoczDt+jvBa4FoFkGMGxa6QuPxRb24qWGhGSGH
	cBIjznPqyBdtsu5wwCVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAtfl-0004Ck-V7; Thu, 19 Sep 2019 10:28:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAtfT-0004Bt-PN
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 10:28:09 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1iAtfK-0005Fo-Jo; Thu, 19 Sep 2019 12:27:58 +0200
Message-ID: <7d694da8ffe098c6c8f6fe9c3a2306fda55eb655.camel@pengutronix.de>
Subject: Re: [PATCH v2 1/3] dmaengine: imx-sdma: fix buffer ownership
From: Lucas Stach <l.stach@pengutronix.de>
To: Philipp Puschmann <philipp.puschmann@emlix.com>, 
 linux-kernel@vger.kernel.org
Date: Thu, 19 Sep 2019 12:27:58 +0200
In-Reply-To: <20190919102319.23368-2-philipp.puschmann@emlix.com>
References: <20190911144943.21554-1-philipp.puschmann@emlix.com>
 <20190919102319.23368-1-philipp.puschmann@emlix.com>
 <20190919102319.23368-2-philipp.puschmann@emlix.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_032807_823718_57697F6F 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: fugang.duan@nxp.com, festevam@gmail.com, s.hauer@pengutronix.de,
 vkoul@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com, yibin.gong@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Philipp,

On Do, 2019-09-19 at 12:23 +0200, Philipp Puschmann wrote:
> BD_DONE flag marks ownership of the buffer. When 1 SDMA owns the
> buffer, when 0 ARM owns it. When processing the buffers in
> sdma_update_channel_loop the ownership of the currently processed
> buffer was set to SDMA again before running the callback function of
> the buffer and while the sdma script may be running in parallel. So
> there was the possibility to get the buffer overwritten by SDMA
> before
> it has been processed by kernel leading to kind of random errors in
> the
> upper layers, e.g. bluetooth.
> 
> Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
> 
> ---
> 
> Changelog v2:
>  - add dma_wb()
> 
>  drivers/dma/imx-sdma.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
> index 9ba74ab7e912..e029a2443cfc 100644
> --- a/drivers/dma/imx-sdma.c
> +++ b/drivers/dma/imx-sdma.c
> @@ -802,7 +802,6 @@ static void sdma_update_channel_loop(struct
> sdma_channel *sdmac)
>  		*/
>  
>  		desc->chn_real_count = bd->mode.count;
> -		bd->mode.status |= BD_DONE;
>  		bd->mode.count = desc->period_len;
>  		desc->buf_ptail = desc->buf_tail;
>  		desc->buf_tail = (desc->buf_tail + 1) % desc->num_bd;
> @@ -817,6 +816,9 @@ static void sdma_update_channel_loop(struct
> sdma_channel *sdmac)
>  		dmaengine_desc_get_callback_invoke(&desc->vd.tx, NULL);
>  		spin_lock(&sdmac->vc.lock);
>  
> +		dma_wb();

Has this change been tested? The function you want here is called
dma_wmb().

Regards,
Lucas

> +		bd->mode.status |= BD_DONE;
> +
>  		if (error)
>  			sdmac->status = old_status;
>  	}


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
