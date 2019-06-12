Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6231042AFE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 17:36:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WvQFWC0hGHEpH8iPdNTwwkcDXJHjOth+8N99JpfoJp4=; b=ojJLbNs6xHYT8v
	nOlgkVLGN07CyCQj8iDQiqHlED9FWEuvXCS5JuR2/sC0kykBnXFYBozpmQYJjMdYZZoVD5YSkOVV2
	nUtOK4J3zLH93CXxN1CxJhUJkUDsh0s5hER2WMmBg6WdWl+hhvUHJu8NOFW+6gU0Y8PWexLT1tLs3
	SqY9DaogX/woG7NtoLRlg5Klmi7qBn44bV/3wrXiAFwh4LQLHIprCLZkewrY7e8wtItfZD9BASztC
	zdvtpcBaaYKc8Q6gbhiK2zmtdr+iPNYArDXUn5OWI/lKDgr+f+zZO7x5iiuBVOpngAPvzDjpF31sN
	+aKp16vRdwlfIfn1MLnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb5I5-0003yd-JQ; Wed, 12 Jun 2019 15:35:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb5Hy-0003yC-Gr
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 15:35:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DFFE7337;
 Wed, 12 Jun 2019 08:35:49 -0700 (PDT)
Received: from C02TF0J2HF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C44B63F73C;
 Wed, 12 Jun 2019 08:35:46 -0700 (PDT)
Date: Wed, 12 Jun 2019 16:35:39 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v4 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.txt
Message-ID: <20190612153538.GL28951@C02TF0J2HF1T.local>
References: <cover.1560339705.git.andreyknvl@google.com>
 <20190612142111.28161-1-vincenzo.frascino@arm.com>
 <20190612142111.28161-2-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612142111.28161-2-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.11.2 (2019-01-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_083550_649027_C203BC1F 
X-CRM114-Status: GOOD (  31.71  )
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

Hi Vincenzo,

Some minor comments below but it looks fine to me overall. Cc'ing
Szabolcs as well since I'd like a view from the libc people.

On Wed, Jun 12, 2019 at 03:21:10PM +0100, Vincenzo Frascino wrote:
> diff --git a/Documentation/arm64/tagged-address-abi.txt b/Documentation/arm64/tagged-address-abi.txt
> new file mode 100644
> index 000000000000..96e149e2c55c
> --- /dev/null
> +++ b/Documentation/arm64/tagged-address-abi.txt
> @@ -0,0 +1,111 @@
> +ARM64 TAGGED ADDRESS ABI
> +========================
> +
> +This document describes the usage and semantics of the Tagged Address
> +ABI on arm64.
> +
> +1. Introduction
> +---------------
> +
> +On arm64 the TCR_EL1.TBI0 bit has been always enabled on the arm64 kernel,
> +hence the userspace (EL0) is allowed to set a non-zero value in the top

I'd be clearer here: "userspace (EL0) is allowed to perform a user
memory access through a 64-bit pointer with a non-zero top byte" (or
something along the lines). Otherwise setting a non-zero top byte is
allowed on any architecture, dereferencing it is a problem.

> +byte but the resulting pointers are not allowed at the user-kernel syscall
> +ABI boundary.
> +
> +This document describes a relaxation of the ABI with which it is possible

"relaxation of the ABI that makes it possible to..."

> +to pass tagged tagged pointers to the syscalls, when these pointers are in
> +memory ranges obtained as described in paragraph 2.

"section 2" is better. There are a lot more paragraphs.

> +
> +Since it is not desirable to relax the ABI to allow tagged user addresses
> +into the kernel indiscriminately, arm64 provides a new sysctl interface
> +(/proc/sys/abi/tagged_addr) that is used to prevent the applications from
> +enabling the relaxed ABI and a new prctl() interface that can be used to
> +enable or disable the relaxed ABI.
> +
> +The sysctl is meant also for testing purposes in order to provide a simple
> +way for the userspace to verify the return error checking of the prctl()
> +command without having to reconfigure the kernel.
> +
> +The ABI properties are inherited by threads of the same application and
> +fork()'ed children but cleared when a new process is spawn (execve()).

"spawned".

I guess you could drop these three paragraphs here and mention the
inheritance properties when introducing the prctl() below. You can also
mention the global sysctl switch after the prctl() was introduced.

> +
> +2. ARM64 Tagged Address ABI
> +---------------------------
> +
> +From the kernel syscall interface prospective, we define, for the purposes
> +of this document, a "valid tagged pointer" as a pointer that either it has

"either has" (no 'it') sounds slightly better but I'm not a native
English speaker either.

> +a zero value set in the top byte or it has a non-zero value, it is in memory
> +ranges privately owned by a userspace process and it is obtained in one of
> +the following ways:
> +  - mmap() done by the process itself, where either:
> +    * flags = MAP_PRIVATE | MAP_ANONYMOUS
> +    * flags = MAP_PRIVATE and the file descriptor refers to a regular
> +      file or "/dev/zero"
> +  - a mapping below sbrk(0) done by the process itself
> +  - any memory mapped by the kernel in the process's address space during
> +    creation and following the restrictions presented above (i.e. data, bss,
> +    stack).
> +
> +The ARM64 Tagged Address ABI is an opt-in feature, and an application can
> +control it using the following prctl()s:
> +  - PR_SET_TAGGED_ADDR_CTRL: can be used to enable the Tagged Address ABI.

enable or disable (not sure we need the latter but it doesn't heart).

I'd add the arg2 description here as well.

> +  - PR_GET_TAGGED_ADDR_CTRL: can be used to check the status of the Tagged
> +                             Address ABI.
> +
> +As a consequence of invoking PR_SET_TAGGED_ADDR_CTRL prctl() by an applications,
> +the ABI guarantees the following behaviours:
> +
> +  - Every current or newly introduced syscall can accept any valid tagged
> +    pointers.
> +
> +  - If a non valid tagged pointer is passed to a syscall then the behaviour
> +    is undefined.
> +
> +  - Every valid tagged pointer is expected to work as an untagged one.
> +
> +  - The kernel preserves any valid tagged pointers and returns them to the
> +    userspace unchanged in all the cases except the ones documented in the
> +    "Preserving tags" paragraph of tagged-pointers.txt.

I'd think we need to qualify the context here in which the kernel
preserves the tagged pointers. Did you mean on the syscall return?

> +
> +A definition of the meaning of tagged pointers on arm64 can be found in:
> +Documentation/arm64/tagged-pointers.txt.
> +
> +3. ARM64 Tagged Address ABI Exceptions
> +--------------------------------------
> +
> +The behaviours described in paragraph 2, with particular reference to the

"section 2"

> +acceptance by the syscalls of any valid tagged pointer are not applicable
> +to the following cases:
> +  - mmap() addr parameter.
> +  - mremap() new_address parameter.
> +  - prctl_set_mm() struct prctl_map fields.
> +  - prctl_set_mm_map() struct prctl_map fields.
> +
> +4. Example of correct usage
> +---------------------------
> +
> +void main(void)
> +{
> +	static int tbi_enabled = 0;
> +	unsigned long tag = 0;
> +
> +	char *ptr = mmap(NULL, PAGE_SIZE, PROT_READ | PROT_WRITE,
> +			 MAP_ANONYMOUS, -1, 0);
> +
> +	if (prctl(PR_SET_TAGGED_ADDR_CTRL, PR_TAGGED_ADDR_ENABLE,
> +		  0, 0, 0) == 0)
> +		tbi_enabled = 1;
> +
> +	if (!ptr)
> +		return -1;
> +
> +	if (tbi_enabled)
> +		tag = rand() & 0xff;
> +
> +	ptr = (char *)((unsigned long)ptr | (tag << TAG_SHIFT));
> +
> +	*ptr = 'a';
> +
> +	...
> +}
> +
> -- 
> 2.21.0

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
