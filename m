Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FF710561F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 16:55:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TZYsWinQ3VtgEqDrdnBDlBI/22vlCMK1ncP1qWKl2ro=; b=T3BwM/wTkRBI+B2ZJaleTQE79
	gdOgIgRftnsfBVgmmF9XFwmGOUJnZlMUePdWaDpUY4iRIK3tjX7k0inWGCaiTiggRym5FhqsJO5Ap
	Jkt4IRRCidQc8506KFuNDyyt4ozvYmcQXp79fYiX2E1EaYwMDtPRmSzLPutIokNkAsFaXettv+9gH
	WGHWypYv+bjGsgUgGySioxoZ/kjZRTHk+YEsnfawhvLp2sfcwvoSc4+T6lqyy/P5Nkns2L5sWOAVS
	YDqxd7E+14cUlyEYND7zOc6dN8imEx0bG5m2yO6p0JPY0O3AyEJUca7kGS9mgmSvz0r8OGPSVVfTQ
	VYCl6IXqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXooF-0000rp-4S; Thu, 21 Nov 2019 15:55:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXoo7-0000qv-P7
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 15:55:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CD340328;
 Thu, 21 Nov 2019 07:55:44 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 841A33F52E;
 Thu, 21 Nov 2019 07:55:40 -0800 (PST)
Subject: Re: [PATCH v2] dma-mapping: treat dev->bus_dma_mask as a DMA limit
To: Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20191121092646.8449-1-nsaenzjulienne@suse.de>
 <20191121152457.GA525@lst.de> <20191121152650.GA651@lst.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <70359d2a-10c6-09c7-a857-805085affb0a@arm.com>
Date: Thu, 21 Nov 2019 15:55:39 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191121152650.GA651@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_075547_903781_B8E671DC 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-ide@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Frank Rowand <frowand.list@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Paul Burton <paulburton@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Joerg Roedel <joro@8bytes.org>, x86@kernel.org, linux-acpi@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, James Hogan <jhogan@kernel.org>,
 Len Brown <lenb@kernel.org>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Jens Axboe <axboe@kernel.dk>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Hanjun Guo <guohanjun@huawei.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, iommu@lists.linux-foundation.org,
 Sudeep Holla <sudeep.holla@arm.com>, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/11/2019 3:26 pm, Christoph Hellwig wrote:
> On Thu, Nov 21, 2019 at 04:24:57PM +0100, Christoph Hellwig wrote:
>> On Thu, Nov 21, 2019 at 10:26:44AM +0100, Nicolas Saenz Julienne wrote:
>>> Using a mask to represent bus DMA constraints has a set of limitations.
>>> The biggest one being it can only hold a power of two (minus one). The
>>> DMA mapping code is already aware of this and treats dev->bus_dma_mask
>>> as a limit. This quirk is already used by some architectures although
>>> still rare.
>>>
>>> With the introduction of the Raspberry Pi 4 we've found a new contender
>>> for the use of bus DMA limits, as its PCIe bus can only address the
>>> lower 3GB of memory (of a total of 4GB). This is impossible to represent
>>> with a mask. To make things worse the device-tree code rounds non power
>>> of two bus DMA limits to the next power of two, which is unacceptable in
>>> this case.
>>>
>>> In the light of this, rename dev->bus_dma_mask to dev->bus_dma_limit all
>>> over the tree and treat it as such. Note that dev->bus_dma_limit should
>>> contain the higher accesible DMA address.
>>>
>>> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>>
>> I've tentatively added this patch to the dma-mapping tree based on
>> Robins principal approval of the last version.  That way tomorrows
>> linux-next run should still pick it up.
> 
> Actually.  This doesn't apply because the dma-mapping tree doesn't
> have you zone_dma_bits change.  I guess we'll need to wait for the
> next merge window, or maybe post rc1 if this happens to fix the
> powerpc problem that Christian reported.

Hmm, there's no functional dependency though, is there? AFAICS it's 
essentially just a context conflict. Is it worth simply dropping (or 
postponing) the local renaming in __dma_direct_optimal_gfp_mask(), or 
perhaps even cross-merging arm64/for-next/zone-dma into dma/for-next?

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
