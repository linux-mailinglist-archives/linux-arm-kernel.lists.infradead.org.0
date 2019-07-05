Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BC1607AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:17:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z95jzjK43zhEsJrlv86zenFP4XhYH7F6pxKQ5+ZLWxs=; b=Z+ZHwiypZ+KQ4/
	+PZjbSOSldT5liwJJ7HzLyMpG6I9wwKsYk5sDTLfgb0NUNMXk5ok/xl5oECd9r+PjDDKvxV45qOqX
	aKBUiEivtgqNvK+nOOI4iNQfgVRUsLaVTuHUAC7EWk3G90nI3pOsqS6v75mSuITjraIUvLQ2JNHIj
	y7Sw+YoUivcMC9NOBwShTWOulqMICXc7MuvcFZ4yYqAAgY+57NSR8kV2ca0gWhEpKjT7WtOVfQRFQ
	SrKR8aI+jvW9J6guxm4ENWzRg9cC2/eEHaga8XR8KN37VHO1DJ1Fy8BSR0e2UvaZnyfEiy9NdUcZc
	zk8zEM4p9gSAcnV0NcUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjP1W-00023x-2y; Fri, 05 Jul 2019 14:17:14 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjP0w-0001aB-Rq
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:16:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FPyHm41xsCzvnBeVlb3kngFXo5kamUolNFUMWK1dLvc=; b=UPwqf/KvqWGMsKL3nRbRVT0vbW
 /TaiTQZQHt0NAfI/6oJksTPn8AHIUk/wIyjU1R6qH6NKLITvjivsRIb+AEgufOtjJb3PoirQuWQGY
 vSd8MY5fXu+PtT7N2zcI02g3cikVaPusP7uKKE7dyrPYdm68vmhkZeyOYoWhEn1zAzKaD3vRT/1fZ
 0Jf6Sna7XEjxEuykzYFDrhGm/ragtMOk5h7rkbfuja3qkbE7pT79bumT9tpzZPcpe6W3X5IesTOLW
 qM5SUk5uFGsAd7ftrDcB7060w5loJUhF7duYMD5DJireADXENdsjJ7qSXlwcfNfCgTaCjfwhWarDZ
 WiI74eyQ==;
Received: from foss.arm.com ([217.140.110.172])
 by casper.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hjLD5-0002H7-Kd
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:12:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9EC872B;
 Fri,  5 Jul 2019 03:12:10 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 779B73F703;
 Fri,  5 Jul 2019 03:12:08 -0700 (PDT)
Subject: Re: [RFC PATCH v2 0/3] Support CPU hotplug for ARM64
To: Xiongfeng Wang <wangxiongfeng2@huawei.com>
References: <1561776155-38975-1-git-send-email-wangxiongfeng2@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <82879258-46a7-a6e9-ee54-fc3692c1cdc3@arm.com>
Date: Fri, 5 Jul 2019 11:12:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1561776155-38975-1-git-send-email-wangxiongfeng2@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_111255_823150_2ED05F1B 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
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
Cc: xiexiuqi@huawei.com, jonathan.cameron@huawei.com, john.garry@huawei.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 huawei.libin@huawei.com, guohanjun@huawei.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi guys,

(CC: +kvmarm list)

On 29/06/2019 03:42, Xiongfeng Wang wrote:
> This patchset mark all the GICC node in MADT as possible CPUs even though it
> is disabled. But only those enabled GICC node are marked as present CPUs.
> So that kernel will initialize some CPU related data structure in advance before
> the CPU is actually hot added into the system. This patchset also implement 
> 'acpi_(un)map_cpu()' and 'arch_(un)register_cpu()' for ARM64. These functions are
> needed to enable CPU hotplug.
> 
> To support CPU hotplug, we need to add all the possible GICC node in MADT
> including those CPUs that are not present but may be hot added later. Those
> CPUs are marked as disabled in GICC nodes.

... what do you need this for?

(The term cpu-hotplug in the arm world almost never means hot-adding a new package/die to
the platform, we usually mean taking CPUs online/offline for power management. e.g.
cpuhp_offline_cpu_device())

It looks like you're adding support for hot-adding a new package/die to the platform ...
but only for virtualisation.

I don't see why this is needed for virtualisation. The in-kernel irqchip needs to know
these vcpu exist before you can enter the guest for the first time. You can't create them
late. At best you're saving the host scheduling a vcpu that is offline. Is this really a
problem?

If we moved PSCI support to user-space, you could avoid creating host vcpu threads until
the guest brings the vcpu online, which would solve that problem, and save the host
resources for the thread too. (and its acpi/dt agnostic)

I don't see the difference here between booting the guest with 'maxcpus=1', and bringing
the vcpu online later. The only real difference seems to be moving the can-be-online
policy into the hypervisor/VMM...


I think physical package/die hotadd is a much bigger, uglier problem than doing the same
under virtualisation. Its best to do this on real hardware first so we don't miss
something. (cpu-topology, numa, memory, errata, timers?)
I'm worried that doing virtualisation first means the firmware-requirements for physical
hotadd stuff is "whatever Qemu does".


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
