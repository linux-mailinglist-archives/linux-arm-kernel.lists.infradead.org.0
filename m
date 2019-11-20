Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A882104197
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:56:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZGtso/5tdwt1TVC7P4vBjno0aSD5b2QI1SIz0SJVazg=; b=Ktx27K48SK/fkU
	CiXRK4e+z3E2gunSMKTN8an7mmRLi+Qfa5EnzMar7w9JNo7U3LyXKt9uUO6gH6jR9hwMXbl6rptay
	7ErTUdqAWAl0Ht7RLF6r+5Jx0XXs1RaenMooxA0h4OEBqZmPsgczKiuWNIbn8Zl7AP69wip32Rngc
	TXGoB5M4SyK3ZQagHHjWS2/3xwY2/zYT6+2Ikr6l4eDynu1By0ktUusNhQ/n641q7XEaBvyxP4Xk/
	yA6FiknKuL5IuvxLBtqwfWNTJos+nyo2Yj6EWWqFrO686hw/YR1blFuPBL37Tx9G6gp4nNJt3AuD3
	s+k8D2W54zamoMkkH6qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXTH3-0004fY-FN; Wed, 20 Nov 2019 16:56:13 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXTGt-0004fB-Dw
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 16:56:05 +0000
Received: by mail-ed1-x543.google.com with SMTP id a67so80711edf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 08:56:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7V6/i5BVfmb8deXGWmiOtNjPW4f2p7Dy5MQaRkpSzUc=;
 b=TjeOtaUMCAT3O+Fh0iRpN2TPEMUa33cOgei/T5x7g4OcpGJjUChpY0wRPE4R+QelB4
 TXtct2CbP4vYv8FOWHlpaHbCdBrrMED6Nk28EP46ZScz/N5Ay//XFrcQRiJaPkljzXg+
 e3kA7BOvZ8OPnp7geUY0zaL8NKH2OuuiEyCfMKcKZS5CE3fHcVQC8iNXamE7Q5Naj/ac
 FCFKrNRaHNySinKjv7YFBCM/B2dfQnMnpC5hLjfJ4IS/B/QdN/S6RH5c3GOUkCXp6qIW
 hZlyOZ+oFLtWWB2L2Whf58JV9e7MjtN0+JTXbc1lllAbd4fsQTBLyjXgjwKTadk4Jl90
 +oUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7V6/i5BVfmb8deXGWmiOtNjPW4f2p7Dy5MQaRkpSzUc=;
 b=aP4n+lQW6KhuHoS6ojuhH6kKPEW3rOQUT/QBKVxpuphriMROLLtRAfG+83bnPSbZ98
 dSBHiNBiWwjCV9swAghaTBVoFOomZo6bSdk0h3FCd1sZBa9YnPTZt8Ab8f9ca8t7cQQT
 RjaykTMjHjbVBgYXjaYBxGhPfMNj2RPp6w8MdIynQGuSjCCYt9Q/y2sHdHc7FW4oZ/YT
 90iuzUuyPQKkI5FiqJh+U+H2dDnIwYe1tYiIRKSpi/xjYahQGJgmUtnhJymir1bsOI7o
 JF2Avy8VO6rj9L+QF/1AEMgNrAhBsxXLvSqftvqRC4wZ4uxmz2zltEvjzV2qkMIuqmvA
 5tkw==
X-Gm-Message-State: APjAAAW0YI8N1RO1prwH7IHfL9wh922MtdXegtneCsYZUCPC6BuDKash
 AA6XZDdMsIW6GRgQ1CRnz+mkHXRAicNMo/Ry7EBa4Q==
X-Google-Smtp-Source: APXvYqxFrcCtr+7FIBwRlOPWEu+UdTdnLUqzdqJ9mb4cutVRSNOGzSFpg4atZwXpcsdrHuvvgGtNeJ57et0ppWZLJLM=
X-Received: by 2002:a17:906:52d3:: with SMTP id
 w19mr6666497ejn.268.1574268961165; 
 Wed, 20 Nov 2019 08:56:01 -0800 (PST)
MIME-Version: 1.0
References: <20191119221006.1021520-1-pasha.tatashin@soleen.com>
 <20191120164307.GA19681@lakrids.cambridge.arm.com>
In-Reply-To: <20191120164307.GA19681@lakrids.cambridge.arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 20 Nov 2019 11:55:50 -0500
Message-ID: <CA+CK2bAkb7zg6ne=PzA7UrQF49J2Sa7rmyWM3Bqugfe00-36ng@mail.gmail.com>
Subject: Re: [PATCH] arm64: kernel: memory corruptions due non-disabled PAN
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_085603_654411_A868DE09 
X-CRM114-Status: GOOD (  30.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sasha Levin <sashal@kernel.org>, info@metux.net,
 Vladimir Murzin <vladimir.murzin@arm.com>, steve.capper@arm.com,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 James Morris <jmorris@namei.org>, LKML <linux-kernel@vger.kernel.org>,
 alexios.zavras@intel.com, James Morse <james.morse@arm.com>,
 allison@lohutok.net, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 11:43 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> Hi Pavel,
>
> On Tue, Nov 19, 2019 at 05:10:06PM -0500, Pavel Tatashin wrote:
> > Userland access functions (__arch_clear_user, __arch_copy_from_user,
> > __arch_copy_in_user, __arch_copy_to_user), enable and disable PAN
> > for the duration of copy. However, when copy fails for some reason,
> > i.e. access violation the code is transferred to fixedup section,
> > where we do not disable PAN.
>
> Thanks for reporting this. This is a very nasty bug.

Indeed, it was biting us randomly, and it took me awhile to understand
the root cause.

>
> > The bug is a security violation as the access to userland is still
> > open when it should be disabled, but it also causes memory corruptions
> > when software emulated PAN is used: CONFIG_ARM64_SW_TTBR0_PAN=y.
>
> I see that with CONFIG_ARM64_SW_TTBR0_PAN=y, this means that we may
> leave the stale TTBR0 value installed across a context-switch (and have
> reproduced that locally), but I'm having some difficulty reproducing the
> corruption that you see.

I will send the full test shortly. Note, I was never able to reproduce
it in QEMU, only on real hardware. Also, for some unknown reason after
kexec I could not reproduce it only during first boot, so it is
somewhat fragile, but I am sure it can be reproduced in other cases as
well, it is just my reproducer is not tunes for that.

>
> > I was able to reproduce memory corruption problem on Broadcom's SoC
> > ARMv8-A like this:
> >
> > Enable software perf-events with PERF_SAMPLE_CALLCHAIN so userland's
> > stack is accessed and copied.
>
> IIUC this tickles the issue by performing a faulting uaccess in IRQ
> context. On the path to returnign from the exception, it directly calls
> into the scheduler as part of el1_preempt, erroneously passing the TTBR0
> value to the next task. Note that a preemption would remove the stale
> TTBR0 value as part of kernel entry.

Correct.

>
> It looks like if we're in this state, and return from an exception taken
> from EL1 with SW PAN enabled, we'll also leave the stale TTBR0 value
> installed. If PAN was disabled (e.g. in the middle of a uaccess region),
> then we'll restore the correct TTBR0.
>
> > The test program performed the following on every CPU and forking many
> > processes:
> >
> >       unsigned long *map = mmap(NULL, PAGE_SIZE, PROT_READ|PROT_WRITE,
> >                                 MAP_SHARED | MAP_ANONYMOUS, -1, 0);
> >       map[0] = getpid();
> >       sched_yield();
> >       if (map[0] != getpid()) {
> >               fprintf(stderr, "Corruption detected!");
> >       }
> >       munmap(map, PAGE_SIZE);
>
> Can you provide the whole test, please? And precisely how you're
> launching it?

I will shortly.

>
> I've tried turning the above into a main() function, and spawning a
> number of instances in parallel while perf is running, but I haven't
> been able to reproduce the issue locally, and I'm concerned that I'm
> missing something.
>
> > From time to time I was getting map[0] to contain pid for a different
> > process.
>
> How often is "from time to time"? How many processes are you running,
> across how many CPUs?

Less than a second on 8 CPU SoC it takes for a process to get access
to address space of another process.

>
> >
> > Fixes: 338d4f49d6f7114 ("arm64: kernel: Add support for Privileged...")
> >
> > Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> > ---
> >  arch/arm64/lib/clear_user.S     | 1 +
> >  arch/arm64/lib/copy_from_user.S | 1 +
> >  arch/arm64/lib/copy_in_user.S   | 1 +
> >  arch/arm64/lib/copy_to_user.S   | 1 +
> >  4 files changed, 4 insertions(+)
>
> FWIW, the diff below looks correct to me, but we might want to fold this
> into the C wrappers, so that this is consistent with the other uaccess
> cases (and done in one place in the code).

I agree, and I actually have a patch for that, but I wanted my fix to
be included into 5.4 if possible. This is why I sent it out. I will
send out a C wrapper patch soon, but that one won't need to be
backported to stable.

Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
