Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FF66A34F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 09:53:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDSNkjMSft9dW+ED9UE8hZTIGWz6Ryv285cCtE5otcY=; b=NDeEenZAwx8ZCX
	4aefuGg+2owlWW5ZDdQeGlBTHyPfKBZuSzApIoe/FV3Q7r28ZfwjZljJrLlXeSz9K5EOjqIzOQ63F
	VK/7f+Gj73QtCMNB6H3XeHREeERzomC7E8u7oZu6Dk1wAz8rLz8g8XwyAUqnuP682w7flizIJYzjZ
	r7YkwWQ2MgQPdC/P7hDTK/98GBZq0oOfUYvUn3zvCdTwpy92yEXkeE8naqP10TL6BVgXwoi4LuTAu
	GHVE/qd/JTUEvMf06JuDiSOcC2q8893d4d1uLUkFjGsEi58gOOqhjARbaBSRAy7zqzHaerx2q1pKf
	A3yRHUMInGYJx1Q9FMrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnIGt-0002wu-8w; Tue, 16 Jul 2019 07:53:11 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnIGa-0002vs-8j
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 07:52:54 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 8D4F24C29AFC5FF4B6B7;
 Tue, 16 Jul 2019 15:52:38 +0800 (CST)
Received: from [127.0.0.1] (10.184.52.56) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Tue, 16 Jul 2019
 15:52:28 +0800
Subject: Re: [RFC PATCH v2 0/3] Support CPU hotplug for ARM64
To: James Morse <james.morse@arm.com>
References: <1561776155-38975-1-git-send-email-wangxiongfeng2@huawei.com>
 <82879258-46a7-a6e9-ee54-fc3692c1cdc3@arm.com>
From: Xiongfeng Wang <wangxiongfeng2@huawei.com>
Message-ID: <8a8cd9d2-684e-2246-c1f9-5cf21aa2defc@huawei.com>
Date: Tue, 16 Jul 2019 15:52:02 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <82879258-46a7-a6e9-ee54-fc3692c1cdc3@arm.com>
Content-Language: en-US
X-Originating-IP: [10.184.52.56]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_005252_528521_BC8101E6 
X-CRM114-Status: GOOD (  20.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: xiexiuqi@huawei.com, jonathan.cameron@huawei.com, john.garry@huawei.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 huawei.libin@huawei.com, guohanjun@huawei.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/7/5 18:12, James Morse wrote:
> Hi guys,
> 
> (CC: +kvmarm list)
> 
> On 29/06/2019 03:42, Xiongfeng Wang wrote:
>> This patchset mark all the GICC node in MADT as possible CPUs even though it
>> is disabled. But only those enabled GICC node are marked as present CPUs.
>> So that kernel will initialize some CPU related data structure in advance before
>> the CPU is actually hot added into the system. This patchset also implement 
>> 'acpi_(un)map_cpu()' and 'arch_(un)register_cpu()' for ARM64. These functions are
>> needed to enable CPU hotplug.
>>
>> To support CPU hotplug, we need to add all the possible GICC node in MADT
>> including those CPUs that are not present but may be hot added later. Those
>> CPUs are marked as disabled in GICC nodes.
> 
> ... what do you need this for?
> 
> (The term cpu-hotplug in the arm world almost never means hot-adding a new package/die to
> the platform, we usually mean taking CPUs online/offline for power management. e.g.
> cpuhp_offline_cpu_device())
> 
> It looks like you're adding support for hot-adding a new package/die to the platform ...
> but only for virtualisation.

I read the GIC driver these days. It is a lot of work to configure the GIC at runtime,
and this patchset doesn't support this.
Actually, my original idea is hot-adding cores to the platform, and it is only for virtualisation.
These cores need to be on the same physical package. The GIC is initialized when
the kernel boots and GICR is initialized when the core is hot-added and brought up.

> 
> I don't see why this is needed for virtualisation. The in-kernel irqchip needs to know
> these vcpu exist before you can enter the guest for the first time. You can't create them
> late. At best you're saving the host scheduling a vcpu that is offline. Is this really a
> problem?
> 
> If we moved PSCI support to user-space, you could avoid creating host vcpu threads until
> the guest brings the vcpu online, which would solve that problem, and save the host
> resources for the thread too. (and its acpi/dt agnostic)
> 
> I don't see the difference here between booting the guest with 'maxcpus=1', and bringing
> the vcpu online later. The only real difference seems to be moving the can-be-online
> policy into the hypervisor/VMM...
> 
> 
> I think physical package/die hotadd is a much bigger, uglier problem than doing the same
> under virtualisation. Its best to do this on real hardware first so we don't miss
> something. (cpu-topology, numa, memory, errata, timers?)
> I'm worried that doing virtualisation first means the firmware-requirements for physical
> hotadd stuff is "whatever Qemu does".
> 
> 
> Thanks,
> 
> James
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
