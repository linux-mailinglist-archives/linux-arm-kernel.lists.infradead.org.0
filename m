Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 410C427CEB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 14:33:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QddaePAae3xF+vN98OonG2K02V6L1MehaAhhZhk53wI=; b=XMdQQVIpn0/Q3PFQsx24iMHH8
	eoZq7c6xoGQqC/9OcU/BOAEcOBEW5CrRsyJHXfGvxip3gVJYT/cRGfeKpeDhXyv4uPYbgnpeW3h5i
	fpvtZJik/KCXV5XeX8SWnKEeBN+xpL1CC3AYza1SjwkPIsJfcI96lyG4pOy70itDTb6+iN+a0gOp/
	HrJrL5zVUAfBevhkSQF51645IryFny5t/f5ipeKGkrqjL2vhvD05xcH0fsM54j7M6W4eH/z451a1j
	i08Wx9AJRUsSuMLWHcDOuRznxlcETVDUDjelA7mLADns0pDWwykUkqlF2TrfuSPGq2lvSRkaaCuAL
	qmCDVO8ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTmuG-0003ca-L1; Thu, 23 May 2019 12:33:12 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTmu8-0003c8-TM
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 12:33:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA87B80D;
 Thu, 23 May 2019 05:33:03 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 75E153F575;
 Thu, 23 May 2019 05:33:02 -0700 (PDT)
Subject: Re: implement generic dma_map_ops for IOMMUs v6
To: Christoph Hellwig <hch@lst.de>
References: <20190523070028.7435-1-hch@lst.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <60f73595-006d-8f88-f5af-d362f9e42ec1@arm.com>
Date: Thu, 23 May 2019 13:33:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190523070028.7435-1-hch@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_053304_954160_75A12E87 
X-CRM114-Status: GOOD (  24.06  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Tom Murphy <tmurphy@arista.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/05/2019 08:00, Christoph Hellwig wrote:
> 
> Hi Robin and Joerg,
> 
> I think we are finally ready for the generic dma-iommu series.  I have
> various DMA API changes pending, and Tom has patches ready to convert
> the AMD and Intel iommu drivers over to it.  I'd love to have this
> in a stable branch shared between the dma-mapping and iommu trees
> the day after rc2 is released.  I volunteer to create the branch,
> but I'm fine with it living in the iommu tree as well.

Yup, I'd also like to see this in -next ASAP in the hope that board 
farms and maybe even real users can start chewing on it. Thanks for 
persevering :)

Robin.

> 
> 
> A git tree is also available at:
> 
>      git://git.infradead.org/users/hch/misc.git dma-iommu-ops.6
> 
> Gitweb:
> 
>      http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/dma-iommu-ops.6
> 
> Changes since v5:
>   - rebased to latest linus tree and dropped a patch now merged
>   - remove the now pointless __dma_iommu_mmap function
>   - restore a cleanup from Robin that would have caused a conflict in
>     last merge winow, but is fine now
> 
> Changes since v4:
>   - rebased to 5.2-rc1
> 
> Changes since v3:
>   - fold the separate patch to refactor mmap bounds checking
>   - don't warn on not finding a vm_area
>   - improve a commit log
>   - refactor __dma_iommu_free a little differently
>   - remove a minor MSI map cleanup to avoid a conflict with the
>     "Split iommu_dma_map_msi_msg" series
> 
> Changes since v2:
>   - address various review comments and include patches from Robin
> 
> Changes since v1:
>   - only include other headers in dma-iommu.h if CONFIG_DMA_IOMMU is enabled
>   - keep using a scatterlist in iommu_dma_alloc
>   - split out mmap/sgtable fixes and move them early in the series
>   - updated a few commit logs
> _______________________________________________
> iommu mailing list
> iommu@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/iommu
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
