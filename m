Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41184851BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 19:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ONUtjsYCIvUBhEOW/TXHQmgerFdH7YLfktSNiQ4HNmk=; b=AaSCvA3xfiaE5y
	AzQ8i/sJG70IKWkSCmG9WXs5Zfg/i6s3xGBLgC6wQQ7Cu1Dn7FBzBB76rjPuZXDSMu4W2oyJnWDS+
	FTApl5MWGBaf/x6N0iihRrHXgHMYL3/jiE4QBSAfvlh4o6/FijEX88FPriiENsbIX6jGexwm75yrI
	K2chyaiYBlhThVwwuDq/5dR7+bIgLdjVSfg1NSskAOvmf9Bl8cOKQs7pjC6SDMD4uC123ePUcP/D/
	gPV/ear/Zuevgv465sjcVu6QhnKzxNoo+Xr+nEQZm68uxWGByR4VcyEWhQHlbm5UXb9vNBNQ66Ahh
	L7D2MW/V3tw6a4YZANQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvPQW-00083s-1o; Wed, 07 Aug 2019 17:08:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvPQD-0007vl-Rq
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 17:08:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1F3C0344;
 Wed,  7 Aug 2019 10:08:21 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 01E8F3F575;
 Wed,  7 Aug 2019 10:08:19 -0700 (PDT)
Date: Wed, 7 Aug 2019 18:08:14 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH 0/2] tracing/arm: Fix the stack tracer when LR is saved
 after local storage
Message-ID: <20190807170814.GA45351@lakrids.cambridge.arm.com>
References: <20190807163401.570339297@goodmis.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807163401.570339297@goodmis.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_100822_109155_434DFFBE 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Jiping Ma <jiping.ma2@windriver.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, mingo@redhat.com,
 Joel Fernandes <joel@joelfernandes.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steve,

On Wed, Aug 07, 2019 at 12:34:01PM -0400, Steven Rostedt wrote:
> As arm64 saves the link register after a function's local variables are
> stored, it causes the max stack tracer to be off by one in its output
> of which function has the bloated stack frame.

For reference, it's a bit more complex than that. :/

Our procedure call standard (the AAPCS) says that the frame record may
be placed anywhere within a stackframe, so we don't have a guarantee as
to where the saved lr will fall w.r.t local variables.

Today, GCC happens to create the stack frame by creating the stack
record, so the LR is saved at a lower addresss than the local variables.

However, I am aware that there are reasons why a compiler may choose to
place the frame record at a different locations, e.g. using pointer
authentication to provide an implicit stack canary, so this could change
in future, or potentially differ across functions.

Maybe that's a bridge we'll have to cross in future.

Thanks,
Mark.

> 
> The first patch fixes this by creating a ARCH_RET_ADDR_BEFORE_LOCAL_VARS
> define that an achitecture (arm64) may set in asm/ftrace.h, and this
> will cause the stack tracer to make the shift.
> 
> As it has been proven that the stack tracer isn't the most trivial
> algorithm to understand by staring at the code, the second patch adds
> comments to the code to explain the algorithm with and without the
> ARCH_RET_ADDR_BEFORE_LOCAL_VARS.
> 
> Hmm, should this be sent to stable (and for inclusion now?)
> 
> -- Steve
> 
> Steven Rostedt (VMware) (2):
>       tracing/arm64: Have max stack tracer handle the case of return address after data
>       tracing: Document the stack trace algorithm in the comments
> 
> ----
>  arch/arm64/include/asm/ftrace.h |   1 +
>  kernel/trace/trace_stack.c      | 112 ++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 113 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
