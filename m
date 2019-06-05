Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E9335930
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:02:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8AcSmhCSNY+nefCjSejVz1BLX6MwbysrKHvXsEMoZYE=; b=Xlm+AqcUbGYPkV
	v3x5fasV6moj9U3QK0pzneuC3jMBwdXQdOZJwJcoPgoq7gr74hIQxd7bE8PdhSffydFG4UgER+xJ9
	E28APaofCOCEDyW5o5DH9HudtZ5YFQwlLrFX6VGQPZv72Et6UDgnEM5nJcRnuD91i1kQNgHftnQ7w
	LbbUBOsYAhP9qyf5U/3kvgrCi41WRvFL/Jcx31esKjhPOJ1kzFV6y8zKSOWcgifKC3XKQUBGFMjSK
	+qeyE273HKdeoRCORJkXc8H8SLS/ImXi0aXfvQEtqbefpzJ4cBCxYllfwHmnKEok7YNoLKhkOdAOb
	L2Cg5IdaxUPOL0ts5/0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRoD-0005TO-Ig; Wed, 05 Jun 2019 09:02:13 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRo6-0005Sj-EL
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 09:02:07 +0000
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com
 [209.85.217.45]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id x5591lOQ025774
 for <linux-arm-kernel@lists.infradead.org>; Wed, 5 Jun 2019 18:01:47 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com x5591lOQ025774
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559725308;
 bh=4heQMOeUYxMT3vJUuhyF+RiSNQYhKDyB7w/dctvl+6E=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=nxZpBEd/UcIQwUacvgFdHFOHBkNUTrIU3BQdKE97KCrj2fvqRa/aJJLpurAKVNtdU
 zgIGf44osfQxcB1U90xCReDpwpJT14e7lhyPLMO8ebgANPNWFO4J/a5Ao5ks50WmCS
 EC8LyLBjBupJedhNmRvfEg2et3KWJR8s5FXxjxv3a3Nk7T6Q+kJ0DH7hLAqDMxOpct
 efSwsANeVhkCkiwjfsBv8Og8wxgKsPtEWyxK9msih/i3xbZdtRKLGxvDIlTDl39QFS
 d6IdOv231+qDL5D1kFwEOsdHxWaAvi7F+oLDLqMNsX6qltAyMuL++43Mb0OEyO0Tqf
 FNX7FRegSC73A==
X-Nifty-SrcIP: [209.85.217.45]
Received: by mail-vs1-f45.google.com with SMTP id c24so15266293vsp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 02:01:47 -0700 (PDT)
X-Gm-Message-State: APjAAAUfnytLMOBF92i6ijkisXkP4AKlrA3o4AQzvL1zFRYm494wawcr
 oxKUe3O1elefDLRDITPz22cq7wqSvl/OXfnnhvM=
X-Google-Smtp-Source: APXvYqzeIRg6colne+y2aqfBRfPeHx02Mun1CpteDFhWzEa2w0ohGhvri+gUFERzTepayGbUr6HKEcJgKfnX9xi06VY=
X-Received: by 2002:a67:7fcc:: with SMTP id a195mr443645vsd.181.1559725306637; 
 Wed, 05 Jun 2019 02:01:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190527083412.26651-1-yamada.masahiro@socionext.com>
 <20190605073406.geesp3rbrxajmac6@mbp>
In-Reply-To: <20190605073406.geesp3rbrxajmac6@mbp>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 5 Jun 2019 18:01:10 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQJPMsRtNRYUH+dib0ZMAPqOe5HO0UcAW7zRdjyWWyQWQ@mail.gmail.com>
Message-ID: <CAK7LNAQJPMsRtNRYUH+dib0ZMAPqOe5HO0UcAW7zRdjyWWyQWQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] Allow assembly code to use BIT(), GENMASK(), etc. and
 clean-up arm64 header
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_020206_691076_FF1350E8 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 5, 2019 at 4:36 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Mon, May 27, 2019 at 05:34:10PM +0900, Masahiro Yamada wrote:
> > Some in-kernel headers use _BITUL() instead of BIT().
> >
> >  arch/arm64/include/asm/sysreg.h
> >  arch/s390/include/asm/*.h
> >
> > I think the reason is because BIT() is currently not available
> > in assembly. It hard-codes 1UL, which is not available in assembly.
> [...]
> > Masahiro Yamada (2):
> >   linux/bits.h: make BIT(), GENMASK(), and friends available in assembly
> >   arm64: replace _BITUL() with BIT()
> >
> >  arch/arm64/include/asm/sysreg.h | 82 ++++++++++++++++-----------------
> >  include/linux/bits.h            | 17 ++++---
>
> I'm not sure it's worth the hassle. It's nice to have the same BIT macro
> but a quick grep shows arc, arm64, s390 and x86 using _BITUL. Maybe a
> tree-wide clean-up would be more appropriate.


I am happy to clean-up the others
in the next development cycle
once 1/2 lands in the mainline.


Since there is no subsystem that
takes care of include/linux/bits.h,
I just asked Will to pick up both.
I planed per-arch patch submission
to reduce the possibility of merge conflict.


If you guys are not willing to pick up them,
is it better to send treewide conversion to Andrew?


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
