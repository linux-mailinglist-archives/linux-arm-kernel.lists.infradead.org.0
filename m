Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3640B851FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 19:21:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNaqyGFby7dW/GKm5TZlBcdWzQ1KAqxTaByx0ysnOgA=; b=kj4qtTpDTuPI+g
	aciPm1LOtAfkN89532Zvsgg+nFAa4JwA5fuYdY3G+vNAm2Rx+3RsfIptR8BEgj5i/NYnF8IcideV1
	Hl591PmY7z6XuSxfdsRI3MluYQ57zniswLjFuRCigH7ZWaXUIdnEkpZxW9CkM3b//MqwZa86gSNeO
	MBYHetW3hO4c6K9Q0U3C9w37evsk4ErALWApmjQXxOnYfytAhUtrTr8WFsu29u5eDldfr7Tx1V4G9
	AaXI9FaCNJMP+eZtaGPi3mQYKM50/oBr2MAmD8PYMpA6N1axQiZEtxpTAQImvqS6K5uo9VZWW6uCJ
	mUrgEFxZqfKeB+TEumfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvPcm-0004Sp-1h; Wed, 07 Aug 2019 17:21:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvPcU-0004SA-1L
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 17:21:03 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B813E22296;
 Wed,  7 Aug 2019 17:21:00 +0000 (UTC)
Date: Wed, 7 Aug 2019 13:20:58 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 0/2] tracing/arm: Fix the stack tracer when LR is saved
 after local storage
Message-ID: <20190807132058.37616e8f@gandalf.local.home>
In-Reply-To: <20190807170814.GA45351@lakrids.cambridge.arm.com>
References: <20190807163401.570339297@goodmis.org>
 <20190807170814.GA45351@lakrids.cambridge.arm.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_102102_101482_F34C727C 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Wed, 7 Aug 2019 18:08:14 +0100
Mark Rutland <mark.rutland@arm.com> wrote:

> Hi Steve,
> 
> On Wed, Aug 07, 2019 at 12:34:01PM -0400, Steven Rostedt wrote:
> > As arm64 saves the link register after a function's local variables are
> > stored, it causes the max stack tracer to be off by one in its output
> > of which function has the bloated stack frame.  
> 
> For reference, it's a bit more complex than that. :/

Yeah, I know it is. ;-)

> 
> Our procedure call standard (the AAPCS) says that the frame record may
> be placed anywhere within a stackframe, so we don't have a guarantee as
> to where the saved lr will fall w.r.t local variables.

Yep.

> 
> Today, GCC happens to create the stack frame by creating the stack
> record, so the LR is saved at a lower addresss than the local variables.

Which is what breaks the current algorithm (without this update).

> 
> However, I am aware that there are reasons why a compiler may choose to
> place the frame record at a different locations, e.g. using pointer
> authentication to provide an implicit stack canary, so this could change
> in future, or potentially differ across functions.
> 
> Maybe that's a bridge we'll have to cross in future.

OK, how about I update the change log and add a comment that states
that this can change. But even if it does, it wont break anything but
show the wrong stack size, which is usually only important for us
kernel developers anyway ;-)

Let me send a v2.

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
