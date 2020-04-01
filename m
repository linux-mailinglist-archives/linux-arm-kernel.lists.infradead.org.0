Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BCC19AB22
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 13:57:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mj+HSH+xxRY5j7mN3E+oB1XbYUWDveoNxEvLKpEM4UM=; b=QygUuWg1Sp6NmT4u1yHNb4UEj
	TzgT9dKZBTYIEDM72LBmRjFQADloqnO5Ql8od3c2cymrkHNvmB/IE1Mvw6qxpNHJg4YnX/waVo0Wv
	9kJ0LrskTAGBu/oV70tzfuV2M1nOHIyYg6oQ4p8TvlkbqgiacUGtPX+q3FwR8J4JzPyqn79HgKBds
	stVdKLXvIjGQd1Yb12I9OkgaCsi9+Tr2FW4G7jaoS/QtMBQa9Z/RQfAn5ty1rxiPqws3Kl3IB3dIS
	wWNrS4UtfR3sOwK6btO0tUJLsa/n68JhOR06EmHRp7IfYj4gNtRmidjb4dq3QjF9AY9Kyo01YH0ap
	AIJfuThHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJbze-0000dV-4M; Wed, 01 Apr 2020 11:57:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJbzY-0000cy-52
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 11:57:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 398A930E;
 Wed,  1 Apr 2020 04:57:07 -0700 (PDT)
Received: from [10.57.60.204] (unknown [10.57.60.204])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9841D3F68F;
 Wed,  1 Apr 2020 04:57:05 -0700 (PDT)
Subject: Re: [PATCH] driver/perf: Add PMU driver for the ARM DMC-620 memory
 controller.
To: Mark Rutland <mark.rutland@arm.com>
References: <1584491381-31492-1-git-send-email-tuanphan@os.amperecomputing.com>
 <20200319151646.GC4876@lakrids.cambridge.arm.com>
 <23AD5E45-15E3-4487-9B0D-0D9554DD9DE8@amperemail.onmicrosoft.com>
 <20200320105315.GA35932@C02TD0UTHF1T.local>
 <A50AA800-3F65-4761-9BCF-F86A028E107D@amperemail.onmicrosoft.com>
 <20200401095226.GA17163@C02TD0UTHF1T.local>
 <20200401102724.GA17575@willie-the-truck>
 <4d843ec7-ed74-4431-d8c7-d5aa6bd83c18@arm.com>
 <20200401112739.GD17163@C02TD0UTHF1T.local>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <3efa118a-5c85-6af9-e676-44087f1d398e@arm.com>
Date: Wed, 1 Apr 2020 12:57:03 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200401112739.GD17163@C02TD0UTHF1T.local>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_045708_277836_627DEF8D 
X-CRM114-Status: GOOD (  22.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Tuan Phan <tuanphan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Tuan Phan <tuanphan@amperemail.onmicrosoft.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-01 12:27 pm, Mark Rutland wrote:
> On Wed, Apr 01, 2020 at 12:12:23PM +0100, Robin Murphy wrote:
>> On 2020-04-01 11:27 am, Will Deacon wrote:
>>> On Wed, Apr 01, 2020 at 10:52:26AM +0100, Mark Rutland wrote:
>>>> On Tue, Mar 31, 2020 at 03:14:59PM -0700, Tuan Phan wrote:
>>>>> I looked at the SMMUv3 PMU driver and it also uses IRQF_SHARED. SMMUv3
>>>>> PMU and DMC620 PMU are very much similar in which counters can be
>>>>> accessed by any cores using memory map. Any special reasons
>>>>> IRQF_SHARED works with SMMUv3 PMU driver?
>>>>
>>>> No; I believe that is a bug in the SMMUv3 PMU driver. If the IRQ were
>>>> shared, and another driver that held the IRQ changed the affinity,
>>>> things would go very wrong.
>>>
>>> I *think* the idea is that the SMMUv3 PMU driver manages multiple PMCG
>>> devices, which may all share an irq line, rather than the irq line being
>>> shared by some other driver that might change the affinity. So I suspect
>>> dropping IRQF_SHARED will break things.
>>
>> Each PMCG is conceptually a distinct PMU with its own interrupt - for
>> instance, MMU-600 has one PMCG for its TCU and one for each TBU, each with a
>> distinct interrupt output signal. Of course, integrators can and will mash
>> them all together into a single SPI (particularly since they're all part of
>> "the SMMU"), but that boils down to the same case as here.
>>
>> This is going to continue to happen, so we could really do with figuring out
>> a way to let MMIO system PMU drivers properly cope with shared interrupts in
>> general :/
> 
> It does seem so, but I think we can only reasonably do that where it's
> only being shared across instances of the same driver, rather than when
> the IRQ is muxed across completely independent drivers. I'd like to
> avoid that latter case if we can.
> 
> The driver would have to handle migration on a cross-instance basis.
> e.g. all the contexts need to be migrated before the IRQ is, to avoid a
> screaming IRQ on the target CPU, or the IRQ handler on the target racing
> with migration from the source.
> 
> Is there a neat way to do that in a driver without using IRQF_SHARED, so
> that we don't end up accidentally sharing with other drivers? We can
> probably librify the code to handle this under drivers/pmu/.

I can envision a fairly straightforward approach of flipping things 
upside-down such that we register a hotplug instance for the IRQ rather 
than the PMU, then handle the association of PMUs to IRQs internally to 
the driver. I believe I need to support this case in my CMN PMU driver 
too, so I'll prototype something there and see how it looks.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
