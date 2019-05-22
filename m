Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3F025B05
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 02:04:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U4hJZVcIG1VecJX8znFi51gyknBa1yTjthlwB440Idg=; b=l9+n3BZwPMD440
	ahefbpygfcSRge5C+/Hg8PvLmniBcS9HeUiqAldYdnNgDHVbZbGEVvwLpTSAIwZ4hVP+S8HOMIEhN
	csMeAgpaC/Yz8MKx8TO1V+1pOHe7wKgWxF+rfuP08MxKS33xvslzgnrCEjPfwngh+uYPYDOwPSXz6
	WYnuwLoLue+9Q5IF6rdfmo15OQySZ7x9jNcBquQQbMyw4DSnjtGKK6Y5Mne2/VZ92IHNwNj1792yk
	846ibUcPbGKG8uL06OtzupW2szNYqATfP5IgVYD97ozMoyDgtUj8jIy1vFKKIfacJneOmPgqNg/MP
	4vgWux/05VvZ6Ok1OuFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTEkV-00078s-Fm; Wed, 22 May 2019 00:04:51 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTEkN-00078Z-GI
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 00:04:45 +0000
Received: by mail-pf1-x443.google.com with SMTP id s11so277246pfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 17:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=h+HMpjJbOByDkcgcmqTFcjwM/Zjfkc20s8NGwt76Mr8=;
 b=Zf9QLE33qmPluiR2OGF4dL2quucaUAVgN4YPizfJiTzAzfLxxGI5FlE9xizVc831A4
 PZROfhtKhT/R7pMFQlHGrknlILzZeG3LHD5gyBNKzIo1iuXRcoC6OuM/wsNOYEBlL6Lp
 KGXm5hniO64celTxThJARG41BLIiM0pmyycsI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=h+HMpjJbOByDkcgcmqTFcjwM/Zjfkc20s8NGwt76Mr8=;
 b=mce9ln1GIvP8T8nSoZAZcLjdELB8sn41GMCj5pufEzIxGKmNrKPN8+umS9IOz/jX5A
 RfIjpiRx9g6vDyG/BXI8pKjTlAsA9ClYugTRoqZAdo5XApAPsEgPr9Ph7XP8KtwAflMC
 IzuNrE+Tkmw+L45w9tv0aW7/IOtCDKLMv+Kl/8To3kAf22RzhUBhNXRPk9eIbth0hCbi
 rLJZHn32wSl/66sgQZVCTXoyEKtyWbk53zrcwb1zTogNHcPk91lbmEmaFgdRXHY0yykT
 xo+NcynwwE8tMxIrfEg/P5wpnr0PygyAdyQ08mSCUIXK8W2uTOA59qDnzj+kkmdqhfOk
 n7og==
X-Gm-Message-State: APjAAAXx7oafwZTWyqdKRaq0Vt9iDEYe9rxOpK26cDfCL5NlRpATyWju
 cTYsyyYK/GAn8goSbGTjmH/9/g==
X-Google-Smtp-Source: APXvYqyRHlp4k1ARvHRDx6pnXWJEks1ZEDsNIbDRibBeuJSxc6NZrbRUP3gWhA9hXypH8RUrMs25NQ==
X-Received: by 2002:a63:8dc8:: with SMTP id z191mr87505404pgd.9.1558483482349; 
 Tue, 21 May 2019 17:04:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id a11sm15675685pff.128.2019.05.21.17.04.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 17:04:40 -0700 (PDT)
Date: Tue, 21 May 2019 17:04:39 -0700
From: Kees Cook <keescook@chromium.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
Message-ID: <201905211633.6C0BF0C2@keescook>
References: <cover.1557160186.git.andreyknvl@google.com>
 <20190517144931.GA56186@arrakis.emea.arm.com>
 <CAFKCwrj6JEtp4BzhqO178LFJepmepoMx=G+YdC8sqZ3bcBp3EQ@mail.gmail.com>
 <20190521182932.sm4vxweuwo5ermyd@mbp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521182932.sm4vxweuwo5ermyd@mbp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_170443_572024_183D5747 
X-CRM114-Status: GOOD (  33.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Andrew Morton <akpm@linux-foundation.org>, Elliott Hughes <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 07:29:33PM +0100, Catalin Marinas wrote:
> On Mon, May 20, 2019 at 04:53:07PM -0700, Evgenii Stepanov wrote:
> > On Fri, May 17, 2019 at 7:49 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > IMO (RFC for now), I see two ways forward:
> > > [...]
> > > 2. Similar shim to the above libc wrapper but inside the kernel
> > >    (arch/arm64 only; most pointer arguments could be covered with an
> > >    __SC_CAST similar to the s390 one). There are two differences from
> > >    what we've discussed in the past:
> > >
> > >    a) this is an opt-in by the user which would have to explicitly call
> > >       prctl(). If it returns -ENOTSUPP etc., the user won't be allowed
> > >       to pass tagged pointers to the kernel. This would probably be the
> > >       responsibility of the C lib to make sure it doesn't tag heap
> > >       allocations. If the user did not opt-in, the syscalls are routed
> > >       through the normal path (no untagging address shim).
> > >
> > >    b) ioctl() and other blacklisted syscalls (prctl) will not accept
> > >       tagged pointers (to be documented in Vicenzo's ABI patches).
> >
> > The way I see it, a patch that breaks handling of tagged pointers is
> > not that different from, say, a patch that adds a wild pointer
> > dereference. Both are bugs; the difference is that (a) the former
> > breaks a relatively uncommon target and (b) it's arguably an easier
> > mistake to make. If MTE adoption goes well, (a) will not be the case
> > for long.
> 
> It's also the fact such patch would go unnoticed for a long time until
> someone exercises that code path. And when they do, the user would be
> pretty much in the dark trying to figure what what went wrong, why a
> SIGSEGV or -EFAULT happened. What's worse, we can't even say we fixed
> all the places where it matters in the current kernel codebase (ignoring
> future patches).

So, looking forward a bit, this isn't going to be an ARM-specific issue
for long. In fact, I think we shouldn't have arm-specific syscall wrappers
in this series: I think untagged_addr() should likely be added at the
top-level and have it be a no-op for other architectures. So given this
becoming a kernel-wide multi-architecture issue (under the assumption
that x86, RISC-V, and others will gain similar TBI or MTE things),
we should solve it in a way that we can re-use.

We need something that is going to work everywhere. And it needs to be
supported by the kernel for the simple reason that the kernel needs to
do MTE checks during copy_from_user(): having that information stripped
means we lose any userspace-assigned MTE protections if they get handled
by the kernel, which is a total non-starter, IMO.

As an aside: I think Sparc ADI support in Linux actually side-stepped
this[1] (i.e. chose "solution 1"): "All addresses passed to kernel must
be non-ADI tagged addresses." (And sadly, "Kernel does not enable ADI
for kernel code.") I think this was a mistake we should not repeat for
arm64 (we do seem to be at least in agreement about this, I think).

[1] https://lore.kernel.org/patchwork/patch/654481/

> > This is a bit of a chicken-and-egg problem. In a world where memory
> > allocators on one or several popular platforms generate pointers with
> > non-zero tags, any such breakage will be caught in testing.
> > Unfortunately to reach that state we need the kernel to start
> > accepting tagged pointers first, and then hold on for a couple of
> > years until userspace catches up.
> 
> Would the kernel also catch up with providing a stable ABI? Because we
> have two moving targets.
> 
> On one hand, you have Android or some Linux distro that stick to a
> stable kernel version for some time, so they have better chance of
> clearing most of the problems. On the other hand, we have mainline
> kernel that gets over 500K lines every release. As maintainer, I can't
> rely on my testing alone as this is on a limited number of platforms. So
> my concern is that every kernel release has a significant chance of
> breaking the ABI, unless we have a better way of identifying potential
> issues.

I just want to make sure I fully understand your concern about this
being an ABI break, and I work best with examples. The closest situation
I can see would be:

- some program has no idea about MTE
- malloc() starts returning MTE-tagged addresses
- program doesn't break from that change
- program uses some syscall that is missing untagged_addr() and fails
- kernel has now broken userspace that used to work

The trouble I see with this is that it is largely theoretical and
requires part of userspace to collude to start using a new CPU feature
that tickles a bug in the kernel. As I understand the golden rule,
this is a bug in the kernel (a missed ioctl() or such) to be fixed,
not a global breaking of some userspace behavior.

I feel like I'm missing something about this being seen as an ABI
break. The kernel already fails on userspace addresses that have high
bits set -- are there things that _depend_ on this failure to operate?

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
