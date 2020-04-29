Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 187401BDF99
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 15:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQq5+MA5tc9x9Dg1i3lVG/OmuL4vNyopjX4/4Wi00HI=; b=WZZR/Croq1c1qM
	seeW25JX1WX1mUT8a0Maz1ewG+Iex7JZohTiDFsxGmD6UX7qqyWNdG4Dk5s2vzJaphFOi2Ho5zH9Y
	FzEzZepLJXz9HNKm9ZEJ2gJp4+GoitQRS8HlRRr/F+Xna1uNW6mx6vkgLfworOXcp/VEMCSJ97nWq
	JX3X5ZQhl99dtJshZFF/YXLiOifsLX2qKc+OvKkNWPrejOFxh+v+2WL3+QsKHZuLCyqi8WWDa1Zno
	KpM1UsxILTsQxhm35ic1to8od4PEPQgDn6WZSDE6KmFWIZieyEh3ojH2NCKIUNyAbQ23eJhsE2t7S
	wdHws0IFNP+sNkfy2GNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTn8k-0004by-E2; Wed, 29 Apr 2020 13:52:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTn8Z-0004aZ-4E
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 13:52:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 699A61045;
 Wed, 29 Apr 2020 06:52:29 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B2B563F68F;
 Wed, 29 Apr 2020 06:52:27 -0700 (PDT)
Date: Wed, 29 Apr 2020 14:52:25 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v3 20/23] fs: Allow copy_mount_options() to access
 user-space in a single pass
Message-ID: <20200429135224.GB10651@gaia>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-21-catalin.marinas@arm.com>
 <20200429102650.GC30377@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429102650.GC30377@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_065231_210016_7E3AAB7C 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Will Deacon <will@kernel.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 11:26:51AM +0100, Dave P Martin wrote:
> On Tue, Apr 21, 2020 at 03:26:00PM +0100, Catalin Marinas wrote:
> > diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> > index 32fc8061aa76..566da441eba2 100644
> > --- a/arch/arm64/include/asm/uaccess.h
> > +++ b/arch/arm64/include/asm/uaccess.h
> > @@ -416,6 +416,17 @@ extern unsigned long __must_check __arch_copy_in_user(void __user *to, const voi
> >  #define INLINE_COPY_TO_USER
> >  #define INLINE_COPY_FROM_USER
> >  
> > +static inline bool arch_has_exact_copy_from_user(unsigned long n)
> > +{
> > +	/*
> > +	 * copy_from_user() aligns the source pointer if the size is greater
> > +	 * than 15. Since all the loads are naturally aligned, they can only
> > +	 * fail on the first byte.
> > +	 */
> > +	return n > 15;
> > +}
> > +#define arch_has_exact_copy_from_user
> 
> Did you mean:
> 
> #define arch_has_exact_copy_from_user arch_has_exact_copy_from_user

Yes (and I shouldn't write patches late in the day).

> Mind you, if this expands to 1 I'd have expected copy_mount_options()
> not to compile, so I may be missing something.

I think arch_has_exact_copy_from_user() (with the braces) is looked up
in the function namespace, so the macro isn't expanded. So arguably the
patch is correct but pretty dodgy ;).

I scrapped this in my second attempt in reply to Kevin.

> > diff --git a/fs/namespace.c b/fs/namespace.c
> > index a28e4db075ed..8febc50dfc5d 100644
> > --- a/fs/namespace.c
> > +++ b/fs/namespace.c
> > @@ -3025,13 +3025,16 @@ void *copy_mount_options(const void __user * data)
> 
> [ Is this applying a band-aid to duct tape?
> 
> The fs presumably knows ahead of time whether it's expecting a string or
> a fixed-size blob for data, so I'd hope we could just DTRT rather than
> playing SEGV roulette here.
> 
> This might require more refactoring than makes sense for this series
> though. ]

That's possible but it means moving the copy from sys_mount() to the
specific places where it has additional information (the filesystems).
I'm not even sure it's guaranteed to be strings. If it is, we could just
replace all this with a strncpy_from_user().

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
