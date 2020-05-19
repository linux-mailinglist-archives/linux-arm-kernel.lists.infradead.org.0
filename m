Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C62B51D91E6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 10:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Uv0STK8qJnKDS4oTsoarKh7hS/O6kytc4CG6sRxqqg=; b=rw9yAjhnzlOhp4
	NNC6V/83rC0I81TdCp5Z666dbNOq2HV0tTcekT4Bj/Q8ejCtiN3jTn9wM5ueYdCBDYo6KEfCD69IS
	Zct4OICFMfpQsvkT53G782MXq5cNr27cCyJBPA95Ffqd2kmC9B7w5VxuMS0OWMCfhAx7yJEMDAKEB
	slWlsdUp9++F21FGzUvCcf8LTAE6bwIHyMdlb5AEDpUFEnIBwDzqXMrOARnYIRWm8Ufuw2mYjFt9F
	83uoinF9LaxCKyBNhd1WKrqFp0OsRDSXi+yOKAQG5y46Iv0UJSLXUuLnLzcDkSc88QsbTjj7/iLf3
	TmX5G8o/nr9Cc08OdQ6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaxPw-0004Dz-Iy; Tue, 19 May 2020 08:16:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaxPq-0004D8-6i
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 08:15:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 504B420709;
 Tue, 19 May 2020 08:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589876156;
 bh=yJ7fQn1NM95tpi8PU4m61fRGPoc8lwpzDb11CKAj0so=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DQG3fiAM/dNkN3TrVzzD/YLGD7Yp+f9/SSBXWXOp71gI4M9jQba3W7vhqiHk0PNu0
 WgvlAah532itEJXBqUtN54gGvhJZu+xpfFrQwxtygVx3L+C3LSu0Y1xIH68nbfgSf1
 F7HCHXgWNOuwJKy0joGSnNyhY/KIOi/q3jmKHOb0=
Date: Tue, 19 May 2020 09:15:51 +0100
From: Will Deacon <will@kernel.org>
To: Keno Fischer <keno@juliacomputing.com>
Subject: Re: arm64: Register modification during syscall entry/exit stop
Message-ID: <20200519081551.GA9980@willie-the-truck>
References: <CABV8kRz0mKSc=u1LeonQSLroKJLOKWOWktCoGji2nvEBc=e7=w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABV8kRz0mKSc=u1LeonQSLroKJLOKWOWktCoGji2nvEBc=e7=w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_011558_287839_BA12CB44 
X-CRM114-Status: GOOD (  27.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Kyle Huey <khuey@pernos.co>,
 Oleg Nesterov <oleg@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Keno,

On Mon, May 18, 2020 at 09:05:30PM -0400, Keno Fischer wrote:
> Continuing my theme of "weird things I encounter
> while trying to use ptrace on arm64", I ran into the
> effect of the following code in the syscall entry/exit
> reporting:
> 
> ```
> /*
> * A scratch register (ip(r12) on AArch32, x7 on AArch64) is
> * used to denote syscall entry/exit:
> */
> regno = (is_compat_task() ? 12 : 7);
> saved_reg = regs->regs[regno];
> regs->regs[regno] = dir;
> ```
> 
> This seems very weird to me. I can't think of any
> other architecture that does something similar
> (other than unicore32 apparently, but the ptrace
> support there seems like it might have just been
> copied from ARM). I'm able to work around this
> in my application, but it adds another stumbling block.

Yes, we inherited this from ARM and I think strace relies on it. In
hindsight, it is a little odd, although x7 is a parameter register in the
PCS and so it won't be live on entry to a system call.

> Some examples of things that happen:
> - Writes to x7 during syscall exit stops are ignored, so
>   if the ptracer tries to emulate a setjmp-type thing, it
>   might miss this register (ptracers sometimes like to do
>   this to manually serialize execution between different
>   threads, puppeteering a single thread of execution
>   between different register states).
> - Reads from x7 are incorrect, so if the ptracer saves
>   a register state and later tries to set it back to the task,
>   it may get x7 incorrect, but user space may be expecting
>   the register to be preserved (when might this happen? -
>   consider a ptracer that wants to modify some syscall
>   arguments, it modifies the arguments, restarts the syscall
>   but then incurs a signal, so it tries to restore the original
>   registers to let userspace deal with the signal without
>   being confused - expect signal traps don't ignore x7
>   modifications, so x7 may have been unexpectedly
>   modified).
> - We now have seccomp traps, which kind of look and
>   act like syscall-entry traps, but don't have this behavior,
>   so it's not particularly reliable for ptracers to use.
> 
> Furthermore, it seems unnecessary to me on modern
> kernels. We now have PTRACE_GET_SYSCALL_INFO,
> which exposes this information without lying to the ptracer
> about the tracee's registers.
> 
> I understand, we can't just change this, since people may
> be relying on it, but I would like to propose adding a ptrace
> option (PTRACE_O_ARM_REGSGOOD?) that turns this
> behavior off. Now, I don't think we currently have any other
> arch-specific ptrace options, so maybe there is a different
> option that would be preferable (e.g. could be a different
> regset), but I do think it would be good to have a way to
> operate on the real x7 value. As I said, I can work around it,
> but hopefully I will be able to save a future implementer
> some headache.

I'm not opposed to extending ptrace so that we can try to wean people off
this interface, but I think we need some concrete situations where the
current behaviour actually causes a problem. Although the examples you've
listed above are interesting, I don't see why x7 is important in any of
them (and we only support up to 6 system call arguments).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
