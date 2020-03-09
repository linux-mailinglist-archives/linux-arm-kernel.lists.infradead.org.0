Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D5517E721
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 19:30:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=us9I10b56wtOou8FOWQ2+1eVMHgHRaOrYtMOtLsELqA=; b=J9hzOnNsugoXAc
	nPHh1tY4sCzwVR4fR9y9APSs/VnOwlYEsGCyoazRisnYog7G8rgiDFGNlVFEg5gqEyr8oXNWrDXj7
	n4pNrAYnZEuL5l2McAqHCyG5PSOkHZaWbmUFCbL/YRLdU0TPP09gLsVqrfzMjiVqsojM4mjXVzQaA
	Y7etJG24q100OImjPMg6Sh08iBIUdufcJHil1vzeyGAYUeK7fs4zW+Oe1394ir3dQTLluEa2H685N
	iwus/jwURxoF/XoMgVoFKd5e9ov73d5ztCME2U/3XPkqzlW/MgbvIYOmWFyEkpbTudvmMPGPsBPFn
	Csfx/afmeqfJhTUP3khw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBNAK-0000kG-9z; Mon, 09 Mar 2020 18:30:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBNAC-0000jb-DD
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 18:30:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8606C1FB;
 Mon,  9 Mar 2020 11:30:03 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 42EEA3F67D;
 Mon,  9 Mar 2020 11:30:02 -0700 (PDT)
Date: Mon, 9 Mar 2020 18:29:59 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: "David S . Miller" <davem@davemloft.net>, Radhey Shyam Pandey
 <radhey.shyam.pandey@xilinx.com>
Subject: Re: [PATCH v2 04/14] net: axienet: Fix DMA descriptor cleanup path
Message-ID: <20200309182959.080fa773@donnerap.cambridge.arm.com>
In-Reply-To: <20200309181851.190164-5-andre.przywara@arm.com>
References: <20200309181851.190164-1-andre.przywara@arm.com>
 <20200309181851.190164-5-andre.przywara@arm.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_113004_535897_A564F70C 
X-CRM114-Status: GOOD (  21.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 Robert Hancock <hancock@sedsystems.ca>, rmk+kernel@arm.linux.org.uk,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  9 Mar 2020 18:18:41 +0000
Andre Przywara <andre.przywara@arm.com> wrote:

Hi Radhey,

you looked at this patch before, it was [PATCH 03/14] back then.
You ended up saying "Looks fine then.", but I didn't dare to convert this into a "Reviewed-by:" tag.
Just a hint that I didn't change anything, that might simplify the review.

Cheers,
Andre

> When axienet_dma_bd_init() bails out during the initialisation process,
> it might do so with parts of the structure already allocated and
> initialised, while other parts have not been touched yet. Before
> returning in this case, we call axienet_dma_bd_release(), which does not
> take care of this corner case.
> This is most obvious by the first loop happily dereferencing
> lp->rx_bd_v, which we actually check to be non NULL *afterwards*.
> 
> Make sure we only unmap or free already allocated structures, by:
> - directly returning with -ENOMEM if nothing has been allocated at all
> - checking for lp->rx_bd_v to be non-NULL *before* using it
> - only unmapping allocated DMA RX regions
> 
> This avoids NULL pointer dereferences when initialisation fails.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../net/ethernet/xilinx/xilinx_axienet_main.c | 43 ++++++++++++-------
>  1 file changed, 28 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> index 64f73533cabe..9903205d57ec 100644
> --- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> +++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> @@ -160,24 +160,37 @@ static void axienet_dma_bd_release(struct net_device *ndev)
>  	int i;
>  	struct axienet_local *lp = netdev_priv(ndev);
>  
> +	/* If we end up here, tx_bd_v must have been DMA allocated. */
> +	dma_free_coherent(ndev->dev.parent,
> +			  sizeof(*lp->tx_bd_v) * lp->tx_bd_num,
> +			  lp->tx_bd_v,
> +			  lp->tx_bd_p);
> +
> +	if (!lp->rx_bd_v)
> +		return;
> +
>  	for (i = 0; i < lp->rx_bd_num; i++) {
> -		dma_unmap_single(ndev->dev.parent, lp->rx_bd_v[i].phys,
> -				 lp->max_frm_size, DMA_FROM_DEVICE);
> +		/* A NULL skb means this descriptor has not been initialised
> +		 * at all.
> +		 */
> +		if (!lp->rx_bd_v[i].skb)
> +			break;
> +
>  		dev_kfree_skb(lp->rx_bd_v[i].skb);
> -	}
>  
> -	if (lp->rx_bd_v) {
> -		dma_free_coherent(ndev->dev.parent,
> -				  sizeof(*lp->rx_bd_v) * lp->rx_bd_num,
> -				  lp->rx_bd_v,
> -				  lp->rx_bd_p);
> -	}
> -	if (lp->tx_bd_v) {
> -		dma_free_coherent(ndev->dev.parent,
> -				  sizeof(*lp->tx_bd_v) * lp->tx_bd_num,
> -				  lp->tx_bd_v,
> -				  lp->tx_bd_p);
> +		/* For each descriptor, we programmed cntrl with the (non-zero)
> +		 * descriptor size, after it had been successfully allocated.
> +		 * So a non-zero value in there means we need to unmap it.
> +		 */
> +		if (lp->rx_bd_v[i].cntrl)
> +			dma_unmap_single(ndev->dev.parent, lp->rx_bd_v[i].phys,
> +					 lp->max_frm_size, DMA_FROM_DEVICE);
>  	}
> +
> +	dma_free_coherent(ndev->dev.parent,
> +			  sizeof(*lp->rx_bd_v) * lp->rx_bd_num,
> +			  lp->rx_bd_v,
> +			  lp->rx_bd_p);
>  }
>  
>  /**
> @@ -207,7 +220,7 @@ static int axienet_dma_bd_init(struct net_device *ndev)
>  					 sizeof(*lp->tx_bd_v) * lp->tx_bd_num,
>  					 &lp->tx_bd_p, GFP_KERNEL);
>  	if (!lp->tx_bd_v)
> -		goto out;
> +		return -ENOMEM;
>  
>  	lp->rx_bd_v = dma_alloc_coherent(ndev->dev.parent,
>  					 sizeof(*lp->rx_bd_v) * lp->rx_bd_num,


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
