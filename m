Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 595D790608
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 18:43:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hbvo84Vu2P/K4ySA1qRlEGyMZ50CH7N3gIh5eQN5RD8=; b=padUkqhbBm6hjw
	7tR5R7hZjsZuTz8cPivzTZG+qQCbUTlOIuGIJ1DxDUFLNx0oxrZ+BpyKij0alyPdYjc7SqE9+ri91
	BNpPRBktVzvTkx+7DaeJ+AiOlRBWqAXpmnTDT4+TF1eiRxGPCUlKcg+qKgIIPD0EM5tr5GPeFzsWy
	gp+GNTWs9HNLxZU2KtTdUb/bunXXZLz8nnyWMAL8eBVXZnwJNDtVxUAZJ7Q/y6Byt9mFr6kVeHtZy
	qckW0TVoxFwZ1SZ7mjuvBZ3VxtxiGwe6M0g4/bMsNjrhh0QBZ9BaFjPj7ndSJjH9Yv1ZrFvNY6YlZ
	/5uTn3MzPo4akWyKu6fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyfKK-0001TT-IQ; Fri, 16 Aug 2019 16:43:44 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyfK7-0001Sv-FO
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 16:43:32 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B7255227A81; Fri, 16 Aug 2019 18:43:28 +0200 (CEST)
Date: Fri, 16 Aug 2019 18:43:28 +0200
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 03/11] xen/arm: pass one less argument to dma_cache_maint
Message-ID: <20190816164328.GB3629@lst.de>
References: <20190816130013.31154-1-hch@lst.de>
 <20190816130013.31154-4-hch@lst.de>
 <8585fb27-14e0-888c-6749-6862b4e16418@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8585fb27-14e0-888c-6749-6862b4e16418@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_094331_661035_E6FD3D6D 
X-CRM114-Status: GOOD (  11.48  )
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
Cc: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 xen-devel@lists.xenproject.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 02:37:58PM +0100, Robin Murphy wrote:
> On 16/08/2019 14:00, Christoph Hellwig wrote:
>> Instead of taking apart the dma address in both callers do it inside
>> dma_cache_maint itself.
>>
>> Signed-off-by: Christoph Hellwig <hch@lst.de>
>> ---
>>   arch/arm/xen/mm.c | 10 ++++++----
>>   1 file changed, 6 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
>> index 90574d89d0d4..d9da24fda2f7 100644
>> --- a/arch/arm/xen/mm.c
>> +++ b/arch/arm/xen/mm.c
>> @@ -43,13 +43,15 @@ static bool hypercall_cflush = false;
>>     /* functions called by SWIOTLB */
>>   -static void dma_cache_maint(dma_addr_t handle, unsigned long offset,
>> -	size_t size, enum dma_data_direction dir, enum dma_cache_op op)
>> +static void dma_cache_maint(dma_addr_t handle, size_t size,
>> +		enum dma_data_direction dir, enum dma_cache_op op)
>>   {
>>   	struct gnttab_cache_flush cflush;
>>   	unsigned long xen_pfn;
>> +	unsigned long offset = handle & ~PAGE_MASK;
>>   	size_t left = size;
>>   +	offset &= PAGE_MASK;
>
> Ahem... presumably that should be handle, not offset.

Ooops, yes.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
