Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75161FE13
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 18:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNJfp5SROKktwqDx+LBmhmSVjWCYih1w/L2Np3FjIvk=; b=mgrpc2HfzB3DBj
	mrwSfCwhoO6KryTazasMpsmyhCbxpsochluuu5mJv8rBSmWgqb2WJsQzTqD+Rf31u+/zStJYfcuGi
	kmaXiRNH6MegwrSSpF8TJOlYqvW02Y4Ag+01IPEaOE07lp5GAGnuTkZ87h9x7yyFsH2Ef2fUKD087
	wirl6FLKo94d59a7SORp2WTdOfq/J70hCGobcHQUbp0K+FuUA2hcana3jKuJ/SzRzqiCflI+w6PdV
	IBSfT1ap6Mj2mHqhBuNNhees1CyEp4bFj6nuxQCUVI053yiQGFbK5498DreXbUh5JH7jZd4GLAYeD
	XaRIpyMvTi/U42jczS5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLVru-0003GD-UQ; Tue, 30 Apr 2019 16:44:34 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLVro-0003FL-NU
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 16:44:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4FF03374;
 Tue, 30 Apr 2019 09:44:23 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 170F93F5C1;
 Tue, 30 Apr 2019 09:44:19 -0700 (PDT)
Date: Tue, 30 Apr 2019 17:44:13 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH v2 3/6] x86: clean up _TIF_SYSCALL_EMU handling using
 ptrace_syscall_enter hook
Message-ID: <20190430164413.GA18913@e107155-lin>
References: <20190318104925.16600-1-sudeep.holla@arm.com>
 <20190318104925.16600-4-sudeep.holla@arm.com>
 <20190318153321.GA23521@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190318153321.GA23521@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_094428_774363_3F5D4EDB 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: Sudeep Holla <sudeep.holla@arm.com>, Haibo Xu <haibo.xu@arm.com>,
 Steve Capper <Steve.Capper@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 jdike@addtoit.com, x86@kernel.org, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Bin Lu <bin.lu@arm.com>,
 Richard Weinberger <richard@nod.at>, Ingo Molnar <mingo@redhat.com>,
 Paul Mackerras <paulus@samba.org>, Andy Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 18, 2019 at 04:33:22PM +0100, Oleg Nesterov wrote:
> On 03/18, Sudeep Holla wrote:
> >
> > --- a/arch/x86/entry/common.c
> > +++ b/arch/x86/entry/common.c
> > @@ -70,22 +70,16 @@ static long syscall_trace_enter(struct pt_regs *regs)
> >
> >  	struct thread_info *ti = current_thread_info();
> >  	unsigned long ret = 0;
> > -	bool emulated = false;
> >  	u32 work;
> >
> >  	if (IS_ENABLED(CONFIG_DEBUG_ENTRY))
> >  		BUG_ON(regs != task_pt_regs(current));
> >
> > -	work = READ_ONCE(ti->flags) & _TIF_WORK_SYSCALL_ENTRY;
> > -
> > -	if (unlikely(work & _TIF_SYSCALL_EMU))
> > -		emulated = true;
> > -
> > -	if ((emulated || (work & _TIF_SYSCALL_TRACE)) &&
> > -	    tracehook_report_syscall_entry(regs))
> > +	if (unlikely(ptrace_syscall_enter(regs)))
> >  		return -1L;
> >
> > -	if (emulated)
> > +	work = READ_ONCE(ti->flags) & _TIF_WORK_SYSCALL_ENTRY;
> > +	if ((work & _TIF_SYSCALL_TRACE) && tracehook_report_syscall_entry(regs))
> >  		return -1L;
>
[...]

>
> And it seems that _TIF_WORK_SYSCALL_ENTRY needs some cleanups too... We don't need
> "& _TIF_WORK_SYSCALL_ENTRY" in syscall_trace_enter, and _TIF_WORK_SYSCALL_ENTRY
> should not include _TIF_NOHZ?
>

I was about to post the updated version and checked this to make sure I have
covered everything or not. I had missed the above comment. All architectures
have _TIF_NOHZ in their mask that they check to do work. And from x86, I read
"...syscall_trace_enter(). Also includes TIF_NOHZ for enter_from_user_mode()"
So I don't understand why _TIF_NOHZ needs to be dropped.

Also if we need to drop, we can address that separately examining all archs.
I will post the cleanup as you suggested for now.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
