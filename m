Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B125113F358
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:43:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xLa13DO9lKIttdZUKnRrVybpOvkZticR2OOr2hLyzyM=; b=Jx/NNpdWUaBTEC
	AwX0QRF4eAFvO6F9rjMvcLyz+n3iZUD5ZHsNPwP22yiTSGJglKaa/QCZE/Z0uPOdGJTRtkgqbtNYe
	GYzBJIL6xeNqre5d6IJ8eV4sXBUCrZH/ZG6OKUNoiH62o6A5la+VGtw+zKYLjgMTunvE5CTcRlRii
	y8Gr+CF3r9qFhliwpd94Nb91kctZDZp6M9sI21fM0BO1aMJAc7TK7jGzcldaHco2Ux7OowUMtZJYH
	AG986lOH/TvA7ac6kFVOwiccd/2z8OVMV12ylUNRqpoqLZ2XEG159A1727ts7iXHgncinQ9Btw6lW
	zLdFkvFt9d+tAvWvuXrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isA6W-0005U8-Q1; Thu, 16 Jan 2020 18:42:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9UU-0000Wh-Ne
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:03:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF3BD31B;
 Thu, 16 Jan 2020 10:03:33 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DE2C73F534;
 Thu, 16 Jan 2020 10:03:32 -0800 (PST)
Date: Thu, 16 Jan 2020 18:03:26 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Radhey Shyam Pandey <radheys@xilinx.com>
Subject: Re: [PATCH 03/14] net: axienet: Fix DMA descriptor cleanup path
Message-ID: <20200116180326.47c93ce2@donnerap.cambridge.arm.com>
In-Reply-To: <CH2PR02MB70008D24DA7D1426E8A71013C7380@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-4-andre.przywara@arm.com>
 <CH2PR02MB7000F64AB27D352E00DC77A7C7380@CH2PR02MB7000.namprd02.prod.outlook.com>
 <20200110154328.6676215f@donnerap.cambridge.arm.com>
 <CH2PR02MB70008D24DA7D1426E8A71013C7380@CH2PR02MB7000.namprd02.prod.outlook.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_100334_891529_5C985828 
X-CRM114-Status: GOOD (  30.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Hancock <hancock@sedsystems.ca>, Michal Simek <michals@xilinx.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 17:05:45 +0000
Radhey Shyam Pandey <radheys@xilinx.com> wrote:

Hi,

> > -----Original Message-----
> > From: Andre Przywara <andre.przywara@arm.com>
> > Sent: Friday, January 10, 2020 9:13 PM
> > To: Radhey Shyam Pandey <radheys@xilinx.com>
> > Cc: David S . Miller <davem@davemloft.net>; Michal Simek
> > <michals@xilinx.com>; Robert Hancock <hancock@sedsystems.ca>;
> > netdev@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> > kernel@vger.kernel.org
> > Subject: Re: [PATCH 03/14] net: axienet: Fix DMA descriptor cleanup path
> > 
> > On Fri, 10 Jan 2020 15:14:46 +0000
> > Radhey Shyam Pandey <radheys@xilinx.com> wrote:
> > 
> > Hi Radhey,
> > 
> > thanks for having a look!
> >   
> > > > -----Original Message-----
> > > > From: Andre Przywara <andre.przywara@arm.com>
> > > > Sent: Friday, January 10, 2020 5:24 PM
> > > > To: David S . Miller <davem@davemloft.net>; Radhey Shyam Pandey
> > > > <radheys@xilinx.com>
> > > > Cc: Michal Simek <michals@xilinx.com>; Robert Hancock
> > > > <hancock@sedsystems.ca>; netdev@vger.kernel.org; linux-arm-
> > > > kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> > > > Subject: [PATCH 03/14] net: axienet: Fix DMA descriptor cleanup path
> > > >
> > > > When axienet_dma_bd_init() bails out during the initialisation process,
> > > > it might do so with parts of the structure already allocated and
> > > > initialised, while other parts have not been touched yet. Before
> > > > returning in this case, we call axienet_dma_bd_release(), which does not
> > > > take care of this corner case.
> > > > This is most obvious by the first loop happily dereferencing
> > > > lp->rx_bd_v, which we actually check to be non NULL *afterwards*.
> > > >
> > > > Make sure we only unmap or free already allocated structures, by:
> > > > - directly returning with -ENOMEM if nothing has been allocated at all
> > > > - checking for lp->rx_bd_v to be non-NULL *before* using it
> > > > - only unmapping allocated DMA RX regions
> > > >
> > > > This avoids NULL pointer dereferences when initialisation fails.
> > > >
> > > > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > > > ---
> > > >  .../net/ethernet/xilinx/xilinx_axienet_main.c | 43 ++++++++++++-------
> > > >  1 file changed, 28 insertions(+), 15 deletions(-)
> > > >
> > > > diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> > > > b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> > > > index 97482cf093ce..7e90044cf2d9 100644
> > > > --- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> > > > +++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> > > > @@ -160,24 +160,37 @@ static void axienet_dma_bd_release(struct
> > > > net_device *ndev)
> > > >  	int i;
> > > >  	struct axienet_local *lp = netdev_priv(ndev);
> > > >
> > > > +	/* If we end up here, tx_bd_v must have been DMA allocated. */
> > > > +	dma_free_coherent(ndev->dev.parent,
> > > > +			  sizeof(*lp->tx_bd_v) * lp->tx_bd_num,
> > > > +			  lp->tx_bd_v,
> > > > +			  lp->tx_bd_p);
> > > > +
> > > > +	if (!lp->rx_bd_v)
> > > > +		return;
> > > > +
> > > >  	for (i = 0; i < lp->rx_bd_num; i++) {
> > > > -		dma_unmap_single(ndev->dev.parent, lp->rx_bd_v[i].phys,
> > > > -				 lp->max_frm_size, DMA_FROM_DEVICE);
> > > > +		/* A NULL skb means this descriptor has not been initialised
> > > > +		 * at all.
> > > > +		 */
> > > > +		if (!lp->rx_bd_v[i].skb)
> > > > +			break;
> > > > +
> > > >  		dev_kfree_skb(lp->rx_bd_v[i].skb);
> > > > -	}
> > > >
> > > > -	if (lp->rx_bd_v) {
> > > > -		dma_free_coherent(ndev->dev.parent,
> > > > -				  sizeof(*lp->rx_bd_v) * lp->rx_bd_num,
> > > > -				  lp->rx_bd_v,
> > > > -				  lp->rx_bd_p);
> > > > -	}
> > > > -	if (lp->tx_bd_v) {
> > > > -		dma_free_coherent(ndev->dev.parent,
> > > > -				  sizeof(*lp->tx_bd_v) * lp->tx_bd_num,
> > > > -				  lp->tx_bd_v,
> > > > -				  lp->tx_bd_p);
> > > > +		/* For each descriptor, we programmed cntrl with the (non-
> > > > zero)
> > > > +		 * descriptor size, after it had been successfully allocated.
> > > > +		 * So a non-zero value in there means we need to unmap it.
> > > > +		 */  
> > >  
> > > > +		if (lp->rx_bd_v[i].cntrl)  
> > >
> > > I think it should ok to unmap w/o any check?  
> > 
> > Do you mean because .phys would be 0 if not initialised? AFAIK 0 can be a
> > valid DMA address, so there is no special check for that, and unmapping
> > DMA address 0 will probably go wrong at some point. So it's unlike
> > kfree(NULL).  
> 
> I mean if skb allocation is successful in _dma_bd_init then in release path
> we can assume .phys is always a valid address and skip rx_bd_v[i].cntrl
> check.

I don't think we can assume this. If the skb allocation succeeded, but then the dma_map_single failed (which we check with dma_mapping_error()), we would end up with a valid skb, but an uninitialised phys DMA address in the registers. That's why I set .cntrl only after having checked the dma_map_single() result.

Or am I missing something?

Cheers,
Andre
 
> > > > +			dma_unmap_single(ndev->dev.parent, lp-  
> > > > >rx_bd_v[i].phys,  
> > > > +					 lp->max_frm_size,
> > > > DMA_FROM_DEVICE);
> > > >  	}
> > > > +
> > > > +	dma_free_coherent(ndev->dev.parent,
> > > > +			  sizeof(*lp->rx_bd_v) * lp->rx_bd_num,
> > > > +			  lp->rx_bd_v,
> > > > +			  lp->rx_bd_p);
> > > >  }
> > > >
> > > >  /**
> > > > @@ -207,7 +220,7 @@ static int axienet_dma_bd_init(struct net_device
> > > > *ndev)
> > > >  					 sizeof(*lp->tx_bd_v) * lp-  
> > > > >tx_bd_num,  
> > > >  					 &lp->tx_bd_p, GFP_KERNEL);
> > > >  	if (!lp->tx_bd_v)
> > > > -		goto out;
> > > > +		return -ENOMEM;
> > > >
> > > >  	lp->rx_bd_v = dma_alloc_coherent(ndev->dev.parent,
> > > >  					 sizeof(*lp->rx_bd_v) * lp-  
> > > > >rx_bd_num,  
> > > > --
> > > > 2.17.1  
> > >  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
