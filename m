Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCFDDE9DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 12:40:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=djfXPcrav5DukLjvXyrispsPMGv1uL40Lztnlsq58w0=; b=b+vRJEWn7CCCOR4zZjykyeuw6
	qLwnf2V+57RT9jwqJo/pgAYdoSvWg9v18X5EcVd9sy0OqNCkEXZNsCbxm9B1pWyENj/jIJ9rJR4L2
	NrBxBmWngzqp4YxPmSGpdF/igoPDHnEiOILiQ86PcOjQc15/sSW0cPKr/I6vVjAD24aSdVdLgckw2
	TsgTjLlHKylL3oNL4z40fFNglJZ2AUO228XIjdPd2yLM7W994xTyiB4sFhqytYFu3I09OiF/AK5pg
	kBVlh9macarbxuun7JCeTBIVacyWYzkZOI/dT2llnYt9gyh74ChCrapd6RfI+8HPbYjZ6lR1n3QJ3
	U/0TFQ4eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMV7A-00013s-M5; Mon, 21 Oct 2019 10:40:40 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMV6u-00011i-PF
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:40:26 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iMV6l-00020K-Os; Mon, 21 Oct 2019 12:40:15 +0200
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v6 05/10] KVM: arm64: Support stolen time reporting via
 shared structure
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 21 Oct 2019 11:40:15 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1bb10eb5-0fe8-57c9-3b67-9b3661a73d29@arm.com>
References: <20191011125930.40834-1-steven.price@arm.com>
 <20191011125930.40834-6-steven.price@arm.com> <86eez9yoog.wl-maz@kernel.org>
 <1bb10eb5-0fe8-57c9-3b67-9b3661a73d29@arm.com>
Message-ID: <cc639f743d621198ef02f880089bb54d@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: steven.price@arm.com, mark.rutland@arm.com,
 kvm@vger.kernel.org, rkrcmar@redhat.com, catalin.marinas@arm.com,
 suzuki.poulose@arm.com, linux-doc@vger.kernel.org, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, pbonzini@redhat.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_034024_968206_AAFEFC33 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?Q?Radim_Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 kvm@vger.kernel.org, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-21 11:21, Steven Price wrote:
> On 19/10/2019 12:12, Marc Zyngier wrote:
>> On Fri, 11 Oct 2019 13:59:25 +0100,
>> Steven Price <steven.price@arm.com> wrote:
>>>
>>> Implement the service call for configuring a shared structure 
>>> between a
>>> VCPU and the hypervisor in which the hypervisor can write the time
>>> stolen from the VCPU's execution time by other tasks on the host.
>>>
>>> User space allocates memory which is placed at an IPA also chosen 
>>> by user
>>> space. The hypervisor then updates the shared structure using
>>> kvm_put_guest() to ensure single copy atomicity of the 64-bit value
>>> reporting the stolen time in nanoseconds.
>>>
>>> Whenever stolen time is enabled by the guest, the stolen time 
>>> counter is
>>> reset.
>>>
>>> The stolen time itself is retrieved from the sched_info structure
>>> maintained by the Linux scheduler code. We enable SCHEDSTATS when
>>> selecting KVM Kconfig to ensure this value is meaningful.
>>>
>>> Signed-off-by: Steven Price <steven.price@arm.com>
>>> ---
>>>  arch/arm/include/asm/kvm_host.h   | 20 +++++++++++
>>>  arch/arm64/include/asm/kvm_host.h | 21 +++++++++++-
>>>  arch/arm64/kvm/Kconfig            |  1 +
>>>  include/linux/kvm_types.h         |  2 ++
>>>  virt/kvm/arm/arm.c                | 11 ++++++
>>>  virt/kvm/arm/hypercalls.c         |  3 ++
>>>  virt/kvm/arm/pvtime.c             | 56 
>>> +++++++++++++++++++++++++++++++
>>>  7 files changed, 113 insertions(+), 1 deletion(-)

[...]

>>> +long kvm_hypercall_stolen_time(struct kvm_vcpu *vcpu)
>>
>> Why long? If that's a base address, then it is either a phys_addr_t 
>> or
>> a gpa_t. I'd suggest you move the error check to the caller.
>
> This is a bit more tricky. It's a long because that's the declared 
> type
> of the SMCCC return in kvm_hvc_call_handler(). I can't (easily) move 
> the
> code into kvm_hvc_call_handler() because that is compiled for arm (as
> well as arm64) and we don't have the definitions for stolen time 
> there.
> The best option I could come up with is to have a dummy stub for arm 
> and
> use generic types for this function.
>
> This means we need a type which can contain both a gpa_t and the
> SMCCC_RET_NOT_SUPPORTED error code.
>
> I'm open to alternative suggestions on how to make this work.

My suggestion would be to always return a gpa_t from this function, and
change the 32bit stub for kvm_hypercall_stolen_time() to always return
GPA_INVALID.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
