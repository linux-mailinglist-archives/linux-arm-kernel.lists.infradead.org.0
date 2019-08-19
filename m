Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 618F694923
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 17:51:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FbFR7wWWSR6zBPtTx+gUpBlb1RMtJykQD6d6fgE6qjw=; b=M648TsyVN677ve
	wTJ4d8SN4Hm2+j8CiGFWXJDWvJuQH/tJFZmqp0RWARU7bncF0DjBR29I3iD38Jp/HNoXb/sTviltQ
	N9NyExVlC9zjL5jhm104l4LwqAMtdDwzanmIl5+NWOY5aEIXAx+x17+JQBUC53LUbBCaR2rDmDzqb
	gtQee4ByOpczZ4/PLhiwRHqmRxEUwwCZtqleBkxMI0LrlhRQEitzw+0FgWCdU7XZWk/RWYY8kk2hS
	Pf20+SN+i7sCGytOZw+6GDHp3u9nAfJV8n6+z7hEE0s/RoZihE3etu3BnbKHV9AL9g+zXeGS6zp37
	RGK1zfUmyrmu1KwMUd5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzjwD-0005o0-52; Mon, 19 Aug 2019 15:51:17 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzjw5-0005nP-JC
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 15:51:11 +0000
Received: by mail-pg1-x541.google.com with SMTP id x15so1446433pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 08:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3aT4hIoGoOxTITnPRxvZVZEP0ZMplvO3FsPS6VTLrIE=;
 b=PFK+Euq4eAv4stee6fofZ6gDmqlftrBH/YMhCED0VWVhe5SooEqYb0YDDhkOtZtnZ7
 JLrxQc5VrC3cql3m2lqkw7PtsRM2xPQp4TDduiB6uTA1yixI9WRHt6pwiUM/J/L7dSBG
 XIft5dFKclnG+cguBASUE2SfAWFUgRIkjbPSBUjIVPozrNnTE3KiaYqmdk66vRsW/Dgz
 3mAKmVjZIcwcVZcprRTiqT7aoarPwN2ROPgQOoaj8KtoebC6zUruPAjuaz/oqJvH9xng
 ndiSeIKWtl73t5T8Vy0zFIQneF3vpVaibiO23HLMJKsr40xCM00mBJNYOW1WVePtCpoU
 eLBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3aT4hIoGoOxTITnPRxvZVZEP0ZMplvO3FsPS6VTLrIE=;
 b=o7qSlHScg4SK/V/8GUR5ZcHMflMyMf2Cp9932TRYX5z1+KrpOrFbIqap13O9aZy73W
 u4PGV60WPJtPQVqgq51xOAR1Gsas9QqaWvGQGaJLHnFnU0Spzd/DqvvromK/FMj0q4M2
 2hU8565IH5JZP7VPFSdPmNtnLUUyZ14gMZVpAVug5hrL2Dqmr3MzsMqQjPXOX4UZL4iX
 QHx+VCGjs9VKJkDD5HO4gBiV9m/DNwN7HlX3DxRJpLA6I8VBq7vqijhFLcc6Hep2ymw8
 t07gOMseJhj/Strdib68b2kvci5jDTEvD/D5ILsyG1LdbbExAyMee1xwVP/uS3Rdoukh
 xq8Q==
X-Gm-Message-State: APjAAAUnGhPqoDa1+QURG0WLZKzPGoybamou3rJHxG5c5+ud0KyjE9xP
 Lg1VKw7Qej4Z9ovMZmq31y3ACxWW6sHfy/x/Wt2sjbc03thP8g==
X-Google-Smtp-Source: APXvYqzpbwkdUPa164NFyhgPqd+w4X5msjPIvE7rxGK6/5zEmTXY5YFlDgIHgUQ8fIpsWQbEJbgIB1DEIMJXUsWPBDA=
X-Received: by 2002:aa7:9e9a:: with SMTP id p26mr25307646pfq.25.1566229868631; 
 Mon, 19 Aug 2019 08:51:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190815154403.16473-1-catalin.marinas@arm.com>
 <20190815154403.16473-5-catalin.marinas@arm.com>
In-Reply-To: <20190815154403.16473-5-catalin.marinas@arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 19 Aug 2019 17:50:57 +0200
Message-ID: <CAAeHK+xpfCxeMya5aiwaUw1hKTd5C32naqrREpz-3GSXM73ELw@mail.gmail.com>
Subject: Re: [PATCH v8 4/5] arm64: Define
 Documentation/arm64/tagged-address-abi.rst
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_085109_656388_884BFD97 
X-CRM114-Status: GOOD (  29.96  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Dave Hansen <dave.hansen@intel.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Will Deacon <will.deacon@arm.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Dave P Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 5:44 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
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

Acked-by: Andrey Konovalov <andreyknvl@google.com>

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
> +
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
> +
> +- shmat() and shmdt().
> +
> +Any attempt to use non-zero tagged pointers may result in an error code
> +being returned, a (fatal) signal being raised, or other modes of
> +failure.
> +
> +4. Example of correct usage
> +---------------------------
> +.. code-block:: c
> +
> +   #include <stdlib.h>
> +   #include <string.h>
> +   #include <unistd.h>
> +   #include <sys/mman.h>
> +   #include <sys/prctl.h>
> +
> +   #define PR_SET_TAGGED_ADDR_CTRL     55
> +   #define PR_TAGGED_ADDR_ENABLE       (1UL << 0)
> +
> +   #define TAG_SHIFT           56
> +
> +   int main(void)
> +   {
> +       int tbi_enabled = 0;
> +       unsigned long tag = 0;
> +       char *ptr;
> +
> +       /* check/enable the tagged address ABI */
> +       if (!prctl(PR_SET_TAGGED_ADDR_CTRL, PR_TAGGED_ADDR_ENABLE, 0, 0, 0))
> +               tbi_enabled = 1;
> +
> +       /* memory allocation */
> +       ptr = mmap(NULL, sysconf(_SC_PAGE_SIZE), PROT_READ | PROT_WRITE,
> +                  MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
> +       if (ptr == MAP_FAILED)
> +               return 1;
> +
> +       /* set a non-zero tag if the ABI is available */
> +       if (tbi_enabled)
> +               tag = rand() & 0xff;
> +       ptr = (char *)((unsigned long)ptr | (tag << TAG_SHIFT));
> +
> +       /* memory access to a tagged address */
> +       strcpy(ptr, "tagged pointer\n");
> +
> +       /* syscall with a tagged pointer */
> +       write(1, ptr, strlen(ptr));
> +
> +       return 0;
> +   }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
