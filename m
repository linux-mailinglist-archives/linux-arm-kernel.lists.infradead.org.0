Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4579B10A622
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 22:45:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=He5DRTX3tQgA+4lxYZYc3cjFhTinNUGsLvm/TBVaCMI=; b=TRroF/lOIDC5IkdrpjrVEubU8
	Xc6Hy+qrq3/H+qMP08x4PU1wi4gEVwOCcJadselldOcDJYG1WWNIkoIB/vIr+ouse2VEbBqwFP8D/
	oLT0EHNDu1O139YL4eDqGt2+CXC2ffUp4ZN+UvdbeboaCw7FKHwaTrU7kvse+zopSjXRu9pRhLb35
	8rk5jiYBE9jh9f80X6POwru7543i4URVtfzLzT8ApBexsehcv82h8C0lyqOLacQ6B2zjtn/a8KNzD
	WgYhaEGzhWriljwBuFntlSffk/xw3vrBSftr5gS2xHVosN8I5MK2uPsVodBOldsPbmwrwmU4SgTfM
	AGOdpwgpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZieV-0002Ju-T4; Tue, 26 Nov 2019 21:45:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZieM-0002Id-RR
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 21:45:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 59F5431B;
 Tue, 26 Nov 2019 13:45:31 -0800 (PST)
Received: from [192.168.1.124] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 37D3B3F52E;
 Tue, 26 Nov 2019 13:45:26 -0800 (PST)
Subject: Re: [PATCH v2] dma-mapping: treat dev->bus_dma_mask as a DMA limit
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Christoph Hellwig <hch@lst.de>, Nathan Chancellor <natechancellor@gmail.com>
References: <20191121092646.8449-1-nsaenzjulienne@suse.de>
 <20191123165108.GA15306@ubuntu-x2-xlarge-x86> <20191125074412.GA30595@lst.de>
 <0b851d0e-37c7-062e-c287-05f8c8a54c16@arm.com>
 <45feed391bbd95c46f64b31cf8817d4f773c8da1.camel@suse.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <935d65b4-a28e-d7b9-7392-42fec71b5150@arm.com>
Date: Tue, 26 Nov 2019 21:45:19 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <45feed391bbd95c46f64b31cf8817d4f773c8da1.camel@suse.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_134534_940045_31265782 
X-CRM114-Status: GOOD (  15.51  )
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-mips@vger.kernel.org,
 linux-ide@vger.kernel.org, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Frank Rowand <frowand.list@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Paul Burton <paulburton@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Joerg Roedel <joro@8bytes.org>, x86@kernel.org, linux-acpi@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, linux-pci@vger.kernel.org,
 James Hogan <jhogan@kernel.org>, Len Brown <lenb@kernel.org>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Hanjun Guo <guohanjun@huawei.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 iommu@lists.linux-foundation.org, Sudeep Holla <sudeep.holla@arm.com>,
 linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-26 6:51 pm, Nicolas Saenz Julienne wrote:
> On Mon, 2019-11-25 at 16:33 +0000, Robin Murphy wrote:
>> On 25/11/2019 7:44 am, Christoph Hellwig wrote:
>>> On Sat, Nov 23, 2019 at 09:51:08AM -0700, Nathan Chancellor wrote:
>>>> Just as an FYI, this introduces a warning on arm32 allyesconfig for me:
>>>
>>> I think the dma_limit argument to iommu_dma_alloc_iova should be a u64
>>> and/or we need to use min_t and open code the zero exception.
>>>
>>> Robin, Nicolas - any opinions?
>>
>> Yeah, given that it's always held a mask I'm not entirely sure why it
>> was ever a dma_addr_t rather than a u64. Unless anyone else is desperate
>> to do it I'll get a cleanup patch ready for rc1.
> 
> Sounds good to me too
> 
> Robin, since I started the mess, I'll be happy to do it if it helps offloading
> some work from you.

No worries - your change only exposed my original weird decision ;)  On 
second look the patch was literally a trivial one-liner, so I've written 
it up already.

Cheers,
Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
