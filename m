Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F168ECE7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 15:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9f+X43s++NLhpgFU27g0Y7mvNZFmiHUDU7nltSqEMI=; b=j1VGDhdlH0gUFF
	LM0fTbtiE2UhyFFRrEvZtDD3e0xmkAqbiCLEacgEoKbyEGNxguhn93UVlO2kNGKJTNW8067WItQ21
	rmf32OrLg1CXtC8W2i5jdRIy5yLtH8wxo8c9wrSE8nj3RB5CA6LzUpVG823IMV5oevhsMi578NkUb
	WMKpVpB6QHkiJm8WrzOIhgkmHFVo1Y2R8GnKyOe+ciFS4/hhyqCLHwfk/bWoIkCjHy9/K1yk6KiFT
	VFbSd2SXKeyPp9TWmiV6zTUt68WLC0P+Lb48EqOu/d8cHiX814i5DaMGfEHR1TWafHF+By7DkW01e
	OQLhEQJpvwgEWATg+s/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyFrd-0005Mb-Kt; Thu, 15 Aug 2019 13:32:25 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyFrN-0005M1-Tv
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 13:32:13 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id AA62D68BFE; Thu, 15 Aug 2019 15:32:04 +0200 (CEST)
Date: Thu, 15 Aug 2019 15:32:04 +0200
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 6/6] driver core: initialize a default DMA mask for
 platform device
Message-ID: <20190815133204.GD12036@lst.de>
References: <20190811080520.21712-1-hch@lst.de>
 <20190811080520.21712-7-hch@lst.de>
 <fbea6e6d-7721-b51d-0501-582e8446e9c9@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fbea6e6d-7721-b51d-0501-582e8446e9c9@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_063210_116462_F11B29E5 
X-CRM114-Status: GOOD (  12.71  )
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
Cc: Gavin Li <git@thegavinli.com>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Christoph Hellwig <hch@lst.de>,
 linux-arch@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Alan Stern <stern@rowland.harvard.edu>, NXP Linux Team <linux-imx@nxp.com>,
 Mathias Nyman <mathias.nyman@intel.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Minas Harutyunyan <hminas@synopsys.com>, Olav Kongas <ok@artecdesign.ee>,
 Bin Liu <b-liu@ti.com>, linux-arm-kernel@lists.infradead.org,
 Geoff Levand <geoff@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tony Prisk <linux@prisktech.co.nz>,
 iommu@lists.linux-foundation.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 04:49:13PM +0100, Robin Murphy wrote:
>> because we have to support platform_device structures that are
>> statically allocated.
>
> This would be a good point to also get rid of the long-standing bodge in 
> platform_device_register_full().

platform_device_register_full looks odd to start with, especially
as the coumentation is rather lacking..

>>   +static void setup_pdev_archdata(struct platform_device *pdev)
>
> Bikeshed: painting the generic DMA API properties as "archdata" feels a bit 
> off-target :/
>
>> +{
>> +	if (!pdev->dev.coherent_dma_mask)
>> +		pdev->dev.coherent_dma_mask = DMA_BIT_MASK(32);
>> +	if (!pdev->dma_mask)
>> +		pdev->dma_mask = DMA_BIT_MASK(32);
>> +	if (!pdev->dev.dma_mask)
>> +		pdev->dev.dma_mask = &pdev->dma_mask;
>> +	arch_setup_pdev_archdata(pdev);
>
> AFAICS m68k's implementation of that arch hook becomes entirely redundant 
> after this change, so may as well go. That would just leave powerpc's 
> actual archdata, which at a glance looks like it could probably be cleaned 
> up with not *too* much trouble.

Actually I think we can just kill both off.  At the point archdata
is indeed entirely misnamed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
