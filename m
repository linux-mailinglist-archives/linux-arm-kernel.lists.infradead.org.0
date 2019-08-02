Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A857F71F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 14:43:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kN0NjURT8up+hAwV78ywW/aPd9BvvYljph/FNfc+3Ic=; b=B9jDL01c9uBaDI
	AyRyfAcPSFi3+SNls4PSVfOEFOJxkK+Cuy4JMkVfacS17e4lag+4f2mDNh1uZNP32aoQIfP1nnsJg
	zRaXdCZEnhfpMM9Wt+OJ6EOQj+beSQHXsgJ6ZWp5pVOmi8rJaz2H0Xa57n6SEw929POyMzj49HjNq
	maFEiI2SMX3JSIkhKFzckENKLUeTNYezRIpP4sDyogUPvnt1Ni61llYKGOQtuPB1OyWhXnZKJi4sQ
	DLZg/SGNa45oSoNY2nEcv7ycUkzg8j6hBgX8YJyQSPFjC6puQ8Pcw+T6Kzb4ZcXR4XZGx1M0hTtx6
	RUvUrpSv/KHe7PUD7jGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htWu6-0005d2-0J; Fri, 02 Aug 2019 12:43:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htWty-0005cR-Qw
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 12:43:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1AC431570;
 Fri,  2 Aug 2019 05:43:16 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 41B503F71F;
 Fri,  2 Aug 2019 05:43:15 -0700 (PDT)
Subject: Re: [PATCH 2/2] arm64: entry: Move ct_user_exit before we can take
 another exception
To: Will Deacon <will@kernel.org>
References: <20190801154150.195959-1-james.morse@arm.com>
 <20190801154150.195959-3-james.morse@arm.com>
 <20190801163919.jlpvy47pknqx75ze@willie-the-truck>
From: James Morse <james.morse@arm.com>
Message-ID: <c1119d68-b7a2-e65d-64ca-be985ea6ab69@arm.com>
Date: Fri, 2 Aug 2019 13:43:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190801163919.jlpvy47pknqx75ze@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_054318_928807_0964F79A 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 01/08/2019 17:39, Will Deacon wrote:
> On Thu, Aug 01, 2019 at 04:41:50PM +0100, James Morse wrote:
>> When taking an exception from EL0 we unmask exceptions before calling
>> ct_user_exit. This means we could take an interrupt or be single-stepped
>> in the gap. The entry from EL1 code sees that we took an exception from
>> the kernel, whereas the context_tracking code believes we are still in
>> user-space.
>>
>> To keep these things consistent, move the ct_user_exit calls before
>> any unmask of exceptions.

>> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
>> index 28681034d599..88f4ab21cb66 100644
>> --- a/arch/arm64/kernel/entry.S
>> +++ b/arch/arm64/kernel/entry.S
>> @@ -792,8 +792,8 @@ el0_cp15:
>>  	/*
>>  	 * Trapped CP15 (MRC, MCR, MRRC, MCRR) instructions
>>  	 */
>> -	enable_daif
>>  	ct_user_exit
>> +	enable_daif
>>  	mov	x0, x25
>>  	mov	x1, sp
>>  	bl	do_cp15instr
>> @@ -805,8 +805,8 @@ el0_da:
>>  	 * Data abort handling
>>  	 */
>>  	mrs	x26, far_el1
>> -	enable_daif
>>  	ct_user_exit
>> +	enable_daif

> This strikes me as a bit dodgy, since we end up in context_tracking_exit(),
> which calls local_irq_{save,restore}() and I think our accounting is
> probably off at this point.

Huh, I'm sure I had all those options turned on...

~

local_irq_save() calls trace_hardirqs_off() unconditionally, whereas local_irq_restore()
uses the saved flags to decide interrupts aren't enabled by this restore call, so the
accounting ends up being correct. It calls trace_hardirqs_off() a second time.

The asserts check trace_hardirqs_off() is called with interrupts masked, which it is in
this case.


> I think we need to call via
> user_{enter,exit}_irqoff() instead to make this work.

Sure, that would be clearer.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
