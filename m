Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B48DB1365CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 04:29:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jjNnvfYTvV441ZanpwtnQK3O2P+BFRy5ATSkhzJngQ8=; b=DRmLRpuC1UtSU2
	YrOWSV/bHgd2lElKgzX28HJvRhFZt1FOg6QQTFN4I0jV+PXHZuTY3qx3IT6zi6cIGKMpdMPecWDm1
	4BZrW1fXEK/1k1M5MCf3Sb7XlxGRwecBdrDyKFspW/n6R+Sq3kStwgl1G4UIuNjA/U7eAGRT0ym31
	H+OldfL9NZa/qm6kcfOzZnHgWKwOMwykD79BI0gVPPo8Ai6sHVcql67a3/uovreRpZo9uoYblX5yr
	Z5N5FKg8ShfCn3Xf5sJv1VcAe3N+88QT0h3cl92TLGZ7ZLM6rzn1nyTVULQPIyd+ZZ+yBtQ6QD5hY
	dCUNDuJCk9WQu9pRKS6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipkyj-0000bO-DM; Fri, 10 Jan 2020 03:28:53 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipkyb-0000ao-KG
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 03:28:47 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C8AE2DB507602D9C6A62;
 Fri, 10 Jan 2020 11:28:34 +0800 (CST)
Received: from [127.0.0.1] (10.184.52.56) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Fri, 10 Jan 2020
 11:28:27 +0800
Subject: Re: [Question] About handling PMU context loss in the deepest idle
 state where the core is powered down
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon
 <will@kernel.org>
References: <d62d9ac1-3af9-b692-a84a-aab4582e5eb8@huawei.com>
 <20200109150318.GF12236@willie-the-truck>
 <20200109164655.GA29943@e121166-lin.cambridge.arm.com>
From: Xiongfeng Wang <wangxiongfeng2@huawei.com>
Message-ID: <1871e6bb-f12e-3fb9-d122-3d2611880fa1@huawei.com>
Date: Fri, 10 Jan 2020 11:28:26 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20200109164655.GA29943@e121166-lin.cambridge.arm.com>
Content-Language: en-US
X-Originating-IP: [10.184.52.56]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_192845_829961_D4975B38 
X-CRM114-Status: GOOD (  16.46  )
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
Cc: mark.rutland@arm.com, wangzhe59@huawei.com,
 Catalin Marinas <catalin.marinas@arm.com>, huawei.libin@huawei.com,
 guohanjun@huawei.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020/1/10 0:46, Lorenzo Pieralisi wrote:
> On Thu, Jan 09, 2020 at 03:03:19PM +0000, Will Deacon wrote:
>> [+Lorenzo]
>>
>> On Thu, Jan 09, 2020 at 10:43:40AM +0800, Xiongfeng Wang wrote:
>>> Sorry to bother you. It's just that we have come across some problems
>>> about PMU recently.
>>
>> No bother, and thanks for including the mailing list.
>>
>>> We are working on deep power state on CPU cores. In the deepest idle
>>> state, the core will be powered down. In our implementation, the PMU
>>> and the core are in the same power domain, so the PMU will also be
>>> powered down. But I didn't find where we saved the PMU context in
>>> kernel before entering the deepest idle state.
>>>
>>> Before we enter the system sleep state, we update the kernel PMU
>>> counter and stop the PMU in 'cpu_pm_pmu_notify()'. But we didn't do
>>> that before we enter idle state.
> 
> ACPI or DT firmware ? I suspect that's ACPI, with LPI idle state
> flags set to 0x0 (3.1.3 - save and restore flags):
> 
> http://infocenter.arm.com/help/topic/com.arm.doc.den0048a/DEN0048A_ARM_FFH_Specification.pdf
> 
> If that's the case a firmware update is needed (ie currently the kernel
> expects the PMU state to be retained).
> 
> arch/arm64/kernel/cpuidle.c
> 
> ARM64_LPI_IS_RETENTION_STATE()

That totally solved my problem.
I set the LPI idle state flag in firmware, and the 'cpu_pm_pmu_notify()' can be called
before I enter the context-lost idle state. Thanks a lot !

> 
> In DT in the PSCI CPUidle driver we run the notifiers irrespective
> of the idle state depth so I don't think this behaviour can happen
> in a DT bootstrapped system.
> 
> I am just guessing - please let me know if my assumption is correct.

Yes, it's correct. We are using ACPI.

> 
>>> I only find some system registers saving in 'psci_cpu_suspend_enter()->cpu_susend()->cpu_do_suspend()'
>>
>> I'm not sure what you mean by "system sleep state"
> 
> I think they mean suspend-to-RAM - in suspend-to-RAM the notifiers
> are run through syscore operations which are decoupled from CPUidle.

Yes, I mean suspend-to-RAM.

Thanks,
Xiongfeng

> 
> Regardless, CPUidle should call the notifiers if instructed by firmware
> correctly.
> 
> Thanks,
> Lorenzo
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
