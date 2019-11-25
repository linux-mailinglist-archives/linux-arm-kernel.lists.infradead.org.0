Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E5A1091E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 17:33:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9KUiMsSUJY1uV2PAHO3I6gChXUBxgfnVVMqNU7Wd2jE=; b=iU/YMhwfvj2F6xgRXzKY982eC
	jT69gs852+AiYPlAcOqIkO/XCIma0LlXzB2SsZexB9KtbBp7fuRkCdIP08OBgxEY64CP0CDDDCRnp
	jLvnfSuDaV3x5oHAilGV3KLp5LhpUKsuqnoUirlzjoDjj1SDSCi0x3LY2K3LLY8p0FO/fvooKOure
	fGaPyfjaJ12CHPHFQ+bxsSG2eiGm6lKuP8ZEMKyj4N8iBsFvgV5ECQCVTI76rL7VJZnAatbGW4DSd
	W0gGyIZD4LXF2t/lqKwr+p1i9v3vQOm2zbCv+u6Err6dUSj/jFibetshdz4g/e8kzhq3TMcSbZTOt
	elj6u1V1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZHIv-0004ls-OO; Mon, 25 Nov 2019 16:33:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZHIm-0004k0-K2
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 16:33:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8683A31B;
 Mon, 25 Nov 2019 08:33:25 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0A7713F6C4;
 Mon, 25 Nov 2019 08:33:20 -0800 (PST)
Subject: Re: [PATCH v2] dma-mapping: treat dev->bus_dma_mask as a DMA limit
To: Christoph Hellwig <hch@lst.de>,
 Nathan Chancellor <natechancellor@gmail.com>
References: <20191121092646.8449-1-nsaenzjulienne@suse.de>
 <20191123165108.GA15306@ubuntu-x2-xlarge-x86> <20191125074412.GA30595@lst.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <0b851d0e-37c7-062e-c287-05f8c8a54c16@arm.com>
Date: Mon, 25 Nov 2019 16:33:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191125074412.GA30595@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_083328_704460_FC2DA66D 
X-CRM114-Status: GOOD (  17.59  )
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
 linuxppc-dev@lists.ozlabs.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25/11/2019 7:44 am, Christoph Hellwig wrote:
> On Sat, Nov 23, 2019 at 09:51:08AM -0700, Nathan Chancellor wrote:
>> Just as an FYI, this introduces a warning on arm32 allyesconfig for me:
> 
> I think the dma_limit argument to iommu_dma_alloc_iova should be a u64
> and/or we need to use min_t and open code the zero exception.
> 
> Robin, Nicolas - any opinions?

Yeah, given that it's always held a mask I'm not entirely sure why it 
was ever a dma_addr_t rather than a u64. Unless anyone else is desperate 
to do it I'll get a cleanup patch ready for rc1.

> Also I wonder how this file gets compiled on arm32 given that arm32
> has its own set of iommu dma ops..

As long as the dependencies for CONFIG_IOMMU_DMA are met it can be built 
even when it's not actually used. That said, I might have expected that 
arm allyesconfig ends up with CONFIG_ARCH_DMA_ADDR_T_64BIT=y anyway; I 
guess it must pick some of CONFIG_ARM_LPAE's negative dependencies.

(/me doesn't feel like jumping down the all*config rabbit hole today)

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
