Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5300949CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 18:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=88rJk95gVRbeEn7t+4MtROb66jFYmny2wAgQSH3IcPw=; b=OeLsIrWn+dYce2
	N4rrVN9s7SYTWZ/2VYVxuLFG4AnUSTSfv/yfqreFPmqqz6aN76BN/IZ1nZ8DQ83tdNihYhazfd757
	Qi8lfGUpsoHkyszyO03oLtU8MpYl0Hz7PzXeyJuQ6ebONawMfAHRzP5rC14P845XMiBtSlAjHzvv6
	at6ionVpofYy4ZQ+twcx0N8ldfpyalby2EJ5rske/kap7y4AOCcNx4clHoesU8sNp1+BQTpvOd8NZ
	lq0wEptIhqwjDfsvpxljUIRZ0qYd0wTxqCZr3K5e9bbUuLDt3S9U7JAD5TVQo1xLNahoeGPnwqgM/
	fPbZX+enPoBTRAr2S+5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzkTr-00022V-NU; Mon, 19 Aug 2019 16:26:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzkTj-00021N-13
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 16:25:56 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E2E322CEA;
 Mon, 19 Aug 2019 16:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566231954;
 bh=dreJjOF/L6ef6NrZc3iuTz3726uHjZ7gkP0YJGdGHG0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Gqn+tAYqBxyeyvPgLjWRmc6kokYMr8nSG21/SIX3emygHhXCZPb5up2OdCUnMqyJj
 lA6HJZa6khq/ZWrH+cXiwTve9D4s9FTAsov1BewhiVi5qi0Stubtbki018gVCGxfPg
 q9T4xgtaAZO0aBq+CmaHiJ746uzptEAa1tXpGOlo=
Date: Mon, 19 Aug 2019 17:25:49 +0100
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v8 4/5] arm64: Define
 Documentation/arm64/tagged-address-abi.rst
Message-ID: <20190819162548.c7udab6g6i662qaa@willie-the-truck>
References: <20190815154403.16473-1-catalin.marinas@arm.com>
 <20190815154403.16473-5-catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815154403.16473-5-catalin.marinas@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_092555_110495_938C6143 
X-CRM114-Status: GOOD (  28.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Will Deacon <will.deacon@arm.com>,
 Dave P Martin <Dave.Martin@arm.com>, linux-mm@kvack.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Dave Hansen <dave.hansen@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 04:44:02PM +0100, Catalin Marinas wrote:
> From: Vincenzo Frascino <vincenzo.frascino@arm.com>
> 
> On AArch64 the TCR_EL1.TBI0 bit is set by default, allowing userspace
> (EL0) to perform memory accesses through 64-bit pointers with a non-zero
> top byte. Introduce the document describing the relaxation of the
> syscall ABI that allows userspace to pass certain tagged pointers to
> kernel syscalls.
> 
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Andrey Konovalov <andreyknvl@google.com>
> Cc: Szabolcs Nagy <szabolcs.nagy@arm.com>
> Cc: Kevin Brodsky <kevin.brodsky@arm.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Co-developed-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  Documentation/arm64/tagged-address-abi.rst | 155 +++++++++++++++++++++
>  1 file changed, 155 insertions(+)
>  create mode 100644 Documentation/arm64/tagged-address-abi.rst
> 
> diff --git a/Documentation/arm64/tagged-address-abi.rst b/Documentation/arm64/tagged-address-abi.rst
> new file mode 100644
> index 000000000000..8808337775d6
> --- /dev/null
> +++ b/Documentation/arm64/tagged-address-abi.rst
> @@ -0,0 +1,155 @@
> +==========================
> +AArch64 TAGGED ADDRESS ABI
> +==========================
> +
> +Authors: Vincenzo Frascino <vincenzo.frascino@arm.com>
> +         Catalin Marinas <catalin.marinas@arm.com>
> +
> +Date: 15 August 2019
> +
> +This document describes the usage and semantics of the Tagged Address
> +ABI on AArch64 Linux.
> +
> +1. Introduction
> +---------------
> +
> +On AArch64 the TCR_EL1.TBI0 bit is set by default, allowing userspace
> +(EL0) to perform memory accesses through 64-bit pointers with a non-zero
> +top byte. This document describes the relaxation of the syscall ABI that
> +allows userspace to pass certain tagged pointers to kernel syscalls.
> +
> +2. AArch64 Tagged Address ABI
> +-----------------------------
> +
> +From the kernel syscall interface perspective and for the purposes of
> +this document, a "valid tagged pointer" is a pointer with a potentially
> +non-zero top-byte that references an address in the user process address
> +space obtained in one of the following ways:
> +
> +- mmap() done by the process itself (or its parent), where either:
> +
> +  - flags have the **MAP_ANONYMOUS** bit set
> +  - the file descriptor refers to a regular file (including those
> +    returned by memfd_create()) or **/dev/zero**

nit: but the markup is pretty inconsistent throughout. Why is /dev/zero
bold, but not memfd_create()? I think they would both be better off in
typewriter font, if that's a thing in rst.

> +- brk() system call done by the process itself (i.e. the heap area
> +  between the initial location of the program break at process creation
> +  and its current location).
> +
> +- any memory mapped by the kernel in the address space of the process
> +  during creation and with the same restrictions as for mmap() above
> +  (e.g. data, bss, stack).
> +
> +The AArch64 Tagged Address ABI has two stages of relaxation depending
> +how the user addresses are used by the kernel:
> +
> +1. User addresses not accessed by the kernel but used for address space
> +   management (e.g. mmap(), mprotect(), madvise()). The use of valid
> +   tagged pointers in this context is always allowed.
> +
> +2. User addresses accessed by the kernel (e.g. write()). This ABI
> +   relaxation is disabled by default and the application thread needs to
> +   explicitly enable it via **prctl()** as follows:
> +
> +   - **PR_SET_TAGGED_ADDR_CTRL**: enable or disable the AArch64 Tagged
> +     Address ABI for the calling thread.
> +
> +     The (unsigned int) arg2 argument is a bit mask describing the
> +     control mode used:
> +
> +     - **PR_TAGGED_ADDR_ENABLE**: enable AArch64 Tagged Address ABI.
> +       Default status is disabled.
> +
> +     Arguments arg3, arg4, and arg5 must be 0.
> +
> +   - **PR_GET_TAGGED_ADDR_CTRL**: get the status of the AArch64 Tagged
> +     Address ABI for the calling thread.
> +
> +     Arguments arg2, arg3, arg4, and arg5 must be 0.
> +
> +   The ABI properties described above are thread-scoped, inherited on
> +   clone() and fork() and cleared on exec().
> +
> +   Calling prctl(PR_SET_TAGGED_ADDR_CTRL, PR_TAGGED_ADDR_ENABLE, 0, 0, 0)
> +   returns -EINVAL if the AArch64 Tagged Address ABI is globally disabled
> +   by sysctl abi.tagged_addr_disabled=1. The default sysctl
> +   abi.tagged_addr_disabled configuration is 0.
> +
> +When the AArch64 Tagged Address ABI is enabled for a thread, the
> +following behaviours are guaranteed:
> +
> +- All syscalls except the cases mentioned in section 3 can accept any
> +  valid tagged pointer.
> +
> +- The syscall behaviour is undefined for invalid tagged pointers: it may
> +  result in an error code being returned, a (fatal) signal being raised,
> +  or other modes of failure.
> +
> +- A valid tagged pointer has the same semantics as the corresponding
> +  untagged pointer.

nit, but I'd reword this last bullet slightly to say:

  - The syscall behaviour for a valid tagged pointer is the same as for
    the corresponding untagged pointer.

Since that flows better wrt the previous bullet and is explicit about
syscall behaviour, rather than overall semantics.

> +
> +A definition of the meaning of tagged pointers on AArch64 can be found
> +in Documentation/arm64/tagged-pointers.rst.
> +
> +3. AArch64 Tagged Address ABI Exceptions
> +-----------------------------------------
> +
> +The following system call parameters must be untagged regardless of the
> +ABI relaxation:
> +
> +- prctl() other than arguments pointing to user structures to be
> +  accessed by the kernel.
> +
> +- ioctl() other than arguments pointing to user structures to be
> +  accessed by the kernel.

I agree with Kevin that we should tighten this up. How about:

  - ... other than pointers to user data either passed directly or
    indirectly as arguments to be accessed by the kernel.

?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
