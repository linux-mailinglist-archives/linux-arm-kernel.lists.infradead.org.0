Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 944458EDAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 16:05:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zxPnCaU0E4EUXzf6nzHz5gkVwnzYBq3KktqtBvkzhJ8=; b=UOZkp4b+rAEghy
	HoJfcJYVPYp7GktKE4FQ0M4rQtiJQeBuUw0QJSpPTK/hQF8GK0hJgoFz5Uol2veZmJVAm8VGkwpsh
	S6yOvE1bLBdNFSV2j4vxmX+bVBxx2LpoFfVHZxQ2boBgF5g0VIcT+VHBoJiBXopyzz9OM6RoEAFiX
	3VRBTYs23cvttM1xZapoqsBseu0LoIbB8N/KNhrCBXQ2QgvOmJuI4VvIq0Grexc9AAmlsk66Bs/ax
	raFReewkAimpO1Q6k/BS45lT7VhMYKa6IDrv3GzssrXnwPgeorjFOdJIJxxzLYBhpRWSXezCv/GDE
	UGkjpguQj/3JOchD/sWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyGNp-0004P8-CH; Thu, 15 Aug 2019 14:05:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyGNS-0004O9-Vh
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 14:05:21 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 171BD20644;
 Thu, 15 Aug 2019 14:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565877918;
 bh=lOyzTACCHACUENr3Alx4Ml7IiaPxhwyXrxfcBKWNBJc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PtMKB3MHNCBeXVQklF3aBuT4nPDLyDVWODXEgp48SJZXXqW5ovAbc9FVn+3tX8FKE
 pR1oRIblVReZKrtntkhiaZUu9/e7AjwFuaI4yblInt8eTNK1NW/ZB7XjP4YTtW5VlW
 eNlY1nowm+mCe1y3E25iAZAab2798Rbm62UuKYmw=
Date: Thu, 15 Aug 2019 16:05:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 6/6] driver core: initialize a default DMA mask for
 platform device
Message-ID: <20190815140516.GB7174@kroah.com>
References: <20190811080520.21712-1-hch@lst.de>
 <20190811080520.21712-7-hch@lst.de>
 <20190815130325.GB17065@kroah.com> <20190815133812.GF12036@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815133812.GF12036@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_070519_045501_209F2F11 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Gavin Li <git@thegavinli.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arch@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Alan Stern <stern@rowland.harvard.edu>, NXP Linux Team <linux-imx@nxp.com>,
 Mathias Nyman <mathias.nyman@intel.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Minas Harutyunyan <hminas@synopsys.com>, Olav Kongas <ok@artecdesign.ee>,
 Bin Liu <b-liu@ti.com>, linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Geoff Levand <geoff@infradead.org>,
 Shawn Guo <shawnguo@kernel.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tony Prisk <linux@prisktech.co.nz>,
 iommu@lists.linux-foundation.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 03:38:12PM +0200, Christoph Hellwig wrote:
> On Thu, Aug 15, 2019 at 03:03:25PM +0200, Greg Kroah-Hartman wrote:
> > > --- a/include/linux/platform_device.h
> > > +++ b/include/linux/platform_device.h
> > > @@ -24,6 +24,7 @@ struct platform_device {
> > >  	int		id;
> > >  	bool		id_auto;
> > >  	struct device	dev;
> > > +	u64		dma_mask;
> > 
> > Why is the dma_mask in 'struct device' which is part of this structure,
> > not sufficient here?  Shouldn't the "platform" be setting that up
> > correctly already in the "archdata" type callback?
> 
> Becaus the dma_mask in struct device is a pointer that needs to point
> to something, and this is the best space we can allocate for 'something'.
> m68k and powerpc currently do something roughly equivalent at the moment,
> while everyone else just has horrible, horrible hacks.  As mentioned in
> the changelog the intent of this patch is that we treat platform devices
> like any other bus, where the bus allocates the space for the dma_mask.
> The long term plan is to eventually kill that weird pointer indirection
> that doesn't help anyone, but for that we need to sort out the basics
> first.

Ah, missed that, sorry.  Ok, no objection from me.  Might as well respin
this series and I can queue it up after 5.3-rc5 is out (which will have
your first 2 patches in it.)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
