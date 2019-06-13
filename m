Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA60B43528
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 12:15:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VfU8HxjkVJesQnj39NO98PyefyhVjLL7nXAwmeoN0WI=; b=QLM5sDkQArxP3j
	CQJGytt+eH5VslZOxTEO9Bs4serd1HAJ4F/2pemMc23ck52SIjCRES/bmr0lwgFDHMdZPiTusRR7U
	rc75Wy7qUxPxNG52fLsMDAjHVjCMXaks60/OTsB4Agr+vFb3v25fGVb8Ddp2UTNUT+iRPcOIwUpK4
	90vtY4h/8RhQB19wvjKdxJ+XhAN+82YXQfEsJ7gX+WLadgBEBCwTKoacE2SRF9WFUL5B1ebdEyjtp
	d8eU7EXZDERgv7tu+JbISDC4N+lOp3UFWHbuMV49oij4u2qd8tM7/mDILzcnwyTIj1WLEt6tRqtPv
	HNGPhQK5TDyXc1FiEVGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbMls-0002ck-Ej; Thu, 13 Jun 2019 10:15:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbMlf-0002cI-Tg
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 10:15:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D58E367;
 Thu, 13 Jun 2019 03:15:37 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F29693F694;
 Thu, 13 Jun 2019 03:17:18 -0700 (PDT)
Subject: Re: [PATCH v4 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.txt
To: Catalin Marinas <catalin.marinas@arm.com>
References: <cover.1560339705.git.andreyknvl@google.com>
 <20190612142111.28161-1-vincenzo.frascino@arm.com>
 <20190612142111.28161-2-vincenzo.frascino@arm.com>
 <20190612153538.GL28951@C02TF0J2HF1T.local>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <141c740a-94c2-2243-b6d1-b44ffee43791@arm.com>
Date: Thu, 13 Jun 2019 11:15:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190612153538.GL28951@C02TF0J2HF1T.local>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_031540_050103_77F6FC2E 
X-CRM114-Status: GOOD (  32.72  )
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-kselftest@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On 12/06/2019 16:35, Catalin Marinas wrote:
> Hi Vincenzo,
> 
> Some minor comments below but it looks fine to me overall. Cc'ing
> Szabolcs as well since I'd like a view from the libc people.
> 

Thanks for this, I saw Szabolcs comments.

> On Wed, Jun 12, 2019 at 03:21:10PM +0100, Vincenzo Frascino wrote:
>> diff --git a/Documentation/arm64/tagged-address-abi.txt b/Documentation/arm64/tagged-address-abi.txt
>> new file mode 100644
>> index 000000000000..96e149e2c55c
>> --- /dev/null
>> +++ b/Documentation/arm64/tagged-address-abi.txt
>> @@ -0,0 +1,111 @@
>> +ARM64 TAGGED ADDRESS ABI
>> +========================
>> +
>> +This document describes the usage and semantics of the Tagged Address
>> +ABI on arm64.
>> +
>> +1. Introduction
>> +---------------
>> +
>> +On arm64 the TCR_EL1.TBI0 bit has been always enabled on the arm64 kernel,
>> +hence the userspace (EL0) is allowed to set a non-zero value in the top
> 
> I'd be clearer here: "userspace (EL0) is allowed to perform a user
> memory access through a 64-bit pointer with a non-zero top byte" (or
> something along the lines). Otherwise setting a non-zero top byte is
> allowed on any architecture, dereferencing it is a problem.
> 

Ok.

>> +byte but the resulting pointers are not allowed at the user-kernel syscall
>> +ABI boundary.
>> +
>> +This document describes a relaxation of the ABI with which it is possible
> 
> "relaxation of the ABI that makes it possible to..."
> 
>> +to pass tagged tagged pointers to the syscalls, when these pointers are in
>> +memory ranges obtained as described in paragraph 2.
> 
> "section 2" is better. There are a lot more paragraphs.
> 

Agree.

>> +
>> +Since it is not desirable to relax the ABI to allow tagged user addresses
>> +into the kernel indiscriminately, arm64 provides a new sysctl interface
>> +(/proc/sys/abi/tagged_addr) that is used to prevent the applications from
>> +enabling the relaxed ABI and a new prctl() interface that can be used to
>> +enable or disable the relaxed ABI.
>> +
>> +The sysctl is meant also for testing purposes in order to provide a simple
>> +way for the userspace to verify the return error checking of the prctl()
>> +command without having to reconfigure the kernel.
>> +
>> +The ABI properties are inherited by threads of the same application and
>> +fork()'ed children but cleared when a new process is spawn (execve()).
> 
> "spawned".
> 
> I guess you could drop these three paragraphs here and mention the
> inheritance properties when introducing the prctl() below. You can also
> mention the global sysctl switch after the prctl() was introduced.
> 

I will move the last two (rewording them) to the _section_ 2, but I would still
prefer the Introduction to give an overview of the solution as well.

>> +
>> +2. ARM64 Tagged Address ABI
>> +---------------------------
>> +
>> +From the kernel syscall interface prospective, we define, for the purposes
>> +of this document, a "valid tagged pointer" as a pointer that either it has
> 
> "either has" (no 'it') sounds slightly better but I'm not a native
> English speaker either.
> 
>> +a zero value set in the top byte or it has a non-zero value, it is in memory
>> +ranges privately owned by a userspace process and it is obtained in one of
>> +the following ways:
>> +  - mmap() done by the process itself, where either:
>> +    * flags = MAP_PRIVATE | MAP_ANONYMOUS
>> +    * flags = MAP_PRIVATE and the file descriptor refers to a regular
>> +      file or "/dev/zero"
>> +  - a mapping below sbrk(0) done by the process itself
>> +  - any memory mapped by the kernel in the process's address space during
>> +    creation and following the restrictions presented above (i.e. data, bss,
>> +    stack).
>> +
>> +The ARM64 Tagged Address ABI is an opt-in feature, and an application can
>> +control it using the following prctl()s:
>> +  - PR_SET_TAGGED_ADDR_CTRL: can be used to enable the Tagged Address ABI.
> 
> enable or disable (not sure we need the latter but it doesn't heart).
> 
> I'd add the arg2 description here as well.
> 

Good point I missed this.

>> +  - PR_GET_TAGGED_ADDR_CTRL: can be used to check the status of the Tagged
>> +                             Address ABI.
>> +
>> +As a consequence of invoking PR_SET_TAGGED_ADDR_CTRL prctl() by an applications,
>> +the ABI guarantees the following behaviours:
>> +
>> +  - Every current or newly introduced syscall can accept any valid tagged
>> +    pointers.
>> +
>> +  - If a non valid tagged pointer is passed to a syscall then the behaviour
>> +    is undefined.
>> +
>> +  - Every valid tagged pointer is expected to work as an untagged one.
>> +
>> +  - The kernel preserves any valid tagged pointers and returns them to the
>> +    userspace unchanged in all the cases except the ones documented in the
>> +    "Preserving tags" paragraph of tagged-pointers.txt.
> 
> I'd think we need to qualify the context here in which the kernel
> preserves the tagged pointers. Did you mean on the syscall return?
> 

What this means is that on syscall return the tags are preserved, but if for
example you have tagged pointers inside siginfo_t, they will not because
according to tagged-pointers.txt non-zero tags are not preserved when delivering
signals.

>> +
>> +A definition of the meaning of tagged pointers on arm64 can be found in:
>> +Documentation/arm64/tagged-pointers.txt.
>> +
>> +3. ARM64 Tagged Address ABI Exceptions
>> +--------------------------------------
>> +
>> +The behaviours described in paragraph 2, with particular reference to the
> 
> "section 2"
> 
>> +acceptance by the syscalls of any valid tagged pointer are not applicable
>> +to the following cases:
>> +  - mmap() addr parameter.
>> +  - mremap() new_address parameter.
>> +  - prctl_set_mm() struct prctl_map fields.
>> +  - prctl_set_mm_map() struct prctl_map fields.
>> +
>> +4. Example of correct usage
>> +---------------------------
>> +
>> +void main(void)
>> +{
>> +	static int tbi_enabled = 0;
>> +	unsigned long tag = 0;
>> +
>> +	char *ptr = mmap(NULL, PAGE_SIZE, PROT_READ | PROT_WRITE,
>> +			 MAP_ANONYMOUS, -1, 0);
>> +
>> +	if (prctl(PR_SET_TAGGED_ADDR_CTRL, PR_TAGGED_ADDR_ENABLE,
>> +		  0, 0, 0) == 0)
>> +		tbi_enabled = 1;
>> +
>> +	if (!ptr)
>> +		return -1;
>> +
>> +	if (tbi_enabled)
>> +		tag = rand() & 0xff;
>> +
>> +	ptr = (char *)((unsigned long)ptr | (tag << TAG_SHIFT));
>> +
>> +	*ptr = 'a';
>> +
>> +	...
>> +}
>> +
>> -- 
>> 2.21.0
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
