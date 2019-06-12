Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EEC64235F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MOJ2dYgYJyBvrcnYcdfOCMmjzs/dOdcAa64rRg4Urss=; b=M/tzBAAvT9Mnqz
	ooArSqRy/iWNZauVSt7Nw0zoIQgCgFvaa/sU5+Cpe1Gt2ud66bVPoqDSYINaW9qdNIoCHZghwrPKo
	89Q40pFZ+RR5cTAtXPnsqhmJIwbRPvRMHpLNFxz0LTkPuiYDnmSgiXXvzrevIhsDY5yJDdVw61wQU
	IGfKIF5K8yXXs1nYgqbl6RYQtzDT+Oa1J8eXYcgbdvw0BtCantCiIfJRt7bY8M3a5VsJnAQ5VfR8p
	4RGpvgJradFCVT0TpJBqya9A/knjID7t1rbRMIuFH15LO1qrzes34tcb95iG/c6WhQuhDbSapANvj
	CHiALcSmZMtdjdp1fTFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb12a-0001HK-OO; Wed, 12 Jun 2019 11:03:40 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb12K-0001EF-6I
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:03:29 +0000
Received: by mail-pf1-x441.google.com with SMTP id t16so9445853pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U+WRAXF2ARmkxSGAjp/c6etYCd0hTSbOs0DZi8MzR6Q=;
 b=Au7VJqK1ojAhcfG23jRBnNIRm8KjejR34yLBYxx+tHyOH3UOEnqAeA+8NqPGB0xERC
 iEkWFkgDGC2bVn5/OIaA4Iaj0a8vwuQDB61IL+0H9Fwkx9OFXo7fvyXQ9pDMhbYVG+Nt
 NAfcfgs6HTAivxcJGzmU1GQcMJKjdgGsV4PVoEwVpmDo71FYYp7iRopdo3JqiipS6Pbm
 g0FK+P1R3xn5BU9DYN7tw7p2D7DXBRHK9wtsmdaKDKErjouHvoT1Xsa2liBK45bWDlUw
 nn9WdHLDyGhILUMAD8+oKvlF/Link+W8NA8UTm3/U+VTclr5XHE7a99we7HZ74tOwnVu
 i1TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U+WRAXF2ARmkxSGAjp/c6etYCd0hTSbOs0DZi8MzR6Q=;
 b=Q/94w0if21+QCdctNeNAJo0M21KEdnIkdHXzpTadPA+axXEG8ecV1voF3lmggWzPVo
 8GhcoAQFI5rEjxJtZ01GLbxDUhNSoMdL1CQ7Yuuo/mZU+2CvFI48T4Gszm35sqR4JsRk
 3HOFZBktCQPd3JOr6m+evk6L0OamSyPtcwIlZ6Rv5WPUfI7EECTGoLEA29+SRBj5GWp0
 F/NJUVC24ftj274XVWov23/EkXkL1DQa7NqKmVvjgJ4ZCMHVvUm/jIA8eQKNu7xt3WHu
 7aEKopjuG+BCtfbhPuMlpQIWY4KII0Ga7Q1eg7hw4epZS6QFoMuiUlFFe5qEcJWhc1Il
 z6og==
X-Gm-Message-State: APjAAAVopxfSB1RgxSIXL03RTSeh/K7V1d2os8OqQSzMa+rOrGlleSuQ
 14orPuAVSQRpIt4ysaZF69EZW44Blj6h0ECWGj6vAg==
X-Google-Smtp-Source: APXvYqzWmxUbLyuGmwxZVdNOTNeaNzhhuMrhwfH+eyIre2cUwA02gvKzU0bgN3Cy01oTn1PiBJVwgb5PwMcG3EUFGXg=
X-Received: by 2002:a65:64d9:: with SMTP id t25mr24706277pgv.130.1560337402181; 
 Wed, 12 Jun 2019 04:03:22 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1559580831.git.andreyknvl@google.com>
 <4327b260fb17c4776a1e3c844f388e4948cfb747.1559580831.git.andreyknvl@google.com>
 <20190610175326.GC25803@arrakis.emea.arm.com>
 <20190611145720.GA63588@arrakis.emea.arm.com>
 <CAAeHK+z5nSOOaGfehETzznNcMq5E5U+Eb1rZE16UVsT8FWT0Vg@mail.gmail.com>
 <20190611173903.4icrfmoyfvms35cy@mbp>
In-Reply-To: <20190611173903.4icrfmoyfvms35cy@mbp>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 12 Jun 2019 13:03:10 +0200
Message-ID: <CAAeHK+ysoiCSiCNrrvXqffK53WwBMHbc3bk69uU0vY0+R4_JvQ@mail.gmail.com>
Subject: Re: [PATCH v16 02/16] arm64: untag user pointers in access_ok and
 __uaccess_mask_ptr
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_040328_318574_3372D16F 
X-CRM114-Status: GOOD (  22.33  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match 0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Christian Koenig <Christian.Koenig@amd.com>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>, Lee Smith <Lee.Smith@arm.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 linux-media@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>, Yishai Hadas <yishaih@mellanox.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 7:39 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Tue, Jun 11, 2019 at 07:09:46PM +0200, Andrey Konovalov wrote:
> > On Tue, Jun 11, 2019 at 4:57 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > >
> > > On Mon, Jun 10, 2019 at 06:53:27PM +0100, Catalin Marinas wrote:
> > > > On Mon, Jun 03, 2019 at 06:55:04PM +0200, Andrey Konovalov wrote:
> > > > > diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> > > > > index e5d5f31c6d36..9164ecb5feca 100644
> > > > > --- a/arch/arm64/include/asm/uaccess.h
> > > > > +++ b/arch/arm64/include/asm/uaccess.h
> > > > > @@ -94,7 +94,7 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
> > > > >     return ret;
> > > > >  }
> > > > >
> > > > > -#define access_ok(addr, size)      __range_ok(addr, size)
> > > > > +#define access_ok(addr, size)      __range_ok(untagged_addr(addr), size)
> > > >
> > > > I'm going to propose an opt-in method here (RFC for now). We can't have
> > > > a check in untagged_addr() since this is already used throughout the
> > > > kernel for both user and kernel addresses (khwasan) but we can add one
> > > > in __range_ok(). The same prctl() option will be used for controlling
> > > > the precise/imprecise mode of MTE later on. We can use a TIF_ flag here
> > > > assuming that this will be called early on and any cloned thread will
> > > > inherit this.
> > >
> > > Updated patch, inlining it below. Once we agreed on the approach, I
> > > think Andrey can insert in in this series, probably after patch 2. The
> > > differences from the one I posted yesterday:
> > >
> > > - renamed PR_* macros together with get/set variants and the possibility
> > >   to disable the relaxed ABI
> > >
> > > - sysctl option - /proc/sys/abi/tagged_addr to disable the ABI globally
> > >   (just the prctl() opt-in, tasks already using it won't be affected)
> > >
> > > And, of course, it needs more testing.
> >
> > Sure, I'll add it to the series.
> >
> > Should I drop access_ok() change from my patch, since yours just reverts it?
>
> Not necessary, your patch just relaxes the ABI for all apps, mine
> tightens it. You could instead move the untagging to __range_ok() and
> rebase my patch accordingly.

OK, will do. I'll also add a comment next to TIF_TAGGED_ADDR as Vincenzo asked.

>
> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
