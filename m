Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F72B15F292
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 19:13:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4DH5uFJ3WXGG3sYZEwp7Iy+mpRHuBvLej3V0wFYg2E=; b=mnAZal1dWCZpfV
	CPmrgm5fu2geZMBmX6Y5PXYM9Xukr0DZRAKea/QAaNSCik0/YRcclH+/S7xmUxKjEZKjJvDI3mQcw
	0dvZl6S0WWUk5ZZgLTOUBpU4NbG/j8Cl8ixkbI0eSmtu8wO7CipMxUJeVFjoDGo72mrh//BEJnguJ
	o2cEvSeDc2BwXdmIbNlDP8KfnliFHfPEfRSRs6++rcd3ufJJ6Zq7wLWVjeX9LNDBm5c2daBA9tC23
	JAsCEMYGpzxvsdd9V0djlZ3UYfpypojAZHii4ofMX2yMMVceYrhErCLpK/dnOXu3BYp+dOiXhOK81
	kKHFQCzdwEJ1MQcLJwmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2fT5-0000jT-EB; Fri, 14 Feb 2020 18:13:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2fSu-0000hr-BO
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 18:13:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3D5F6328;
 Fri, 14 Feb 2020 10:13:19 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B62A53F68E;
 Fri, 14 Feb 2020 10:13:16 -0800 (PST)
Subject: Re: [PATCH v7 11/11] arm64: scs: add shadow stacks for SDEI
To: Sami Tolvanen <samitolvanen@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-12-samitolvanen@google.com>
 <dbb090ae-d1ec-cb1a-0710-e1d3cfe762b9@arm.com>
 <CABCJKudpeTDa4Ro1aCsCJ-=x97SG0qu5LGpj9ywj1aLOtboNkQ@mail.gmail.com>
From: James Morse <james.morse@arm.com>
Message-ID: <a0ca5766-fb76-a498-ab2f-3015f1335fe9@arm.com>
Date: Fri, 14 Feb 2020 18:13:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CABCJKudpeTDa4Ro1aCsCJ-=x97SG0qu5LGpj9ywj1aLOtboNkQ@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_101324_434558_5BF222F0 
X-CRM114-Status: GOOD (  14.06  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sami,

On 12/02/2020 20:59, Sami Tolvanen wrote:
> On Tue, Feb 11, 2020 at 5:57 AM James Morse <james.morse@arm.com> wrote:
>> On 28/01/2020 18:49, Sami Tolvanen wrote:
>>> This change adds per-CPU shadow call stacks for the SDEI handler.
>>> Similarly to how the kernel stacks are handled, we add separate shadow
>>> stacks for normal and critical events.
>>
>> Reviewed-by: James Morse <james.morse@arm.com>
>> Tested-by: James Morse <james.morse@arm.com>

>>> diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
>>> index eaadf5430baa..dddb7c56518b 100644
>>> --- a/arch/arm64/kernel/scs.c
>>> +++ b/arch/arm64/kernel/scs.c
>>
>>> +static int scs_alloc_percpu(unsigned long * __percpu *ptr, int cpu)
>>> +{
>>> +     unsigned long *p;
>>> +
>>> +     p = __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
>>> +                              VMALLOC_START, VMALLOC_END,
>>> +                              GFP_SCS, PAGE_KERNEL,
>>> +                              0, cpu_to_node(cpu),
>>> +                              __builtin_return_address(0));
>>
>> (What makes this arch specific? arm64 has its own calls like this for the regular vmap
>> stacks because it plays tricks with the alignment. Here the alignment requirement comes
>> from the core SCS code... Would another architecture implement these
>> scs_alloc_percpu()/scs_free_percpu() differently?)
> 
> You are correct, these aren't necessarily specific to arm64. However,
> right now, we are not allocating per-CPU shadow stacks anywhere else,
> so this was a natural place for the helper functions.

Fair enough,


> Would you prefer me to move these to kernel/scs.c instead?

I have no preference, as long as they don't get duplicated later!


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
