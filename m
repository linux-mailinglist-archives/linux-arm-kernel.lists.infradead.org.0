Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6CA91234
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 20:20:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6gHVenlMttAJQ7LB1+z5M3ERmR5RwhprB0WcVICapEQ=; b=rv45MUpKk3UViALE9J8gWO0EF
	UVgwuE4d1JL7Ml0Ak1EDl8Vc8aDrvyYwXCHkuxFqVHXQsK06vuTm9mMBPDmxpNkg0fCyCy39QigBT
	5Dk1izkn6ERCeC8v4g2uOyk0fSkW6lB/+f429pw0h0nfP1NsztyxqqjFcTt4MOnRR5I0K+SQp1EfV
	7edfiyLZaiH8IG89qIPKxVe1LX3QTUEul2aSSrda5GgkNXpdBFxC/yEUtAqRzzGXuus1G427I7TiK
	eBHr+4cJ9JRuL1RTRApCE5qr29mwCcT2sWJeJg1sPIOL4eyCTjWQlgDzNwr3QFoFXSFBWYhJ2NaRS
	7KIH0ko1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz3Jp-0005TE-FJ; Sat, 17 Aug 2019 18:20:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hz3Jb-0005SO-Fr
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 18:20:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 50DD5337;
 Sat, 17 Aug 2019 11:20:31 -0700 (PDT)
Received: from [10.37.12.25] (unknown [10.37.12.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8A66F3F706;
 Sat, 17 Aug 2019 11:20:29 -0700 (PDT)
Subject: Re: [Xen-devel] [PATCH 07/11] swiotlb-xen: provide a single
 page-coherent.h header
To: Christoph Hellwig <hch@lst.de>
References: <20190816130013.31154-1-hch@lst.de>
 <20190816130013.31154-8-hch@lst.de>
 <9a3261c6-5d92-cf6b-1ae8-3a8e8b5ef0d4@arm.com>
 <20190817065011.GA18599@lst.de>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <21746bbf-618a-d12b-c767-f9e865f4dd20@arm.com>
Date: Sat, 17 Aug 2019 19:20:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190817065011.GA18599@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_112035_577349_F5D48218 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 xen-devel@lists.xenproject.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

On 8/17/19 7:50 AM, Christoph Hellwig wrote:
> On Fri, Aug 16, 2019 at 11:40:43PM +0100, Julien Grall wrote:
>> I am not sure I agree with this rename. The implementation of the helpers
>> are very Arm specific as this is assuming Dom0 is 1:1 mapped.
>>
>> This was necessary due to the lack of IOMMU on Arm platforms back then.
>> But this is now a pain to get rid of it on newer platform...
> 
> So if you look at the final version of the header after the whole
> series, what assumes a 1:1 mapping?  It all just is
> 
> 	if (pfn_valid())
> 		local cache sync;
> 	else
> 		call into the arch code;

In the context of Xen Arm, the dev_addr is a host physical address. From 
my understanding pfn_valid() is dealing with a guest physical frame.

Therefore by passing PFN_DOWN(dev_addr) in argument you assume that the 
host and guest address spaces are the same.

> 
> are you concerned that the local cache sync might have to be split
> up more for a non-1:1 map in that case?  We could just movea
> the xen_dma_* routines into the arch instead of __xen_dma, but it
> really helps to have a common interface header.
Moving xen_dma_* routines into the arch would be a good option. 
Although, I would still consider a stub version for arch not requiring 
specific DMA.

Cheers,

-- 
Julien Grall


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
