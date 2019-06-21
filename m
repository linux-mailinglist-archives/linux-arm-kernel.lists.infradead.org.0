Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5324B4EFFF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 22:28:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fhl3p41Fyz1rewy+vSHHUPm8A+a1tqpIizxPqA2AF4k=; b=pJXI6KivIPY516
	0C2PpbY9OzqE1gTIiH7WsoQOWuR5GwFrdQC1eTHaE3+wvR9+mTjZcjvZODvaFXXrXqEMZywzdX1/v
	UnszVvwJjN1sC/AKIvkNRhy1W3wKRXNYRhvFWO/QbvZcCL8AI4n/WOc9iJDuhL/zmWxDj8zZ1molC
	zVFquwmlbf6io8grhpbBCezkvdg70up/qtso9/RtBVNdJqTCEpl175xTWRg0FUY9SU0RLpkQr5aMB
	VH2pZ2dEz45ZNocLYRVnRl1ANLtESv6OcM/GkyAj6+kTl+s7etGEXMsRC3Z3l2zfRcllGXI1X+h0D
	3oXCVXk139dlzXQonaeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heQ8p-0007zW-Eh; Fri, 21 Jun 2019 20:28:11 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heQ8f-0007yw-Tk
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 20:28:03 +0000
Received: by mail-pg1-x541.google.com with SMTP id z19so933492pgl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 13:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KP4ilcPdmABEPlr+/D/amPHFdvJ3gnFsM6KKvQ9drQg=;
 b=uiy/oAhHyz2MdM+IKVm2PkedbYFqmVsW84xl3irtDA3BMYfQqm0Gg1tykK+agogafs
 DF3g8jB3DUUCqykvBSy+FNSvHj7HCbZ2sHwvKQpDIruQvKkfllY8yuf86F5gvcnEnc55
 LAQPaeRWR5ph64I91qFc4P+Yrh6AggqTEGc0s21mD/X8hN/K7zybtZzFH9raxIo9EeU9
 erpCrLhu04QyXG6sdH3ZffAew7wPT4pZpqJg6k6obSHYVPuekln6VojXZhBAwpy0g0YA
 r+millf2OjU8O0JIKzc2tZkMZZMzBWwgL2RZmVMNvohdiTGSOoYsPZJmw4bVft+ErnqR
 S2dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KP4ilcPdmABEPlr+/D/amPHFdvJ3gnFsM6KKvQ9drQg=;
 b=SzHT1VeO/kVvoIeXDM0CEgwhYHHbSfprUdfsNiR9TcZ058idtEZsjNWYi4XGxmYcFZ
 dBZbt0kWQZaonmeEdS3mOSoK2vBSSrmfCm++SJAxWO/DtrGtWiGZjkV5hmogC/aLQb8b
 aJDNXd9qsG110p+IveoXwCT8CSEwH05Ns7xdFG2lL73upGexwFMekvZIyPs35RV6WVNB
 BqsQL9yfwNFek3QmsaCgKW8SksBFZfaq+qzeuSE74o8Ah5G83pxuo5dPEcOd7CWC+zQm
 /tcM2bwmS2LisCXK62wBj1C6+2EXlmJLj1DM8SRrfGaD4S2OkmTYZARVgImW3QMqShdY
 iokg==
X-Gm-Message-State: APjAAAVIG/1hxNIK2fuAkn4mYNaoHFwy3rUNEej1BSpGSKu3C2upCySn
 5hpavYtMzOYp2uQOSE+tZAdR9MkVHJ7MpnNSf5a30m1F1qR+NA==
X-Google-Smtp-Source: APXvYqyZQDPJ5W/OCMKlCMRcCGknfUFV38Qj5OmN7kK+QXexoi9ZXQUd+bx6ps5NTYS8DSuqQ+2ur81NrBCeVxmazhU=
X-Received: by 2002:a17:90a:2488:: with SMTP id
 i8mr8787354pje.123.1561148877090; 
 Fri, 21 Jun 2019 13:27:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190620003244.261595-1-ndesaulniers@google.com>
 <20190620074640.GA27228@brain-police>
 <CAKv+Gu_KCFCVxw_zAfzUf8DjD4DmhvaJEoqBsX_SigOse_NwYw@mail.gmail.com>
In-Reply-To: <CAKv+Gu_KCFCVxw_zAfzUf8DjD4DmhvaJEoqBsX_SigOse_NwYw@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 21 Jun 2019 13:27:45 -0700
Message-ID: <CAKwvOdmQ+WdD8nvLz_VB_5atDi56fv485Xsn+mHJZKnyj6L-JA@mail.gmail.com>
Subject: Re: [PATCH] arm64: defconfig: update and enable CONFIG_RANDOMIZE_BASE
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Kees Cook <keescook@google.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 Jeffrey Vander Stoep <jeffv@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_132801_992599_479327FD 
X-CRM114-Status: GOOD (  31.67  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Arnd Bergmann <arnd@arndb.de>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Mark Brown <broonie@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 1:17 AM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
> On Thu, 20 Jun 2019 at 09:47, Will Deacon <will.deacon@arm.com> wrote:
>
> > On Wed, Jun 19, 2019 at 05:32:42PM -0700, Nick Desaulniers wrote:
> > > Generated via:
> > > $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make defconfig
> > > $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make menuconfig
> > > <enable CONFIG_RANDOMIZE_BASE aka KASLR>
> > > $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make savedefconfig
> > > $ mv defconfig arch/arm64/configs/defconfig

FWIW, it looks like CONFIG_RANDOMIZE_BASE is set in x86 defconfigs.

> >
> > Hmm, I'm in two minds about whether we want this on by default. On the plus
> > side, it gets us extra testing coverage, although the /vast/ majority of
> > firmware implementations I run into either don't pass a seed or don't
> > provide a working EFI_RNG. Perhaps that's just a chicken-and-egg problem
> > which can be solved if we shout loud enough when we fail to randomize; we'll
> > also eventually be in a better position when CPUs start implementing the
> > v8.5 RNG instructions (but don't hold your breath unless you have an
> > unusually high lung capacity).
> >
>
> For testing coverage purposes, exercising the relocation machinery etc
> even on no-kaslr boots would be beneficial imo. (The kernel is
> relocated once for non-kaslr boots and twice for kaslr boots on kaslr
> capable kernels)

Reminds me of https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=fd9dde6abcb9bfe6c6bee48834e157999f113971
(but maybe unrelated?).

>
> > On the flip side, I worry that it could make debugging more difficult, but I
> > don't know whether that's a genuine concern or not. I'm assuming you've
> > debugged your fair share of crashes from KASLR-enabled kernels; how bad is
> > it? (I'm thinking of the case where somebody mails you part of a panic log
> > and a .config).

I don't recall specific cases where KASLR made debugging difficult.  I
went and spoke to our stability team that debugs crash reports from
the field.  My understanding is that we capture full ramdumps.  They
have a lot of custom tooling for debugging, but they did not recall
ever having to disable KASLR to debug further.  We've had KASLR
enabled since I think the 2016 Pixel 1, so I assume their tooling
accounts for the seed/offset.

I think if a full ramdump of the kernel image is loaded into GDB with
the matching kernel image it "just works" but could be mistaken.  For
external developers, "nokaslr" boot time param is pretty standard.

> In fact, given how many Android phones are running this code: Nick,
> can you check if there are any KASLR related kernel fixes that haven't
> been upstreamed?

I spoke with the android common kernel team that's trying to burn down
their out of tree patches.  I triple checked a doc they had where they
had audited every last patch, looking for for KASLR and
CONFIG_RANDOMIZE_BASE.  I also triple checked our internal bug tracker
for burning down the out of tree patches.  Finally I'm scanning each
branch of our android-common trees via `git log --all --grep
<KASLR|CONFIG_RANDOMIZE_BASE>`.  I haven't found anything yet, and the
team doesn't expect any out of tree patches related to that feature.
Sorry for not responding sooner, but I'm still going through our 4.4,
4.9, 4.14, and 4.19 branches.

I know I put some backports into an unreleased device's kernel to
support LLD (backports of some of your patches).  All of those patches
are now upstream in mainline, and LLD has its bugs fixed.  In fact, I
think the backports I did of your patches that broke
CONFIG_RANDOMIZE_BASE were actually to support LLD (not Clang) (sorry
again for that).  I'm currently upgrading AOSP's prebuilt version of
Clang.  Once that exists, I'll clean up that device's kernel.

If you know of any android vendor relying on out of tree hacks to
KASLR, and they're getting them from android common kernels, please
shoot me a quick email.  Every out of tree patch is a burden IMO.

Also, for internal code reviews of backports, I've been much
better/more aggressive about the backports being sent to stable (when
they aren't large features) and then pulling them in from there
(sorry, Sami).

>
> > Finally, I know that (K)ASLR can be a bit controversial amongst security
> > folks, with some seeing it as purely a smoke-and-mirrors game with no
> > tangible benefits other than making us feel better about ourselves. Is it
> > still the case that it can be trivially bypassed, or do you see it actually
> > preventing some attacks in production?
> >
> > Sorry for the barrage of questions, but I think enabling this one by default
> > is quite a significant thing to do and probably deserves a bit of scrutiny
> > beforehand.
> >
>
> I think it is mostly controversial among non-security folks, who think
> that every mitigation by itself should be bullet proof. Security folks
> tend to think more about how each layer reduces the attack surface,
> hopefully resulting in a secure system when all layers are enabled.

+ Kees, Sami, Jeff
It's a relatively low cost part of our defense in depth strategy.
Maybe (Kees, Sami, Jeff) have more thoughts?

>
> So KASLR is known to be broken unless you enable KPTI as well, so that
> is something we could take into account. I.e., mitigations that don't
> reduce the attack surface at all are just pointless complexity, which
> should obviously be avoided.

(Note to Sami + Jeff if they had KPTI on their radar)

>
> Another thing to note is that the runtime cost of KASLR is ~zero, with
> the exception of the module PLTs. However, the latter could do with
> some additional coverage as well, so in summary, I think enabling this
> is a good thing. Otherwise, we could disable full module randomization
> so that the module PLT code doesn't get used in practice.
>
> Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Olof mentioned on IRC that I should resend without the other defconfig
changes.  Do others have thoughts on that?

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
