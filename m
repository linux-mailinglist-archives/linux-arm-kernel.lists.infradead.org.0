Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 801B67DFC0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 18:08:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=271H/YqBKrbgCUyY5EyJeW8Q13zF11X0LzQml56Ag4Y=; b=OvFjpGbE2aKC5JjWYOScMqzLz
	ih5b9Hoy8OA2ATc1SxCcTt9+xNCwWV3hXobuGcI6Fu4NXEoDfLDxxZ7bGk5ecuBuqwUMvoVgsUz1B
	mOjnmIZLQEF+46vLWV9CsVSDl+nzh9XAlXV27wPStJ+8YubT6l8IqHGqkH1H9JLF9mS/TKQUrvSTs
	QuBUDc3H1hxFBddt982a+NN0tN+1cOCZ8QqMScWUy/6RK9M2HeqUWD/JyfKalQljaEhwdM+rCw7CC
	4+NiD7ehk+gFMe0Me766phLyJvJU35jmnxKIGsZB5hLC4+zuiAZZ9ChWu/NEL6mKC+h3bouc2+rbf
	7bWIAn12Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htDcc-0006E8-16; Thu, 01 Aug 2019 16:08:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htDcV-0006Dj-Cn; Thu, 01 Aug 2019 16:08:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BEF84337;
 Thu,  1 Aug 2019 09:07:58 -0700 (PDT)
Received: from [10.32.8.205] (unknown [10.32.8.205])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0B6A23F694;
 Thu,  1 Aug 2019 09:07:55 -0700 (PDT)
Subject: Re: [PATCH 5/8] arm64: use ZONE_DMA on DMA addressing limited devices
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Catalin Marinas <catalin.marinas@arm.com>
References: <20190731154752.16557-1-nsaenzjulienne@suse.de>
 <20190731154752.16557-6-nsaenzjulienne@suse.de>
 <20190731170742.GC17773@arrakis.emea.arm.com>
 <d8b4a7cb9c06824ca88a0602a5bf38b6324b43c0.camel@suse.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <e35dd4a5-281b-d281-59c9-3fc7108eb8be@arm.com>
Date: Thu, 1 Aug 2019 17:07:54 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <d8b4a7cb9c06824ca88a0602a5bf38b6324b43c0.camel@suse.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_090759_482684_0F49EE72 
X-CRM114-Status: GOOD (  19.89  )
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
Cc: phill@raspberryi.org, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 linux-mm@kvack.org, marc.zyngier@arm.com, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, eric@anholt.net,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 linux-rpi-kernel@lists.infradead.org, mbrugger@suse.com,
 akpm@linux-foundation.org, m.szyprowski@samsung.com, frowand.list@gmail.com,
 hch@lst.de, linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-08-01 4:44 pm, Nicolas Saenz Julienne wrote:
> On Wed, 2019-07-31 at 18:07 +0100, Catalin Marinas wrote:
>> On Wed, Jul 31, 2019 at 05:47:48PM +0200, Nicolas Saenz Julienne wrote:
>>> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
>>> index 1c4ffabbe1cb..f5279ef85756 100644
>>> --- a/arch/arm64/mm/init.c
>>> +++ b/arch/arm64/mm/init.c
>>> @@ -50,6 +50,13 @@
>>>   s64 memstart_addr __ro_after_init = -1;
>>>   EXPORT_SYMBOL(memstart_addr);
>>>   
>>> +/*
>>> + * We might create both a ZONE_DMA and ZONE_DMA32. ZONE_DMA is needed if
>>> there
>>> + * are periferals unable to address the first naturally aligned 4GB of ram.
>>> + * ZONE_DMA32 will be expanded to cover the rest of that memory. If such
>>> + * limitations doesn't exist only ZONE_DMA32 is created.
>>> + */
>>
>> Shouldn't we instead only create ZONE_DMA to cover the whole 32-bit
>> range and leave ZONE_DMA32 empty? Can__GFP_DMA allocations fall back
>> onto ZONE_DMA32?
> 
> Hi Catalin, thanks for the review.
> 
> You're right, the GFP_DMA page allocation will fail with a nasty dmesg error if
> ZONE_DMA is configured but empty. Unsurprisingly the opposite situation is fine
> (GFP_DMA32 with an empty ZONE_DMA32).

Was that tested on something other than RPi4 with more than 4GB of RAM? 
(i.e. with a non-empty ZONE_NORMAL either way)

Robin.

> I switched to the scheme you're suggesting for the next version of the series.
> The comment will be something the likes of this:
> 
> /*
>   * We create both a ZONE_DMA and ZONE_DMA32. ZONE_DMA's size is decided based
>   * on whether the SoC's peripherals are able to address the first naturally
>   * aligned 4 GB of ram.
>   *
>   * If limited, ZONE_DMA covers that area and ZONE_DMA32 the rest of that 32 bit
>   * addressable memory.
>   *
>   * If not ZONE_DMA is expanded to cover the whole 32 bit addressable memory and
>   * ZONE_DMA32 is left empty.
>   */
> 
>   Regards,
>   Nicolas
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
