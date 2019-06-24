Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4769351961
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 19:16:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ynX4988cngdonvvE1y5y+U8q6PkIWozBx0IRalxcMhA=; b=DIj6b0Nhkxnsrh
	bfit178vzwg+Vx9RZNXNvrxoAhn0VomK6OTHr+p5mHXn8ed9YtEuRST+ppm3nWhvCxcyDAA6ahEVk
	zp60CYNzAPrvI8pAlON6XSSvJCquesa7S0ZT++ek6D4/lXQQZfVKYkAe2PqddygTGE/3E8SbAe/nb
	mbCVdPBX2qZMKiQjGBnH4Kp7OM0oh+2UW0AZgmtcs5BJ+1h7n+3IyDFWLAEG1warBcC+a1DRozMUC
	PrJSAINg3m7Ned1RhJZX1UUjZCNO2ZaJgg9yVaXWlXr0Fwactof3VakRTF5JksRXuAOWHrTfdBRph
	fjQ36FtFxMa9NxIKU60g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfSZj-0005OY-UM; Mon, 24 Jun 2019 17:16:16 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfSZX-0005O7-1t
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 17:16:04 +0000
Received: by mail-io1-xd41.google.com with SMTP id i10so1784738iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 10:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g6KR75hh9p9LQvATREMdziRPKl8qsGfYDtGRnDFkfxQ=;
 b=B+lyZQLddAB4n+QEZiL/i74A/XWU56eo9exzRts+SlhOJz90tX+O7QXRuJGuvJ0eA1
 hVc1WoxC/0DIWnStNLewcHDIi2C67XL9PLgIZVPisO8WuE4YN26Jrm1/Ams8hkzxt3py
 Js2luR1OYLxKjAeZB/DcDgqw8QV8n0frzbZt88yXHTeOtUTpz/+KlwwzcNJo7CDz+xhf
 QKG3GOhFdb1VxAYfiflu9u/abji1MzvGST6Fq5YumOsnzg5dhsp0twXh0FwJYhC89nwf
 CK9sL1w7lp06B9wUDXTMd01yKiTp1rY7Tc52MpeY5/fi8QssKajDpCcl0KkriJNz5FLx
 l1KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g6KR75hh9p9LQvATREMdziRPKl8qsGfYDtGRnDFkfxQ=;
 b=d73+6lAlkEv/py6CJjeyMGIp6oMz9qQCKqktJ6sF8bMfOYxh0+6HahO+lLNC1yNt9y
 uyBoI39wly0ndJaC6i9PW2I0t+wb3jrPdGJzLGU5DG94mh70xnHNXT/aWwLHbboS/xcq
 cB3XI4y5cO40iSQ0MI7kCzw41Up+6HLKbfOD3UFPffHAeXq7F8FMtr9s9+N+AwMay3Zj
 o1CJBtGS/FLbSeqJy77z9IEzNmkRJV9oFuN++RTZwM/JkzgBVGqSXsVKhjZ2OIJqX6GD
 lGSe+gFNdDiq/LZ3pkwtacoJeqX7+MXCj58Mh9rc0MEnD+LfUHDUCR9P/Na3gVssvSmH
 p6Nw==
X-Gm-Message-State: APjAAAV4atkdHT03msIIi8lhtUn7+YGrYvoyg5sHyhYDuWTehw6u1zly
 tnKR7x87RkDzdCy6SUhyCeLAoAfbFaf1cxtQKDmWTg==
X-Google-Smtp-Source: APXvYqzOIxLbpEhUWndgunsplFFqiKMNJzzxea8U9jzy1xBWc+igVXAx4gtx1Tv5bYL60xf/MX2qoVdkttxigtdBT/Y=
X-Received: by 2002:a05:6602:98:: with SMTP id
 h24mr22683948iob.49.1561396561811; 
 Mon, 24 Jun 2019 10:16:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190523102256.29168-1-ard.biesheuvel@arm.com>
 <20190528100413.GA20809@fuggles.cambridge.arm.com>
 <20190624111600.b7e5kkfvuszj6522@willie-the-truck>
 <07e3d9ea-b917-2adb-6f88-0f1a31692d04@arm.com>
 <CAKv+Gu9VcXuz8P7-2=MZjDj-7nVOEA8FUE1fRYTvtt1mvt99Yw@mail.gmail.com>
 <20190624171358.GI29120@arrakis.emea.arm.com>
In-Reply-To: <20190624171358.GI29120@arrakis.emea.arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 24 Jun 2019 19:15:50 +0200
Message-ID: <CAKv+Gu_xeduZY4gHJ4snRaGRNh=fdkUW3Y4t__BLmo3v75gb4g@mail.gmail.com>
Subject: Re: [PATCH 0/4] arm64: wire up VM_FLUSH_RESET_PERMS
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_101603_106573_5E34F984 
X-CRM114-Status: GOOD (  23.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Nadav Amit <namit@vmware.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Rick Edgecombe <rick.p.edgecombe@intel.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Jun 2019 at 19:14, Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Mon, Jun 24, 2019 at 04:29:39PM +0200, Ard Biesheuvel wrote:
> > On Mon, 24 Jun 2019 at 13:23, Ard Biesheuvel <ard.biesheuvel@arm.com> wrote:
> > > On 6/24/19 1:16 PM, Will Deacon wrote:
> > > > On Tue, May 28, 2019 at 11:04:20AM +0100, Will Deacon wrote:
> > > >> On Thu, May 23, 2019 at 11:22:52AM +0100, Ard Biesheuvel wrote:
> > > >>> Ard Biesheuvel (4):
> > > >>>    arm64: module: create module allocations without exec permissions
> > > >>>    arm64/mm: wire up CONFIG_ARCH_HAS_SET_DIRECT_MAP
> > > >>>    arm64/kprobes: set VM_FLUSH_RESET_PERMS on kprobe instruction pages
> > > >>>    arm64: bpf: do not allocate executable memory
> > > >>>
> > > >>>   arch/arm64/Kconfig                  |  1 +
> > > >>>   arch/arm64/include/asm/cacheflush.h |  3 ++
> > > >>>   arch/arm64/kernel/module.c          |  4 +-
> > > >>>   arch/arm64/kernel/probes/kprobes.c  |  4 +-
> > > >>>   arch/arm64/mm/pageattr.c            | 48 ++++++++++++++++----
> > > >>>   arch/arm64/net/bpf_jit_comp.c       |  2 +-
> > > >>>   mm/vmalloc.c                        | 11 -----
> > > >>>   7 files changed, 50 insertions(+), 23 deletions(-)
> > > >>
> > > >> Thanks, this all looks good to me. I can get pick this up for 5.2 if
> > > >> Rick's fixes [1] land soon enough.
> > > >
> > > > Bah, I missed these landing in -rc5 and I think it's a bit too late for
> > > > us to take this for 5.2. now particularly with our limited ability to
> > > > fix any late regressions that might arise.
> > > >
> > > > In which case, Catalin, please can you take these for 5.3? You might run
> > > > into some testing failures with for-next/core due to the late of Rick's
> > > > fixes, but linux-next should be alright and I don't think you'll get any
> > > > conflicts.
> > > >
> > > > Acked-by: Will Deacon <will@kernel.org>
> > > >
> > > > Ard: are you ok with that?
> > >
> > > That is fine, although I won't be around to pick up the pieces by the
> > > time the merge window opens. Also, I'd like to follow up on the lazy
> > > vunmap thing for non-x86, but perhaps we can talk about this at plumbers?
> >
> > Actually, you will run into a couple of conflicts. Let me know if you
> > want me to respin (although they still won't apply cleanly to both
> > for-next/core and -next)
>
> I queued them in for-next/core (and fixed a minor conflict). Thanks.
>

OK, in that case, you will get a conflict in -next on the hunk against
mm/vmalloc.c in the second patch. Just FYI ...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
