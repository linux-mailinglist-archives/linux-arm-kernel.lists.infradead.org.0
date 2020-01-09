Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06374135EC3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:54:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X74fkWN4Fd3mrD2g7KVeHdqLbqT1oF99ci6VaJsAtmw=; b=AsTJYmqhwkEf79
	79lpww969Aoz3apFlABAb2PNAqhrBJ2TRM3uT3ToQH15tuL9xTcU6PEB5nkSe8D/Q+bNvgMZbVtRM
	8pNgz081oy6yj8ec9enR3Wx5Dbq7P18pgItjf4GWeEa3p6rM6gzEWVSUIG5YRwMdJrRfNUSqD5GMO
	b5lc/2iNI/I6DUAAytgRRDZEJG1fuxgr4FoS2FEKgKv4n+T0NMufpqv380t90p3NrJn9Vu7MhQYbQ
	xogiwJDfLlKUfpE0hcoVmtYHCSvh5EXUK8IThzHUfddPYwPLEgdgCsoegTItG00bZx28haUdtJV0U
	LcdyQy5CuGjw01OgMyhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipb4V-0002Hy-KL; Thu, 09 Jan 2020 16:54:11 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipb4M-0002Gp-Tw
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:54:04 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id C5D3F52F;
 Thu,  9 Jan 2020 17:53:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1578588839;
 bh=sOC8mik59yBJH+Ojdmaq5uVi1sLgq4RG29ymvZmJjzc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rNYxP1oi3fClt3LDl93WQ3Ybt5/HuHty+5P/KtrXWipsEjipStzncldV5Lnv8yY7V
 dXPT/rRRo9HGE6n9p2GqEXsV5fT/gbPwMVy5dP+Bw4GdDvHlxmB0vyBrbqMnTvhEL/
 jTXO9KrEe06aGTp0a0YjBqU3DcGp3uwUcVo35U6Q=
Date: Thu, 9 Jan 2020 18:53:48 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH] media: xilinx: Use dma_request_chan() instead
 dma_request_slave_channel()
Message-ID: <20200109165348.GG31792@pendragon.ideasonboard.com>
References: <20191217104235.23771-1-peter.ujfalusi@ti.com>
 <20200109164847.GF31792@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109164847.GF31792@pendragon.ideasonboard.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_085403_104814_CB30F3B4 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 vkoul@kernel.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello again,

On Thu, Jan 09, 2020 at 06:48:47PM +0200, Laurent Pinchart wrote:
> On Tue, Dec 17, 2019 at 12:42:35PM +0200, Peter Ujfalusi wrote:
> > dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> > eating up the error code.
> > 
> > By using dma_request_chan() directly the driver can support deferred
> > probing against DMA.
> > 
> > Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> 
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> Vinod, could you please pick this up ?

I spoke too fast.

> > ---
> >  drivers/media/platform/xilinx/xilinx-dma.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/media/platform/xilinx/xilinx-dma.c b/drivers/media/platform/xilinx/xilinx-dma.c
> > index b211380a11f2..9ce515ff9c0a 100644
> > --- a/drivers/media/platform/xilinx/xilinx-dma.c
> > +++ b/drivers/media/platform/xilinx/xilinx-dma.c
> > @@ -725,10 +725,10 @@ int xvip_dma_init(struct xvip_composite_device *xdev, struct xvip_dma *dma,
> >  
> >  	/* ... and the DMA channel. */
> >  	snprintf(name, sizeof(name), "port%u", port);
> > -	dma->dma = dma_request_slave_channel(dma->xdev->dev, name);
> > -	if (dma->dma == NULL) {
> > +	dma->dma = dma_request_chan(dma->xdev->dev, name);
> > +	if (IS_ERR(dma->dma)) {
> >  		dev_err(dma->xdev->dev, "no VDMA channel found\n");
> > -		ret = -ENODEV;
> > +		ret = PTR_ERR(dma->dma);
> >  		goto error;

At the error label, we have

error:
	xvip_dma_cleanup(dma);
	return ret;

and xvip_dma_cleanup() contains

	if (dma->dma)
		dma_release_channel(dma->dma);

You need to turn this into

	if (!IS_ERR_OR_NULL(dma->dma))

or add a

		dma->dma = NULL;

in the error case in xvip_dma_init().

> >  	}
> >  

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
