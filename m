Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B512C167FEF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 15:17:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HfB0xosH0BugGzWN4ajkh/wgLMbj/uqDxGGzg3tPJzQ=; b=VNngzo2VvfDiEt
	O8MFkeiABpO73bkpjSU82nXhrCKTVo9/Gb1MyilcMnfg5pVoOCC8u5LGMQ9Kp/G7apGcSz0RhEawZ
	vICjdvNanETDYKXcmdE7g2szTwxKmluWt8hiRikKweezH73/0zGH/oHiOXjScgeAaHeHO513ulbii
	H0YGJ6N4jniNog+RI+lurZK5YpqnVykha31G5tYENpI4IxcjfelbxHBHK0WtUmmDK3WJILKR44c31
	xWZ5aKdqjgcMKhuTz0cZ3uoX/9O4fvHbD+Ab50ABIq8abxzpRD9ydkoLQCpRpq9wSPJqzeqWcS6AD
	S1d+pHjCpVuyh6E4EfdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j597B-00034n-Gc; Fri, 21 Feb 2020 14:17:13 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j596y-00034D-6T
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 14:17:01 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 36BC968BFE; Fri, 21 Feb 2020 15:16:57 +0100 (CET)
Date: Fri, 21 Feb 2020 15:16:56 +0100
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 1/2] dma-mapping: support setting memory uncached in place
Message-ID: <20200221141656.GF6968@lst.de>
References: <20200220170139.387354-1-hch@lst.de>
 <20200220170139.387354-2-hch@lst.de>
 <502fa745-ddad-f91b-52bc-52edecf8fdbc@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <502fa745-ddad-f91b-52bc-52edecf8fdbc@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_061700_391244_C5236A32 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jonas Bonn <jonas@southpole.se>, Mark Rutland <mark.rutland@arm.com>,
 linux-kernel@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 iommu@lists.linux-foundation.org, openrisc@lists.librecores.org,
 linux-arch@vger.kernel.org, Stafford Horne <shorne@gmail.com>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 05:21:35PM +0000, Robin Murphy wrote:
>> @@ -196,10 +192,15 @@ void *dma_direct_alloc_pages(struct device *dev, size_t size,
>>     	memset(ret, 0, size);
>>   -	if (IS_ENABLED(CONFIG_ARCH_HAS_UNCACHED_SEGMENT) &&
>> -	    dma_alloc_need_uncached(dev, attrs)) {
>> +	if (dma_alloc_need_uncached(dev, attrs)) {
>>   		arch_dma_prep_coherent(page, size);
>> -		ret = uncached_kernel_address(ret);
>> +
>> +		if (IS_ENABLED(CONFIG_ARCH_HAS_DMA_SET_UNCACHED)) {
>> +			if (!arch_dma_set_uncached(ret, size))
>> +				goto out_free_pages;
>> +		} else if (IS_ENABLED(CONFIG_ARCH_HAS_UNCACHED_SEGMENT)) {
>> +			ret = uncached_kernel_address(ret);
>
> Hmm, would we actually need to keep ARCH_HAS_UNCACHED_SEGMENT? If 
> arch_dma_set_uncached() returned void*/ERR_PTR instead, then it could work 
> for both cases (with arch_dma_clear_uncached() being a no-op for segments).

Yes, I think so.  I was a little worried about what to do with
cached_kernel_address() in that scheme, but it turns out with the recent
round of dma-direct cleanup that is actually entirely unused now.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
