Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 624B729C57
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 18:31:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R5RGFBRL0aGmcAQI3s7IDPNIkM49qZ+LWEnedSDlgkw=; b=UG1bIjwBSSDE8l
	kpP3mQP0IH7ZqHUfMb1ZyxulWbEAn8if2f+4s3mrLOWHRrjqlM9fu/UWa79CE1fa0K5PuvkUPE1P6
	KZLHpMwcdHpwUFZ5/Dxg/aTXBCeWBkJR0wNQ/NbJg4GZN9paLJtHMOo3UkNemCX/Gqg08+NWP1Na3
	ZjeAUfNXy3qGSGHRim7YUh5Zprp1gkhG60L22jcQ9SunXrpqfVMxBvGfLvskX2eYwhKh8G/qKWBPC
	mj4ztUzsLs12jhDGWdSBpU77oM1FgGY+nMmQKV4tKsxTtpISoOk2yV4yHYBPDyK7IcXVl2u7nd7nM
	k+9RNURAuckTNY4JYIiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUD6P-0004JI-Nd; Fri, 24 May 2019 16:31:29 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUD6H-0004Ij-Dp
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 16:31:23 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DF3C581122;
 Fri, 24 May 2019 16:31:09 +0000 (UTC)
Received: from treble (ovpn-121-106.rdu2.redhat.com [10.10.121.106])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9365210027BC;
 Fri, 24 May 2019 16:31:06 +0000 (UTC)
Date: Fri, 24 May 2019 11:31:04 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] module/ksymtab: use 64-bit relative reference for target
 symbol
Message-ID: <20190524163104.o6xh54x4ngbihneb@treble>
References: <20190522150239.19314-1-ard.biesheuvel@arm.com>
 <293c9d0f-dc14-1413-e4b4-4299f0acfb9e@arm.com>
 <f2141ee5-d07a-6dd9-47c6-97e8fbdccf34@arm.com>
 <20190523091811.GA26646@fuggles.cambridge.arm.com>
 <907a9681-cd1d-3326-e3dd-5f6965497720@arm.com>
 <20190524152045.w3syntzp4bb5jb7u@treble>
 <CAKv+Gu9DLf9y2uqTo407gLK3AX3pq+HGFxytsoR9C2zfGdUc-A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu9DLf9y2uqTo407gLK3AX3pq+HGFxytsoR9C2zfGdUc-A@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Fri, 24 May 2019 16:31:15 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_093121_504503_38DBB8F3 
X-CRM114-Status: GOOD (  32.12  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-arch <linux-arch@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 guillaume.gardet@arm.com, Marc Zyngier <marc.zyngier@arm.com>,
 the arch/x86 maintainers <x86@kernel.org>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>, Ard Biesheuvel <ard.biesheuvel@arm.com>,
 Jessica Yu <jeyu@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 05:55:37PM +0200, Ard Biesheuvel wrote:
> On Fri, 24 May 2019 at 17:21, Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > On Thu, May 23, 2019 at 10:29:39AM +0100, Ard Biesheuvel wrote:
> > >
> > >
> > > On 5/23/19 10:18 AM, Will Deacon wrote:
> > > > On Thu, May 23, 2019 at 09:41:40AM +0100, Ard Biesheuvel wrote:
> > > > >
> > > > >
> > > > > On 5/22/19 5:28 PM, Ard Biesheuvel wrote:
> > > > > >
> > > > > >
> > > > > > On 5/22/19 4:02 PM, Ard Biesheuvel wrote:
> > > > > > > The following commit
> > > > > > >
> > > > > > >     7290d5809571 ("module: use relative references for __ksymtab entries")
> > > > > > >
> > > > > > > updated the ksymtab handling of some KASLR capable architectures
> > > > > > > so that ksymtab entries are emitted as pairs of 32-bit relative
> > > > > > > references. This reduces the size of the entries, but more
> > > > > > > importantly, it gets rid of statically assigned absolute
> > > > > > > addresses, which require fixing up at boot time if the kernel
> > > > > > > is self relocating (which takes a 24 byte RELA entry for each
> > > > > > > member of the ksymtab struct).
> > > > > > >
> > > > > > > Since ksymtab entries are always part of the same module as the
> > > > > > > symbol they export (or of the core kernel), it was assumed at the
> > > > > > > time that a 32-bit relative reference is always sufficient to
> > > > > > > capture the offset between a ksymtab entry and its target symbol.
> > > > > > >
> > > > > > > Unfortunately, this is not always true: in the case of per-CPU
> > > > > > > variables, a per-CPU variable's base address (which usually differs
> > > > > > > from the actual address of any of its per-CPU copies) could be at
> > > > > > > an arbitrary offset from the ksymtab entry, and so it may be out
> > > > > > > of range for a 32-bit relative reference.
> > > > > > >
> > > > >
> > > > > (Apologies for the 3-act monologue)
> > > >
> > > > Exposition, development and recapitulation ;)
> > > >
> > > > > This turns out to be incorrect. The symbol address of per-CPU variables
> > > > > exported by modules is always in the vicinity of __per_cpu_start, and so it
> > > > > is simply a matter of making sure that the core kernel is in range for
> > > > > module ksymtab entries containing 32-bit relative references.
> > > > >
> > > > > When running the arm64 with kaslr enabled, we currently randomize the module
> > > > > space based on the range of ADRP/ADD instruction pairs, which have a -/+ 4
> > > > > GB range rather than the -/+ 2 GB range of 32-bit place relative data
> > > > > relocations. So we can fix this by simply reducing the randomization window
> > > > > to 2 GB.
> > > >
> > > > Makes sense. Do you see the need for an option to disable PREL relocs
> > > > altogether in case somebody wants the additional randomization range?
> > > >
> > >
> > > No, not really. To be honest, I don't think
> > > CONFIG_RANDOMIZE_MODULE_REGION_FULL is that useful to begin with, and the
> > > only reason we enabled it by default at the time was to ensure that the PLT
> > > code got some coverage after we introduced it.
> >
> > In code, percpu variables are accessed with absolute relocations, right?
> 
> No, they are accessed just like ordinary symbols, so PC32 references
> on x86 or ADRP/ADD references on arm64 are both quite common.

Ah, right, now I see some PC32 percpu references.

So if PC32 references are sufficient for code, why aren't they
sufficient for ksymtab entries?  Isn't the ksymtab data address closer
to the percpu data than the code?  Do you have an example of an out of
range ksymtab reference?

-- 
Josh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
