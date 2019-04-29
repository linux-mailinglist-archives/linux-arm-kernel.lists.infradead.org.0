Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8745EE5B3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 17:03:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8LKmsnUJDJ8uszvX+1n9nsF2KhAbCh2Gz8tsM0FsoaA=; b=P8VKUnoyekai4MFiAI70DvEta
	dowo0TB4beZoPUliLl1skyB6l5VkBVm4SZkXF+8c7FEYMGVgij8CbDCbc7TcoC5sCM00PBOO2w/hb
	LpWuCLoO3LFU+fC8vUI7XzuRdKEq1skUzapcCBWyGr+0AHP3Kq+yeoFmHTdBsuKbj0AEWUUUlsANu
	QjWjKYTiUy5niV8ypp+OhWUGidAq5gGA9sXqduDvza2xCgA8Cte2tV8l6fFKDYe3lBdKVgBkhrPgY
	EZ0yUnNsz3Mjit06vC6jQPfhYeJot1wrWXS6YZNGE03Cp8lxpZtl8kVC2vuHfXWFSSFm/TFAwwNQQ
	pLBlprUhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL7oi-0005bj-Qx; Mon, 29 Apr 2019 15:03:40 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL7ob-0005bK-FK
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 15:03:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D0FAF80D;
 Mon, 29 Apr 2019 08:03:32 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 689D63F5C1;
 Mon, 29 Apr 2019 08:03:31 -0700 (PDT)
Subject: Re: implement generic dma_map_ops for IOMMUs v3
To: Christoph Hellwig <hch@lst.de>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
References: <20190422175942.18788-1-hch@lst.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <9ae8ce99-65a8-711d-b17d-165df7e280d4@arm.com>
Date: Mon, 29 Apr 2019 16:03:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190422175942.18788-1-hch@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_080333_514286_5C4EC3B2 
X-CRM114-Status: GOOD (  20.77  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: Tom Lendacky <thomas.lendacky@amd.com>, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/04/2019 18:59, Christoph Hellwig wrote:
> Hi Robin,
> 
> please take a look at this series, which implements a completely generic
> set of dma_map_ops for IOMMU drivers.  This is done by taking the
> existing arm64 code, moving it to drivers/iommu and then massaging it
> so that it can also work for architectures with DMA remapping.  This
> should help future ports to support IOMMUs more easily, and also allow
> to remove various custom IOMMU dma_map_ops implementations, like Tom
> was planning to for the AMD one.

Modulo a few nits, I think this looks pretty much good to go, and it 
would certainly be good to get as much as reasonable queued soon for the 
sake of progress elsewhere.

Catalin, Will, I think the arm64 parts are all OK but please take a look 
to confirm.

Thanks,
Robin.

> 
> A git tree is also available at:
> 
>      git://git.infradead.org/users/hch/misc.git dma-iommu-ops.3
> 
> Gitweb:
> 
>      http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/dma-iommu-ops.3
> 
> Changes since v2:
>   - address various review comments and include patches from Robin
> 
> Changes since v1:
>   - only include other headers in dma-iommu.h if CONFIG_DMA_IOMMU is enabled
>   - keep using a scatterlist in iommu_dma_alloc
>   - split out mmap/sgtable fixes and move them early in the series
>   - updated a few commit logs
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
