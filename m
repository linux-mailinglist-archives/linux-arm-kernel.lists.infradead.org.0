Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5EDFF54F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 Nov 2019 20:31:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jdIqIwWmCyyDwRQmnSh0NUFOs39mmoext0xpS3qbrNU=; b=jBXhtlaubJnUZ3tpB5qbo1sZ7z
	ByaPir7U6dssAP5h3CjqbYWAz9+skdhS90ISCluQ5BUhHmSAm6IDahBfT4Vpi53NCbhJZceVXpnwZ
	ZrfnzBHavpvycXC6bkL680/BA4k5Xdly6plLyWbTvBaBfASFYQgnW39VsaHbgCCD3vA/dqOK78rgT
	gJcJjL3rbvX+CIQkn9d3yutwyyS22UA2lis2nPkAPdb7VTFnIczwrMVGK4uB0idcwfTy/gGeAJipY
	XgMNxmhhQ+6bdpU9NLegQyPOXFwTRn4M2L9Om6QaplB3L1EtSyFfjRe6ClTSn/QgecF+F9eqLz2BE
	o02SaLww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW3nO-0003Ux-PN; Sat, 16 Nov 2019 19:31:46 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW3nE-0003T5-Bp
 for linux-arm-kernel@lists.infradead.org; Sat, 16 Nov 2019 19:31:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573932689;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kXpw2dVrTazyKaZMh6ck8gLXd7z/Kkh/NRaCUtk9LZE=;
 b=C24zPtv/tOXiiZuK8es2a1qkHRNrsO0FSZAiVXeo7we/Qau5HWKvbcXk1vh/BeBwhJMLH/
 SPbR+xtT0PMq55RHCNSJ6DbivoSN64Ssn0cDfoq8iNjw9dFG7xDOM1RyF05u6MwFG0PZcM
 gSZI/pWphW/k5Z6wzMEC4+zLX+3zhhk=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-348-Q6X1PLJ3O6mWS3kowlA55g-1; Sat, 16 Nov 2019 14:31:25 -0500
Received: by mail-lf1-f72.google.com with SMTP id d11so4092753lfj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 16 Nov 2019 11:31:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=tr1QPh7Xu6oqNv9urwYmGQnpnrlexXqmQZ13m1gKg9g=;
 b=OIhuVvaTOXw9zubFSFyICbnkiBg9ebbk4hT9H6i6t5ljtO/J0uWSMOUrbkq04KQEQo
 91C+WRUWKcI6l8bZFyviVUxEHqgZRL9opFKegKkzUiCc2bqI/GkFZJLRodL085+xPRDp
 LCBc/JLf1O0sGz4J8VmUj1kUsb2vBUUqAIBFTGvDyk7MIDt5xz1tt+6kfxrwRZ1oobva
 MCK+yg4ip3mK0pMxkRpEg0XP/aIyAxbO/AgkV2XTC9sCPjTjhaZb4ac8/8p5bcHpNEGZ
 h7AiXwMH9zEX/3aX2WgataOVRNDMYXo81DLIaHbusg6QDyFGhczGYMr9LAnn+dX+cVjw
 NR6g==
X-Gm-Message-State: APjAAAW5go9QjWY2NefHE8aQjZgU48bW3GcoZp0Ems4yJJdQoRIkdwi+
 6hHKfJYFsL5vLYP4O2iGAew3DJafQXnh5wh+WRuNNwG6ei30b0iLexuI8CWXZLBxG7jVSjqNZoR
 JxvJxZEYFWYg3/qbjj/6rLuzbkS735YoN6m7t/hA7TswgGlHXcTI=
X-Received: by 2002:a2e:98c6:: with SMTP id s6mr14176682ljj.235.1573932684243; 
 Sat, 16 Nov 2019 11:31:24 -0800 (PST)
X-Google-Smtp-Source: APXvYqzV/Uq0MfcKB6Ngj9rRD+2Lhzxf6cVhsnPdiYYnO35ay585YEXFW53R4j8ojT574iLVnqEYnyQDdNGcl2Jhl3c=
X-Received: by 2002:a2e:98c6:: with SMTP id s6mr14176647ljj.235.1573932683821; 
 Sat, 16 Nov 2019 11:31:23 -0800 (PST)
MIME-Version: 1.0
References: <1573459282-26989-1-git-send-email-bhsharma@redhat.com>
 <20191113063858.GE22427@linaro.org>
 <CACi5LpP54d9DKW63G5W6X4euBjAm2NwkHOiM01dB7g8d60s=4w@mail.gmail.com>
 <20191115015959.GI22427@linaro.org>
In-Reply-To: <20191115015959.GI22427@linaro.org>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Sun, 17 Nov 2019 01:01:05 +0530
Message-ID: <CACi5LpNsDDQq1fkUatjXh3gRstiwOFi5VvtywEu4VyZM98=Hbw@mail.gmail.com>
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
X-MC-Unique: Q6X1PLJ3O6mWS3kowlA55g-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_113136_477576_02C0C8AA 
X-CRM114-Status: GOOD (  33.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Fri, Nov 15, 2019 at 7:29 AM AKASHI Takahiro
<takahiro.akashi@linaro.org> wrote:
>
> Bhupesh,
>
> On Fri, Nov 15, 2019 at 01:24:17AM +0530, Bhupesh Sharma wrote:
> > Hi Akashi,
> >
> > On Wed, Nov 13, 2019 at 12:11 PM AKASHI Takahiro
> > <takahiro.akashi@linaro.org> wrote:
> > >
> > > Hi Bhupesh,
> > >
> > > Do you have a corresponding patch for userspace tools,
> > > including crash util and/or makedumpfile?
> > > Otherwise, we can't verify that a generated core file is
> > > correctly handled.
> >
> > Sure. I am still working on the crash-utility related changes, but you
> > can find the makedumpfile changes I posted a couple of days ago here
> > (see [0]) and the github link for the makedumpfile changes can be seen
> > via [1].
> >
> > I will post the crash-util changes shortly as well.
> > Thanks for having a look at the same.
>
> Thank you.
> I have tested my kdump patch with a hacked version of crash
> where VA_BITS_ACTUAL is calculated from tcr_el1_t1sz in vmcoreinfo.

Thanks a lot for testing the changes. I will push the crash utility
changes for review shortly and also Cc you to the patches.
It would be great to have your Tested-by for this patch-set, if the
user-space works fine for you with these changes.

Regards,
Bhupesh

> -Takahiro Akashi
>
>
> > [0]. http://lists.infradead.org/pipermail/kexec/2019-November/023963.html
> > [1]. https://github.com/bhupesh-sharma/makedumpfile/tree/52-bit-va-support-via-vmcore-upstream-v4
> >
> > Regards,
> > Bhupesh
> >
> > >
> > > Thanks,
> > > -Takahiro Akashi
> > >
> > > On Mon, Nov 11, 2019 at 01:31:19PM +0530, Bhupesh Sharma wrote:
> > > > Changes since v3:
> > > > ----------------
> > > > - v3 can be seen here:
> > > >   http://lists.infradead.org/pipermail/kexec/2019-March/022590.html
> > > > - Addressed comments from James and exported TCR_EL1.T1SZ in vmcoreinfo
> > > >   instead of PTRS_PER_PGD.
> > > > - Added a new patch (via [PATCH 3/3]), which fixes a simple typo in
> > > >   'Documentation/arm64/memory.rst'
> > > >
> > > > Changes since v2:
> > > > ----------------
> > > > - v2 can be seen here:
> > > >   http://lists.infradead.org/pipermail/kexec/2019-March/022531.html
> > > > - Protected 'MAX_PHYSMEM_BITS' vmcoreinfo variable under CONFIG_SPARSEMEM
> > > >   ifdef sections, as suggested by Kazu.
> > > > - Updated vmcoreinfo documentation to add description about
> > > >   'MAX_PHYSMEM_BITS' variable (via [PATCH 3/3]).
> > > >
> > > > Changes since v1:
> > > > ----------------
> > > > - v1 was sent out as a single patch which can be seen here:
> > > >   http://lists.infradead.org/pipermail/kexec/2019-February/022411.html
> > > >
> > > > - v2 breaks the single patch into two independent patches:
> > > >   [PATCH 1/2] appends 'PTRS_PER_PGD' to vmcoreinfo for arm64 arch, whereas
> > > >   [PATCH 2/2] appends 'MAX_PHYSMEM_BITS' to vmcoreinfo in core kernel code (all archs)
> > > >
> > > > This patchset primarily fixes the regression reported in user-space
> > > > utilities like 'makedumpfile' and 'crash-utility' on arm64 architecture
> > > > with the availability of 52-bit address space feature in underlying
> > > > kernel. These regressions have been reported both on CPUs which don't
> > > > support ARMv8.2 extensions (i.e. LVA, LPA) and are running newer kernels
> > > > and also on prototype platforms (like ARMv8 FVP simulator model) which
> > > > support ARMv8.2 extensions and are running newer kernels.
> > > >
> > > > The reason for these regressions is that right now user-space tools
> > > > have no direct access to these values (since these are not exported
> > > > from the kernel) and hence need to rely on a best-guess method of
> > > > determining value of 'vabits_actual' and 'MAX_PHYSMEM_BITS' supported
> > > > by underlying kernel.
> > > >
> > > > Exporting these values via vmcoreinfo will help user-land in such cases.
> > > > In addition, as per suggestion from makedumpfile maintainer (Kazu),
> > > > it makes more sense to append 'MAX_PHYSMEM_BITS' to
> > > > vmcoreinfo in the core code itself rather than in arm64 arch-specific
> > > > code, so that the user-space code for other archs can also benefit from
> > > > this addition to the vmcoreinfo and use it as a standard way of
> > > > determining 'SECTIONS_SHIFT' value in user-land.
> > > >
> > > > Cc: Boris Petkov <bp@alien8.de>
> > > > Cc: Ingo Molnar <mingo@kernel.org>
> > > > Cc: Thomas Gleixner <tglx@linutronix.de>
> > > > Cc: Jonathan Corbet <corbet@lwn.net>
> > > > Cc: James Morse <james.morse@arm.com>
> > > > Cc: Mark Rutland <mark.rutland@arm.com>
> > > > Cc: Will Deacon <will@kernel.org>
> > > > Cc: Steve Capper <steve.capper@arm.com>
> > > > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > > > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > > > Cc: Michael Ellerman <mpe@ellerman.id.au>
> > > > Cc: Paul Mackerras <paulus@samba.org>
> > > > Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> > > > Cc: Dave Anderson <anderson@redhat.com>
> > > > Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> > > > Cc: x86@kernel.org
> > > > Cc: linuxppc-dev@lists.ozlabs.org
> > > > Cc: linux-arm-kernel@lists.infradead.org
> > > > Cc: linux-kernel@vger.kernel.org
> > > > Cc: linux-doc@vger.kernel.org
> > > > Cc: kexec@lists.infradead.org
> > > >
> > > > Bhupesh Sharma (3):
> > > >   crash_core, vmcoreinfo: Append 'MAX_PHYSMEM_BITS' to vmcoreinfo
> > > >   arm64/crash_core: Export TCR_EL1.T1SZ in vmcoreinfo
> > > >   Documentation/arm64: Fix a simple typo in memory.rst
> > > >
> > > >  Documentation/arm64/memory.rst         | 2 +-
> > > >  arch/arm64/include/asm/pgtable-hwdef.h | 1 +
> > > >  arch/arm64/kernel/crash_core.c         | 9 +++++++++
> > > >  kernel/crash_core.c                    | 1 +
> > > >  4 files changed, 12 insertions(+), 1 deletion(-)
> > > >
> > > > --
> > > > 2.7.4
> > > >
> > >
> >
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
