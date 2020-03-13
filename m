Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4091848D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 15:09:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Lc5CiiMwsFTjswEUGEpnXtQ6AEXPUrsLTAempMJKGt8=; b=S3RGqewJOMjjOQLu/P5wExC6X
	APQnYnILhYzxQbfFsabY2ZfZ8hRYHN4BO9b8djo/sbhcH4jI1eR9QBLBM/mvEqWi1lzOJeLCbMFzV
	xfn9mYUEqIVm65m1/qnUMZZpCaVDoqpZigxMeQB4ROntXr6pHfWMnGYO7rWMOHWsSiq9x3r30ULOF
	7I/0T7GHDrwVzwHL16/r81dRHHnUg6hAlr6OvXnqVB6Tl011/j/hfWPg5GABJLOZaLA+rS9cIR6CH
	LGJdvRgZI1pxpzr1IcHLAfnNsmV9tYSxZqp7MmISxdiv3pTPQ43UUIl+yiBZect+vLt85RgBXOdoi
	6im6+1SgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCkzr-0007If-OM; Fri, 13 Mar 2020 14:09:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCkzg-0007IK-UO
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 14:08:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1DD3030E;
 Fri, 13 Mar 2020 07:08:56 -0700 (PDT)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 15E5C3F67D;
 Fri, 13 Mar 2020 07:08:54 -0700 (PDT)
Subject: Re: [RFC PATCH] vfio: Ignore -ENODEV when getting MSI cookie
To: Andre Przywara <andre.przywara@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Cornelia Huck <cohuck@redhat.com>, Will Deacon <will@kernel.org>
References: <20200312181950.60664-1-andre.przywara@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <c9e00735-9673-2016-b274-d5290b648a06@arm.com>
Date: Fri, 13 Mar 2020 14:08:47 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200312181950.60664-1-andre.przywara@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_070857_025209_61AB075C 
X-CRM114-Status: GOOD (  24.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: iommu@lists.linux-foundation.org, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-12 6:19 pm, Andre Przywara wrote:
> When we try to get an MSI cookie for a VFIO device, that can fail if
> CONFIG_IOMMU_DMA is not set. In this case iommu_get_msi_cookie() returns
> -ENODEV, and that should not be fatal.
> 
> Ignore that case and proceed with the initialisation.
> 
> This fixes VFIO with a platform device on the Calxeda Midway (no MSIs).
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
> Hi,
> 
> not sure this is the right fix, or we should rather check if the
> platform doesn't support MSIs at all (which doesn't seem to be easy
> to do).
> Or is this because arm-smmu.c always reserves an IOMMU_RESV_SW_MSI
> region?

Both, really - ideally VFIO should be able to skip all MSI_related setup 
if the system doesn't support MSIs, but equally the SMMU drivers would 
also ideally not expose a pointless SW_MSI region in the same situation.

In lieu of a 'nice' way of acheiving that, I think this patch seems 
reasonable - ENODEV doesn't clash with any real error that can occur 
when iommu-dma is present, and carrying on without a cookie should be 
fine since the MSI hooks that would otherwise dereference it will also 
be no-ops.

Perhaps it might be worth a comment to clarify that this is specifically 
to allow vfio-platform to work with iommu-dma disabled, but either way,

Acked-by: Robin Murphy <robin.murphy@arm.com>

> Also this seems to be long broken, actually since Eric introduced MSI
> support in 4.10-rc3, but at least since the initialisation order was
> fixed with f6810c15cf9.

I'm sure the entire Midway userbase have been up-in-arms the whole 
time... :P

Robin.

> 
> Grateful for any insight.
> 
> Cheers,
> Andre
> 
>   drivers/vfio/vfio_iommu_type1.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/vfio/vfio_iommu_type1.c b/drivers/vfio/vfio_iommu_type1.c
> index a177bf2c6683..467e217ef09a 100644
> --- a/drivers/vfio/vfio_iommu_type1.c
> +++ b/drivers/vfio/vfio_iommu_type1.c
> @@ -1786,7 +1786,7 @@ static int vfio_iommu_type1_attach_group(void *iommu_data,
>   
>   	if (resv_msi) {
>   		ret = iommu_get_msi_cookie(domain->domain, resv_msi_base);
> -		if (ret)
> +		if (ret && ret != -ENODEV)
>   			goto out_detach;
>   	}
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
