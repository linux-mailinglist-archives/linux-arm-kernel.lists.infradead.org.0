Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B78268BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 18:58:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Iuxv2zFxAonBDWA3e86bRRXENVkfNrjdmVnO6TNBYk=; b=hL4ApsxtCgKAnY
	6lfpqRr7u1Xcc0AOvlwqMCs0aEZfxhXHqHByBY/g8SfYoJ2f/C7DbgG4mouJRTkEHrqLaaFvgQi5D
	dRfWotiuZGJomJu2wm2UdLt81kijjTOF3tXmL5qLmR74vaId7u+tnp1/iVNLT2qdLwK0nADsu3BFs
	Ma7blUvv70+EU8Xsw6HSoZNfptlPIzQLtRNW8iTnnPVg9WPLzne1IB1SabDHGCNCRC1nomja46uZ7
	HXrODKy0MqwIGGHQL0ctd/ZJ/WLb9Kq52/p942wtx7R0nbveuEatg04Z8gaBdeO0q9ChNfXm9Ripy
	lcJ5zYlr/g7JNwW/jNeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTUZk-0000C2-8y; Wed, 22 May 2019 16:58:48 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTUZZ-00006f-OB
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 16:58:39 +0000
Received: by mail-lj1-x241.google.com with SMTP id j24so2792091ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 09:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iEj6Ff/H6E4VLiXQm6DO5BqKseElb7ler1ySMSlsz4I=;
 b=wK+Ags5fi2Zh9VWkgyeKWGUKDczOLAxo6NEBDIkT47LLbY+0uPXQ20Ef3md4Je4YM7
 yTt+Dnj+qvCgrr4bQbXebiU250PfvvmpvwxcaxOqBf5zn5CMszutRFHD1jRI8Y5V/CPs
 jt+pv/yu85FknwLJ8Zo9R8XECA2KhoyXo2Diq4THdh7+NYacc5mTvAPuk8TOUmLqFwYn
 AgFwdp2R8ztxIowcvgrh5IyXMpDzu2HT0gF+HDg31nzr0Ecz3Q04rvVhTpk7W+XmTJ5D
 H6CtsOUOTi8rz1vPfB8hysSXAunrOlBx79JX28IwO3FUWoOi2wwQCUxMiiDLS3NePwQF
 DnQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iEj6Ff/H6E4VLiXQm6DO5BqKseElb7ler1ySMSlsz4I=;
 b=gtacKsUW0G6AlVziTPh4A/Fm+qQnlVP4DSycvwrnLHbINHjppt6RaHaTE4mi47QzXI
 LqYrobObg7Kdx0qCDqyOkFaoBH8kekohkKT4ZGpcKZqsrBxFAF7zO049lQtLQjsjVoMy
 FoC7mySUa9Hkya7VhObIiHEqn43mcJzWsuqRLfsScG0BFAiKxjpILIBKU74oqde/yS8J
 BzH7gWKKv5vkR17SAymeDZdEYtptPzzIABLWLP0fpH84W67dx0rmcHs+p5n4fu+Nq9pQ
 fRTgZN9QNxzeWwjuxyABSaMIQ26Uuo08h7BEK4fZAb5WTgs/TAOiq6sTW+laJC38Usyr
 6PfA==
X-Gm-Message-State: APjAAAVdfUSjPBRsw2VuL0KVPZ53wyWjoXIe7zyMnv5GZFZ1G85dD0Fn
 Eh2kLRTUkELkIVxWqnJpRJ4/Yg/ny5JGOp+peMRGiA==
X-Google-Smtp-Source: APXvYqy5hQuwmu5sUHU1LdrMDZRl8vRMt+7oXELCei2Hw7KHmtQdp6HFikhxSbWr2LIYnAvYIHTeEegng6kT70Dc8d0=
X-Received: by 2002:a2e:8614:: with SMTP id a20mr7690480lji.20.1558544313559; 
 Wed, 22 May 2019 09:58:33 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1557160186.git.andreyknvl@google.com>
 <20190517144931.GA56186@arrakis.emea.arm.com>
 <CAFKCwrj6JEtp4BzhqO178LFJepmepoMx=G+YdC8sqZ3bcBp3EQ@mail.gmail.com>
 <20190521182932.sm4vxweuwo5ermyd@mbp> <201905211633.6C0BF0C2@keescook>
 <20190522101110.m2stmpaj7seezveq@mbp>
 <CAJgzZoosKBwqXRyA6fb8QQSZXFqfHqe9qO9je5TogHhzuoGXJQ@mail.gmail.com>
 <20190522163527.rnnc6t4tll7tk5zw@mbp>
In-Reply-To: <20190522163527.rnnc6t4tll7tk5zw@mbp>
From: enh <enh@google.com>
Date: Wed, 22 May 2019 09:58:22 -0700
Message-ID: <CAJgzZooc+wXBBXenm62n2zR8TVrv-y1pXMmHSdxeaNYhFLSzBA@mail.gmail.com>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_095837_809735_859D20F0 
X-CRM114-Status: GOOD (  43.82  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
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

On Wed, May 22, 2019 at 9:35 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Wed, May 22, 2019 at 08:30:21AM -0700, enh wrote:
> > On Wed, May 22, 2019 at 3:11 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > On Tue, May 21, 2019 at 05:04:39PM -0700, Kees Cook wrote:
> > > > I just want to make sure I fully understand your concern about this
> > > > being an ABI break, and I work best with examples. The closest situation
> > > > I can see would be:
> > > >
> > > > - some program has no idea about MTE
> > >
> > > Apart from some libraries like libc (and maybe those that handle
> > > specific device ioctls), I think most programs should have no idea about
> > > MTE. I wouldn't expect programmers to have to change their app just
> > > because we have a new feature that colours heap allocations.
> >
> > obviously i'm biased as a libc maintainer, but...
> >
> > i don't think it helps to move this to libc --- now you just have an
> > extra dependency where to have a guaranteed working system you need to
> > update your kernel and libc together. (or at least update your libc to
> > understand new ioctls etc _before_ you can update your kernel.)
>
> That's not what I meant (or I misunderstood you). If we have a relaxed
> ABI in the kernel and a libc that returns tagged pointers on malloc() I
> wouldn't expect the programmer to do anything different in the
> application code like explicit untagging. Basically the program would
> continue to run unmodified irrespective of whether you use an old libc
> without tagged pointers or a new one which tags heap allocations.
>
> What I do expect is that the libc checks for the presence of the relaxed
> ABI, currently proposed as an AT_FLAGS bit (for MTE we'd have a
> HWCAP_MTE), and only tag the malloc() pointers if the kernel supports
> the relaxed ABI. As you said, you shouldn't expect that the C library
> and kernel are upgraded together, so they should be able to work in any
> new/old version combination.

yes, that part makes sense. i do think we'd use the AT_FLAGS bit, for
exactly this.

i was questioning the argument about the ioctl issues, and saying that
from my perspective, untagging bugs are not really any different than
any other kind of kernel bug.

> > > > The trouble I see with this is that it is largely theoretical and
> > > > requires part of userspace to collude to start using a new CPU feature
> > > > that tickles a bug in the kernel. As I understand the golden rule,
> > > > this is a bug in the kernel (a missed ioctl() or such) to be fixed,
> > > > not a global breaking of some userspace behavior.
> > >
> > > Yes, we should follow the rule that it's a kernel bug but it doesn't
> > > help the user that a newly installed kernel causes user space to no
> > > longer reach a prompt. Hence the proposal of an opt-in via personality
> > > (for MTE we would need an explicit opt-in by the user anyway since the
> > > top byte is no longer ignored but checked against the allocation tag).
> >
> > but realistically would this actually get used in this way? or would
> > any given system either be MTE or non-MTE. in which case a kernel
> > configuration option would seem to make more sense. (because either
> > way, the hypothetical user basically needs to recompile the kernel to
> > get back on their feet. or all of userspace.)
>
> The two hard requirements I have for supporting any new hardware feature
> in Linux are (1) a single kernel image binary continues to run on old
> hardware while making use of the new feature if available and (2) old
> user space continues to run on new hardware while new user space can
> take advantage of the new feature.
>
> The distro user space usually has a hard requirement that it continues
> to run on (certain) old hardware. We can't enforce this in the kernel
> but we offer the option to user space developers of checking feature
> availability through HWCAP bits.
>
> The Android story may be different as you have more control about which
> kernel configurations are deployed on specific SoCs. I'm looking more
> from a Linux distro angle where you just get an off-the-shelf OS image
> and install it on your hardware, either taking advantage of new features
> or just not using them if the software was not updated. Or, if updated
> software is installed on old hardware, it would just run.
>
> For MTE, we just can't enable it by default since there are applications
> who use the top byte of a pointer and expect it to be ignored rather
> than failing with a mismatched tag. Just think of a hwasan compiled
> binary where TBI is expected to work and you try to run it with MTE
> turned on.
>
> I would also expect the C library or dynamic loader to check for the
> presence of a HWCAP_MTE bit before starting to tag memory allocations,
> otherwise it would get SIGILL on the first MTE instruction it tries to
> execute.

(a bit off-topic, but i thought the MTE instructions were encoded in
the no-op space, to avoid this?)

> > i'm not sure i see this new way for a kernel update to break my system
> > and need to be fixed forward/rolled back as any different from any of
> > the existing ways in which this can happen :-) as an end-user i have
> > to rely on whoever's sending me software updates to test adequately
> > enough that they find the problems. as an end user, there isn't any
> > difference between "my phone rebooted when i tried to take a photo
> > because of a kernel/driver leak", say, and "my phone rebooted when i
> > tried to take a photo because of missing untagging of a pointer passed
> > via ioctl".
> >
> > i suspect you and i have very different people in mind when we say "user" :-)
>
> Indeed, I think we have different users in mind. I didn't mean the end
> user who doesn't really care which C library version it's running on
> their phone but rather advanced users (not necessarily kernel
> developers) that prefer to build their own kernels with every release.
> We could extend this to kernel developers who don't have time to track
> down why a new kernel triggers lots of SIGSEGVs during boot.

i still don't see how this isn't just a regular testing/CI issue, the
same as any other kind of kernel bug. it's already the case that i can
get a bad kernel...

> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
