Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA95DE48C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 12:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A8wgtma9OvTcZjSC2hcsf21WyulaF9q4drtEUk1BH5o=; b=lynDZ9r7Xh7UJyyKOXGLbwQFi
	WMaxH+UPMdf3JWU+Db8kCxyUnaUcqYTsfM7c+5wkjHQxFen54Csl6Fd+q8Vx2Qi3ROlwKz8v/aBC6
	O4VadIFmV9dbWUaHadgsNW1ZCrukggAl3nCW7Xr/iY7PgBlsuY4P96SoqLbQDRwTawsMQKXoAVxxC
	WOoKwNKLpEaWzsV3umlOO7r/x/b8X2eu4eitAi+yEzjefrC5snGNZtBs58ni5calIhvR0fKxtaU3B
	c10d1QjWLH+4p83+h00RlId/TlIHZRmf7rf7Ctx0XU/HaQN6IapdvFisqZXziNSwP5P/ZM5gNmivf
	dRUhocOdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNx4A-0001Oq-6K; Fri, 25 Oct 2019 10:43:34 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNx3v-0001Nt-Nc
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 10:43:21 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iNx3o-00039M-NY; Fri, 25 Oct 2019 12:43:12 +0200
To: Shannon Zhao <shannon.zhao@linux.alibaba.com>
Subject: Re: [PATCH RFC 0/7] Support KVM being compiled as a kernel module on
 arm64
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 25 Oct 2019 11:43:12 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <18653462-38dc-cce1-d0a1-2a7e891163da@linux.alibaba.com>
References: <1571912870-18471-1-git-send-email-shannon.zhao@linux.alibaba.com>
 <8cbd81d6-4ab8-9d2a-5162-8782201cd13d@arm.com>
 <c17e8b0f32902a0811cc6a4ed71e607e@www.loen.fr>
 <18653462-38dc-cce1-d0a1-2a7e891163da@linux.alibaba.com>
Message-ID: <66e983b383d9f99df0007a717e084fe6@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: shannon.zhao@linux.alibaba.com, james.morse@arm.com,
 kvmarm@lists.cs.columbia.edu, suzuki.poulose@arm.com, christoffer.dall@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_034319_936018_A3AB8CBE 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 christoffer.dall@arm.com, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-25 03:48, Shannon Zhao wrote:
> On 2019/10/24 21:41, Marc Zyngier wrote:
>> On 2019-10-24 11:58, James Morse wrote:
>>> Hi Shannon,
>>>
>>> On 24/10/2019 11:27, Shannon Zhao wrote:
>>>> Curently KVM ARM64 doesn't support to compile as a kernel module. 
>>>> It's
>>>> useful to compile KVM as a module.
>>>
>>>> For example, it could reload kvm without rebooting host machine.
>>>
>>> What problem does this solve?
>>>
>>> KVM has some funny requirements that aren't normal for a module. On
>>> v8.0 hardware it must
>>> have an idmap. Modules don't usually expect their code to be
>>> physically contiguous, but
>>> KVM does. KVM influences they way some of the irqchip stuff is set 
>>> up
>>> during early boot
>>> (EOI mode ... not that I understand it).
>> We change the EOImode solely based on how we were booted (EL2 or 
>> not).
>> KVM doesn't directly influences that (it comes in the picture much
>> later).
>>
>>> (I think KVM-as-a-module on x86 is an artifact of how it was 
>>> developed)
>>>
>>>
>>>> This patchset support this feature while there are some 
>>>> limitations
>>>> to be solved. But I just send it out as RFC to get more suggestion 
>>>> and
>>>> comments.
>>>
>>>> Curently it only supports for VHE system due to the hyp code 
>>>> section
>>>> address variables like __hyp_text_start.
>>>
>>> We still need to support !VHE systems, and we need to do it with a
>>> single image.
>>>
>>>
>>>> Also it can't call
>>>> kvm_update_va_mask when loading kvm module and kernel panic with 
>>>> below
>>>> errors. So I make kern_hyp_va into a nop funtion.
>>>
>>> Making this work for the single-Image on v8.0 is going to be a
>>> tremendous amount of work.
>>> What is the payoff?
>> I can only agree. !VHE is something we're going to support for the 
>> foreseeable
>> future (which is roughly equivalent to "forever"), and modules have 
>> properties
>> that are fundamentally incompatible with the way KVM works with 
>> !VHE.
>
> Yes, with this patchset we still support !VHE system with built-in 
> KVM. While for VHE system we could support kernel module and check at 
> module init to avoid wrong usage of kvm module on !VHE systems.

How do you reconcile this with the need to have a single kernel image 
that
is full-featured on all architecture revisions? In your view of the 
world,
it is OK to have a VHE-specific kernel that won't have KVM on a v8.0 
system.
 From my point of view, this simply isn't acceptable.

>> If the only purpose of this work is to be able to swap KVM 
>> implementations
>> in a development environment, then it really isn't worth the effort.
>
> Making KVM as a kernel module has many advantages both for 
> development and real use environment. For example, we can backport and 
> update KVM codes independently and don't need to recompile kernel. Also 
> making KVM as a kernel module is a basic for kvm hot upgrade feature 
> without shutdown VMs and hosts. This is very important for Cloud 
> Service Provider to provides non-stop services for its customers.

The goal is certainly commendable.

But pretending that KVM is fully independent from the rest of the 
kernel is
an intellectual fallacy. Most of the issues that affect KVM at any 
given time
are actually core kernel issues that cannot be solved by just updating 
the
KVM module. You need to update the whole thing, not just the tiny bit 
that
switches between host and guests.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
