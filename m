Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 599911341B6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 13:30:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PgPSFlq9vtV4IjhT6bp0USEvEoRS7W8I/R7h+95uhgA=; b=hmE4a9xkwmMzck
	pUZfqZMn7857UoPYoU7H9v8fYz87MYbTLZp+ebG+WhmfZbbBkGR5qCGmJL99da3EBf0aFSxF5DIuo
	xxVFT7FvyjX5PCZYGZBCbw7nzJA+4DiUDdVXHwZn3MeouJ5m+WfJvWqgy96iENgJxen+ieSRz6vfJ
	A88vvn4BkKq+N4znHeDWq5rIOMGYIR5wWBOUPr+puDCNy8cjJ0MwvYFVqABX+KL2M0qwQLe1DX1La
	Wu6rbAF8OiH5LQ5q+ZJbSV9w3KXOpD10tS6xojnmYVxak4Q4yLiJcIaD4ZWsjGkED2jqyK9bhTLZ5
	NdknySdh+YCTfJ7Q8ovQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipATZ-0008IQ-6x; Wed, 08 Jan 2020 12:30:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipATP-0007uR-FZ
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 12:30:09 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3FA7E206DB;
 Wed,  8 Jan 2020 12:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578486607;
 bh=rARslqXHU2llnJuf12E36exKxxn0QScmfghdD/vK8wE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L9dypEsGWHnYzVTBnUs+jYdy3RvbjV+luvFN2tmEsfieam2JAGug9etFurUlw3JCx
 viywmVyj02HaxTOaGX34Jxsx3c3wPo7ZnILb8zsqXUnle+iWUJhO5DGlYg8bzRi4FL
 6rAsVlWlIfLzjEXBPVJQ36/djYaQSPuwMfrxG2BQ=
Date: Wed, 8 Jan 2020 12:29:58 +0000
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 2/3] arm64: lib: Use modern annotations for assembly
 functions
Message-ID: <20200108122957.GA16658@willie-the-truck>
References: <20200106195818.56351-1-broonie@kernel.org>
 <20200106195818.56351-3-broonie@kernel.org>
 <20200107144445.GC29001@willie-the-truck>
 <20200107174741.GG4877@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107174741.GG4877@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_043007_584037_849B2B29 
X-CRM114-Status: GOOD (  27.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org, jslaby@suse.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 05:47:41PM +0000, Mark Brown wrote:
> On Tue, Jan 07, 2020 at 02:44:46PM +0000, Will Deacon wrote:
> > On Mon, Jan 06, 2020 at 07:58:17PM +0000, Mark Brown wrote:
> 
> > > -ENTRY(clear_page)
> > > +SYM_FUNC_START(clear_page)
> > >  	mrs	x1, dczid_el0
> > >  	and	w1, w1, #0xf
> > >  	mov	x2, #4
> 
> > Since this doesn't change behaviour, I think the patch is fine, however
> > on reading Documentation/asm-annotations.rst it's not completely clear to
> > me when SYM_FUNC_START() should be used. In this case, for example, we are
> > *not* pushing a stackframe and that would appear to be at odds with the
> > documentation.
> 
> > Jiri -- is it ok to omit the stack frame for leaf functions annotated with
> > SYM_FUNC_START? I'm guessing it should be, since the link register isn't
> > going to be clobbered. Could we update the documentation to reflect that?
> 
> Yeah, the documentation isn't great on that.  I was going on the basis
> of both trying to minimize changes to the generated output as part of
> the bulk change and looking at it from the point of view of the caller -
> if as in this case the caller thinks it's a regular C function it seems
> sensible to annotate it as such.

Maybe a small tweak to the documentation as per below, indicating that the
stack stuff is just an x86-specific example?

Jiri?

diff --git a/Documentation/asm-annotations.rst b/Documentation/asm-annotations.rst
index f55c2bb74d00..32ea57483378 100644
--- a/Documentation/asm-annotations.rst
+++ b/Documentation/asm-annotations.rst
@@ -73,10 +73,11 @@ The new macros are prefixed with the ``SYM_`` prefix and can be divided into
 three main groups:
 
 1. ``SYM_FUNC_*`` -- to annotate C-like functions. This means functions with
-   standard C calling conventions, i.e. the stack contains a return address at
-   the predefined place and a return from the function can happen in a
-   standard way. When frame pointers are enabled, save/restore of frame
-   pointer shall happen at the start/end of a function, respectively, too.
+   standard C calling conventions. For example, on x86, this means that the
+   stack contains a return address at the predefined place and a return from
+   the function can happen in a standard way. When frame pointers are enabled,
+   save/restore of frame pointer shall happen at the start/end of a function,
+   respectively, too.
 
    Checking tools like ``objtool`` should ensure such marked functions conform
    to these rules. The tools can also easily annotate these functions with

> > > --- a/arch/arm64/lib/memcpy.S
> > > +++ b/arch/arm64/lib/memcpy.S
> > > @@ -57,11 +57,11 @@
> > >  	.endm
> > >  
> > >  	.weak memcpy
> 
> > Hmm, any idea why we use .weak explicitly here? Maybe better off using
> > the proper macros now? (same applies to many of the other lib/ functions
> > you're touching)
> 
> Nope, there's a whole bunch of stuff where what we're currently doing is
> a bit interesting and I'm a bit worried that we might be relying on some
> of it.  My theory here was to do the bulk of the changes as a 1:1
> replacement so the generated output is as close as possible for any big
> changes and then do anything more detailed that isn't actually *needed*
> on top of that.  It's looking like there'll also be some stuff that
> definitely changes the output going in as well, I was going to do those
> as individual patches so that it's easier to find any breakages that get
> introduced and so the big, repetitive changes don't have other stuff
> mixed in.

Fair enough, I'll queue these three with the minor naming change and you can
send extra stuff on top of that.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
