Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 457041DC094
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 22:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uT1A+HjzHVgiMivd/khnsHJer1pkqyMD4n/Yp3vsSoc=; b=UMCYOZ5y9+ptYj
	qX9Cxt4RJVWlZQ9BA2GU8DYnMlXcPWgSwwsjFF2rJar56Y2i1gL/z6NHnS04hRAbh6Be9JQg7TGou
	LnvVlcw/xcA4XzHDUGShFrCnAFKUKkr8SooHX7B+CfpA60Sjct67dfrsOBugGyWdVaq9xnuy+gEzE
	ituqCHhYM9dRfC0Xi53t6np8Vz3buETtTj35TriJ/NGUgC5nArr9qGhP+Wiu0lJrU9vsenU02XCsA
	jcbz4RSKt+Ti+bBPbHpGdVAzlUS443bitIrCFiFo+Jz7alVs7Xk1QoLqru9ZffPXRW0sqCP+ebwlR
	hVQpa2Y0IZ1Tf1p0wv/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbVhs-0006UN-7a; Wed, 20 May 2020 20:52:52 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbVhi-0006Sd-Gu
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 20:52:44 +0000
Received: from mail-qk1-f172.google.com ([209.85.222.172]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mleo0-1jBYov1LYQ-00ij33 for <linux-arm-kernel@lists.infradead.org>; Wed,
 20 May 2020 22:52:39 +0200
Received: by mail-qk1-f172.google.com with SMTP id f189so5095306qkd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 13:52:39 -0700 (PDT)
X-Gm-Message-State: AOAM533CQV2/h+MswE+glrX/ZPYHB6LTzxWb8B8Juyd0ecMxusCMJbwV
 HVMdCjKOoYXDYpCLl6i/JHzs67QA19yB4qUzY8I=
X-Google-Smtp-Source: ABdhPJwbCjpvdQ69jpw/vCRNJG1pz94dQq04t1slk369ddybTSxpRyrBSWLEnc3+a/1PYLuOZHitGEyzoYkmb2QoEpI=
X-Received: by 2002:a37:bc7:: with SMTP id 190mr6681765qkl.286.1590007958081; 
 Wed, 20 May 2020 13:52:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2Tw2w73ZkK-W6AA9veMK4-miLUx-TL1EuOdP7EdW-AmQ@mail.gmail.com>
 <0c2abcd1-7da8-2559-1e93-4c3bdd38dec1@linaro.org>
 <CAK8P3a3fxs+14ZdCRmt_GwJGv3Aipm1r9sAHH6aVj2UrWBNuQQ@mail.gmail.com>
 <20200520154128.GA24483@arm.com> <20200520160810.GM1079@brightrain.aerifal.cx>
 <20200520170932.GO1079@brightrain.aerifal.cx>
In-Reply-To: <20200520170932.GO1079@brightrain.aerifal.cx>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 20 May 2020 22:52:22 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2+_a+Qj8uvSToLKwf_pj14EouAFzEO6Un5uc8fT9Vr-w@mail.gmail.com>
Message-ID: <CAK8P3a2+_a+Qj8uvSToLKwf_pj14EouAFzEO6Un5uc8fT9Vr-w@mail.gmail.com>
Subject: Re: clock_gettime64 vdso bug on 32-bit arm, rpi-4
To: Rich Felker <dalias@libc.org>
X-Provags-ID: V03:K1:2LxAhJ2z0B6zNI+1Yx44DXY+F/BfC2YjRdByeeh5Ce+36OmT2l8
 KfMd0jo8umRBepLRUf0VWVt5P9F5AwV/js28kN2HA3OAdMRt62UKOQbEgJLZ+UbRmeHbZaw
 AOoEvZU/2N5e8LYOOXor4rg/YP0U648spd2gTc23zx+r/bM5RxogWmWFXG9OZQiPYDbZtNQ
 XOGPFiS8SZjvtBD4yvAhw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VhoerjEgTbU=:3UDZlZc9UngS84tAKcBHMc
 RMBfqAs04DsQizhzWhSOxJIPWTr/urdU2vEtKPrOVlNeiiOj4MHjFj+joTWA+kljVeSCgzGhb
 7BvfCJl+vGN72Jf62YO/VeRinFURKWheiKxkNiiPLyTsIXkEDiAa+vf67AkQwjKEWu2e7EOjo
 +3wKy5UctTZgex/Yul18OMfFYVxaGDzpHfjNu5GIO6tR3b8jXwJdKHHVICr0yldkCVOWQxSwe
 wKr99K6v06w9b6qAtoFK4nY0vAtH1w+831+z8evC0D3SKiZoCTxZodKln39xO+Ei2Y0+fp9zd
 F9W1+gYroBmD0d5Z2+iX5dSwkNGY21cJvhnBMxHvjhK0FqgleB90mu+sJhU3BuQb+0p/+Ru/T
 E6JkxA7GZc/qEdbxP8hYn9v1vCB+kF6LyVE/HunmFh4j0BOKVWu04nZXHfkynGvzWhEKGjHL/
 YPXBppjmYm1A0h3S2KLM+nhlFoh7slOtqhgdsLfOt6zVj5x0C+RpeTfhfJDqJcciU5I0junys
 NT0KwoGqKRkQI+7DDZBUOy76BdeK/hNYJwttrceVU0SU6mppirFaCvYPKRley0rWEazLzoc0K
 bTPe+KzGldYRvlldJ4/goJqWUcei1kT6KFVA5Xe04kWI8hUduTYnZ4d73049kxizslMHG9k89
 WyPlsmWWNd2Bh6nJ1Y/JT9ARkG43N2+CHlESlbQDjGmM8sCYobHjyCfYk255z2EZ7ZtDb3U6z
 DgdOkylLue0NgiBzxsv4E4jxDVRRIyw/YEizOMaVAHmW/4kDaAtgQo4mRzqyzmAdag054x7WG
 DLMFJL9A5a6biMP7ejPMlGeJm/R69HMmJp83ous7oqu8WSonuc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_135242_864164_1ED9A882 
X-CRM114-Status: GOOD (  30.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.75 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, nd <nd@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Will Deacon <will@kernel.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Adhemerval Zanella <adhemerval.zanella@linaro.org>,
 Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jack Schmidt <jack.schmidt@uky.edu>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 7:09 PM Rich Felker <dalias@libc.org> wrote:
>
> On Wed, May 20, 2020 at 12:08:10PM -0400, Rich Felker wrote:
> > On Wed, May 20, 2020 at 04:41:29PM +0100, Szabolcs Nagy wrote:
> > > The 05/19/2020 22:31, Arnd Bergmann wrote:
> > > > On Tue, May 19, 2020 at 10:24 PM Adhemerval Zanella
> > > > <adhemerval.zanella@linaro.org> wrote:
> > > > > On 19/05/2020 16:54, Arnd Bergmann wrote:
> > > note: i could not reproduce it in qemu-system with these configs:
> > >
> > > qemu-system-aarch64 + arm64 kernel + compat vdso
> > > qemu-system-aarch64 + kvm accel (on cortex-a72) + 32bit arm kernel
> > > qemu-system-arm + cpu max + 32bit arm kernel
> > >
> > > so i think it's something specific to that user's setup
> > > (maybe rpi hw bug or gcc miscompiled the vdso or something
> > > with that particular linux, i built my own linux 5.6 because
> > > i did not know the exact kernel version where the bug was seen)
> > >
> > > i don't have access to rpi (or other cortex-a53 where i
> > > can install my own kernel) so this is as far as i got.
> >
> > If we have a binary of the kernel that's known to be failing on the
> > hardware, it would be useful to dump its vdso and examine the
> > disassembly to see if it was miscompiled.
>
> OK, OP posted it and I think we've solved this. See
> https://github.com/richfelker/musl-cross-make/issues/96#issuecomment-631604410

Thanks a lot everyone for figuring this out.

> And my analysis:
>
> <@dalias> see what i just found on the tracker
> <@dalias> patch_vdso/vdso_nullpatch_one in arch/arm/kernel/vdso.c patches out the time32 functions in this case
> <@dalias> but not the time64 one
> <@dalias> this looks like a real kernel bug that's not hw-specific except breaking on all hardware where the patching-out is needed
> <@dalias> we could possibly work around it by refusing to use the time64 vdso unless the time32 one is also present
> <@dalias> yep
> <@dalias> so i think we've solved this. the kernel thought it wasnt using vdso anymore because it patched it out
> <@dalias> but it forgot to patch out the time64 one
> <@dalias> so it stopped updating the data needed for vdso to work

As you mentioned in the issue tracker, the patching was meant as
an optimization and missing it for clock_gettime64 was a mistake but
should by itself not have caused incorrect data to be returned.

I would assume that there is another bug that leads to clock_gettime64
not entering the syscall fallback path as it should but instead returning
bogus data.

Here are some more things I found:

- From reading the linux-5.6 code that was tested, I see that a condition
  that leads to patching out the clock_gettime() vdso should also lead to
  clock_gettime64() falling back to the the syscall after
  __arch_get_hw_counter() returns an error, but for some reason that
  does not happen. Presumably the presence of the patching meant that
  this code path was never much exercised.
  A missing 45939ce292b4 ("ARM: 8957/1: VDSO: Match ARMv8 timer in
  cntvct_functional()") would explain the problem, if it happened on
  linux-5.6-rc7 or earlier. The fix was merged in the final v5.6 though.

- The patching may actually be counterproductive because it means that
   clock_gettime(CLOCK_*COARSE, ...) has to go through the system call
   when it could just return the time of the last timer tick regardless of the
   clocksource.

- We may get bitten by errata handling on 32-bit kernels running on 64-bit
  hardware that has errata workaround in arch/arm64 for compat mode
  but not in native arm kernels. ARM64_ERRATUM_1418040,
  ARM64_ERRATUM_858921 or SUN50I_ERRATUM_UNKNOWN1
  are examples of workaround that are not used on 32-bit kernels running
  on 64-bit hardware.

         Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
