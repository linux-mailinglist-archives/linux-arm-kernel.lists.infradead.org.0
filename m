Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C50FC27909
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 11:18:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2m5a+LqqNEX8r33Lx7t0ivEr6ge4rHj1k1GSN1fhrs=; b=NCcuqT6VJf3rgT
	zPKRT5VLA4szCfVxD/NQnMy9iWs5ZMb/TKs80PaGyG0TJssry5d2hfmhTRwVaZkRvSKwlaiE36S94
	ns4aCWA/fSZV50h/y73SWelKEeesdR7jISFgqKyAfPPYjel6QZ3I8ri1wOhi0z4RIHr7E64XAZcFk
	fG9t720QR8aq7XOKPBv258oxNgmRbjvi9ryAd1EbFrZ5TQXHtStQ0rEcv0OgarqGrOuW9zJyg7e7L
	FcIB9d64ySOlMQ/lV7jgkiiypuQXfxcVwIBoTJfPwXuqbW1N1vUHPxry9HsmiajOL+KTsOtW2fFCu
	xWFt5vL4KchuhRuAM9/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjrl-0001Wc-2w; Thu, 23 May 2019 09:18:25 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjre-0001WH-F8
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 09:18:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 13545341;
 Thu, 23 May 2019 02:18:18 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F20363F718;
 Thu, 23 May 2019 02:18:15 -0700 (PDT)
Date: Thu, 23 May 2019 10:18:11 +0100
From: Will Deacon <will.deacon@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@arm.com>
Subject: Re: [PATCH] module/ksymtab: use 64-bit relative reference for target
 symbol
Message-ID: <20190523091811.GA26646@fuggles.cambridge.arm.com>
References: <20190522150239.19314-1-ard.biesheuvel@arm.com>
 <293c9d0f-dc14-1413-e4b4-4299f0acfb9e@arm.com>
 <f2141ee5-d07a-6dd9-47c6-97e8fbdccf34@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f2141ee5-d07a-6dd9-47c6-97e8fbdccf34@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_021818_506202_B1FFFF1C 
X-CRM114-Status: GOOD (  22.73  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, linux-arch@vger.kernel.org, arnd@arndb.de,
 guillaume.gardet@arm.com, marc.zyngier@arm.com, x86@kernel.org,
 linux-kernel@vger.kernel.org, james.morse@arm.com, jeyu@kernel.org,
 mingo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 09:41:40AM +0100, Ard Biesheuvel wrote:
> =

> =

> On 5/22/19 5:28 PM, Ard Biesheuvel wrote:
> > =

> > =

> > On 5/22/19 4:02 PM, Ard Biesheuvel wrote:
> > > The following commit
> > > =

> > > =A0=A0 7290d5809571 ("module: use relative references for __ksymtab e=
ntries")
> > > =

> > > updated the ksymtab handling of some KASLR capable architectures
> > > so that ksymtab entries are emitted as pairs of 32-bit relative
> > > references. This reduces the size of the entries, but more
> > > importantly, it gets rid of statically assigned absolute
> > > addresses, which require fixing up at boot time if the kernel
> > > is self relocating (which takes a 24 byte RELA entry for each
> > > member of the ksymtab struct).
> > > =

> > > Since ksymtab entries are always part of the same module as the
> > > symbol they export (or of the core kernel), it was assumed at the
> > > time that a 32-bit relative reference is always sufficient to
> > > capture the offset between a ksymtab entry and its target symbol.
> > > =

> > > Unfortunately, this is not always true: in the case of per-CPU
> > > variables, a per-CPU variable's base address (which usually differs
> > > from the actual address of any of its per-CPU copies) could be at
> > > an arbitrary offset from the ksymtab entry, and so it may be out
> > > of range for a 32-bit relative reference.
> > > =

> =

> (Apologies for the 3-act monologue)

Exposition, development and recapitulation ;)

> This turns out to be incorrect. The symbol address of per-CPU variables
> exported by modules is always in the vicinity of __per_cpu_start, and so =
it
> is simply a matter of making sure that the core kernel is in range for
> module ksymtab entries containing 32-bit relative references.
> =

> When running the arm64 with kaslr enabled, we currently randomize the mod=
ule
> space based on the range of ADRP/ADD instruction pairs, which have a -/+ 4
> GB range rather than the -/+ 2 GB range of 32-bit place relative data
> relocations. So we can fix this by simply reducing the randomization wind=
ow
> to 2 GB.

Makes sense. Do you see the need for an option to disable PREL relocs
altogether in case somebody wants the additional randomization range?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
