Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A91610CC95
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:16:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/77V3V5czCEDvdzbb9yoeBci4vRjs8OMOl2i5khFKYQ=; b=RIovbmMsWMs0fj7jmu1KW8klI
	5ZICEzlian9ZcigJ+KFP1g/TWmvmDCDwGD6+CJyqXCIEuYPune4mJM/XRXrg2yN7SJbSzQcfPzZAT
	TR8A2xKZw8RHlHdrgjmqJuqnmpn9Ft8qqnFn1xILPpZhz+Ga1gkydlkex3JFREQ9LQdHjCF6LkG5y
	ibIYm+Efu2LojvF4QIQZpWc6RlNRgd712MH1p3ITeK1LBwNEIU7G09aZNhh8OKf2Ko4Qw4MLLTdDg
	X4Svel6sYFwVJmzpNSpddoaIsBdpCrfoGxpK/qkYIPIph0I3c3PjMc61UAOna6OQt4H5oC4I7g6yf
	bamFpUmzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaMSV-0000Ir-4z; Thu, 28 Nov 2019 16:15:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMSK-0000IR-I1
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:15:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD3EE1FB;
 Thu, 28 Nov 2019 08:15:46 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C723B3F6C4;
 Thu, 28 Nov 2019 08:15:45 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: juno: Fix DMA address translations by adding
 SOC bus node
To: Sudeep Holla <sudeep.holla@arm.com>
References: <20191126165355.6696-1-sudeep.holla@arm.com>
 <d9b057ed-acfc-a9a1-a466-d3048f008568@arm.com> <20191128141521.GA3333@bogus>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <df7408c0-21a9-94a6-950c-98560d3e33e4@arm.com>
Date: Thu, 28 Nov 2019 16:15:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191128141521.GA3333@bogus>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_081548_685207_E95694E9 
X-CRM114-Status: GOOD (  19.71  )
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/11/2019 2:15 pm, Sudeep Holla wrote:
> On Thu, Nov 28, 2019 at 11:50:54AM +0000, Robin Murphy wrote:
>> Hi Sudeep,
>>
>> On 2019-11-26 4:53 pm, Sudeep Holla wrote:
>>> Commit 951d48855d86 ("of: Make of_dma_get_range() work on bus nodes")
>>> reworked the logic such that of_dma_get_range() works correctly
>>> starting from a bus node containing "dma-ranges".
>>>
>>> Since on Juno we don't have a SoC level bus node and "dma-ranges" is
>>> present only in the root node, we get the following error:
>>>
>>> OF: translation of DMA address(0) to CPU address failed node(/sram@2e000000)
>>> OF: translation of DMA address(0) to CPU address failed node(/uart@7ff80000)
>>> ...
>>> OF: translation of DMA address(0) to CPU address failed node(/mhu@2b1f0000)
>>> OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
>>> OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
>>> OF: translation of DMA address(0) to CPU address failed node(/iommu@2b600000)
>>>
>>> Let's fix it by adding a SoC bus node and moving all the devices along
>>> with the "dma-ranges" inside it.
>>>
>>> Cc: Rob Herring <robh+dt@kernel.org>
>>> Cc: Liviu Dudau <liviu.dudau@arm.com>
>>> Cc: Robin Murphy <robin.murphy@arm.com>
>>> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
>>> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
>>> ---
>>>    arch/arm64/boot/dts/arm/juno-base.dtsi        | 162 +++++++++---------
>>>    arch/arm64/boot/dts/arm/juno-clocks.dtsi      |   2 +
>>>    arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi     |   2 +
>>>    arch/arm64/boot/dts/arm/juno-motherboard.dtsi |   2 +
>>>    4 files changed, 88 insertions(+), 80 deletions(-)
>>>
>>> Hi Rob, Robin,
>>>
>>> Let me know if this is correct fix for the issue I am seeing with linux-next
>>> on Juno. This patch is generated with -b for ease of review. With lots of
>>> indentation, actual delta is:
>>>
>>> 4 files changed, 1274 insertions(+), 1266 deletions(-)
>>
>> Other than a few nits - the GIC should probably be under the soc node as
>> it's an MMIO device, while the clocks shouldn't; the dtsi's could probably
>> avoid churn with a "&soc {...}" phandle - I think this is a reasonable thing
>> to do, as it's generally the preferred structure.
>>
> 
> I agree and am still in confusion as what to put inside soc or not.

FWIW my understanding is that the "soc" node is used to provide a 'bus' 
to represent on-chip MMIO - in principle we could nerd out and describe 
the ACE-lite/AXI/APB slave interconnects in full, but there's really no 
benefit to going into that much detail - so everything with a "reg" 
representing a physical address goes inside it, while CPUs, clocks, 
firmware, regulators etc. sit in the root node 'outside the PA space', 
regardless of whether they're physically on-chip or not.

Robin.

>> The cruder but far simpler alternative would be to just drop the dma-ranges
>> property - I'm not sure the effort to make all 64-bit platforms describe
>> their dma-ranges has really panned out, and it isn't actually necessary for
>> Juno (which is why it didn't seem like sufficient reason to do all this
>> restructuring at the time, and instead I took a very liberal interpretation
>> of the spec to sneak it into the root node).
>>
> 
> I think I prefer that for v5.5 as a fix as this is much bigger churn. We
> can do that for v5.6 if required. Let me know if you disagree. I can simply
> revert your original patch adding dma-ranges for now and we can add it
> later with all the soc structure.
> 
> --
> Regards,
> Sudeep
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
