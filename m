Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDC86A3EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 10:33:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KfmOhXl0pddtp15W0BZlHnzGgr2/+IYgpdODU6crWu4=; b=I9uxSCzyrKVZHX
	5b88/Su/l9EMfTLHIC/LErlbiTyRQMRte7wkWsDmq2QTO2tWoAGn6tbsPDwab2zZcHy2ffDNEZWFD
	Qm/PplqxETovCarTln2xWTzXHggLPrrvLmwhpFaeToT3JdiRxAxZ148sm1qH7RVTz5p1imsZndwOg
	k7siju0/SmpK5VzCWIblYraM3TqBLXTpAGb8S61y+zkJWpKy3FCGRcya/+e7ieNKB0kH0LeJzEo+h
	brsozYZCa2yHUngjJTLeApvR/IU3dUwStYXnSrsrUWJMkJHHN/5oDWjmqizyhqsMUSgWQYhidqzW5
	GXZjzfeA9C4Tk6IUJDHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnItp-0002xR-Ih; Tue, 16 Jul 2019 08:33:25 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnItS-0002x8-Vc
 for linux-arm-kernel@bombadil.infradead.org; Tue, 16 Jul 2019 08:33:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kPTuYE0cdoSitJbwa9j0WTTtdVvFpCrgLOqG6DWP/nM=; b=jRczyKiEWr+HksqJIqUCxxMn7T
 LUjtwKmoRTUWaAn4YJo+IXIRmipYbTmJ6afsMqBKmUyY7SsHb0M8y4PYnOHVivRezyVIFvsmnl+mz
 IJdVElllbEweTavkB6GjwTzPmkkSpBhhBmhmy8cZfC9aUxY+uxsQSkHybj8y8/Ct2BqYyvsQ2lbYL
 ImnRxi/iaXoVEIhCj+6EBvj9PDZAXllhRqwbQ6cAaoBlQtd0NuuWN8IQrgh+RDe+MFgPsNdaTNCwH
 +yUJumKX1licRUQaXQlYcCnUEbbeq/pm2pnyFFjX7EDsBNpnknUmxqmbSgW2cvN8rSwZfjqs9JhR6
 eMxTP9Bg==;
Received: from foss.arm.com ([217.140.110.172])
 by casper.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnItW-0000XG-MB
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 08:33:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 165122B;
 Tue, 16 Jul 2019 01:32:48 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 0A3F83F59C; Tue, 16 Jul 2019 01:32:45 -0700 (PDT)
Subject: Re: [RFC PATCH v2 0/3] Support CPU hotplug for ARM64
To: Jia He <jiakernel2@gmail.com>, Maran Wilson <maran.wilson@oracle.com>,
 James Morse <james.morse@arm.com>, Xiongfeng Wang <wangxiongfeng2@huawei.com>
References: <1561776155-38975-1-git-send-email-wangxiongfeng2@huawei.com>
 <82879258-46a7-a6e9-ee54-fc3692c1cdc3@arm.com>
 <51cc9a5c-9968-c4b1-0bc7-870f44a3a761@oracle.com>
 <06ef13e1-fffe-d4a2-721e-f666f331fb3c@arm.com>
 <1a7b2f39-ca77-5b5f-cbb5-6356e51b0d7a@gmail.com>
From: Marc Zyngier <marc.zyngier@arm.com>
Openpgp: preference=signencrypt
Autocrypt: addr=marc.zyngier@arm.com; prefer-encrypt=mutual; keydata=
 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
 Z46HaNmN2hZS/oJ69c1DI5Rcww==
Organization: ARM Ltd
Message-ID: <682936cd-139e-64d5-9ab2-4ebd09e89e3d@arm.com>
Date: Tue, 16 Jul 2019 09:32:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1a7b2f39-ca77-5b5f-cbb5-6356e51b0d7a@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_093307_025849_B71B48F2 
X-CRM114-Status: GOOD (  30.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
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
Cc: guohanjun@huawei.com, john.garry@huawei.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 huawei.libin@huawei.com, jonathan.cameron@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jia,

On 16/07/2019 08:59, Jia He wrote:
> Hi Marc
> 
> On 2019/7/10 17:15, Marc Zyngier wrote:
>> On 09/07/2019 20:06, Maran Wilson wrote:
>>> On 7/5/2019 3:12 AM, James Morse wrote:
>>>> Hi guys,
>>>>
>>>> (CC: +kvmarm list)
>>>>
>>>> On 29/06/2019 03:42, Xiongfeng Wang wrote:
>>>>> This patchset mark all the GICC node in MADT as possible CPUs even though it
>>>>> is disabled. But only those enabled GICC node are marked as present CPUs.
>>>>> So that kernel will initialize some CPU related data structure in advance before
>>>>> the CPU is actually hot added into the system. This patchset also implement
>>>>> 'acpi_(un)map_cpu()' and 'arch_(un)register_cpu()' for ARM64. These functions are
>>>>> needed to enable CPU hotplug.
>>>>>
>>>>> To support CPU hotplug, we need to add all the possible GICC node in MADT
>>>>> including those CPUs that are not present but may be hot added later. Those
>>>>> CPUs are marked as disabled in GICC nodes.
>>>> ... what do you need this for?
>>>>
>>>> (The term cpu-hotplug in the arm world almost never means hot-adding a new package/die to
>>>> the platform, we usually mean taking CPUs online/offline for power management. e.g.
>>>> cpuhp_offline_cpu_device())
>>>>
>>>> It looks like you're adding support for hot-adding a new package/die to the platform ...
>>>> but only for virtualisation.
>>>>
>>>> I don't see why this is needed for virtualisation. The in-kernel irqchip needs to know
>>>> these vcpu exist before you can enter the guest for the first time. You can't create them
>>>> late. At best you're saving the host scheduling a vcpu that is offline. Is this really a
>>>> problem?
>>>>
>>>> If we moved PSCI support to user-space, you could avoid creating host vcpu threads until
>>>> the guest brings the vcpu online, which would solve that problem, and save the host
>>>> resources for the thread too. (and its acpi/dt agnostic)
>>>>
>>>> I don't see the difference here between booting the guest with 'maxcpus=1', and bringing
>>>> the vcpu online later. The only real difference seems to be moving the can-be-online
>>>> policy into the hypervisor/VMM...
>>> Isn't that an important distinction from a cloud service provider's
>>> perspective?
>>>
>>> As far as I understand it, you also need CPU hotplug capabilities to
>>> support things like Kata runtime under Kubernetes. i.e. when
>>> implementing your containers in the form of light weight VMs for the
>>> additional security ... and the orchestration layer cannot determine
>>> ahead of time how much CPU/memory resources are going to be needed to
>>> run the pod(s).
>> Why would it be any different? You can pre-allocate your vcpus, leave
>> them parked until some external agent decides to signal the container
>> that it it can use another bunch of CPUs. At that point, the container
>> must actively boot these vcpus (they aren't going to come up by magic).
>>
>> Given that you must have sized your virtual platform to deal with the
>> maximum set of resources you anticipate (think of the GIC
>> redistributors, for example), I really wonder what you gain here.
> I agree with your point in GIC aspect. It will mess up things if it makes
> 
> GIC resource hotpluggable in qemu.

It is far worse than just a mess. You'd need to come up with a way to
place your redistributors in memory, and tell the running guest where
these redistributors are. Currently, there is no method to describe such
changes to the address space, and I certainly don't want QEMU to invent
one. This needs to be modeled after what would happen on real HW.

> But it also would be better that vmm
> 
> only startup limited vcpu thread resource.
> 
> How about:
> 
> 1. qemu only starts only N vcpu thread (-smp N, maxcpus=M)
> 
> 2. qemu reserves the GIC resource with maxium M vcpu number

Note that this implies actually initializing M vcpus in the VM. You may
not have created the corresponding (M - N) threads, but the vcpus will
exist. Can you please quantify how much you'd save by doing that?

> 3. when qmp cmd cpu hotplug-add is triggerred, send a GED event to guest kernel
> 
> 4. guest kernel recv it and trigger the acpi plug process.
> 
> Currently ACPI_CPU_HOTPLUG is enabled for Kconfig but completely not workable.

Well, there so far *zero* CPU_HOTPLUG in the arm64 kernel other than
getting CPUs in and out of PSCI.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
