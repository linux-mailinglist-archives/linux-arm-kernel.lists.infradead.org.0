Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F041C817
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 14:01:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HaejVu7/k+wVArygP/hNWUcb6hzbQluPYaPhYfNrnAo=; b=Gn707usAAhiFjVe7gvBzBmyte
	0668njsR5Rwo5PGBa63CdPCvosSuMPInkCeJvqlxFy7wmUd+q3vW3p38RzsNRn4l7Rsnv09ND+U+c
	YCUBHVFL3zf06YrimZLitrqOGInF/ePq6DY/bsqJmslMYEGT/10D+PK8Jpfx0w1FPO/9VnAY0PV4F
	3YVzNvzIlV9Tg6vOzB+6zZP7kLzvNq8/x5f8/Qowfzefdb+Tpo+4oKM2Q5Uf8yGLT9wKVR9ynrBd+
	NAoVNmVzBhO2oG6fU0HZBegmS0SToqb9YqPH1c/8A+1WWmuTxyMR7uLtRyWamEUQDdLoJMIdlpKb0
	JgiKvw/+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQW7d-0007rI-1G; Tue, 14 May 2019 12:01:29 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQW7V-0007qc-5T
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 12:01:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 812F1341;
 Tue, 14 May 2019 05:01:18 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0F0373F71E;
 Tue, 14 May 2019 05:01:15 -0700 (PDT)
Subject: Re: [PATCH v2 3/5] arm64: Fix incorrect irqflag restore for priority
 masking
To: Julien Thierry <julien.thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, linux-arm-kernel@lists.infradead.org
References: <1556553607-46531-1-git-send-email-julien.thierry@arm.com>
 <1556553607-46531-4-git-send-email-julien.thierry@arm.com>
 <2b023ba4-b95b-f823-4635-6a75deef5386@arm.com>
 <1739c8ac-9073-798f-ed0b-0dc617c195d6@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <5e8a85f5-c837-3ce8-5830-f3ae7897e326@arm.com>
Date: Tue, 14 May 2019 13:01:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1739c8ac-9073-798f-ed0b-0dc617c195d6@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_050121_212139_7DCD307E 
X-CRM114-Status: GOOD (  22.77  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, Christoffer Dall <christoffer.dall@arm.com>,
 james.morse@arm.com, Oleg Nesterov <oleg@redhat.com>, yuzenghui@huawei.com,
 wanghaibin.wang@huawei.com, liwei391@huawei.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/05/2019 10:25, Julien Thierry wrote:
[...]
>>> +static inline int arch_irqs_disabled_flags(unsigned long flags)
>>> +{
>>> +	int res;
>>> +
>>> +	asm volatile(ALTERNATIVE(
>>> +		"and	%w0, %w1, #" __stringify(PSR_I_BIT) "\n"
>>> +		"nop",
>>> +		"cmp	%w1, #" __stringify(GIC_PRIO_IRQON) "\n"
>>> +		"cset	%w0, ne",
>>> +		ARM64_HAS_IRQ_PRIO_MASKING)
>>> +		: "=&r" (res)
>>> +		: "r" ((int) flags)
>>> +		: "memory");
>>
>> I wonder if this should have "cc" as part of the clobber list.
> 
> Is there any special semantic to "cc" on arm64? All I can find is that
> in the general case it indicates that it is modifying the "flags" register.
> 
> Is your suggestion only for the PMR case? Or is it something that we
> should add regardless of PMR?
> The latter makes sense to me, but for the former, I fail to understand
> why this should affect only PMR.

The PMR case really ought to have have a cc clobber, because who knows 
what this may end up inlined into, and compilers can get pretty 
aggressive with instruction scheduling in ways which leave a live value 
in CPSR across sizeable chunks of other code. It's true that the non-PMR 
case doesn't need it, but the surrounding code still needs to be 
generated to accommodate both possible versions of the alternative. From 
the look of the rest of the patch, the existing pseudo-NMI code has this 
bug in a few places.

Technically you could omit it when ARM64_PSEUDO_NMI is configured out 
entirely, but at that point you may as well omit the whole alternative 
as well. It's probably not worth the bother unless it proves to have a 
significant impact on codegen overall. On which note the memory clobber 
also seems superfluous either way :/

That said, now that I've been looking at it for this long, if the aim is 
just to create a zero/nonzero value then couldn't the PMR case just be 
"eor %w0, %w1, #GIC_PRIO_IRQON" and avoid the need for clobbers at all?

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
