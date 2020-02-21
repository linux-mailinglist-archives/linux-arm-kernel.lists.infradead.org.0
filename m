Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 697241680FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 15:58:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJIBR3woimVI1Zxqs3S0VmdhmcOmjunvFHD79br6Ass=; b=hwDlF2RrK+LnK6
	wHn3xrSmmQgCVxfMLdn3A93bZg7dC3tunn1650u95ZnyXBQD8IBkRGdVMg4hYVyAO/NXmc9SGNSRs
	G9eAjGZknKVF4GnX+GQ/hrlk/bWkqfEkHjXV7mWtVOARfl3ytxKNh16T04oTdVyXBE6FyCAY+iAAd
	GzTtWJZiFnZLgCwG8E3o3vuHXMhf0O6B+XFjhrGx3xEXcHcvUh1JT+ECb8Q9eokjTLRturR2PAL1Q
	VqNOjVPVfj1thrlUAUbF65aO2vpU7GKU7MYBtdQJxgaCp+tqHx0gIvii2APDNZ3umIxzPwE6sh4bx
	no2lKaTgKvwn7pi6YInA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j59kf-0006Y4-QK; Fri, 21 Feb 2020 14:58:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j59kX-0006Xc-7O
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 14:57:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 43E641FB;
 Fri, 21 Feb 2020 06:57:51 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 26EAA3F703;
 Fri, 21 Feb 2020 06:57:50 -0800 (PST)
Subject: Re: [PATCH 0/3] KVM: arm64: Ask the compiler to __always_inline
 functions used by KVM at HYP
To: Marc Zyngier <maz@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <20200220165839.256881-1-james.morse@arm.com>
 <cb56f509ea0a4a9e1809af76f319daa2@kernel.org>
From: James Morse <james.morse@arm.com>
Message-ID: <228ef9d9-1ded-05ee-22e5-0158a0e47d82@arm.com>
Date: Fri, 21 Feb 2020 14:57:48 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <cb56f509ea0a4a9e1809af76f319daa2@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_065753_308480_56548374 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org, Sami Tolvanen <samitolvanen@google.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 21/02/2020 12:55, Marc Zyngier wrote:
> On 2020-02-20 16:58, James Morse wrote:
>> It turns out KVM relies on the inline hint being honoured by the compiler
>> in quite a few more places than expected. Something about the Shadow Call
>> Stack support[0] causes the compiler to avoid inline-ing and to place
>> these functions outside the __hyp_text. This ruins KVM's day.
>>
>> Add the simon-says __always_inline annotation to all the static
>> inlines that KVM calls from HYP code.
>>
>> This series based on v5.6-rc2.
> 
> Many thanks for going through all this.
> 
> I'm happy to take it if Catalin or Will ack the arm64 patches.
> It case we decide to go the other way around:
> 
> Acked-by: Marc Zyngier <maz@kernel.org>
> 
> One thing I'd like to look into though is a compile-time check that
> nothing in the hyp_text section has a reference to a non-hyp_text
> symbol.

Heh, that hypothetical tool would choke on things like arch/arm64/kvm/hyp/tlb.c:
| static void __hyp_text __tlb_switch_to_guest_vhe(...)
| {

[...]

|	local_irq_save(cxt->flags);

which calls trace_hardirqs_off() ... which is absolutely fine because this only happens on
VHE.

To do it purely with the section information, you'd need to separate all the VHE code...
(maybe as a debug option that only runs when VHE is turned off?)


> We already have checks around non-init symbols pointing to init symbols,
> and I was wondering if we could reuse this for fun and profit...

I think objtool is the tool-of-the-future that can do this. You need something that
believes everything behind has_vhe() is unreachable...


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
