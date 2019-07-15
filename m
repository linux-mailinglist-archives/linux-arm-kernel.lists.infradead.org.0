Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8963569129
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 16:27:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2+IKTj/LsKVUX6ZiYUfRCHe1JXWHYzDV1Ql4u+MJbg=; b=U1lrRJAStEe2Ti
	Uuu0gRtfrQNNrdKatJQ51dEMO0cJSQ2YQdKCYpvLnZta765GuKLv6DiqMhNBe/0cgyqyiDZtjtn49
	qKVybpj10cIlcpAI6Jn2E8nh/vwLJzuNa+RTTVkRKt3qpGrmR2mQ/GjUAGeCYfoOl8qhIi73TRo8T
	/0r5hjT/NAEgrJo4HSV7lq7m9Z0RTG9Z7FQfRaRviiR7gqleRL8O9KFNESQQAK3B1RP0cjnBhk/Zc
	ba2pW0+aqniHHngVu3q3CTEy8mPV2Owx0+bNlKIm3nilklolr1PBU2xdojFk3T/Oo5kL6YmJRIMFJ
	f3Shk4B4fgSkeAE1oYzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn1wZ-0001Qf-Ub; Mon, 15 Jul 2019 14:27:08 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1wN-0001Q9-63
 for linux-arm-kernel@bombadil.infradead.org; Mon, 15 Jul 2019 14:26:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1G96YAtb5hmNRUQb69m7MWHrLgTIKysxQ/viD9H0C4A=; b=FVJsfQXWY0gUAeEvmc5bLrmb8e
 fWIc0Cmv+zaZGgQr8ferJY9PKjNe/s7kdIaYgU+D0VxnFC3mVzw4OyE3NBBF8oLj9lFmukkIjVKiy
 YmwHxd4JDt6rt7EmZUgCuzusZQFNlNCue/aQmjpiJsMp4gTmwoNymddAHE2iGTqYB1x9jyiQ7cA2g
 U8AAJ1B/UweObJdQPQ+O5Hl14Z7z4mW2SUuUVCk9bnxUo1YwDFvx2VYUQAgFYhcbjnTSiAlcreiPZ
 rtNoHBIazQ1akreW3ZghUprLtG2R/nnv3xFio5zxnTT22T/cQd2r/ZvYdwoI7ukoPP5TgUPQgJZ41
 GxhuNkrg==;
Received: from foss.arm.com ([217.140.110.172])
 by casper.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1wR-0004h3-6y
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 14:27:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B204E28;
 Mon, 15 Jul 2019 07:26:45 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4E10E3F59C;
 Mon, 15 Jul 2019 07:26:44 -0700 (PDT)
Subject: Re: [RFC] Add virtual SDEI support in qemu
To: Guoheyi <guoheyi@huawei.com>
References: <1b0aa6b2-80b1-a72e-6849-7323c3b9c6bc@huawei.com>
 <20190715134059.GJ2790@e103592.cambridge.arm.com>
 <20190715134848.GI56232@lakrids.cambridge.arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <4daefb19-6c15-f82c-31e9-1ae035d45bd5@arm.com>
Date: Mon, 15 Jul 2019 15:26:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190715134848.GI56232@lakrids.cambridge.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_152659_572282_006F30F7 
X-CRM114-Status: GOOD (  34.68  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 qemu-devel@nongnu.org, Dave Martin <Dave.Martin@arm.com>, qemu-arm@nongnu.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi guys,

On 15/07/2019 14:48, Mark Rutland wrote:
> On Mon, Jul 15, 2019 at 02:41:00PM +0100, Dave Martin wrote:
>> On Sat, Jul 13, 2019 at 05:53:57PM +0800, Guoheyi wrote:
>>> Do it make sense to implement virtual SDEI in qemu? So that we can have the
>>> standard way for guest to handle NMI watchdog, RAS events and something else
>>> which involves SDEI in a physical ARM64 machine.

I think so!


>>> My basic idea is like below:
>>>
>>> 1. Change a few lines of code in kvm to allow unhandled SMC invocations
>>> (like SDEI) to be sent to qemu, with exit reason of KVM_EXIT_HYPERCALL, so
>>> we don't need to add new API.
>>
>> So long as KVM_EXIT_HYPERCALL reports sufficient information so that
>> userspace can identify the cause as an SMC and retrieve the SMC
>> immediate field, this seems feasible.
>>
>> For its own SMCCC APIs, KVM exclusively uses HVC, so rerouting SMC to
>> userspace shouldn't conflict.
> 
> Be _very_ careful here! In systems without EL3 (and without NV), SMC
> UNDEFs rather than trapping to EL2. Given that, we shouldn't build a
> hypervisor ABI that depends on SMC.
> 
> I am strongly of the opinion that (for !NV) we should always use HVC
> here and have KVM appropriately forward calls to userspace, rather than
> trying to use HVC/SMC to distinguish handled-by-kernel and
> handled-by-userspace events.
> 
> For NV, the first guest hypervisor would use SMC to talk to KVM, all
> else being the same.
> 
>> This bouncing of SMCs to userspace would need to be opt-in, otherwise
>> old userspace would see exits that it doesn't know what to do with.
>>
>>> 2. qemu handles supported SDEI calls just as the spec says for what a
>>> hypervisor should do for a guest OS.

[pulled point 3 out to discuss separately]

>> Something like that.
>>
>> Interactions between SDEI and PSCI would need some thought: for example,
>> after PSCI_CPU_ON, the newly online cpu needs to have SDEs masked.
>>
>> One option (suggested to me by James Morse) would be to allow userspace
>> to disable in the in-kernel PSCI implementation and provide its own
>> PSCI to the guest via SMC -- in which case userspace that wants to
>> implement SDEI would have to implement PSCI as well.
> 
> I think this would be the best approach, since it puts userspace in
> charge of everything.
> 
> However, this interacts poorly with FW-based mitigations that we
> implement in hyp. I suspect we'd probably need a mechanism to delegate
> that responsibility back to the kernel, and figure out if that has any
> interaction with thigns that got punted to userspace...

This has come up before:
https://lore.kernel.org/r/59C139D0.3040507@arm.com

I agree Qemu should opt-in to this, it needs to be a feature that is enabled.

I had an early version of something like this for testing SDEI before there was firmware
available. The review feedback from Christoffer was that it should include HVC and SMC,
their immediates, and shouldn't be tied to SMC-CC ranges.

I think this should be a catch-all as Heyi describes to deliver 'unhandled SMC/HVC' to
user-space as hypercall exits. We should include the immediate in the struct.

We can allow Qemu to disable the in-kernel PSCI implementation, which would let it be done
in user-space via this catch-all mechanism. (PSCI in user-space has come up on another
thread recently). The in-kernel PSCI needs to be default-on for backwards compatibility.

As Mark points out, the piece that's left is the 'arch workaround' stuff. We always need
to handle these in the kernel. I don't think these should be routed-back, they should be
un-obtainable by user-space.
Ideally there would be a way for user-space to discover the immediate/x0 values that the
kernel will not deliver via the catch-all. This could be done via some co-processor
register... thing...



>>> 3. For interrupts bound to hypervisor, qemu should stop injecting the IRQ to
>>> guest through KVM, but jump to the registered event handler directly,
>>> including context saving and restoring. Some interrupts like virtual timer
>>> are handled by kvm directly, so we may refuse to bind such interrupts to
>>> SDEI events.

I don't think we'd ever need a physical interrupt to be delivered via Qemu as an SDEI event.
The use-cases for this stuff mean it can be done 'higher-up'. For example, your timer is
probably used as a watchdog. On a real system this may well be a device with an interrupt,
but Qemu could happily emulate a watchdog using some other linux API. (e.g. SIGALRM).



Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
