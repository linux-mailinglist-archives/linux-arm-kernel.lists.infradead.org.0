Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28201164505
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 14:08:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Mime-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HGZljALPK25Ft7z9SzHvK4Ebwz07shNioBLRoqIgXME=; b=nanBwIxVnivtTo
	gKJxBSF717zvHIOFmca2xfCWH5v0Qv2KoSePj/PK8IE/BZzFIabosK1TX53/pY7JW5npcqJxALxZ8
	90Y1RnlR214ciUUuYAmiKAyKO22dESQ1c7sI/W6x5X9kwz2dV1I8uYlNKkCrEFwQVUcC6PtWian6t
	oy7n6tAhd4iTdwKbusIvDyWH5+iSkPyAVZFejD5eiyDIY5nJmtZtLF1YJxByF7/3pCpMgXgMdaut0
	2xuq5ZuXvdlgXwJOElGixL+za6ENHRyv/jqTQtiWNXnAjCild79n2d89Vm5d8OIFIQPlodTEwAhbX
	oDOFPPhSaDNCrizXs+7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4P5v-000531-KS; Wed, 19 Feb 2020 13:08:51 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4P5k-00052b-Pp
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 13:08:42 +0000
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 01JD8ATq027345;
 Wed, 19 Feb 2020 07:08:10 -0600
Received: (from segher@localhost)
 by gate.crashing.org (8.14.1/8.14.1/Submit) id 01JD88xt027342;
 Wed, 19 Feb 2020 07:08:08 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to
 segher@kernel.crashing.org using -f
Date: Wed, 19 Feb 2020 07:08:08 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: Surprising code generated for vdso_read_begin()
Message-ID: <20200219130808.GU22482@gate.crashing.org>
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <bd4557a7-9715-59aa-5d8e-488c5e516a98@c-s.fr>
 <20200109200733.GS3191@gate.crashing.org>
 <77a8bf25-6615-6c0a-56d4-eae7aa8a8f09@c-s.fr>
 <20200111113328.GX3191@gate.crashing.org>
 <CAK8P3a11wX1zJ+TAacDTkYsrzvfdVmNrcB6OC23aFvCxF57opQ@mail.gmail.com>
 <305fcee5-2e1b-ea4d-9a2a-a0e8034d40a8@c-s.fr>
 <CAK8P3a0SfCwP04CJPThCuDmngGhwtejN8Px_UQpSwi=s_ww=bw@mail.gmail.com>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0SfCwP04CJPThCuDmngGhwtejN8Px_UQpSwi=s_ww=bw@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_050840_965567_DAB2635B 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andy Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 10:52:16AM +0100, Arnd Bergmann wrote:
> On Wed, Feb 19, 2020 at 9:45 AM Christophe Leroy
> <christophe.leroy@c-s.fr> wrote:
> > Le 16/02/2020 =E0 19:10, Arnd Bergmann a =E9crit :
> > > On Sat, Jan 11, 2020 at 12:33 PM Segher Boessenkool
> > > <segher@kernel.crashing.org> wrote:
> > >>
> > >> On Fri, Jan 10, 2020 at 07:45:44AM +0100, Christophe Leroy wrote:
> > >>> Le 09/01/2020 =E0 21:07, Segher Boessenkool a =E9crit :
> > >>>> It looks like the compiler did loop peeling.  What GCC version is =
this?
> > >>>> Please try current trunk (to become GCC 10), or at least GCC 9?
> > >>>
> > >>> It is with GCC 5.5
> > >>>
> > >>> https://mirrors.edge.kernel.org/pub/tools/crosstool/ doesn't have m=
ore
> > >>> recent than 8.1
> > >>
> > >> Arnd, can you update the tools?  We are at 8.3 and 9.2 now :-)  Or is
> > >> this hard and/or painful to do?
> > >
> > > To follow up on this older thread, I have now uploaded 6.5, 7.5, 8.3 =
and 9.2
> > > binaries, as well as a recent 10.0 snapshot.
> > >
> >
> > Thanks Arnd,
> >
> > I have built the VDSO with 9.2, I get less performant result than with
> > 8.2 (same performance as with 5.5).
> >
> > After a quick look, I see:
> > - Irrelevant NOPs to align loops and stuff, allthough -mpcu=3D860 should
> > avoid that.
> > - A stack frame is set for saving r31 in __c_kernel_clock_gettime. GCC
> > 8.1 don't need that, all VDSO functions are frameless with 8.1
> =

> If you think it should be fixed in gcc, maybe try to reproduce it in
> https://godbolt.org/

(Feel free to skip this step; and don't put links to godbolt (or anything
else external) in our bugzilla, please; such links go stale before you
know it.)

> and open a gcc bug against that.

Yes please :-)

> Also, please try the gcc-10 snapshot, which has the highest chance
> of getting fixes if it shows the same issue (or worse).

If it is a regression, chances are it will be backported.  (But not to
9.3, which is due in just a few weeks, just like 8.4).  If it is just a
side effect of some other change, it will probably *not* be undone, not
on trunk (GCC 10) either.  It depends.

But sure, always test trunk if you can.


Segher

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
