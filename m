Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C820A8D76D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 17:49:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9tKAXY9ACTpYM4hJREhyPAHKyOfuU+lH8U5pALT63dk=; b=ksKgBe7ONnq5ixA9ML8P2Bq0l
	2AaHIt76+WPxz1oI0ERqoVpGvWUl0/lZx5/gVp5BAElAO8G7R46rBfopvGtj2F4U48xhxoTL0YHsV
	Taip9kTQsffO9kVVbpo4p1M5EFdn7QfqiBAbQab6PzTKTJVzvwMBHnu0t/yeL4Owr0go8R/sMVDKW
	gXUIC/zcLHgw08vW4ysvrh4uwGm8k5JAF31EEkYpYsToVF9K7iuSO81ACVziQKK65z0RDjfjCR/e/
	rtB4sL1uv2C8maQg5W+0mtXhi1QNc9l1d7u/Zt5THkDDcK4Dkt1vXXi+0gzDfS9wPa32IRwGS2W91
	SYeEZ0UjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxvWj-0003mW-Hm; Wed, 14 Aug 2019 15:49:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxvWY-0003mA-T8
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 15:49:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E0B2328;
 Wed, 14 Aug 2019 08:49:17 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0A26C3F694;
 Wed, 14 Aug 2019 08:49:14 -0700 (PDT)
Subject: Re: [PATCH 6/6] driver core: initialize a default DMA mask for
 platform device
To: Christoph Hellwig <hch@lst.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>
References: <20190811080520.21712-1-hch@lst.de>
 <20190811080520.21712-7-hch@lst.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <fbea6e6d-7721-b51d-0501-582e8446e9c9@arm.com>
Date: Wed, 14 Aug 2019 16:49:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190811080520.21712-7-hch@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_084919_031586_D96C3A51 
X-CRM114-Status: GOOD (  24.13  )
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
Cc: linux-arch@vger.kernel.org, Gavin Li <git@thegavinli.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mathias Nyman <mathias.nyman@intel.com>, Geoff Levand <geoff@infradead.org>,
 Olav Kongas <ok@artecdesign.ee>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-usb@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, Tony Prisk <linux@prisktech.co.nz>,
 iommu@lists.linux-foundation.org, Alan Stern <stern@rowland.harvard.edu>,
 NXP Linux Team <linux-imx@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Minas Harutyunyan <hminas@synopsys.com>, Shawn Guo <shawnguo@kernel.org>,
 linuxppc-dev@lists.ozlabs.org, Bin Liu <b-liu@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/08/2019 09:05, Christoph Hellwig wrote:
> We still treat devices without a DMA mask as defaulting to 32-bits for
> both mask, but a few releases ago we've started warning about such
> cases, as they require special cases to work around this sloppyness.
> Add a dma_mask field to struct platform_object so that we can initialize

s/object/device/

> the dma_mask pointer in struct device and initialize both masks to
> 32-bits by default.  Architectures can still override this in
> arch_setup_pdev_archdata if needed.
> 
> Note that the code looks a little odd with the various conditionals
> because we have to support platform_device structures that are
> statically allocated.

This would be a good point to also get rid of the long-standing bodge in 
platform_device_register_full().

> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/base/platform.c         | 15 +++++++++++++--
>   include/linux/platform_device.h |  1 +
>   2 files changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/base/platform.c b/drivers/base/platform.c
> index ec974ba9c0c4..b216fcb0a8af 100644
> --- a/drivers/base/platform.c
> +++ b/drivers/base/platform.c
> @@ -264,6 +264,17 @@ struct platform_object {
>   	char name[];
>   };
>   
> +static void setup_pdev_archdata(struct platform_device *pdev)

Bikeshed: painting the generic DMA API properties as "archdata" feels a 
bit off-target :/

> +{
> +	if (!pdev->dev.coherent_dma_mask)
> +		pdev->dev.coherent_dma_mask = DMA_BIT_MASK(32);
> +	if (!pdev->dma_mask)
> +		pdev->dma_mask = DMA_BIT_MASK(32);
> +	if (!pdev->dev.dma_mask)
> +		pdev->dev.dma_mask = &pdev->dma_mask;
> +	arch_setup_pdev_archdata(pdev);

AFAICS m68k's implementation of that arch hook becomes entirely 
redundant after this change, so may as well go. That would just leave 
powerpc's actual archdata, which at a glance looks like it could 
probably be cleaned up with not *too* much trouble.

Robin.

> +};
> +
>   /**
>    * platform_device_put - destroy a platform device
>    * @pdev: platform device to free
> @@ -310,7 +321,7 @@ struct platform_device *platform_device_alloc(const char *name, int id)
>   		pa->pdev.id = id;
>   		device_initialize(&pa->pdev.dev);
>   		pa->pdev.dev.release = platform_device_release;
> -		arch_setup_pdev_archdata(&pa->pdev);
> +		setup_pdev_archdata(&pa->pdev);
>   	}
>   
>   	return pa ? &pa->pdev : NULL;
> @@ -512,7 +523,7 @@ EXPORT_SYMBOL_GPL(platform_device_del);
>   int platform_device_register(struct platform_device *pdev)
>   {
>   	device_initialize(&pdev->dev);
> -	arch_setup_pdev_archdata(pdev);
> +	setup_pdev_archdata(pdev);
>   	return platform_device_add(pdev);
>   }
>   EXPORT_SYMBOL_GPL(platform_device_register);
> diff --git a/include/linux/platform_device.h b/include/linux/platform_device.h
> index 9bc36b589827..a2abde2aef25 100644
> --- a/include/linux/platform_device.h
> +++ b/include/linux/platform_device.h
> @@ -24,6 +24,7 @@ struct platform_device {
>   	int		id;
>   	bool		id_auto;
>   	struct device	dev;
> +	u64		dma_mask;
>   	u32		num_resources;
>   	struct resource	*resource;
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
