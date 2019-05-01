Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C1010A58
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 17:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3S3fPKIf5IjVQJRgJ+m9KmmYWzGA/Zobv3CdKzaAk20=; b=fQjiLzv/05Wey9
	vE5EuGEnfq31rutSvTW94A0UQX7kmc5yBFcGbnKAHv6hy53RJ7oQztjLb/1BegqqVL91igc98ignh
	sKnGIxiJQDzZ8B3/i239m2Lr2KTS/Gz71uQ5m3wnbYPnRjV2iSyDk5yVAJLAnJLLC7tajoqKRsCK+
	kLDtU48O1wZnbL2+AIkXRzDZHglr+Vwrr8TbXP1soCB8+fpMLKyaS4mTpwAkUArjI0j9zBuJ/1pXv
	FpSeqvNCnaet27g+vWZYq/UMxjB6JbUkynIUkOMpp4V6IaSleVfwWLLPi34tFRNFqa1p4qNd0GxzO
	Id84j8lsWiIFfqG4HVZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrbr-0004SK-Om; Wed, 01 May 2019 15:57:27 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLrbk-0004QT-46
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 15:57:21 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 86BC8C053B34;
 Wed,  1 May 2019 15:57:18 +0000 (UTC)
Received: from dhcp-27-174.brq.redhat.com (unknown [10.43.17.159])
 by smtp.corp.redhat.com (Postfix) with SMTP id 83E2A1001E95;
 Wed,  1 May 2019 15:57:14 +0000 (UTC)
Received: by dhcp-27-174.brq.redhat.com (nbSMTP-1.00) for uid 1000
 oleg@redhat.com; Wed,  1 May 2019 17:57:16 +0200 (CEST)
Date: Wed, 1 May 2019 17:57:11 +0200
From: Oleg Nesterov <oleg@redhat.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v2 3/6] x86: clean up _TIF_SYSCALL_EMU handling using
 ptrace_syscall_enter hook
Message-ID: <20190501155711.GB30235@redhat.com>
References: <20190318104925.16600-1-sudeep.holla@arm.com>
 <20190318104925.16600-4-sudeep.holla@arm.com>
 <20190318153321.GA23521@redhat.com>
 <20190430164413.GA18913@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430164413.GA18913@e107155-lin>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Wed, 01 May 2019 15:57:18 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_085720_190256_21962A14 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On 04/30, Sudeep Holla wrote:
>
> On Mon, Mar 18, 2019 at 04:33:22PM +0100, Oleg Nesterov wrote:
> >
> > And it seems that _TIF_WORK_SYSCALL_ENTRY needs some cleanups too... We don't need
> > "& _TIF_WORK_SYSCALL_ENTRY" in syscall_trace_enter, and _TIF_WORK_SYSCALL_ENTRY
> > should not include _TIF_NOHZ?
> >
>
> I was about to post the updated version and checked this to make sure I have
> covered everything or not. I had missed the above comment. All architectures
> have _TIF_NOHZ in their mask that they check to do work. And from x86, I read
> "...syscall_trace_enter(). Also includes TIF_NOHZ for enter_from_user_mode()"
> So I don't understand why _TIF_NOHZ needs to be dropped.

I have already forgot this discussion... But after I glanced at this code again
I still think the same, and I don't understand why do you disagree.

> Also if we need to drop, we can address that separately examining all archs.

Sure, and I was only talking about x86. We can keep TIF_NOHZ and even
set_tsk_thread_flag(TIF_NOHZ) in context_tracking_cpu_set() if some arch needs
this but remove TIF_NOHZ from TIF_WORK_SYSCALL_ENTRY in arch/x86/include/asm/thread_info.h,
afaics this shouldn't make any difference.

And I see no reason why x86 needs to use TIF_WORK_SYSCALL_ENTRY in
syscall_trace_enter().

Oleg.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
