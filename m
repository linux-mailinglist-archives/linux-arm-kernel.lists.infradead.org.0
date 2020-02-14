Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF1215F29E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 19:19:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GFOHC/UsaEZlZRpgzdq4zOxlo7jLRbnTZmOfVMERVQw=; b=oKHgK0QypPKzTpqdn+ayAGHvy
	r609EwpGL1bo1b+rGoTWr86/eH3Z9PEfFONGXkHejpuZElLQ1jztTOw4InRwSLfKOm4kXBPZEQ/IE
	jckbL+2o/wTTJi0w3r/WCDTFsvWr7gUij6F9Tex06/P6KOYx6YrHnBj9QzLM5yeoT8UVW/YtuINr9
	+asFyDc3WPVGEfs9IIkXrBs6vkX4EhLw7qBcy4xig2UDvWzHWUMHJ3UXSFHot9B9SUCUMc5r08a/h
	mq+SfmB0TLGSnYk/QdBsx2ztlQ5ByXSZuSgHTUy9NENGlorH8ZvRvPVRGPiBMWWufeT/xEu30ouRA
	SY6WhrNrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2fYD-0003Cj-UW; Fri, 14 Feb 2020 18:18:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2fY5-0003Bx-6A
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 18:18:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 67607328;
 Fri, 14 Feb 2020 10:18:44 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 731B43F68E;
 Fri, 14 Feb 2020 10:18:43 -0800 (PST)
Subject: Re: [PATCH 1/2] arm64: dts: allwinner: h5: Fix PMU compatible
To: Andre Przywara <andre.przywara@arm.com>, Maxime Ripard
 <maxime@cerno.tech>, Mark Rutland <Mark.Rutland@arm.com>,
 Rob Herring <robh@kernel.org>
References: <20200210095600.77894-1-maxime@cerno.tech>
 <20200214180404.24d67f86@donnerap.cambridge.arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <8e9f3a0e-d803-77bf-8f0f-04a7f4a00687@arm.com>
Date: Fri, 14 Feb 2020 18:18:41 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200214180404.24d67f86@donnerap.cambridge.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_101845_272113_0A26C86C 
X-CRM114-Status: GOOD (  25.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/02/2020 6:04 pm, Andre Przywara wrote:
> On Mon, 10 Feb 2020 10:55:59 +0100
> Maxime Ripard <maxime@cerno.tech> wrote:
> 
> Hi,
> 
>> The commit c35a516a4618 ("arm64: dts: allwinner: H5: Add PMU node")
>> introduced support for the PMU found on the Allwinner H5. However, the
>> binding only allows for a single compatible, while the patch was adding
>> two.
> 
> Maxime, thanks for bringing this up, was that found by some validation tool?
> 
> And while this is true, I wonder if this was intentional?
> I see several other combinations of PMU compatibles in the tree.
> 
> Mark, Rob, can you shed any light on this?
> 
> Actually I am wondering why we would need the PMU type in the first place, isn't that discoverable via the MIDR?

"the" MIDR... ;)

Usual big.LITTLE vs. CPU hotplug rules apply.

> And all we actually need from the DT is the interrupts and maybe some quirk info?
> 
> It looks like ACPI is always using the generic PMUv3 map, so wouldn't it actually be better to replace the compatible string matching with MIDR matching? Or are those core specific maps somewhat obsolete anyway? Since I don't see any newer cores in there?

Mostly they're just long overdue for an update (and somewhat mitigated 
by the userspace JSON stuff in perf tools, but in principle there are 
still other users of perf_events). IIRC, the generic PMUv3 compatible 
was only ever meant to be for things like the AEM without a specific 
microarchitecture (cf. the "arm,armv8" CPU binding).

Robin.

> 
> Cheers,
> Andre
> 
>> Make sure we follow the binding.
> 
> 
>>
>> Fixes: c35a516a4618 ("arm64: dts: allwinner: H5: Add PMU node")
>> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>> ---
>>   arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi | 3 +--
>>   1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
>> index 9893aa64dd0b..4462a68c0681 100644
>> --- a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
>> @@ -38,8 +38,7 @@ cpu3: cpu@3 {
>>   	};
>>   
>>   	pmu {
>> -		compatible = "arm,cortex-a53-pmu",
>> -			     "arm,armv8-pmuv3";
>> +		compatible = "arm,cortex-a53-pmu";
>>   		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
>>   			     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
>>   			     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
