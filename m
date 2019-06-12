Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C57420E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 11:33:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E2btdNtLR1SpiZNld0+qP8ova5zk1hr6ryK9afiBwDA=; b=L7DTrWj0GDw8E7
	+/dInLaLwxf7SGPF5mUwD0XszhT/G6MkpqdRolm0aB46VVO9D8bqyrBOv9fiwp3R9WFtaCYRZ5X7F
	DFl8OwM4cfpfOW0wsGPkC6zz7TLLXYmQ816nUcBbQNwvyo0vJsHcWBoU1HnJSF/FUQxwUeyophOI1
	5M2cTw8HtT3DTMQIOQdyLBNZlYXuTR7iH3ddHjJB1gjKfq+/ENhvZnZ0n61X+9KxmwRvzRhJZDFK0
	RKN/OkVl7h4gYt22zqTzwmD8ZBBi5AoVXERInCyzt/KgVD/84RTU4Skc2PfonpNYLD0NCFGjAnHWB
	UIFCy8nv4MDa7kCi9K9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hazdc-0003oG-Tp; Wed, 12 Jun 2019 09:33:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hazdQ-0003nv-VR
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 09:33:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9275228;
 Wed, 12 Jun 2019 02:33:36 -0700 (PDT)
Received: from brain-police (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 82CCF3F246;
 Wed, 12 Jun 2019 02:33:34 -0700 (PDT)
Date: Wed, 12 Jun 2019 10:33:31 +0100
From: Will Deacon <will.deacon@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v2] arm64: Don't unconditionally add -Wno-psabi to
 KBUILD_CFLAGS
Message-ID: <20190612093331.GB11554@brain-police>
References: <20190607161201.73430-1-natechancellor@gmail.com>
 <20190611171931.99705-1-natechancellor@gmail.com>
 <20190612092519.GP28398@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612092519.GP28398@e103592.cambridge.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_023337_056339_ACBB54D4 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Qian Cai <cai@lca.pw>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 10:25:20AM +0100, Dave Martin wrote:
> On Tue, Jun 11, 2019 at 10:19:32AM -0700, Nathan Chancellor wrote:
> > v1 -> v2:
> > 
> > * Improve commit message explanation, I wasn't entirely happy with the
> >   first one; let me know if there are any issues/questions.
> > 
> > * Carry forward Dave's ack and Nick's review (let me know if you
> >   disagree with the commit messasge rewording).
> > 
> >  arch/arm64/Makefile | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> > index 8fbd583b18e1..e9d2e578cbe6 100644
> > --- a/arch/arm64/Makefile
> > +++ b/arch/arm64/Makefile
> > @@ -51,7 +51,7 @@ endif
> >  
> >  KBUILD_CFLAGS	+= -mgeneral-regs-only $(lseinstr) $(brokengasinst)
> >  KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
> > -KBUILD_CFLAGS	+= -Wno-psabi
> > +KBUILD_CFLAGS	+= $(call cc-disable-warning, psabi)
> >  KBUILD_AFLAGS	+= $(lseinstr) $(brokengasinst)
> >  
> >  KBUILD_CFLAGS	+= $(call cc-option,-mabi=lp64)
> 
> Looks OK to me.  Thanks for the additional explanation.

I'd already queued the previous version, but somehow forgotten to push it
out. I'll push this one out instead later today.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
