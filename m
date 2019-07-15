Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B289C68BC1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 15:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/0zoxcNY6bDTlUiuNEmFQMy+LxPe7e9Lomb2HaXLug=; b=FBDIvWOmx8oUcw
	qqkNai7v5ugxBsV+TuNYxi2RrnvLFwDi8J7/pDFK2TIvgMqHRTYSUsTzrf4CAQNdQqfUKFB5pLi2I
	HmA6a44wgoG3CVnPvSsoMkp4ji5oyAzvmKXBeLoocFdP6zcz3w4IkM1Fxe+m/NWxAa5nr5xbCrj9B
	+YQMyzkdBdoR1nhSId2VVNKi66okY9UYaH6sZajr8MN/chwEtF7/xxZvSsMRhi3UkMw5ZFg6u2IXB
	q9Xn+/irGPFPH/Tr9btpVvfYt7TEnLVOWxX1868hgkBb1O2tbdRANRysggpQwQ/j5icbulIWhVDHu
	jHGI+Z0hngXlMOTxsmCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn1Ga-0007g3-VP; Mon, 15 Jul 2019 13:43:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1GF-0007fB-7B
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 13:43:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 720C228;
 Mon, 15 Jul 2019 06:43:20 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E77153F71F;
 Mon, 15 Jul 2019 06:43:17 -0700 (PDT)
Subject: Re: [RFC PATCH v2 0/3] Support CPU hotplug for ARM64
To: Maran Wilson <maran.wilson@oracle.com>
References: <1561776155-38975-1-git-send-email-wangxiongfeng2@huawei.com>
 <82879258-46a7-a6e9-ee54-fc3692c1cdc3@arm.com>
 <51cc9a5c-9968-c4b1-0bc7-870f44a3a761@oracle.com>
 <06ef13e1-fffe-d4a2-721e-f666f331fb3c@arm.com>
 <d65c2aca-470f-177d-57cf-6375c989054c@oracle.com>
From: James Morse <james.morse@arm.com>
Message-ID: <5f1cba3d-d9aa-b17c-8e10-721ac69b921f@arm.com>
Date: Mon, 15 Jul 2019 14:43:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <d65c2aca-470f-177d-57cf-6375c989054c@oracle.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_064323_357513_263116E7 
X-CRM114-Status: GOOD (  18.38  )
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, john.garry@huawei.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-acpi@vger.kernel.org, huawei.libin@huawei.com, guohanjun@huawei.com,
 jonathan.cameron@huawei.com, Xiongfeng Wang <wangxiongfeng2@huawei.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maran,

On 10/07/2019 17:05, Maran Wilson wrote:
> On 7/10/2019 2:15 AM, Marc Zyngier wrote:
>> On 09/07/2019 20:06, Maran Wilson wrote:
>>> On 7/5/2019 3:12 AM, James Morse wrote:
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

Host cpu-time is. Describing this as guest vcpu's is a bit weird.

I'd expect the statement be something like "you're paying for 50% of one Xeon v-whatever".
It shouldn't make a difference if I run 8 vcpus or 2, the amount of cpu-time would still
be constrained by the cloud provider.


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

> Maybe I'm not following the alternative proposal completely, but wouldn't a guest VM (who
> happens to be in control of its OS) be able to add/online vCPU resources without approval
> from the VMM this way?

The in-kernel PSCI implementation will allow all CPUs to be online/offline. If we moved
that support to the VMM, it could apply some policy as to whether a cpu-online call
succeeds or fails.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
