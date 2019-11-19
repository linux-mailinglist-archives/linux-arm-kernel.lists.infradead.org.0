Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D53B102AA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 18:17:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p3vmcPnCX2JQbtKfl6iuaAaDNN9LUKJ0PpJQ1xtBxC0=; b=fx8h8hr3VHZbO9FP695GTAGyv
	GQs2rv6L7X1CxiGnhBl/Cp7WSnoJYiG517Ynkdhx9hqtDCPBqANls1G2CMk+K4p33vWZf3wNLStoH
	n7gyL4YqxcYUQ2cDyru59TNKnKEfNuc8x2omVRL4LX9/ysB8O5/QRP2/A4yzC0pOgU8G5ghICmbq7
	pHhlEIyqX36urHPJcfdmFCueu9Kfy+/ph2OHCw68clWfp68h2XQkyHZC0nBRezMLjR/WY9WvJ8hva
	3qYt7vdzhbgRMbCNPlxKLXdfERjbAvTFzfF7JIeKQOiyEk+jmlmEptoo69OBFIAFr8FU6N5x2PnCi
	5NKfpRN6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX77v-00027i-Ho; Tue, 19 Nov 2019 17:17:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX77n-00026j-CD
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 17:17:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 841311FB;
 Tue, 19 Nov 2019 09:17:09 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B5FBF3F703;
 Tue, 19 Nov 2019 09:17:04 -0800 (PST)
Subject: Re: [PATCH] dma-mapping: treat dev->bus_dma_mask as a DMA limit
To: Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20191113161340.27228-1-nsaenzjulienne@suse.de>
 <dd074ef5c23ba56598e92be19e8e25ae31b75f93.camel@suse.de>
 <20191119170006.GA19569@lst.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <7609007d-52f5-bb10-e8d5-96fadbfab46d@arm.com>
Date: Tue, 19 Nov 2019 17:17:03 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191119170006.GA19569@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_091711_459016_D2BB5B9B 
X-CRM114-Status: GOOD (  18.61  )
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
 Joerg Roedel <joro@8bytes.org>, x86@kernel.org, phil@raspberrypi.org,
 linux-acpi@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 linux-pci@vger.kernel.org, James Hogan <jhogan@kernel.org>,
 Len Brown <lenb@kernel.org>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Jens Axboe <axboe@kernel.dk>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Hanjun Guo <guohanjun@huawei.com>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, iommu@lists.linux-foundation.org,
 Sudeep Holla <sudeep.holla@arm.com>, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/11/2019 5:00 pm, Christoph Hellwig wrote:
> On Tue, Nov 19, 2019 at 01:57:43PM +0100, Nicolas Saenz Julienne wrote:
>> Hi Rob & Christoph,
>> do you mind if I append v2 of this into my upcoming v3 RPi4 PCIe support
>> series, I didn't do it initially as I thought this was going to be a
>> contentious patch.  But as it turned out better than expected, I think it
>> should go into the PCIe series. In the end it's the first explicit user of the
>> bus DMA limit.
>>
>> Here's v2 in case you don't know what I'm talking about:
>> https://www.spinics.net/lists/arm-kernel/msg768459.html
> 
> In principle I wouldn't mind, but I think this is going to conflict
> quite badly with other changes in the dma-mapping tree (including
> yours).  So I think we'll need a shared tree or I'll need to pull
> in the whole series through the dma-mapping tree if there are not
> other conflicts and the other maintainers are fine with it.

TBH I can't see it being a massive problem even if the DMA patch, driver 
and DTS patch went entirely separately via the respective DMA, PCI, and 
arm-soc trees in the same cycle. Bisecting over a merge window is a big 
enough pain in the bum as it is, and if the worst case is that someone 
trying to do that on a Pi4 has a wonky PCI controller appear for a 
couple of commits, they may as well just disable that driver for their 
bisection, because it wasn't there at the start so can't possibly be the 
thing they're looking for regressions in ;)

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
