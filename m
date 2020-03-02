Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 654E61759C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 12:53:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjtBIiPfffDqq/gvAvJv+pdmeKRrpKm5nBRPRMHausc=; b=XaAMHhG/rGHtql
	2XtkvP1l75HwYjcTQf+L4Yw3ZYbw4u0DZMkK5WTMRJbovuP7MIeqmH/ewlKNeSxbzs9R+1l55txty
	SWe+I4WDU9FeYLPEQRaxgyzuvwbbxBokvZ4R6rP7Pai4Md1ejS/QlBVd9alwrPXZb0D7nenaYyV/Z
	XykoB1/5BsbOeEe/XMSUdlssPqsdirBqLF6prSZStCUM3VYDK1paHVV8+/YRe2k0cx59/5ObVgOKl
	6onh4/+Zn0b/X0mOg61+sOlztJujdSLUq98fsanoH1lf0XMe6GpYIIAN7acyYsNYN0mEC2d5pS6Ub
	8HGJ4M20hsraZGHmG/Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8jdH-000318-J9; Mon, 02 Mar 2020 11:53:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8jdB-00030c-Ql
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 11:53:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 76CC82086A;
 Mon,  2 Mar 2020 11:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583149985;
 bh=4bF0iGc4sgOfDaTmJQybE+jlOjpOkg2FBwoN4lDOHYY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E+QvBteSFpfwnMgtRm9B+mdyId+y4UxlnbaZ8xGCfA98gSqmGPTCojyFkNAW5d7D5
 FXUwBQMnGcgpnJwm2QSpTJVx3X1kzoODS/6hcj5iMwNuxq5h52Y4DOPh/dMp5zd0nP
 HJjjikEhWwXk83t9TOQ3TKzLsXddqxTn4jY6y/HE=
Date: Mon, 2 Mar 2020 11:53:01 +0000
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>, joro@8bytes.org
Subject: Re: [PATCH] iommu/io-pgtable-arm: Fix IOVA validation for 32-bit
Message-ID: <20200302115300.GA9233@willie-the-truck>
References: <dd330453ed31099b5b3b76db02fe79d55aa9bce3.1582899080.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dd330453ed31099b5b3b76db02fe79d55aa9bce3.1582899080.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_035305_894157_3018A87E 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: iommu@lists.linux-foundation.org, Stephan Gerhold <stephan@gerhold.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 02:18:55PM +0000, Robin Murphy wrote:
> Since we ony support the TTB1 quirk for AArch64 contexts, and
> consequently only for 64-bit builds, the sign-extension aspect of the
> "are all bits above IAS consistent?" check should implicitly only apply
> to 64-bit IOVAs. Change the type of the cast to ensure that 32-bit longs
> don't inadvertently get sign-extended, and thus considered invalid, if
> they happen to be above 2GB in the TTB0 region.
> 
> Reported-by: Stephan Gerhold <stephan@gerhold.net>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> 
> ---
> 
> Logically there may also have been a UBSAN "shift greater than size of
> type" warning too, but arch/arm doesn't support UBSAN_SANITIZE_ALL,
> and that's now my only easy "spin up a 32-bit VM" option to hand :)
> 
>  drivers/iommu/io-pgtable-arm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Acked-by: Will Deacon <will@kernel.org>

Joerg -- pleae can you take this as a fix for 5.6?

Thanks,

Will

> diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
> index 983b08477e64..04fbd4bf0ff9 100644
> --- a/drivers/iommu/io-pgtable-arm.c
> +++ b/drivers/iommu/io-pgtable-arm.c
> @@ -468,7 +468,7 @@ static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
>  	arm_lpae_iopte *ptep = data->pgd;
>  	int ret, lvl = data->start_level;
>  	arm_lpae_iopte prot;
> -	long iaext = (long)iova >> cfg->ias;
> +	long iaext = (s64)iova >> cfg->ias;
>  
>  	/* If no access, then nothing to do */
>  	if (!(iommu_prot & (IOMMU_READ | IOMMU_WRITE)))
> @@ -645,7 +645,7 @@ static size_t arm_lpae_unmap(struct io_pgtable_ops *ops, unsigned long iova,
>  	struct arm_lpae_io_pgtable *data = io_pgtable_ops_to_data(ops);
>  	struct io_pgtable_cfg *cfg = &data->iop.cfg;
>  	arm_lpae_iopte *ptep = data->pgd;
> -	long iaext = (long)iova >> cfg->ias;
> +	long iaext = (s64)iova >> cfg->ias;
>  
>  	if (WARN_ON(!size || (size & cfg->pgsize_bitmap) != size))
>  		return 0;
> -- 
> 2.23.0.dirty
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
