Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5E610B9A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 18:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CvPpbcM6Bwk+rcGoe1DskjCTA4OAZANYIRGaLyCq1pI=; b=pftBTKAJxJZVg3
	C7wkqKeLKEW/z07kfBAL32xioH0mrLgnWvxXGVm+HTcfctcdKOmbOsb3ckuI8z51rpm/vdel8S5cn
	7UJSzLGzcPW3WjXmdETwFw+RcYBrDn5lBe62/wnTogHn8cfKP13tuIqN427jcCnwRKsFwulJmQpoc
	abkma8TFcV2v6ENPWJm2gk3wrbx5A/RX6H5WlhuQ5ODQpNvncx97LhhONl4qdRu2WCR4OB+wVCbEB
	DcwmgCHUmF/oUOhIWrHVZbQF8Mh55OjNHrMS4PSMutjr1fbWjBddjtBTi8K2g3hgFXI5SsA0Tc6Gb
	/hX29KOs9AP67E8u7+iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLsSj-0005yx-Om; Wed, 01 May 2019 16:52:05 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLsSd-0005xz-IW
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 16:52:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 48B2880D;
 Wed,  1 May 2019 09:51:57 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 35DD13F719;
 Wed,  1 May 2019 09:51:54 -0700 (PDT)
Date: Wed, 1 May 2019 17:51:51 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH v2 3/6] x86: clean up _TIF_SYSCALL_EMU handling using
 ptrace_syscall_enter hook
Message-ID: <20190501165151.GB12498@e107155-lin>
References: <20190318104925.16600-1-sudeep.holla@arm.com>
 <20190318104925.16600-4-sudeep.holla@arm.com>
 <20190318153321.GA23521@redhat.com>
 <20190430164413.GA18913@e107155-lin>
 <20190501155711.GB30235@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501155711.GB30235@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_095159_617020_06AD0854 
X-CRM114-Status: GOOD (  22.08  )
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
Cc: Haibo Xu <haibo.xu@arm.com>, Steve Capper <Steve.Capper@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, jdike@addtoit.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Bin Lu <bin.lu@arm.com>, Richard Weinberger <richard@nod.at>,
 Ingo Molnar <mingo@redhat.com>, Paul Mackerras <paulus@samba.org>,
 Andy Lutomirski <luto@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 05:57:11PM +0200, Oleg Nesterov wrote:
> On 04/30, Sudeep Holla wrote:
> >
> > On Mon, Mar 18, 2019 at 04:33:22PM +0100, Oleg Nesterov wrote:
> > >
> > > And it seems that _TIF_WORK_SYSCALL_ENTRY needs some cleanups too... We don't need
> > > "& _TIF_WORK_SYSCALL_ENTRY" in syscall_trace_enter, and _TIF_WORK_SYSCALL_ENTRY
> > > should not include _TIF_NOHZ?
> > >
> >
> > I was about to post the updated version and checked this to make sure I have
> > covered everything or not. I had missed the above comment. All architectures
> > have _TIF_NOHZ in their mask that they check to do work. And from x86, I read
> > "...syscall_trace_enter(). Also includes TIF_NOHZ for enter_from_user_mode()"
> > So I don't understand why _TIF_NOHZ needs to be dropped.
>
> I have already forgot this discussion... But after I glanced at this code again
> I still think the same, and I don't understand why do you disagree.
>

Sorry, but I didn't have any disagreement, I just said I don't understand
the usage on all architectures at that moment.

> > Also if we need to drop, we can address that separately examining all archs.
>
> Sure, and I was only talking about x86. We can keep TIF_NOHZ and even
> set_tsk_thread_flag(TIF_NOHZ) in context_tracking_cpu_set() if some arch needs
> this but remove TIF_NOHZ from TIF_WORK_SYSCALL_ENTRY in arch/x86/include/asm/thread_info.h,
> afaics this shouldn't make any difference.
>

OK, it's just x86, then I understand your point. I was looking at all
the architectures, sorry for the confusion.

> And I see no reason why x86 needs to use TIF_WORK_SYSCALL_ENTRY in
> syscall_trace_enter().
>

Agreed

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
