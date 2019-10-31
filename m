Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D728FEB0B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:00:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e9BCuEnQgbyxKMTQmzfzTz7leZRhYOd4N8gn8Ua97I0=; b=XQltpx4YmKcwZV
	S9N25jweUGTyymlzBHZHzkZ/Bpv/4tg1ji0b4sin/Sfebg6zorJBN6hLJzz2hhHrTMks4OrLJyiso
	U/hkIs+knLXWErY1twmPzPCchAShLBVYOpp8tq7YwTuj70RxgaAxSC8Kkh+1pS86L7J3+3+DoU/p0
	vpmJMuqKD1gDpLI7RPndXLIUs1XwNorTWVqDAS3CBPxeHJv5hsNoXKj3wnXru/wW896C8AHBY2rVD
	ETT4cQnOTYUu6p5m/FCP3JYyWAtoBuEFwhFZAwRXODmhrsUSdgRRA9wvecD0rXcLjAjVmPNTAR6+v
	f8it//JUby79Dnek+djA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQA4K-0002uS-6u; Thu, 31 Oct 2019 13:00:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQA3y-0002jj-0M
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:00:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A2D1B1FB;
 Thu, 31 Oct 2019 06:00:28 -0700 (PDT)
Received: from blommer (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DD8B03F71E;
 Thu, 31 Oct 2019 06:00:24 -0700 (PDT)
Date: Thu, 31 Oct 2019 13:00:22 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Torsten Duwe <duwe@suse.de>
Subject: Re: [PATCHv2 2/8] module/ftrace: handle patchable-function-entry
Message-ID: <20191031130022.GB3477@blommer>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191029165832.33606-3-mark.rutland@arm.com>
 <20191030150302.GA965@suse.de> <20191031090231.GA3340@blommer>
 <20191031114223.GA11684@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031114223.GA11684@suse.de>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_060030_121825_45FFF6C7 
X-CRM114-Status: GOOD (  14.73  )
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
Cc: jthierry@redhat.com, linux-parisc@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, Helge Deller <deller@gmx.de>, jpoimboe@redhat.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 takahiro.akashi@linaro.org, will@kernel.org, mingo@redhat.com,
 james.morse@arm.com, Jessica Yu <jeyu@kernel.org>, amit.kachhap@arm.com,
 svens@stackframe.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 12:42:23PM +0100, Torsten Duwe wrote:
> On Thu, Oct 31, 2019 at 09:02:32AM +0000, Mark Rutland wrote:
> > I agree that the CC_USING_PATCHABLE_FUNCTION_ENTRY ifdeffery could be
> > simplified, and that it would be nice to consistently use
> > FTRACE_CALLSITE_SECTION if we can. However, the generic linker script doesn't
> > include anything, and I don't see a good location for that to live.
> > 
> > What I could do is add an explicit comment:
> > 
> > /*
> >  * The ftrace call sites are logged to a section whose name depends on the
> >  * compiler option used. A given kernel image will only use one, AKA
> >  * FTRACE_CALLSITE_SECTION. We capture all of them here to avoid header
> >  * dependencies.
> >  */
> > #define MCOUNT_REC()						\
> > 			. = ALIGN(8);				\
> > 			__start_mcount_loc = .;			\
> > 			KEEP(*(__patchable_function_entries))   \
> > 			KEEP(*(__mcount_loc))                   \
> > 			__stop_mcount_loc = .;			
> > 
> > ... which should make the dependency clear. Does that sound good to you?
> 
> Beautiful. I just didn't want to miss the opportunity to have this cleaned
> up as well, and deemed this patch "closest" because of the definition of 
> FTRACE_CALLSITE_SECTION. Put it where you see it fit best.

Sure. I've folded the above into this patch, and pushed out an updated branch:

  https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=arm64/ftrace-with-regs

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
