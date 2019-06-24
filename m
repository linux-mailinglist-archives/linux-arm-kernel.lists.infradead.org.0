Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A5550E13
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NYs/EjpzAF6dt1NAj57M8HaEajipbNCVEAqSoaSNsas=; b=o3ja3wq3UWNRa2
	ISmoHLuW7EP8mZL/aauynrM4eKzvJaTpAWk+Du4HKNz+riQhbrvk+lZ7Oj5N2eFF+MOR4sgblE8Vx
	71lKgT15nhnLHpTfO4kT2kWyw9mLUHT9kN0QRY2TXZP4ydddJdzvQ1JcFTSRrAd8M3ejTe1gZSyYb
	Km+z/U/QWPtIrM4r9D/N0HNunCXKhqaIVzSflHzEZErvCL+TbSk10fdLCZNeOlYBCkOxP6Y/S5BXe
	XmDD9d9uQS1X7fxO/WgUrGY5Tpu1wHoDV66osnrYODHHbaerMZPKiQB88SKVj2Nh9fv5JMKoW5n+/
	6Il1NBBcN1nJw7R8fBFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPzw-0003gx-GR; Mon, 24 Jun 2019 14:31:08 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPyh-0001rS-Ao
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:30:10 +0000
Received: by mail-io1-xd41.google.com with SMTP id i10so486949iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KLDSqUOdMe9MkrCouXk1jv/Ee4JAOZniqc4nsexubdo=;
 b=SWNY7UqeTaGhXp/3PP16Bk7RCsVd28PMBdKweU3IFOJXIpsZR6llO9l6t+4CuKFZzk
 DoBzQDK1Aa0E1F2j5J7GBdddh2HWFwhQBIjCSkkmZ3FS1LUO6fj5gI/aFUlNhJRbSXMr
 SPs9adEfb1TKx4mq8ErXyoVGUMzKrfI3d0MdG886/zHbGFLEiHMei3C6vg9odoYoug0y
 rHmXfcwpJzDBlQP/RDzKRhkz0z57NyNF1CNlDxmWj3LKKaNYElHycgiDDfNvMOpfaTlm
 VwoC7rQH85xtR9Di1oC6us/rPKIDKqqlES+BVxkJfiPRJ3s/LUnF1Le2n4vmy2kk9k8r
 7wOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KLDSqUOdMe9MkrCouXk1jv/Ee4JAOZniqc4nsexubdo=;
 b=s3o5zDrncoRhLKJwyNEv2ql4/tMiS9AXKuyTkXSI0wQz8QQ4BdEzXLBnODQjreePft
 nwS/7Xd5Mwu4kPazbG8UQYvuI08zCJCX5jWyYYcl9Wpj51ZdIh5fnNhhNasCTW3V/ZlQ
 CYE1KlENJWLRB8i6bRcRVMfrz/hfBiHKXu9RfXejEQq5VCr24OmEt8LWtIb+7YHUqNF9
 3aaLeWIwJIgBIa7nHQv8sKrVVsHM+Q1bvSS+8rEvc3I2Gix2f2rAtuJFKUiuzwI4ElB4
 8cir6BnWvyHelW2EkacTQ0Dfr27HqvoVHmLCiBCw0iePaY6yHkKEgCqPYT5tsgn4+uxp
 Y6oA==
X-Gm-Message-State: APjAAAWGZ7AqPrmnqy1BmKqjdf6t6kS9I3O6EMdTU7+h5b2bQFNUG7DX
 OKVrDtHUia22pCFvs4ZB5O6lHTggBOHkIKmy82qs/Q==
X-Google-Smtp-Source: APXvYqyREa1fE3eVop3ZkfvlBbG2x/4F3cy2bnWtfffx86CIFY9fPaGXRwSIMoSV5k/qu46L7QCuZMv87Up4HzKMWTI=
X-Received: by 2002:a02:5a89:: with SMTP id
 v131mr17639966jaa.130.1561386590504; 
 Mon, 24 Jun 2019 07:29:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190523102256.29168-1-ard.biesheuvel@arm.com>
 <20190528100413.GA20809@fuggles.cambridge.arm.com>
 <20190624111600.b7e5kkfvuszj6522@willie-the-truck>
 <07e3d9ea-b917-2adb-6f88-0f1a31692d04@arm.com>
In-Reply-To: <07e3d9ea-b917-2adb-6f88-0f1a31692d04@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 24 Jun 2019 16:29:39 +0200
Message-ID: <CAKv+Gu9VcXuz8P7-2=MZjDj-7nVOEA8FUE1fRYTvtt1mvt99Yw@mail.gmail.com>
Subject: Re: [PATCH 0/4] arm64: wire up VM_FLUSH_RESET_PERMS
To: Ard Biesheuvel <ard.biesheuvel@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_072951_453105_B6C846D4 
X-CRM114-Status: GOOD (  21.52  )
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
 Masami Hiramatsu <mhiramat@kernel.org>, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Rick Edgecombe <rick.p.edgecombe@intel.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(+ Catalin)

On Mon, 24 Jun 2019 at 13:23, Ard Biesheuvel <ard.biesheuvel@arm.com> wrote:
>
> On 6/24/19 1:16 PM, Will Deacon wrote:
> > On Tue, May 28, 2019 at 11:04:20AM +0100, Will Deacon wrote:
> >> On Thu, May 23, 2019 at 11:22:52AM +0100, Ard Biesheuvel wrote:
> >>> Wire up the code introduced in v5.2 to manage the permissions
> >>> of executable vmalloc regions (and their linear aliases) more
> >>> strictly.
> >>>
> >>> One of the things that came up in the internal discussion is
> >>> whether non-x86 architectures have any benefit at all from the
> >>> lazy vunmap feature, and whether it would perhaps be better to
> >>> implement eager vunmap instead.
> >>>
> >>> Cc: Nadav Amit <namit@vmware.com>
> >>> Cc: Rick Edgecombe <rick.p.edgecombe@intel.com>
> >>> Cc: Peter Zijlstra <peterz@infradead.org>
> >>> Cc: Andrew Morton <akpm@linux-foundation.org>
> >>> Cc: Will Deacon <will.deacon@arm.com>
> >>> Cc: Masami Hiramatsu <mhiramat@kernel.org>
> >>> Cc: James Morse <james.morse@arm.com>
> >>>
> >>> Ard Biesheuvel (4):
> >>>    arm64: module: create module allocations without exec permissions
> >>>    arm64/mm: wire up CONFIG_ARCH_HAS_SET_DIRECT_MAP
> >>>    arm64/kprobes: set VM_FLUSH_RESET_PERMS on kprobe instruction pages
> >>>    arm64: bpf: do not allocate executable memory
> >>>
> >>>   arch/arm64/Kconfig                  |  1 +
> >>>   arch/arm64/include/asm/cacheflush.h |  3 ++
> >>>   arch/arm64/kernel/module.c          |  4 +-
> >>>   arch/arm64/kernel/probes/kprobes.c  |  4 +-
> >>>   arch/arm64/mm/pageattr.c            | 48 ++++++++++++++++----
> >>>   arch/arm64/net/bpf_jit_comp.c       |  2 +-
> >>>   mm/vmalloc.c                        | 11 -----
> >>>   7 files changed, 50 insertions(+), 23 deletions(-)
> >>
> >> Thanks, this all looks good to me. I can get pick this up for 5.2 if
> >> Rick's fixes [1] land soon enough.
> >
> > Bah, I missed these landing in -rc5 and I think it's a bit too late for
> > us to take this for 5.2. now particularly with our limited ability to
> > fix any late regressions that might arise.
> >
> > In which case, Catalin, please can you take these for 5.3? You might run
> > into some testing failures with for-next/core due to the late of Rick's
> > fixes, but linux-next should be alright and I don't think you'll get any
> > conflicts.
> >
> > Acked-by: Will Deacon <will@kernel.org>
> >
> > Ard: are you ok with that?
> >
>
> That is fine, although I won't be around to pick up the pieces by the
> time the merge window opens. Also, I'd like to follow up on the lazy
> vunmap thing for non-x86, but perhaps we can talk about this at plumbers?
>

Actually, you will run into a couple of conflicts. Let me know if you
want me to respin (although they still won't apply cleanly to both
for-next/core and -next)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
