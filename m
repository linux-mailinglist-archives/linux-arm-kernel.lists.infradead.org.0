Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C73EE122855
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 11:09:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OP1clDio01ws4K+YRidnXqtTM11OpM8DmDAUTL20L3c=; b=h0UGfiY60Jmqzv
	9Fps9SwqQwv105a+2M3gLMGy6g3oBuF3TVL5XtqhOT27tMXUv5Ayoo5asHrHO7p3YoDxkyzbmzu75
	X562AkVIC9Jfh4ADHJoVw2JmBXxNogIig481iEjTs+uE0OO9jUBRVRCZLYB6xTi0+030LEW5C+qMU
	8IbzSq/CLF76cT2VhDWTyZG/4tgMvhObWSiIxbJJENjToS8JbsKqSMgxPY3EsuKonwBXcFN+NQXCj
	4zXrdgxqip1fgQr7wJ77D2WKejJBTAvLEqfsusn9+hY4bxGCatMiPazkXarseOEGZN7JL+jJdqVxR
	erwnwST2YPKLRQAogDCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih9mw-0002Ix-0R; Tue, 17 Dec 2019 10:09:10 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih9mj-0002Ht-Db
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 10:08:59 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id AAE48286; Tue, 17 Dec 2019 11:08:51 +0100 (CET)
Date: Tue, 17 Dec 2019 11:08:50 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v2 0/5] iommu: Implement iommu_put_resv_regions_simple()
Message-ID: <20191217100850.GI8689@8bytes.org>
References: <20191209145007.2433144-1-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209145007.2433144-1-thierry.reding@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_020857_611439_66602180 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Christoph Hellwig <hch@infradead.org>, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, David Woodhouse <dwmw2@infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thierry

On Mon, Dec 09, 2019 at 03:50:02PM +0100, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Most IOMMU drivers only need to free the memory allocated for each
> reserved region. Instead of open-coding the loop to do this in each
> driver, extract the code into a common function that can be used by
> all these drivers.
> 
> Changes in v2:
> - change subject prefix to "iommu: virtio: " for virtio-iommu.c driver
> 
> Thierry
> 
> Thierry Reding (5):
>   iommu: Implement iommu_put_resv_regions_simple()
>   iommu: arm: Use iommu_put_resv_regions_simple()
>   iommu: amd: Use iommu_put_resv_regions_simple()
>   iommu: intel: Use iommu_put_resv_regions_simple()
>   iommu: virtio: Use iommu_put_resv_regions_simple()

Thanks, that is a nice consolidation. Just a minor nit, can you please
rename iommu_put_resv_regions_simple to
generic_iommu_put_resv_regsions(). That matches the naming in other
places where we have done similar things.

Thanks,

	Joerg

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
