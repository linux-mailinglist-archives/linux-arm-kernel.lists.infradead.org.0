Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE45FCEFB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 20:55:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VS1IxXKDEUCF26JJ9Fc6QN9Oph9RBS65P/oC7VJ2XxU=; b=m8NpRdla4CIihomVy3INLathFH
	A2LzVtIeOgwmH6ELOlfRRpPfXIbQytQ6hdg1SNsrYo7x9zej81y9EYrOfpHdQtfPQJpinaQWUp728
	DTssqzUGp79H5VYMXOlP56K0kafpj0zfGPhSJuPYNI+Wt6JZhVL0rRUdWAXyXqUtBWiLWwwHo5FkE
	yZZ37wf74khaUdN4muCJtlUM9Q/jVD7rYxVJAa3WYnXfIb5ZjLhYmqPLJter0kdCzSsMVeUb/qKLb
	kpmmFQ5PFpRrc86MHWk4P+WBu37fF8xMEAZP66jZsOoMHzysIlAahJWNnV7V5RsZ8Yu6fNBeBHzQW
	RQk8d6ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVLCd-0001WM-HZ; Thu, 14 Nov 2019 19:54:51 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVLCS-0001Q0-7R
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 19:54:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573761279;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ipOfIuZv4n7OMTuT05ttv+XiU0MiZdbWkcgUyU+rx/Q=;
 b=HAeWZhVW0Z9db+8D/vfVObNv7rBo+yCaWH+lolXpdZM8IPw5ateC9OiY0jgiuXHaXSzPM8
 NH+2LAb6LnxCBJJ+Jw93g+eOBubet7UoSg4xZNqDcNYR5X/yEPfUCwcKrHtNZL09SmErPd
 loqx0NWhR0S7zNPtNEaq54Zrq4Wkb18=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-114-hOc9nuFGMSa0Aa2DIYyMIQ-1; Thu, 14 Nov 2019 14:54:37 -0500
Received: by mail-lj1-f199.google.com with SMTP id h16so973972ljk.20
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 11:54:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=MDqH19kOOKY+TUPNPG0CxeBoBcGPMQfXKESSJwySm9E=;
 b=mXTppHaJf54RfdH/RMsvjZ8AcB8h9VDNwUasTzVPvklycvNcToxn3kD5vY8kLjVto2
 7ZBNIAmZLh0NINE8p3LvMnPrJioL8wwzlhVhVIBVK8PJ95rwq/vW4dIxTaRvzkDEkRSs
 Pi6WBl+uahAN5CvxGdsL1PYVmJ/lDUtVvTgKoaa+hkwngpkM+akCbmoIW+OKSPWoyndw
 CXDDJ7qa7uXkyH0Z1ZpPugn8+Iv+S9kQ7PeGP31pJHe8hmJt0jWVyOpsrQsHHKcA7oh7
 qK1xgn0TBmOmw0ZkNftBzudcd/i2E7b3IuVsu+sQFFs5JQKf/EHJDowSUGe4VFSYggu7
 Pd2w==
X-Gm-Message-State: APjAAAUfs1fQHaJb8m+v4yA3VC+wzfExR00Xkrl8KoiXwY1LujK5tDGz
 PckGmalhaKQanSIRS0VXdVg1k1d0Cpd33Xodf3dZLVXU0NXPZ0VTGbVLUaDyoYBjwVvdgX+8iDf
 HuFRs+yIMPQdpCzvzPZ5YhDkfNyDcNXP/wigwHCK5kUxrMWcqONE=
X-Received: by 2002:a2e:9695:: with SMTP id q21mr7771490lji.206.1573761275771; 
 Thu, 14 Nov 2019 11:54:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqyvZP1Wg9zN6nJYQIloLkjVhepGTmfmXrp4BqyWB295YviNhYt2NN6gtXuLQLlI9WPMoiGos+kqPi2No7ektKQ=
X-Received: by 2002:a2e:9695:: with SMTP id q21mr7771458lji.206.1573761275378; 
 Thu, 14 Nov 2019 11:54:35 -0800 (PST)
MIME-Version: 1.0
References: <1573459282-26989-1-git-send-email-bhsharma@redhat.com>
 <20191113063858.GE22427@linaro.org>
In-Reply-To: <20191113063858.GE22427@linaro.org>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Fri, 15 Nov 2019 01:24:17 +0530
Message-ID: <CACi5LpP54d9DKW63G5W6X4euBjAm2NwkHOiM01dB7g8d60s=4w@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] Append new variables to vmcoreinfo (TCR_EL1.T1SZ
 for arm64 and MAX_PHYSMEM_BITS for all archs)
To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Bhupesh Sharma <bhsharma@redhat.com>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>, 
 Boris Petkov <bp@alien8.de>, Ingo Molnar <mingo@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, 
 Jonathan Corbet <corbet@lwn.net>, James Morse <james.morse@arm.com>, 
 Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>, 
 Steve Capper <steve.capper@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Paul Mackerras <paulus@samba.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
 Dave Anderson <anderson@redhat.com>, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 x86@kernel.org, linuxppc-dev@lists.ozlabs.org, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>
X-MC-Unique: hOc9nuFGMSa0Aa2DIYyMIQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_115440_344482_5CB3414D 
X-CRM114-Status: GOOD (  28.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Akashi,

On Wed, Nov 13, 2019 at 12:11 PM AKASHI Takahiro
<takahiro.akashi@linaro.org> wrote:
>
> Hi Bhupesh,
>
> Do you have a corresponding patch for userspace tools,
> including crash util and/or makedumpfile?
> Otherwise, we can't verify that a generated core file is
> correctly handled.

Sure. I am still working on the crash-utility related changes, but you
can find the makedumpfile changes I posted a couple of days ago here
(see [0]) and the github link for the makedumpfile changes can be seen
via [1].

I will post the crash-util changes shortly as well.
Thanks for having a look at the same.

[0]. http://lists.infradead.org/pipermail/kexec/2019-November/023963.html
[1]. https://github.com/bhupesh-sharma/makedumpfile/tree/52-bit-va-support-via-vmcore-upstream-v4

Regards,
Bhupesh

>
> Thanks,
> -Takahiro Akashi
>
> On Mon, Nov 11, 2019 at 01:31:19PM +0530, Bhupesh Sharma wrote:
> > Changes since v3:
> > ----------------
> > - v3 can be seen here:
> >   http://lists.infradead.org/pipermail/kexec/2019-March/022590.html
> > - Addressed comments from James and exported TCR_EL1.T1SZ in vmcoreinfo
> >   instead of PTRS_PER_PGD.
> > - Added a new patch (via [PATCH 3/3]), which fixes a simple typo in
> >   'Documentation/arm64/memory.rst'
> >
> > Changes since v2:
> > ----------------
> > - v2 can be seen here:
> >   http://lists.infradead.org/pipermail/kexec/2019-March/022531.html
> > - Protected 'MAX_PHYSMEM_BITS' vmcoreinfo variable under CONFIG_SPARSEMEM
> >   ifdef sections, as suggested by Kazu.
> > - Updated vmcoreinfo documentation to add description about
> >   'MAX_PHYSMEM_BITS' variable (via [PATCH 3/3]).
> >
> > Changes since v1:
> > ----------------
> > - v1 was sent out as a single patch which can be seen here:
> >   http://lists.infradead.org/pipermail/kexec/2019-February/022411.html
> >
> > - v2 breaks the single patch into two independent patches:
> >   [PATCH 1/2] appends 'PTRS_PER_PGD' to vmcoreinfo for arm64 arch, whereas
> >   [PATCH 2/2] appends 'MAX_PHYSMEM_BITS' to vmcoreinfo in core kernel code (all archs)
> >
> > This patchset primarily fixes the regression reported in user-space
> > utilities like 'makedumpfile' and 'crash-utility' on arm64 architecture
> > with the availability of 52-bit address space feature in underlying
> > kernel. These regressions have been reported both on CPUs which don't
> > support ARMv8.2 extensions (i.e. LVA, LPA) and are running newer kernels
> > and also on prototype platforms (like ARMv8 FVP simulator model) which
> > support ARMv8.2 extensions and are running newer kernels.
> >
> > The reason for these regressions is that right now user-space tools
> > have no direct access to these values (since these are not exported
> > from the kernel) and hence need to rely on a best-guess method of
> > determining value of 'vabits_actual' and 'MAX_PHYSMEM_BITS' supported
> > by underlying kernel.
> >
> > Exporting these values via vmcoreinfo will help user-land in such cases.
> > In addition, as per suggestion from makedumpfile maintainer (Kazu),
> > it makes more sense to append 'MAX_PHYSMEM_BITS' to
> > vmcoreinfo in the core code itself rather than in arm64 arch-specific
> > code, so that the user-space code for other archs can also benefit from
> > this addition to the vmcoreinfo and use it as a standard way of
> > determining 'SECTIONS_SHIFT' value in user-land.
> >
> > Cc: Boris Petkov <bp@alien8.de>
> > Cc: Ingo Molnar <mingo@kernel.org>
> > Cc: Thomas Gleixner <tglx@linutronix.de>
> > Cc: Jonathan Corbet <corbet@lwn.net>
> > Cc: James Morse <james.morse@arm.com>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Steve Capper <steve.capper@arm.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > Cc: Michael Ellerman <mpe@ellerman.id.au>
> > Cc: Paul Mackerras <paulus@samba.org>
> > Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> > Cc: Dave Anderson <anderson@redhat.com>
> > Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> > Cc: x86@kernel.org
> > Cc: linuxppc-dev@lists.ozlabs.org
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-kernel@vger.kernel.org
> > Cc: linux-doc@vger.kernel.org
> > Cc: kexec@lists.infradead.org
> >
> > Bhupesh Sharma (3):
> >   crash_core, vmcoreinfo: Append 'MAX_PHYSMEM_BITS' to vmcoreinfo
> >   arm64/crash_core: Export TCR_EL1.T1SZ in vmcoreinfo
> >   Documentation/arm64: Fix a simple typo in memory.rst
> >
> >  Documentation/arm64/memory.rst         | 2 +-
> >  arch/arm64/include/asm/pgtable-hwdef.h | 1 +
> >  arch/arm64/kernel/crash_core.c         | 9 +++++++++
> >  kernel/crash_core.c                    | 1 +
> >  4 files changed, 12 insertions(+), 1 deletion(-)
> >
> > --
> > 2.7.4
> >
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
