Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3783D1B05AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 11:31:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ncV8keKy3xNG7CPHKqyujPs7s/wcvZS5Dyb0qjiGRgM=; b=Ts5WhHadx33/1j
	txZT/sT9h+Ysk+EgMLxz6LQTI47Hff1JKSmgJTT2aBbXT9Egp9H9juPzMocaBiJuwMe36qgv0kw9M
	dQU16JPPNmcJN1OKvq8tmyubyIHawQOTXRoosQNsOHrGMxhy3Ul9gMei/VLT6phVsFjWRLz3rFZBF
	8/E0L1RQCDO5H+V44TLU8uRb2Z4v7vWG+8OauIZoXPu2yvsxHNlS0+aRqhu7CwxbSceXKecDW1Mdu
	wlU0/z85XZ5l3z0XPWY5QJK2LFmSxofPAyc1PG3Mc0GmyBzPUSxI5mh3HAzfxogOpGHTkOfx8Vp7i
	syheTwdAfpISOvEvUxIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQSln-0007Xm-SM; Mon, 20 Apr 2020 09:31:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQSld-0007VN-0i
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 09:31:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 06ECD30E;
 Mon, 20 Apr 2020 02:31:03 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 13BB23F73D;
 Mon, 20 Apr 2020 02:31:01 -0700 (PDT)
Date: Mon, 20 Apr 2020 10:30:55 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] acpi: arm64/iort: Ensure DMA mask does not exceed device
 limit
Message-ID: <20200420093055.GA7393@e121166-lin.cambridge.arm.com>
References: <20200420081131.16822-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420081131.16822-1-ardb@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_023105_102644_B7CDE6CE 
X-CRM114-Status: GOOD (  17.66  )
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
Cc: linux-acpi@vger.kernel.org, guohanjun@huawei.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+Robin]

On Mon, Apr 20, 2020 at 10:11:31AM +0200, Ard Biesheuvel wrote:
> When calculating the DMA mask from the address limit provided by the
> firmware, we add one to the ilog2() of the end address, and pass the
> result to DMA_BIT_MASK().
> 
> For an end address that is not a power-of-2 minus 1, this will result
> in the mask to be wider than the limit, and cover memory that is not
> addressable by the device. Instead, we should add 1 to 'end' before
> taking the log, so that a limit of, say, 0x3fffffff gets translated
> to a mask of 30, but any value below it gets translated to 29.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  drivers/acpi/arm64/iort.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Need Robin's feedback on this - I was looking at:

a7ba70f1787f ("dma-mapping: treat dev->bus_dma_mask as a DMA limit")

I assume current code is *intended* but I shall let Robin comment
on this.

Thanks,
Lorenzo

> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> index 7d04424189df..aab2f51eff14 100644
> --- a/drivers/acpi/arm64/iort.c
> +++ b/drivers/acpi/arm64/iort.c
> @@ -1162,7 +1162,7 @@ void iort_dma_setup(struct device *dev, u64 *dma_addr, u64 *dma_size)
>  		 * firmware.
>  		 */
>  		end = dmaaddr + size - 1;
> -		mask = DMA_BIT_MASK(ilog2(end) + 1);
> +		mask = DMA_BIT_MASK(ilog2(end + 1));
>  		dev->bus_dma_limit = end;
>  		dev->coherent_dma_mask = mask;
>  		*dev->dma_mask = mask;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
