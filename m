Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3C3283EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 18:38:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=daH32JQPKYvolLItz/NuClR9FrJn64qYugiTvxibEBU=; b=tf8cFe2dUaiv2i
	Awci4sLg2vPjGxcEmcZTjmMcaDFsUpA+mGi9jdo2NTy8rRBoiHJ/cMb6kbpjkX/W0V3PWMATs+8/t
	ahdJ5vgwQrr8CIaGol3d553ChlCY4zWxMWI9qJIYROzAiSscTvYcVnafz0xAB3VFoZPCB4+wd9BUB
	ZrnhjotvA2hvIOoEtmr5wxTxASzyd/tAHPRSJuNOUNEiMEdH7P766vlIF8uOVih/dNpBG+sluDzGV
	Ec3u1paKOrDEr0/va7pupxQ1/3+kefNXKFFKtt4oveJgQ6QDLbx5TxnQq/fCsT4bNKvIHrBTuTu1z
	DzB4S5vQUlRQpFsOPBbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTqjf-0004c9-Ne; Thu, 23 May 2019 16:38:31 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTqjW-0004b9-U3
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 16:38:24 +0000
Received: by mail-pl1-x644.google.com with SMTP id g69so2972023plb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 09:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=lscewINPN3hq/l0Swcavzj6U0JCykRwN+VKQYmeGavk=;
 b=MzIBf/cg8HqX7LDHDmH3NduBH/GNHyk36BoEHjmaEfwdA0mOkdLBAg0EUXF7biIGPX
 1D7AzOrIM750xRnkubOq1jGRkMcjIZjIYf+kPatHpylhUSqCQfdwGLTrWn4J8esTRBLk
 Xcvmw1TY3lT5og+Fj9TWzv82uZX9wel5U8qi8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=lscewINPN3hq/l0Swcavzj6U0JCykRwN+VKQYmeGavk=;
 b=BB1d0LlWLkDUCmPXiWB+8yWskQ4XbsVMW1rjBmN3fLvz9eWHLDFfemlwRA9uV2r3vB
 RlOV6OBog9oInE4iqDPI0z4Z9Pmq8j1cm0+UmnVb+sVvlkv8fNW/2lv4ETGhX+rav1/v
 +6yoCacHL98eRyb3FCES1TIl8je865WLch8PQbHT2ZBk5AECiDaHPNfvmMmKw3R2wBmJ
 bhuGJZ2Qrci31NYQ47f6VHYPUPQpaEWnRQFNpR+zdifKQWYELf+pvdPkThBbztDvtNub
 ASbWJh0GhSqYal9wmnsGfgE/MhJx+SyKmv/L9a6Lt+fQAcLU+Tj0j9KM4Dzby4wv92/X
 OddA==
X-Gm-Message-State: APjAAAVu5QAHcnWGKCg+5cqDW78HrQALetDdbkgGeXw5eVTNthDBge/t
 0QQBi6klr9qVLBcFWz+5Gs2dlQ==
X-Google-Smtp-Source: APXvYqzxDNUT+zQ+3IUTM4Pfo29z2ussIuDSTH+Mz2tPZncaJ19KDxQ7w12Ra519k713lyeCzNKlsQ==
X-Received: by 2002:a17:902:2aa6:: with SMTP id
 j35mr17743251plb.189.1558629502290; 
 Thu, 23 May 2019 09:38:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id g19sm56536684pgj.75.2019.05.23.09.38.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 09:38:21 -0700 (PDT)
Date: Thu, 23 May 2019 09:38:19 -0700
From: Kees Cook <keescook@chromium.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
Message-ID: <201905230917.DEE7A75EF0@keescook>
References: <cover.1557160186.git.andreyknvl@google.com>
 <20190517144931.GA56186@arrakis.emea.arm.com>
 <CAFKCwrj6JEtp4BzhqO178LFJepmepoMx=G+YdC8sqZ3bcBp3EQ@mail.gmail.com>
 <20190521182932.sm4vxweuwo5ermyd@mbp>
 <201905211633.6C0BF0C2@keescook>
 <20190522101110.m2stmpaj7seezveq@mbp>
 <CAJgzZoosKBwqXRyA6fb8QQSZXFqfHqe9qO9je5TogHhzuoGXJQ@mail.gmail.com>
 <20190522163527.rnnc6t4tll7tk5zw@mbp>
 <201905221316.865581CF@keescook>
 <20190523144449.waam2mkyzhjpqpur@mbp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523144449.waam2mkyzhjpqpur@mbp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_093822_990612_C2E3BECD 
X-CRM114-Status: GOOD (  37.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgenii Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Yishai Hadas <yishaih@mellanox.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 03:44:49PM +0100, Catalin Marinas wrote:
> There is also the obvious requirement which I didn't mention: new user
> space continues to run on new/subsequent kernel versions. That's one of
> the points of contention for this series (ignoring MTE) with the
> maintainers having to guarantee this without much effort. IOW, do the
> 500K+ new lines in a subsequent kernel version break any user space out
> there? I'm only talking about the relaxed TBI ABI. Are the usual LTP,
> syskaller sufficient? Better static analysis would definitely help.

We can't have perfect coverage of people actively (or accidentally)
working to trick static analyzers (and the compiler) into "forgetting"
about a __user annotation. We can certainly improve analysis (I see
the other sub-thread on that), but I'd like that work not to block
this series.

What on this front would you be comfortable with? Given it's a new
feature isn't it sufficient to have a CONFIG (and/or boot option)?

> Or, if we ever want MTE to be turned on by default (i.e. tag checking),
> even if everything is tagged with 0, we have to disallow TBI for user
> and this includes hwasan. There were a small number of programs using
> the TBI (I think some JavaScript compilers tried this). But now we are
> bringing in the hwasan support and this can be a large user base. Shall
> we add an ELF note for such binaries that use TBI/hwasan?

Just to be clear, you say "disallow TBI for user" -- you mean a
particular process, yes? i.e. there is no architectural limitation that
says once we're using MTE nothing can switch to TBI. i.e. a process is
either doing MTE or TBI (or nothing, but that's the same as TBI).

> This needs solving as well. Most driver developers won't know why
> untagged_addr() is needed unless we have more rigorous types or type
> annotations and a tool to check them (we should probably revive the old
> sparse thread).

This seems like a parallel concern: we can do that separately from this
series. Without landing it, is it much harder for people to test it,
look for bugs, help with types/annotations, etc.

> > So there needs to be some way to let the kernel know which of three
> > things it should be doing:
> > 1- leaving userspace addresses as-is (present)
> > 2- wiping the top bits before using (this series)
> 
> (I'd say tolerating rather than wiping since get_user still uses the tag
> in the current series)
> 
> The current series does not allow any choice between 1 and 2, the
> default ABI basically becomes option 2.

What about testing tools that intentionally insert high bits for syscalls
and are _expecting_ them to fail? It seems the TBI series will break them?
In that case, do we need to opt into TBI as well?

> > 3- wiping the top bits for most things, but retaining them for MTE as
> >    needed (the future)
> 
> 2 and 3 are not entirely compatible as a tagged pointer may be checked
> against the memory colour by the hardware. So you can't have hwasan
> binary with MTE enabled.

Right: a process must be either MTE or TBI, not both.

> > I expect MTE to be the "default" in the future. Once a system's libc has
> > grown support for it, everything will be trying to use MTE. TBI will be
> > the special case (but TBI is effectively a prerequisite).
> 
> The kernel handling of tagged pointers is indeed a prerequisite. The ABI
> distinction between the above 2 and 3 needs to be solved.

Does that need solving now or when the MTE series appears? As there is
no reason to distinguish between "normal" and "TBI", that doesn't seem
to need solving at this point?

> > AFAICT, the only difference I see between 2 and 3 will be the tag handling
> > in usercopy (all other places will continue to ignore the top bits). Is
> > that accurate?
> 
> Yes, mostly (for the kernel). If MTE is enabled by default for a hwasan
> binary, it will SEGFAULT (either in user space or in kernel uaccess).
> How does the kernel choose between 2 and 3?

Right -- that was my question as well.

> > Is "1" a per-process state we want to keep? (I assume not, but rather it
> > is available via no TBI/MTE CONFIG or a boot-time option, if at all?)
> 
> Possibly, though not necessarily per process. For testing or if
> something goes wrong during boot, a command line option with a static
> label would do. The AT_FLAGS bit needs to be checked by user space. My
> preference would be per-process.

I would agree.

> > To choose between "2" and "3", it seems we need a per-process flag to
> > opt into TBI (and out of MTE).
> 
> Or leave option 2 the default and get it to opt in to MTE.

Given that MTE has to "start" at some point in the binary lifetime, I'm
fine with opting into MTE. I do expect, though, this will feel redundant
in a couple years as everything will immediately opt-in. But, okay, this
is therefore an issue for the MTE series.

> The current plan is that a future binary issues a prctl(), after
> checking the HWCAP_MTE bit (as I replied to Elliot, the MTE instructions
> are not in the current NOP space). I'd expect this to be done by the
> libc or dynamic loader under the assumption that the binaries it loads
> do _not_ use the top pointer byte for anything else. With hwasan
> compiled objects this gets more confusing (any ELF note to identify
> them?).

Okay, sounds fine.

> (there is also the risk of existing applications using TBI already but
> I'm not aware of any still using this feature other than hwasan)

Correct.


Alright, the tl;dr appears to be:
- you want more assurances that we can find __user stripping in the
  kernel more easily. (But this seems like a parallel problem.)
- we might need to opt in to TBI with a prctl()
- all other concerns are for the future MTE series (though it sounds
  like HWCAP_MTE and a prctl() solve those issues too).

Is this accurate? What do you see as the blockers for this series at
this point?

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
