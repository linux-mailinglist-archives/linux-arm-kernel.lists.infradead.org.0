Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1C829B8F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 17:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+Rrxmf/EwKHa/g6BoF7IMiqSMf4eFsiUTekY+HQHgA=; b=B4HjoZtNwRjGiA
	ULg3XHeVBdYhklqS/WhE501zeDYti/PMx2KMv1MZzuodLODn8URl74SNimOCkmA3FNBwwU9pDQdU2
	WgT6Ih9Jj20s9J0WNs/Tp4T68SmXOsgBsHcAw6opK9ADKswkQVE12x9WvHtSLKlFNEyZd+XwpoQGB
	qoJfaQGBve81aQOEYtM9/kLt9a0YqWv73XjC8+VmWvR2060W4wuNtudckzjY7VNyRYDzQ+iQdcMvE
	CH2r0lbPa1SKffgscJr/a31AVGaC7nRZ9wxQiv5aSbbTW47uis4UMIUu40/zUGLf+9mq7ZtslYDJ1
	zZboqtAm+wNyvJJdfZNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUCY0-0005xH-3s; Fri, 24 May 2019 15:55:56 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUCXu-0005wv-H7
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 15:55:52 +0000
Received: by mail-io1-xd44.google.com with SMTP id e19so8157360iob.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 08:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uPv8IlVUlBLwszar8g8FSyr6oh1PreAw0BWGgT17m24=;
 b=zN/BTNZn0LZGxpBEPIZhk1wKtEpFPiCHlRTjgucAdR18Pt7sRBKyqapFTzQyhxavY8
 UI9bigXT2uxU4dzlGdUqnTLLuRHADTEv4IoyQ7/Ek/WCrpae8idVHwyoMjHmlZjpV7Tr
 IPs4ocWr8NpRtBoH/MiVU6Unhc7niQvJLstnUwcT1L2llRU6lc/z+UY7XydKUmc8yfDU
 xkXzyzd4CSsL83TThPC29ntfrRnbR4P9DG2ugI8LxnBzULCzYMWMskIiP8AzjoITY8JD
 EDeG+3UWY6QoSErXUeqBr1tlUf1UTppFw8ei2Bp/rbx1c6DsAiAz5h8OASbGc0vpOqAZ
 V1cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uPv8IlVUlBLwszar8g8FSyr6oh1PreAw0BWGgT17m24=;
 b=T6ShQoD43pLQP8BtxX0sFZR1wDVyVNvlCyLRWYF2g8T7CW4CNQXZvkJLnzMu8ZU+MY
 /kB1P7FeGqzYJjDaJ5GE+N9JO7Ql8N/+MBGRYyZ+49RIe0HCXkL8/4QX6SKKN/Pu/Vco
 iYNDKyI1RbVclQhOzu97KEzJR5BIAp8J735e+kqKfqPfqzJIXqcAVqw36WpFUELQrbUm
 tdt86VkbNch89Pturns1ttNDAggss+8WvyLRWf2sqFLsKYtsBcQY2jbdFvx7yqOHM3Eg
 W6xOXPacAuJxqmeWBubMLEJSZScEMEJLnB5CkQUO+vcHcWBJZv+RKdNn906hChjOMIYB
 TfYA==
X-Gm-Message-State: APjAAAXaYjJhxgTdzuP8rxZ9QGMAXiPYr0KIwBO8naPrmM33gem6BIl6
 6ECCreOMYek+2K6Yu0UWRyPhD6EuqcUfXGG9FSViGC9GsGJanA==
X-Google-Smtp-Source: APXvYqwhm3jEW34q28TbZPmwtVwwgOdDHaEQ/30VOmVViott9njZcxNX77f2A7JMRhUtrAwaC0WF+d0k/un9tP4kEos=
X-Received: by 2002:a05:6602:2109:: with SMTP id
 x9mr17805156iox.128.1558713348970; 
 Fri, 24 May 2019 08:55:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190522150239.19314-1-ard.biesheuvel@arm.com>
 <293c9d0f-dc14-1413-e4b4-4299f0acfb9e@arm.com>
 <f2141ee5-d07a-6dd9-47c6-97e8fbdccf34@arm.com>
 <20190523091811.GA26646@fuggles.cambridge.arm.com>
 <907a9681-cd1d-3326-e3dd-5f6965497720@arm.com>
 <20190524152045.w3syntzp4bb5jb7u@treble>
In-Reply-To: <20190524152045.w3syntzp4bb5jb7u@treble>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 24 May 2019 17:55:37 +0200
Message-ID: <CAKv+Gu9DLf9y2uqTo407gLK3AX3pq+HGFxytsoR9C2zfGdUc-A@mail.gmail.com>
Subject: Re: [PATCH] module/ksymtab: use 64-bit relative reference for target
 symbol
To: Josh Poimboeuf <jpoimboe@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_085550_587961_C8A327BA 
X-CRM114-Status: GOOD (  33.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-arch <linux-arch@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 guillaume.gardet@arm.com, Marc Zyngier <marc.zyngier@arm.com>,
 the arch/x86 maintainers <x86@kernel.org>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>, Ard Biesheuvel <ard.biesheuvel@arm.com>,
 Jessica Yu <jeyu@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 24 May 2019 at 17:21, Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Thu, May 23, 2019 at 10:29:39AM +0100, Ard Biesheuvel wrote:
> >
> >
> > On 5/23/19 10:18 AM, Will Deacon wrote:
> > > On Thu, May 23, 2019 at 09:41:40AM +0100, Ard Biesheuvel wrote:
> > > >
> > > >
> > > > On 5/22/19 5:28 PM, Ard Biesheuvel wrote:
> > > > >
> > > > >
> > > > > On 5/22/19 4:02 PM, Ard Biesheuvel wrote:
> > > > > > The following commit
> > > > > >
> > > > > >     7290d5809571 ("module: use relative references for __ksymtab entries")
> > > > > >
> > > > > > updated the ksymtab handling of some KASLR capable architectures
> > > > > > so that ksymtab entries are emitted as pairs of 32-bit relative
> > > > > > references. This reduces the size of the entries, but more
> > > > > > importantly, it gets rid of statically assigned absolute
> > > > > > addresses, which require fixing up at boot time if the kernel
> > > > > > is self relocating (which takes a 24 byte RELA entry for each
> > > > > > member of the ksymtab struct).
> > > > > >
> > > > > > Since ksymtab entries are always part of the same module as the
> > > > > > symbol they export (or of the core kernel), it was assumed at the
> > > > > > time that a 32-bit relative reference is always sufficient to
> > > > > > capture the offset between a ksymtab entry and its target symbol.
> > > > > >
> > > > > > Unfortunately, this is not always true: in the case of per-CPU
> > > > > > variables, a per-CPU variable's base address (which usually differs
> > > > > > from the actual address of any of its per-CPU copies) could be at
> > > > > > an arbitrary offset from the ksymtab entry, and so it may be out
> > > > > > of range for a 32-bit relative reference.
> > > > > >
> > > >
> > > > (Apologies for the 3-act monologue)
> > >
> > > Exposition, development and recapitulation ;)
> > >
> > > > This turns out to be incorrect. The symbol address of per-CPU variables
> > > > exported by modules is always in the vicinity of __per_cpu_start, and so it
> > > > is simply a matter of making sure that the core kernel is in range for
> > > > module ksymtab entries containing 32-bit relative references.
> > > >
> > > > When running the arm64 with kaslr enabled, we currently randomize the module
> > > > space based on the range of ADRP/ADD instruction pairs, which have a -/+ 4
> > > > GB range rather than the -/+ 2 GB range of 32-bit place relative data
> > > > relocations. So we can fix this by simply reducing the randomization window
> > > > to 2 GB.
> > >
> > > Makes sense. Do you see the need for an option to disable PREL relocs
> > > altogether in case somebody wants the additional randomization range?
> > >
> >
> > No, not really. To be honest, I don't think
> > CONFIG_RANDOMIZE_MODULE_REGION_FULL is that useful to begin with, and the
> > only reason we enabled it by default at the time was to ensure that the PLT
> > code got some coverage after we introduced it.
>
> In code, percpu variables are accessed with absolute relocations, right?

No, they are accessed just like ordinary symbols, so PC32 references
on x86 or ADRP/ADD references on arm64 are both quite common.

> Before I read your 3rd act, I was wondering if it would make sense to do
> the same with the ksymtab relocations.
>
> Like if we somehow [ insert much hand waving ] ensured that everybody
> uses EXPORT_PER_CPU_SYMBOL() for percpu symbols instead of just
> EXPORT_SYMBOL() then we could use a different macro to create the
> ksymtab relocations for percpu variables, such that they use absolute
> relocations.
>
> Just an idea.  Maybe the point is moot now.
>

The problem is that we already have four different ksymtab sections:
normal, GPL, future GPL and unused, and adding the orthogonal per-CPU
property to that would double it to 8.

Since the purpose of the place relative ksymtabs applies to the core
kernel only, another thing I contemplated is using a different ksymtab
format between modules and the core kernel, but that is another can of
worms that I'd rather not open.

But it is indeed moot now ...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
