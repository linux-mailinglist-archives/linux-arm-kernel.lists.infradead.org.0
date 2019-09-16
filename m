Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C71E1B3C5C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 16:17:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JmfzSSzmHH1I+46KwqjQA9UjfirfzjaEJpQyT3PQdn4=; b=Ca+nWRAPLVTsRx
	W0BgUbVzOo4GIhQYIY/3nGP0OBaQcw57zh5S3jCwAzBVmSxj71GJQPB2k9mUWH58p4rVEsHDabzK3
	9jl9IBr6aY3ovjWVF01sw123KLUtEMYKvSCasi+LanOsLkDszotvi+E6NVh2sGw2H5FvQ+Pys1eKz
	bQmvCvkkz4Sf4pqficPRFtYGX3XoASbfexygkBaWJtPV8Meulj+p3P5o7XAXwAEOLccJYxnoAUp/f
	8+EJi/eFU5Y8bzMHn+D6NB3s21kdkvVE94vVGYaJmiNT3FBja84xjcqHXxrCOfOv3XGZQOJp3P5o4
	jhwi2G3fnvRjzXtSbQyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9ron-0006Dw-BO; Mon, 16 Sep 2019 14:17:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9roY-0006DP-Cu
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 14:17:16 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1i9roM-0002Kc-Go; Mon, 16 Sep 2019 16:17:02 +0200
Message-ID: <9bcf315369449a025828410396935b679aae14bf.camel@pengutronix.de>
Subject: Re: [PATCH 1/4] dmaengine: imx-sdma: fix buffer ownership
From: Lucas Stach <l.stach@pengutronix.de>
To: Philipp Puschmann <philipp.puschmann@emlix.com>, 
 linux-kernel@vger.kernel.org
Date: Mon, 16 Sep 2019 16:17:00 +0200
In-Reply-To: <20190911144943.21554-2-philipp.puschmann@emlix.com>
References: <20190911144943.21554-1-philipp.puschmann@emlix.com>
 <20190911144943.21554-2-philipp.puschmann@emlix.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_071714_436778_C497C2FD 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: festevam@gmail.com, kernel@pengutronix.de, gregkh@linuxfoundation.org,
 s.hauer@pengutronix.de, vkoul@kernel.org, linux-imx@nxp.com,
 linux-serial@vger.kernel.org, jslaby@suse.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mi, 2019-09-11 at 16:49 +0200, Philipp Puschmann wrote:
> BD_DONE flag marks ownership of the buffer. When 1 SDMA owns the buffer,
> when 0 ARM owns it. When processing the buffers in
> sdma_update_channel_loop the ownership of the currently processed buffer
> was set to SDMA again before running the callback function of the the
> buffer and while the sdma script may be running in parallel. So there was
> the possibility to get the buffer overwritten by SDMA before it has been
> processed by kernel leading to kind of random errors in the upper layers,
> e.g. bluetooth.
> 
> It may be further a good idea to make the status struct member volatile or
> access it using writel or similar to rule out that the compiler sets the
> BD_DONE flag before the callback routine has finished.
> 
> Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
> ---
>  drivers/dma/imx-sdma.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
> index a01f4b5d793c..1abb14ff394d 100644
> --- a/drivers/dma/imx-sdma.c
> +++ b/drivers/dma/imx-sdma.c
> @@ -802,7 +802,6 @@ static void sdma_update_channel_loop(struct sdma_channel *sdmac)
>  		*/
>  
>  		desc->chn_real_count = bd->mode.count;
> -		bd->mode.status |= BD_DONE;
>  		bd->mode.count = desc->period_len;
>  		desc->buf_ptail = desc->buf_tail;
>  		desc->buf_tail = (desc->buf_tail + 1) % desc->num_bd;
> @@ -817,6 +816,8 @@ static void sdma_update_channel_loop(struct sdma_channel *sdmac)
>  		dmaengine_desc_get_callback_invoke(&desc->vd.tx, NULL);
>  		spin_lock(&sdmac->vc.lock);

To address your comment from the second paragraph of the commit message
there should be a dma_wmb() here before changing the status flag.

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
