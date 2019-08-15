Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E185E8ED10
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 15:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pCdXqoQmJzhdl8F/ayQG/PN114vDwLzJctI5/nX1TmY=; b=iia9yPNr18Wb95
	ld6BVvCUfGA17jaf09FuamPyGxbWrWuTfj6p+uklGwvNCy//xBZLhSKTe1Yc6Lma1BLyvHitZ1/Vw
	d2s2GtmRdqdLlxKXicovZ9sU6n7/3UINOVsvRH+kO9uFYU+n0khVLmgLcY62PRksCSVTSWK6VlMjA
	lpCkD9RQ6nHlqv5C8vKXVF4Sm0l3Xzo31a2Uet75RrX+XG5g9XlxE6a10MIZQUcec4+U5aOtBgWFO
	abPDwCH4YpA8tmUyhpeLoyQzNXfAjiRAo57jL6+6Sq6HmRQqhR2PFYRE2UkwlXtYq2SSQgG7xuR3I
	xrPt/ZNaAka9yY4QQ/nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyFxx-0000BA-5F; Thu, 15 Aug 2019 13:38:57 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyFxJ-0008U1-3u
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 13:38:24 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8BF0568AFE; Thu, 15 Aug 2019 15:38:12 +0200 (CEST)
Date: Thu, 15 Aug 2019 15:38:12 +0200
From: Christoph Hellwig <hch@lst.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 6/6] driver core: initialize a default DMA mask for
 platform device
Message-ID: <20190815133812.GF12036@lst.de>
References: <20190811080520.21712-1-hch@lst.de>
 <20190811080520.21712-7-hch@lst.de> <20190815130325.GB17065@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815130325.GB17065@kroah.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_063817_721381_6DC7F77C 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Gavin Li <git@thegavinli.com>, Fabio Estevam <festevam@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-arch@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>,
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

On Thu, Aug 15, 2019 at 03:03:25PM +0200, Greg Kroah-Hartman wrote:
> > --- a/include/linux/platform_device.h
> > +++ b/include/linux/platform_device.h
> > @@ -24,6 +24,7 @@ struct platform_device {
> >  	int		id;
> >  	bool		id_auto;
> >  	struct device	dev;
> > +	u64		dma_mask;
> 
> Why is the dma_mask in 'struct device' which is part of this structure,
> not sufficient here?  Shouldn't the "platform" be setting that up
> correctly already in the "archdata" type callback?

Becaus the dma_mask in struct device is a pointer that needs to point
to something, and this is the best space we can allocate for 'something'.
m68k and powerpc currently do something roughly equivalent at the moment,
while everyone else just has horrible, horrible hacks.  As mentioned in
the changelog the intent of this patch is that we treat platform devices
like any other bus, where the bus allocates the space for the dma_mask.
The long term plan is to eventually kill that weird pointer indirection
that doesn't help anyone, but for that we need to sort out the basics
first.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
