Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B49ECFE81
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 19:10:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETRidqX//q8uR0mk26ZNv6rxQwi2Tt3ESE9gjgNPUbU=; b=kFgc82X3bquqRw
	vGWiIvh4O8IdZgxYdAnYGajo6BVr9Bgv3wTXZp5w5fxJGllLRRXrcVfTdTs32xXKa2ooofH01AJIQ
	iR3LIxCBPdBwzqcfDdcc+xhser3ggxcmdH5ba/fPlOqnFQtsbbb5SJm9Vu5NOdeyLGlIsQbXuCzqT
	pS3vK3ATF046wYpXxwOk/reRYPNqp26StPVGBfc+BnsyJSX2LHi5ir/cj6uvGrFweJ87Na9CRBSSW
	IfJm7VnWBeHCyzrJQbDCtOVd81aK6mUQvtrnlUefptC5OfyV+PgE4gj1lqv70m8wpMVGAvDZgrkGs
	3pjN3zxxaUcVtZ01Mg+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLWGd-0006tl-4o; Tue, 30 Apr 2019 17:10:07 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLWGS-0006tL-3j
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 17:09:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B845374;
 Tue, 30 Apr 2019 10:09:55 -0700 (PDT)
Received: from [10.1.196.42] (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 66A103F5C1;
 Tue, 30 Apr 2019 10:09:52 -0700 (PDT)
Subject: Re: [PATCH v2 3/6] x86: clean up _TIF_SYSCALL_EMU handling using
 ptrace_syscall_enter hook
To: Andy Lutomirski <luto@kernel.org>
References: <20190318104925.16600-1-sudeep.holla@arm.com>
 <20190318104925.16600-4-sudeep.holla@arm.com>
 <CALCETrXEebRqX0W8MuS0SeaMDpEO5KdS3k7id279hZgHrmc8yA@mail.gmail.com>
From: Sudeep Holla <sudeep.holla@arm.com>
Organization: ARM
Message-ID: <a1de9e18-95f6-c9a4-0d60-9f61b5a2f108@arm.com>
Date: Tue, 30 Apr 2019 18:09:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CALCETrXEebRqX0W8MuS0SeaMDpEO5KdS3k7id279hZgHrmc8yA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_100956_586895_9E1B0694 
X-CRM114-Status: GOOD (  16.57  )
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
Cc: Haibo Xu <haibo.xu@arm.com>, Steve Capper <Steve.Capper@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jeff Dike <jdike@addtoit.com>,
 X86 ML <x86@kernel.org>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Richard Weinberger <richard@nod.at>, Ingo Molnar <mingo@redhat.com>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Sudeep Holla <sudeep.holla@arm.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, Bin Lu <bin.lu@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 30/04/2019 17:46, Andy Lutomirski wrote:
> On Mon, Mar 18, 2019 at 3:49 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>>
>> Now that we have a new hook ptrace_syscall_enter that can be called from
>> syscall entry code and it handles PTRACE_SYSEMU in generic code, we
>> can do some cleanup using the same in syscall_trace_enter.
>>
>> Further the extra logic to find single stepping PTRACE_SYSEMU_SINGLESTEP
>> in syscall_slow_exit_work seems unnecessary. Let's remove the same.
>>
> 
> Unless the patch set contains a selftest that exercises all the
> interesting cases here, NAK.  To be clear, there needs to be a test
> that passes on an unmodified kernel and still passes on a patched
> kernel.  And that test case needs to *fail* if, for example, you force
> "emulated" to either true or false rather than reading out the actual
> value.
> 

Tested using tools/testing/selftests/x86/ptrace_syscall.c

Also v3 doesn't change any logic or additional call to new function as
in v2. It's just simple cleanup as suggested by Oleg.

-- 
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
