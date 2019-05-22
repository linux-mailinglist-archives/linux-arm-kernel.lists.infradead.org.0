Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F4126ACC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 21:21:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PR5ZY/VR/B1Q978HpbkjO2+iTDF2FSjF12nKu4UlvLE=; b=r+htNUMvWucK8i
	J98UqdD6sa85btS5ZeGpBkKFDy3NhBrHMDdFFb9m+6AJ1riLMq69B3ygO4L9jbMlVj9IhhmUUbiSE
	wVx6LeXpg9xmbua2sw+BfNGBhF9OXrxXfYgxp5k5G/AnmnaoWxMozPbDFZfMicV9q0z148u9xbdMI
	+MKYR1yUQ6/Y5E+2OAQLGZ6H/Om+GNuRA4aG2ttWgoW/FXua4YRl0gHjh4KYrgYxrpAk/Y59UzJqf
	5pkyaDiRhnwnHpwV41IcGTfEC0Ro+wmfg/WWyv9wukUx8ymjeNCpCQHEGORA6OKyl0dc7hIYlb5pz
	n+aX/4wWWtaDG2GFsB7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTWnx-0001H3-Rn; Wed, 22 May 2019 19:21:37 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTWnq-0001Fv-Pb
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 19:21:32 +0000
Received: by mail-pg1-x544.google.com with SMTP id f25so1789795pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 12:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=NP4JWkHqbCIs5rs8MQbZ/rJv31PHu50+VP85AcMzbbU=;
 b=GFshwxVjgFyTBuVsTzhm7IUt1UjnhWPD0MinKNguPB3el83BFNud8bHr5plz3emii+
 cTc7Cjy2KfiVySMa4vl3S45MUDV6ughBv+eP5o9C9KIg6ntk97RzOYluREumaUsuEfOH
 SjJgP3hh0ohPvQPPbSdKkfRYeqkQoVWPqO5e4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NP4JWkHqbCIs5rs8MQbZ/rJv31PHu50+VP85AcMzbbU=;
 b=eSxOX9+VFZ/VljfAM/swo9eE4jw/XXKGZpmPdQz1qyAyfw/XjdowmA+xb1jfv+i/R/
 jMtPiROlYvl6ED9GoJx5FY++NXFC9WSiqOhR3UdV5nrh0Q5kToTvAmOr7GlRwlWwRqd+
 EqGi/e/KEC/d915HmM60Uvip0SIhDM90PYkwqiNVSaEj61I3h2lB13RxSRFXIIv6HSaR
 GimbfKjXJy0Kc1GZkaJbLjxXUIMdgWD1fDoWyBGSWJmAJQ33NVh51EkO5ZZD65MDqGyo
 rVw8J3ZZFDKMlWopX6wbwTK+Ua64uZ8iO7hFFdvsuvkL5eXCabOI+rCc0ybyZF1RzEOt
 fbLQ==
X-Gm-Message-State: APjAAAVlVX6YgXn0vNG50jzuHBDObZYT7Srja2g9Io0zGas79b6ftvm6
 j4yPdF/eiptTPhPD3d8jhwojhw==
X-Google-Smtp-Source: APXvYqzNjksdiGtBA2K0Yn7lD7hXz0a3WOc+KaCHe5Lfb///NUHl50P+zldmTZ4Tu8MFGQvOw+1qnw==
X-Received: by 2002:a62:6456:: with SMTP id y83mr32990581pfb.71.1558552889913; 
 Wed, 22 May 2019 12:21:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id x10sm37135797pfj.136.2019.05.22.12.21.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 May 2019 12:21:28 -0700 (PDT)
Date: Wed, 22 May 2019 12:21:27 -0700
From: Kees Cook <keescook@chromium.org>
To: enh <enh@google.com>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
Message-ID: <201905221157.A9BAB1F296@keescook>
References: <cover.1557160186.git.andreyknvl@google.com>
 <20190517144931.GA56186@arrakis.emea.arm.com>
 <CAFKCwrj6JEtp4BzhqO178LFJepmepoMx=G+YdC8sqZ3bcBp3EQ@mail.gmail.com>
 <20190521182932.sm4vxweuwo5ermyd@mbp>
 <201905211633.6C0BF0C2@keescook>
 <20190522101110.m2stmpaj7seezveq@mbp>
 <CAJgzZoosKBwqXRyA6fb8QQSZXFqfHqe9qO9je5TogHhzuoGXJQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJgzZoosKBwqXRyA6fb8QQSZXFqfHqe9qO9je5TogHhzuoGXJQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_122130_851747_35F04525 
X-CRM114-Status: GOOD (  39.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
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
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 08:30:21AM -0700, enh wrote:
> On Wed, May 22, 2019 at 3:11 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > On Tue, May 21, 2019 at 05:04:39PM -0700, Kees Cook wrote:
> > > I just want to make sure I fully understand your concern about this
> > > being an ABI break, and I work best with examples. The closest situation
> > > I can see would be:
> > >
> > > - some program has no idea about MTE
> >
> > Apart from some libraries like libc (and maybe those that handle
> > specific device ioctls), I think most programs should have no idea about
> > MTE. I wouldn't expect programmers to have to change their app just
> > because we have a new feature that colours heap allocations.

Right -- things should Just Work from the application perspective.

> obviously i'm biased as a libc maintainer, but...
> 
> i don't think it helps to move this to libc --- now you just have an
> extra dependency where to have a guaranteed working system you need to
> update your kernel and libc together. (or at least update your libc to
> understand new ioctls etc _before_ you can update your kernel.)

I think (hope?) we've all agreed that we shouldn't pass this off to
userspace. At the very least, it reduces the utility of MTE, and at worst
it complicates userspace when this is clearly a kernel/architecture issue.

> 
> > > - malloc() starts returning MTE-tagged addresses
> > > - program doesn't break from that change
> > > - program uses some syscall that is missing untagged_addr() and fails
> > > - kernel has now broken userspace that used to work
> >
> > That's one aspect though probably more of a case of plugging in a new
> > device (graphics card, network etc.) and the ioctl to the new device
> > doesn't work.

I think MTE will likely be rather like NX/PXN and SMAP/PAN: there will
be glitches, and we can disable stuff either via CONFIG or (as is more
common now) via a kernel commandline with untagged_addr() containing a
static branch, etc. But I actually don't think we need to go this route
(see below...)

> > The other is that, assuming we reach a point where the kernel entirely
> > supports this relaxed ABI, can we guarantee that it won't break in the
> > future. Let's say some subsequent kernel change (some refactoring)
> > misses out an untagged_addr(). This renders a previously TBI/MTE-capable
> > syscall unusable. Can we rely only on testing?
> >
> > > The trouble I see with this is that it is largely theoretical and
> > > requires part of userspace to collude to start using a new CPU feature
> > > that tickles a bug in the kernel. As I understand the golden rule,
> > > this is a bug in the kernel (a missed ioctl() or such) to be fixed,
> > > not a global breaking of some userspace behavior.
> >
> > Yes, we should follow the rule that it's a kernel bug but it doesn't
> > help the user that a newly installed kernel causes user space to no
> > longer reach a prompt. Hence the proposal of an opt-in via personality
> > (for MTE we would need an explicit opt-in by the user anyway since the
> > top byte is no longer ignored but checked against the allocation tag).
> 
> but realistically would this actually get used in this way? or would
> any given system either be MTE or non-MTE. in which case a kernel
> configuration option would seem to make more sense. (because either
> way, the hypothetical user basically needs to recompile the kernel to
> get back on their feet. or all of userspace.)

Right: the point is to design things so that we do our best to not break
userspace that is using the new feature (which I think this series has
done well). But supporting MTE/TBI is just like supporting PAN: if someone
refactors a driver and swaps a copy_from_user() to a memcpy(), it's going
to break under PAN. There will be the same long tail of these bugs like
any other, but my sense is that they are small and rare. But I agree:
they're going to be pretty weird bugs to track down. The final result,
however, will be excellent annotation in the kernel for where userspace
addresses get used and people make assumptions about them.

The sooner we get the series landed and gain QEMU support (or real
hardware), the faster we can hammer out these missed corner-cases.
What's the timeline for either of those things, BTW?

> > > I feel like I'm missing something about this being seen as an ABI
> > > break. The kernel already fails on userspace addresses that have high
> > > bits set -- are there things that _depend_ on this failure to operate?
> >
> > It's about providing a relaxed ABI which allows non-zero top byte and
> > breaking it later inadvertently without having something better in place
> > to analyse the kernel changes.

It sounds like the question is how to switch a process in or out of this
ABI (but I don't think that's the real issue: I think it's just a matter
of whether or not a process uses tags at all). Doing it at the prctl()
level doesn't make sense to me, except maybe to detect MTE support or
something. ("Should I tag allocations?") And that state is controlled
by the kernel: the kernel does it or it doesn't.

If a process wants to not tag, that's also up to the allocator where
it can decide not to ask the kernel, and just not tag. Nothing breaks in
userspace if a process is NOT tagging and untagged_addr() exists or is
missing. This, I think, is the core way this doesn't trip over the
golden rule: an old system image will run fine (because it's not
tagging). A *new* system may encounter bugs with tagging because it's a
new feature: this is The Way Of Things. But we don't break old userspace
because old userspace isn't using tags.

So the agreement appears to be between the kernel and the allocator.
Kernel says "I support this" or not. Telling the allocator to not tag if
something breaks sounds like an entirely userspace decision, yes?

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
