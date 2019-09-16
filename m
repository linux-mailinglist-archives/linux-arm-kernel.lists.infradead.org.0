Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09430B3C90
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 16:30:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uEXokW8RCcPDL6UxC0yQS6eS4XJ77imGZhbiAZzWoTo=; b=MdZeHUjpSQVzJ5
	vARpjcFYOCtWPACtoZGZdmRxv7BZap+gCJS1xxMabo5xJMoubdWWZxmXJ3Hvc8rJW2MEqCy4/DC+y
	fq+jfPA7CKeJQYNpxplS34j7yJN/XzHtofSK31L/1I5ANKuYcyHpNoJb7mr59GmkZjyX35DN7SfBQ
	jx0fef8ZXmmsedErBJNwoOfVL8tA6cTjlC2ZD1zBpGHYpGSeZnxgSBU21c5Nu6wW5LEVOS+W0oANP
	m9kYHVS4K93NXik9tUCd9VTiVl2U5PD4FmEpgqqm0Wz5vt69KRx9vESZJ0kX7Atd//dV7woOOLPFz
	L2sAshaA+ewIa4J9LBKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9s1m-0002gZ-D7; Mon, 16 Sep 2019 14:30:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9s1a-0002gF-2g
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 14:30:43 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1i9s1K-0003g6-HX; Mon, 16 Sep 2019 16:30:26 +0200
Message-ID: <fcc6e54f56089d2204ca9aff79ac769a62b3adcb.camel@pengutronix.de>
Subject: Re: [PATCH 4/4] dmaengine: imx-sdma: drop redundant variable
From: Lucas Stach <l.stach@pengutronix.de>
To: Philipp Puschmann <philipp.puschmann@emlix.com>, 
 linux-kernel@vger.kernel.org
Date: Mon, 16 Sep 2019 16:30:25 +0200
In-Reply-To: <20190911144943.21554-5-philipp.puschmann@emlix.com>
References: <20190911144943.21554-1-philipp.puschmann@emlix.com>
 <20190911144943.21554-5-philipp.puschmann@emlix.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_073042_122994_67509144 
X-CRM114-Status: GOOD (  11.92  )
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
> In sdma_prep_dma_cyclic buf is redundant. Drop it.
> 
> Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>

Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

> ---
>  drivers/dma/imx-sdma.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
> index 6a5a84504858..5b6beeee9f0e 100644
> --- a/drivers/dma/imx-sdma.c
> +++ b/drivers/dma/imx-sdma.c
> @@ -1544,7 +1544,7 @@ static struct dma_async_tx_descriptor
> *sdma_prep_dma_cyclic(
>  	struct sdma_engine *sdma = sdmac->sdma;
>  	int num_periods = buf_len / period_len;
>  	int channel = sdmac->channel;
> -	int i = 0, buf = 0;
> +	int i;
>  	struct sdma_desc *desc;
>  
>  	dev_dbg(sdma->dev, "%s channel: %d\n", __func__, channel);
> @@ -1565,7 +1565,7 @@ static struct dma_async_tx_descriptor
> *sdma_prep_dma_cyclic(
>  		goto err_bd_out;
>  	}
>  
> -	while (buf < buf_len) {
> +	for (i = 0; i < num_periods; i++) {
>  		struct sdma_buffer_descriptor *bd = &desc->bd[i];
>  		int param;
>  
> @@ -1592,9 +1592,6 @@ static struct dma_async_tx_descriptor
> *sdma_prep_dma_cyclic(
>  		bd->mode.status = param;
>  
>  		dma_addr += period_len;
> -		buf += period_len;
> -
> -		i++;
>  	}
>  
>  	return vchan_tx_prep(&sdmac->vc, &desc->vd, flags);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
