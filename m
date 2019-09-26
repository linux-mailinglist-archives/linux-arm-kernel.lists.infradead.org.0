Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F7BBF123
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 13:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GlGeXN8gHfg1Ozk6sjanLga50kqBZIQmO+lPvkiQSaQ=; b=F8GfhZf97RK704NOmIqhMzKjg
	pGqZjqz7CiVV6gyYYRwhsMs6cu2x87JD1BIxXytCr5KZBHQl8mFkwWhqRZDxnvmFp1zZ+XvYGmiR4
	F6+0Tv11M0+YHdxKlYtPPch+CZrQpbnFV1BY1hTg4zMODXOouHxz5FLgY9tEHWRT9m2D3Ld1kIy2W
	7SRh8uDHpW/oz3HSPm3vFACTzqZwEYJueq34FWQ+xm4Iq/Ru1V1Chpa++xqOQjLWNYqcI4LrK+eq0
	W7aaHwELnjiiYKHrtTgmhHWD3yUvtF1kauMYelXz56KkmACd1ZtUQpjZwv7Ec6VkdBiCKg1543ybE
	iv7Laxm0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDRpb-0006KA-VW; Thu, 26 Sep 2019 11:21:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDRpP-0006Il-VX
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 11:20:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9053B142F;
 Thu, 26 Sep 2019 04:20:53 -0700 (PDT)
Received: from [192.168.1.124] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A8D1D3F67D;
 Thu, 26 Sep 2019 04:20:50 -0700 (PDT)
Subject: Re: [PATCH 00/11] of: Fix DMA configuration for non-DT masters
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>
References: <20190924181244.7159-1-nsaenzjulienne@suse.de>
 <CAL_Jsq+v+svTyna7UzQdRVqfNc5Z_bgWzxNRXv7-Wqv3NwDu2g@mail.gmail.com>
 <d1a31a2ec8eb2f226b1fb41f6c24ffb47c3bf7c7.camel@suse.de>
 <e404c65b-5a66-6f91-5b38-8bf89a7697b2@arm.com>
 <43fb5fe1de317d65a4edf592f88ea150c6e3b8cc.camel@suse.de>
 <CAL_JsqLhx500cx3YLoC7HL1ux3bBpV+fEA2Qnk7D5RFGgiGzSw@mail.gmail.com>
 <aa4c8d62-7990-e385-2bb1-cec55148f0a8@arm.com>
 <CAL_JsqKKYcHPnA80ZwLY=Sk3e5MqrimedUhWQ5+iuPZXQxYHdA@mail.gmail.com>
 <307b988d0c67fb1c42166eca12742bcfda09d92d.camel@suse.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <c27a51e1-1adf-ae6a-dc67-ae76222a1163@arm.com>
Date: Thu, 26 Sep 2019 12:20:44 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <307b988d0c67fb1c42166eca12742bcfda09d92d.camel@suse.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_042056_098779_2044ADF4 
X-CRM114-Status: GOOD (  20.96  )
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
Cc: devicetree@vger.kernel.org, Matthias Brugger <mbrugger@suse.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, etnaviv@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Stefan Wahren <wahrenst@gmx.net>, james.quinlan@broadcom.com,
 linux-pci@vger.kernel.org,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 xen-devel@lists.xenproject.org, Dan Williams <dan.j.williams@intel.com>,
 freedreno <freedreno@lists.freedesktop.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-09-26 11:44 am, Nicolas Saenz Julienne wrote:
>>>>> Robin, have you looked into supporting multiple dma-ranges? It's the
>>>>> next thing
>>>>> we need for BCM STB's PCIe. I'll have a go at it myself if nothing is in
>>>>> the
>>>>> works already.
>>>>
>>>> Multiple dma-ranges as far as configuring inbound windows should work
>>>> already other than the bug when there's any parent translation. But if
>>>> you mean supporting multiple DMA offsets and masks per device in the
>>>> DMA API, there's nothing in the works yet.
> 
> Sorry, I meant supporting multiple DMA offsets[1]. I think I could still make
> it with a single DMA mask though.

The main problem for supporting that case in general is the disgusting 
carving up of the physical memory map you may have to do to guarantee 
that a single buffer allocation cannot ever span two windows with 
different offsets. I don't think we ever reached a conclusion on whether 
that was even achievable in practice.

>>> There's also the in-between step of making of_dma_get_range() return a
>>> size based on all the dma-ranges entries rather than only the first one
>>> - otherwise, something like [1] can lead to pretty unworkable default
>>> masks. We implemented that when doing acpi_dma_get_range(), it's just
>>> that the OF counterpart never caught up.
>>
>> Right. I suppose we assume any holes in the ranges are addressable by
>> the device but won't get used for other reasons (such as no memory
>> there). However, to be correct, the range of the dma offset plus mask
>> would need to be within the min start and max end addresses. IOW,
>> while we need to round up (0xa_8000_0000 - 0x2c1c_0000) to the next
>> power of 2, the 'correct' thing to do is round down.
> 
> IIUC I also have this issue on my list. The RPi4 PCIe block has an integration
> bug that only allows DMA to the lower 3GB. With dma-ranges of size 0xc000_0000
> you get a 32bit DMA mask wich is not what you need. So far I faked it in the
> device-tree but I guess it be better to add an extra check in
> of_dma_configure(), decrease the mask and print some kind of warning stating
> that DMA addressing is suboptimal.

Yeah, there's just no way for masks to describe that the device can 
drive all the individual bits, just not in certain combinations :(

The plan I have sketched out there is to merge dma_pfn_offset and 
bus_dma_mask into a "DMA range" descriptor, so we can then hang one or 
more of those off a device to properly cope with all these weird 
interconnects. Conceptually it feels pretty straightforward; I think 
most of the challenge is in implementing it efficiently. Plus there's 
the question of whether it could also subsume the dma_mask as well.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
