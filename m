Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C551B049F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 10:41:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uu+aCa5/JPpnF5xYrrQAUJ+QZwoLeepKYXHFuwNnSO0=; b=UAF7P6yaWEhqjk
	iG2NCZA1JoAc3r0kxrl1PghupKCP9BarNd/wUo98c5lmxHbvGTVOazQe9hVtDgJSUkQnSpqpJ8Lmv
	jR3ERVnxOAoK48AjURYErZh6iswbuGOBlMy0VWYFOGSKot3cSXpOaaWyKZvFVKJWT5+a4b4j9siFq
	JXJbrU8g2wculTdnb/M86iy8xLSQwb1h1Ixxq0yL+nsgYgk9fMwEOuw4rZEqp5TUEVBsp3n/ICaxA
	4N1M0WvW9IJYPNDXQREUCmvIk41yAWGhsBq6TX3Rkv/LWCoxpctsPH8vLQLpsy8ddAnt0OZhkoTAQ
	7XFWhNVjciKWggLlb0Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQRzP-0002sO-Aq; Mon, 20 Apr 2020 08:41:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQRzG-0002rl-7F
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 08:41:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 88FCB30E;
 Mon, 20 Apr 2020 01:40:59 -0700 (PDT)
Received: from red-moon.cambridge.arm.com (unknown [10.57.0.198])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1A9843F73D;
 Mon, 20 Apr 2020 01:40:57 -0700 (PDT)
Date: Mon, 20 Apr 2020 09:40:51 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm64: iort: take _DMA methods into account for named
 components
Message-ID: <20200420084051.GA12852@red-moon.cambridge.arm.com>
References: <20200404073047.17898-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200404073047.17898-1-ardb@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_014106_308610_0B1D8AA3 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: catalin.marinas@arm.com, will@kernel.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 04, 2020 at 09:30:47AM +0200, Ard Biesheuvel wrote:
> Where IORT nodes for named components can describe simple DMA limits
> expressed as the number of address bits a device can driver, _DMA methods
> in AML can express more complex topologies, involving DMA translation in
> particular.
> 
> Currently, we only take this _DMA method into account if it appears on a
> ACPI device node describing a PCIe root complex, but it is perfectly
> acceptable to attach them to named components as well, so let's ensure
> we take them into account in those cases too.
> 
> Reported-by: Andrei Warkentin <awarkentin@vmware.com>
> Fixes: 7ad4263980826e8b ("ACPI: Make acpi_dma_configure() DMA regions aware")
> Cc: <stable@vger.kernel.org> # v4.14+
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  drivers/acpi/arm64/iort.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)

Only question is whether there is FW in the field with _DMA methods that
now we would start parsing (and hopefully everything will still work)
but for that the only choice is applying this patch and see, so:

Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>

> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> index ed3d2d1a7ae9..07eb78baf198 100644
> --- a/drivers/acpi/arm64/iort.c
> +++ b/drivers/acpi/arm64/iort.c
> @@ -1146,13 +1146,10 @@ void iort_dma_setup(struct device *dev, u64 *dma_addr, u64 *dma_size)
>  	else
>  		size = 1ULL << 32;
>  
> -	if (dev_is_pci(dev)) {
> -		ret = acpi_dma_get_range(dev, &dmaaddr, &offset, &size);
> -		if (ret == -ENODEV)
> -			ret = rc_dma_get_range(dev, &size);
> -	} else {
> -		ret = nc_dma_get_range(dev, &size);
> -	}
> +	ret = acpi_dma_get_range(dev, &dmaaddr, &offset, &size);
> +	if (ret == -ENODEV)
> +		ret = dev_is_pci(dev) ? rc_dma_get_range(dev, &size)
> +				      : nc_dma_get_range(dev, &size);
>  
>  	if (!ret) {
>  		/*
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
