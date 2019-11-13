Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C426FB9FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 21:34:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ji72A+/UOOLG5s+w/sB+w0Z1KqluBU2ihDb1tAJ2cpU=; b=H3jniRxMq77zHQSjSy3WOV7bE
	ijW3YvjTWz3MvW2na6AEE1PYfxFd2RdOkUxExBQ22y/AFXndNnwrjQuOuRaQHdKjM6A3cD/HnQNVI
	wAlaKYArOfqL4UoktztK/yRqXnY70gl4thIANaLtj9VgA76IAS4RfZqpSfhZXzr2mc0yas9sp0etb
	IMG08h60Krbrd2Y5ltgoNXjHumtpNQbkPQviVRRRJRJ+9b9xJZ2WNEqeT1D+hbo85Fb5Kn0dyCEXW
	EEdk0w6bp8j0TctrTC7NMD+JaxCZT7tTZ6vzwfH9s/exUISETe+KilSO+c9veummdA4oR3ucnF/kf
	jD8SzJfAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUzLd-00070w-CT; Wed, 13 Nov 2019 20:34:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUzLT-0006zc-74
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 20:34:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2ECF57A7;
 Wed, 13 Nov 2019 12:34:28 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9CFC03F52E;
 Wed, 13 Nov 2019 12:34:23 -0800 (PST)
Subject: Re: [PATCH] dma-mapping: treat dev->bus_dma_mask as a DMA limit
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Dave Hansen <dave.hansen@linux.intel.com>, Andy Lutomirski
 <luto@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Hanjun Guo <guohanjun@huawei.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>
References: <20191113161340.27228-1-nsaenzjulienne@suse.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f74cd8a6-00bf-46c3-8e2e-d278e72d6e0e@arm.com>
Date: Wed, 13 Nov 2019 20:34:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191113161340.27228-1-nsaenzjulienne@suse.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_123431_341536_27A5DF37 
X-CRM114-Status: GOOD (  21.16  )
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-mips@vger.kernel.org, linux-ide@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Paul Burton <paulburton@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, phil@raspberrypi.org, linux-acpi@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, linux-pci@vger.kernel.org,
 James Hogan <jhogan@kernel.org>, Len Brown <lenb@kernel.org>,
 devicetree@vger.kernel.org, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, iommu@lists.linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/11/2019 4:13 pm, Nicolas Saenz Julienne wrote:
> Using a mask to represent bus DMA constraints has a set of limitations.
> The biggest one being it can only hold a power of two (minus one). The
> DMA mapping code is already aware of this and treats dev->bus_dma_mask
> as a limit. This quirk is already used by some architectures although
> still rare.
> 
> With the introduction of the Raspberry Pi 4 we've found a new contender
> for the use of bus DMA limits, as its PCIe bus can only address the
> lower 3GB of memory (of a total of 4GB). This is impossible to represent
> with a mask. To make things worse the device-tree code rounds non power
> of two bus DMA limits to the next power of two, which is unacceptable in
> this case.
> 
> In the light of this, rename dev->bus_dma_mask to dev->bus_dma_limit all
> over the tree and treat it as such. Note that dev->bus_dma_limit is
> meant to contain the higher accesible DMA address.

Neat, you win a "why didn't I do it that way in the first place?" :)

Looking at it without all the history of previous attempts, this looks 
entirely reasonable, and definitely a step in the right direction.

[...]
> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> index 5a7551d060f2..f18827cf96df 100644
> --- a/drivers/acpi/arm64/iort.c
> +++ b/drivers/acpi/arm64/iort.c
> @@ -1097,7 +1097,7 @@ void iort_dma_setup(struct device *dev, u64 *dma_addr, u64 *dma_size)
>   		 * Limit coherent and dma mask based on size
>   		 * retrieved from firmware.
>   		 */
> -		dev->bus_dma_mask = mask;
> +		dev->bus_dma_limit = mask;

Although this preserves the existing behaviour, as in of_dma_configure() 
we can do better here since we have the original address range to hand. 
I think it's worth keeping the ACPI and OF paths in sync for minor 
tweaks like this, rather than letting them diverge unnecessarily.

Otherwise, the rest looks OK to me - in principle we could store it as 
an exclusive limit such that we could then streamline the min_not_zero() 
tests to just min(mask, limit - 1), but that's probably too clever for 
its own good.

Robin.

>   		dev->coherent_dma_mask = mask;
>   		*dev->dma_mask = mask;
>   	}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
