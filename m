Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E04867FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 19:27:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7Ck+ajyp/DJhL94s/YdQGk4unSViA8y+t3+dg1PZeQ=; b=fvUkfTSSE9YWBs
	rf7UmpBsqXGU9kZF5CaVMxJY+Sx2iv2yOK8KLDQQiqWJiyukoEsjpmgpLQpTVLYv0wLFmERQmNPsB
	1jv0n1fUKzKHOflEj50ufhZzrS77MMe2vvp5YL7JD/KpC6XSRElBPyaMLJl4BO+JaA+PiULEbeO9r
	IrPvKhBrVX7BLbGpLOTYtMcjSM1XGiczunrGi0WtXmhZJFtYITIpC+rliwwfZzGq1SUDek+UkDnLH
	tVXmuhR+9lYnjsn7TWCjUO0PuuujVwmXLaem+GuZmlFyswjcvRbxNngzXV/9A57t9EaktHEu61QeR
	O/NfCX4jAEJJmNzGsPJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvmCc-0003oW-9Z; Thu, 08 Aug 2019 17:27:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvmCQ-0003nl-VQ
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 17:27:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5DF1715A2;
 Thu,  8 Aug 2019 10:27:36 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 25EE03F575; Thu,  8 Aug 2019 10:27:35 -0700 (PDT)
Date: Thu, 8 Aug 2019 18:27:32 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Hansen <dave.hansen@intel.com>
Subject: Re: [PATCH v7 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.rst
Message-ID: <20190808172730.GC37129@arrakis.emea.arm.com>
References: <20190807155321.9648-1-catalin.marinas@arm.com>
 <20190807155321.9648-2-catalin.marinas@arm.com>
 <826a9ace-feac-c019-843e-07e23c9fd46c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <826a9ace-feac-c019-843e-07e23c9fd46c@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_102739_097068_ABE8005F 
X-CRM114-Status: GOOD (  44.75  )
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
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Will Deacon <will.deacon@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 01:38:16PM -0700, Dave Hansen wrote:
> On 8/7/19 8:53 AM, Catalin Marinas wrote:
> > +- mmap() done by the process itself (or its parent), where either:
> > +
> > +  - flags have the **MAP_ANONYMOUS** bit set
> > +  - the file descriptor refers to a regular file (including those returned
> > +    by memfd_create()) or **/dev/zero**
> 
> What's a "regular file"? ;)

We could make it more explicit like '(stat.st_mode & S_IFMT) == S_IFREG'
but it gets too verbose ;).

> > +- brk() system call done by the process itself (i.e. the heap area between
> > +  the initial location of the program break at process creation and its
> > +  current location).
> > +
> > +- any memory mapped by the kernel in the address space of the process
> > +  during creation and with the same restrictions as for mmap() above (e.g.
> > +  data, bss, stack).
> > +
> > +The AArch64 Tagged Address ABI is an opt-in feature and an application can
> > +control it via **prctl()** as follows:
> > +
> > +- **PR_SET_TAGGED_ADDR_CTRL**: enable or disable the AArch64 Tagged Address
> > +  ABI for the calling process.
> > +
> > +  The (unsigned int) arg2 argument is a bit mask describing the control mode
> > +  used:
> > +
> > +  - **PR_TAGGED_ADDR_ENABLE**: enable AArch64 Tagged Address ABI. Default
> > +    status is disabled.
> > +
> > +  The arguments arg3, arg4, and arg5 are ignored.
> 
> For previous prctl()'s, we've found that it's best to require that the
> unused arguments be 0.  Without that, apps are free to put garbage
> there, which makes extending the prctl to use other arguments impossible
> in the future.

We've had a bit of bikeshedding already:

http://lkml.kernel.org/r/20190613110235.GW28398@e103592.cambridge.arm.com

Extending the interface is still possible even with the current
proposal, by changing arg2 etc. We also don't seem to be consistent in
sys_prctl().

> Also, shouldn't this be converted over to an arch_prctl()?

What do you mean by arch_prctl()? We don't have such thing, apart from
maybe arch_prctl_spec_ctrl_*(). We achieve the same thing with the
{SET,GET}_TAGGED_ADDR_CTRL macros. They could be renamed to
arch_prctl_tagged_addr_{set,get} or something but I don't see much
point.

What would be better (for a separate patch series) is to clean up
sys_prctl() and move the arch-specific options into separate
arch_prctl() under arch/*/kernel/. But it's not really for this series.

> > +The prctl(PR_SET_TAGGED_ADDR_CTRL, ...) will return -EINVAL if the
> > +AArch64 Tagged Address ABI is not available
> > +(CONFIG_ARM64_TAGGED_ADDR_ABI disabled or sysctl abi.tagged_addr=0).
> > +
> > +The ABI properties set by the mechanism described above are inherited by
> > +threads of the same application and fork()'ed children but cleared by
> > +execve().
> 
> What is the scope of these prctl()'s?  Are they thread-scoped or
> process-scoped?  Can two threads in the same process run with different
> tagging ABI modes?

Good point. They are thread-scoped and this should be made clear in the
doc. Two threads can have different modes.

The expectation is that this is invoked early during process start (by
the dynamic loader or libc init) while in single-thread mode and
subsequent threads will inherit the same mode. However, other uses are
possible.

> > +Opting in (the prctl() option described above only) to or out of the
> > +AArch64 Tagged Address ABI can be disabled globally at runtime using the
> > +sysctl interface:
> > +
> > +- **abi.tagged_addr**: a new sysctl interface that can be used to prevent
> > +  applications from enabling or disabling the relaxed ABI. The sysctl
> > +  supports the following configuration options:
> > +
> > +  - **0**: disable the prctl(PR_SET_TAGGED_ADDR_CTRL) option to
> > +    enable/disable the AArch64 Tagged Address ABI globally
> > +
> > +  - **1** (Default): enable the prctl(PR_SET_TAGGED_ADDR_CTRL) option to
> > +    enable/disable the AArch64 Tagged Address ABI globally
> > +
> > +  Note that this sysctl does not affect the status of the AArch64 Tagged
> > +  Address ABI of the running processes.
> 
> Shouldn't the name be "abi.tagged_addr_control" or something?  It
> actually has *zero* direct effect on tagged addresses in the ABI.

Yeah, we could add a _ctrl suffix. I usually lack inspiration when
naming things.

> What's the reason for allowing it to be toggled at runtime like this?
> Wouldn't it make more sense to just have it be a boot option so you
> *know* what the state of individual processes is?

This was initially suggested by Vincenzo but I wasn't keen on having a
kernel command line option that affects the user ABI. Since then we went
through several incarnations and ended up with a default off for the
relaxed ABI with an opt-in prctl(). The reason behind default off is
that I'm not 100% confident the kernel won't break the relaxed ABI in
the future and I wouldn't want applications that don't use
top-byte-ignore (or tagged addresses) to inadvertently start using it.
The additional sysctl is to allow system administrators to block the
opt-in altogether. It also comes in handy for testing userspace
behaviour without rebooting.

That said, do we have a precedent for changing user ABI from the kernel
cmd line? 'noexec32', 'vsyscall' I think come close. With the prctl()
for opt-in, controlling this from the cmd line is not too bad (though my
preference is still for the sysctl).

> > +When a process has successfully enabled the new ABI by invoking
> > +prctl(PR_SET_TAGGED_ADDR_CTRL, PR_TAGGED_ADDR_ENABLE), the following
> > +behaviours are guaranteed:
> > +
> > +- Every currently available syscall, except the cases mentioned in section
> > +  3, can accept any valid tagged pointer. The same rule is applicable to
> > +  any syscall introduced in the future.
> > +
> > +- The syscall behaviour is undefined for non valid tagged pointers.
> 
> Do you really mean "undefined"?  I mean, a bad pointer is a bad pointer.
>  Why should it matter if it's a tagged bad pointer or an untagged bad
> pointer?

Szabolcs already replied here. We may have tagged pointers that can be
dereferenced just fine but being passed to the kernel may not be well
defined (e.g. some driver doing a find_vma() that fails unless it
explicitly untags the address). It's as undefined as the current
behaviour (without these patches) guarantees.

> ...
> > +A definition of the meaning of tagged pointers on AArch64 can be found in:
> > +Documentation/arm64/tagged-pointers.txt.
> > +
> > +3. AArch64 Tagged Address ABI Exceptions
> > +-----------------------------------------
> > +
> > +The behaviour described in section 2, with particular reference to the
> > +acceptance by the syscalls of any valid tagged pointer, is not applicable
> > +to the following cases:
> 
> This is saying things in a pretty roundabout manner.  Can't it just say:
>  "The following cases do not accept tagged pointers:"

I agree.

> > +- mmap() addr parameter.
> > +
> > +- mremap() new_address parameter.
> 
> Is munmap() missing?  Or was there a reason for leaving it out?

Szabolcs replied already here.

For a bit of history, I initially didn't want any of the address space
handling functions to accept tagged pointers but it got harder to
specify what this means that can be safely applied to future syscall
extensions. We then changed the approach to allow it everywhere with
some exclusions like mmap/mremap.

> > +- prctl(PR_SET_MM, ``*``, ...) other than arg2 PR_SET_MM_MAP and
> > +  PR_SET_MM_MAP_SIZE.
> > +
> > +- prctl(PR_SET_MM, PR_SET_MM_MAP{,_SIZE}, ...) struct prctl_mm_map fields.
> > +
> > +Any attempt to use non-zero tagged pointers will lead to undefined
> > +behaviour.
> 
> I wonder if you want to generalize this a bit.  I think you're saying
> that parts of the ABI that modify the *layout* of the address space
> never accept tagged pointers.

I guess our difficulty in specifying this may have been caused by
over-generalising. For example, madvise/mprotect came under the same
category but there is a use-case for malloc'ed pointers (and tagged) to
the kernel (e.g. MADV_DONTNEED). If we can restrict the meaning to
address space *layout* manipulation, we'd have mmap/mremap/munmap,
brk/sbrk, prctl(PR_SET_MM). Did I miss anything?. Other related syscalls
like mprotect/madvise preserve the layout while only changing permissions,
backing store, so the would be allowed to accept tags.

Open to feedback from others, especially libc/userspace folk. Ideally,
what I'd like is that when a new syscall is added (or extension to an
existing syscall), it should be fairly obvious to the user whether it
can take a tagged address or not (or maybe that's just not possible).

> > +4. Example of correct usage
> > +---------------------------
> > +.. code-block:: c
> > +
> > +   void main(void)
> > +   {
> > +           static int tbi_enabled = 0;
> > +           unsigned long tag = 0;
> > +
> > +           char *ptr = mmap(NULL, PAGE_SIZE, PROT_READ | PROT_WRITE,
> > +                            MAP_ANONYMOUS, -1, 0);
> > +
> > +           if (prctl(PR_SET_TAGGED_ADDR_CTRL, PR_TAGGED_ADDR_ENABLE,
> > +                     0, 0, 0) == 0)
> > +                   tbi_enabled = 1;
> > +
> > +           if (ptr == (void *)-1) /* MAP_FAILED */
> > +                   return -1;
> > +
> > +           if (tbi_enabled)
> > +                   tag = rand() & 0xff;
> > +
> > +           ptr = (char *)((unsigned long)ptr | (tag << TAG_SHIFT));
> > +
> > +           *ptr = 'a';
> > +
> > +           ...
> > +   }
> 
> It looks like the TAG_SHIFT and tag size are pretty baked into the
> aarch64 architecture.  But, are you confident that no future
> implementations will want different positions or sizes?  (obviously
> controlled by other TCR_EL1 bits)

For the top-byte-ignore (TBI), that's been baked in the architecture
since ARMv8.0 and we'll have to keep the backwards compatible mode. As
the name implies, it's the top byte of the address and that's what the
document above refers to.

With MTE, I can't exclude other configurations in the future but I'd
expect the kernel to present the option as a new HWCAP and the user to
explicitly opt in via a new prctl() flag. I seriously doubt we'd break
existing binaries. So, yes TAG_SHIFT may be different but so would the
prctl() above.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
