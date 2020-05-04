Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFD31C404F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:43:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3Vd7qiAv92GOGvf4ya0iPTkWhSRkvksugLFnPQzVxQ=; b=gnu0f3VGfDMTLD
	7Xmngmi/H+HGj3RVYzxAlT2Q9ZmjCMjuyWb+oguok6ra3ZNrexXQlTxGONRgJm4vRcYyHwplDTiWA
	+Pd4aQgybWcWfmXyXR4R2nKh8BY69wfIRRWRdkuW4E2GCIaYHOoPM7KgERAiQ5qTwIKnUsya4fPhi
	g6R4FHTU3E5qYQoOU4UR/nnkIeDmnmeNw2VxYZUgTfbXloXmssC4nG0GtyVFu1nlxqlROpe1cZv2N
	SBkp7s727ALEsw2hAV5tPbtHhTAJHr6IY4xT1Jz55tPCee2ggtCRT7JckjAALPdIjIKUdHeUhc7TO
	Vd2uoo/Z0wguFePbRrTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVeBw-0006YW-2e; Mon, 04 May 2020 16:43:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVe9O-0004S6-VQ
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:41:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6DD3D101E;
 Mon,  4 May 2020 09:41:02 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B26B63F68F;
 Mon,  4 May 2020 09:41:00 -0700 (PDT)
Date: Mon, 4 May 2020 17:40:58 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v3 20/23] fs: Allow copy_mount_options() to access
 user-space in a single pass
Message-ID: <20200504164058.GJ30377@arm.com>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-21-catalin.marinas@arm.com>
 <20200429102650.GC30377@arm.com> <20200429135224.GB10651@gaia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429135224.GB10651@gaia>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_094103_070220_D49A77A5 
X-CRM114-Status: GOOD (  23.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 02:52:25PM +0100, Catalin Marinas wrote:
> On Wed, Apr 29, 2020 at 11:26:51AM +0100, Dave P Martin wrote:
> > On Tue, Apr 21, 2020 at 03:26:00PM +0100, Catalin Marinas wrote:
> > > diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> > > index 32fc8061aa76..566da441eba2 100644
> > > --- a/arch/arm64/include/asm/uaccess.h
> > > +++ b/arch/arm64/include/asm/uaccess.h
> > > @@ -416,6 +416,17 @@ extern unsigned long __must_check __arch_copy_in_user(void __user *to, const voi
> > >  #define INLINE_COPY_TO_USER
> > >  #define INLINE_COPY_FROM_USER
> > >  
> > > +static inline bool arch_has_exact_copy_from_user(unsigned long n)
> > > +{
> > > +	/*
> > > +	 * copy_from_user() aligns the source pointer if the size is greater
> > > +	 * than 15. Since all the loads are naturally aligned, they can only
> > > +	 * fail on the first byte.
> > > +	 */
> > > +	return n > 15;
> > > +}
> > > +#define arch_has_exact_copy_from_user
> > 
> > Did you mean:
> > 
> > #define arch_has_exact_copy_from_user arch_has_exact_copy_from_user
> 
> Yes (and I shouldn't write patches late in the day).
> 
> > Mind you, if this expands to 1 I'd have expected copy_mount_options()
> > not to compile, so I may be missing something.
> 
> I think arch_has_exact_copy_from_user() (with the braces) is looked up
> in the function namespace, so the macro isn't expanded. So arguably the
> patch is correct but pretty dodgy ;).
> 
> I scrapped this in my second attempt in reply to Kevin.

Problem solved!

> > > diff --git a/fs/namespace.c b/fs/namespace.c
> > > index a28e4db075ed..8febc50dfc5d 100644
> > > --- a/fs/namespace.c
> > > +++ b/fs/namespace.c
> > > @@ -3025,13 +3025,16 @@ void *copy_mount_options(const void __user * data)
> > 
> > [ Is this applying a band-aid to duct tape?
> > 
> > The fs presumably knows ahead of time whether it's expecting a string or
> > a fixed-size blob for data, so I'd hope we could just DTRT rather than
> > playing SEGV roulette here.
> > 
> > This might require more refactoring than makes sense for this series
> > though. ]
> 
> That's possible but it means moving the copy from sys_mount() to the
> specific places where it has additional information (the filesystems).
> I'm not even sure it's guaranteed to be strings. If it is, we could just
> replace all this with a strncpy_from_user().

Fair enough.  I'll add it to my wishlist...

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
