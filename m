Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3F11365E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 04:46:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cED2W10E3CS3v+cSN+fzb/cKDxredcM7DMVHog/Q86Y=; b=CYOuT3c4YVZd5Z
	W0qhRH9WTnY7LnKvuEDugKFo4BWRWAzHfHsQeVaePaQi5vJOryDkTgoYHntyXwWfhgwc3Pl/J9tiV
	3WrH7iA1Z4R0oBXBPASxh5yoyvHv/UXAuL0+rldF+TXYxlSt1kQD1dCYoGNl9im85xNIPq/2o3KKn
	LwFGwIaUymYPfaGX6vsud968E8x4QAZcXSaZ+e2itnFjNAkLyW8AeWWjUr8HCKyQHKoaCF+uWDWMM
	g4uHbVWGy0MsSno1T2UNCnwrbSnOLtHpSGeQY1yajmGH0w0zh43aKxDmzCOpu2e9gRgRk53dCVFyE
	wox+F5KPnVgwSrB1SA6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iplFc-00008n-1S; Fri, 10 Jan 2020 03:46:20 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iplFT-00008E-2r
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 03:46:12 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 65C7E247182F62F41B06;
 Fri, 10 Jan 2020 11:46:09 +0800 (CST)
Received: from [127.0.0.1] (10.184.52.56) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Fri, 10 Jan 2020
 11:45:59 +0800
Subject: Re: [Question] About handling PMU context loss in the deepest idle
 state where the core is powered down
To: Will Deacon <will@kernel.org>
References: <d62d9ac1-3af9-b692-a84a-aab4582e5eb8@huawei.com>
 <20200109150318.GF12236@willie-the-truck>
From: Xiongfeng Wang <wangxiongfeng2@huawei.com>
Message-ID: <31ec228b-a51b-637d-1c1c-543c81653a96@huawei.com>
Date: Fri, 10 Jan 2020 11:45:57 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20200109150318.GF12236@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.184.52.56]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_194611_291012_1DF9E184 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, wangzhe59@huawei.com, lorenzo.pieralisi@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>, huawei.libin@huawei.com,
 guohanjun@huawei.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020/1/9 23:03, Will Deacon wrote:
> [+Lorenzo]
> 
> On Thu, Jan 09, 2020 at 10:43:40AM +0800, Xiongfeng Wang wrote:
>> Sorry to bother you. It's just that we have come across some problems
>> about PMU recently.
> 
> No bother, and thanks for including the mailing list.
> 
>> We are working on deep power state on CPU cores. In the deepest idle state, the core will be
>> powered down. In our implementation, the PMU and the core are in the same power domain,
>> so the PMU will also be powered down. But I didn't find where we saved the PMU context
>> in kernel before entering the deepest idle state.
>>
>> Before we enter the system sleep state, we update the kernel PMU counter and stop the PMU
>> in 'cpu_pm_pmu_notify()'. But we didn't do that before we enter idle state.
>> I only find some system registers saving in 'psci_cpu_suspend_enter()->cpu_susend()->cpu_do_suspend()'
> 
> I'm not sure what you mean by "system sleep state", but if you're putting
> the CPU into a state where register contents is lost, then I think you need
> those PM notifiers to run. My understanding was that CPUidle took care of
> this. Why is that not sufficient for you?

Sorry, I didn't notice the PM notifiers are called in CPUidle when 'arch_flags' is set.
I thought it's only called in 'cpu_pm_syscore_ops', I mean Susepnd-to-RAM.

Thanks,
Xiongfeng

> 
>> Do you have some suggestion about how we can handle this problem ?
>> Should we save and restore the PMU context before and after the deepest idle state . I don't know
>> if we can take care of the PMU  counters and interrupts properly by saving and restoring
>> the PMU registers.
>> Or we should update the kernel counter and stop the PMU, like what we did in system sleep situation.
>> Or we should let the firmware to handle the saving and restoring problem.
> 
> If the idle state is somehow autonomous (i.e. the kernel is not aware of
> it), then I suppose firmware has to save/restore the register state that
> is not otherwise preserved. However, I'd like to understand if this is
> really what's happening and why CPUidle isn't just doing the right thing.
> 
> Thanks,
> 
> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
