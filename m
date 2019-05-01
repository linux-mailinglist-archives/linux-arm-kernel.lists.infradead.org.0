Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EE710B19
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 18:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wkCYUYmRnl2Gu0BqCGtoSO1TCIVnAdtlWKzf2Vwccvk=; b=HGqD8lHGLeKJPD
	BPQpbDgWySpHqhSJrAVYTYaBZPNR9ucPG7mXpijFRsqeV8fY+OJ9SgzOniIgA6vbJLqT12XTGxE7/
	1msZ68Z+tP1bj5m6zacwnE3fo69kiNTusCefEWrmzGxRbgYj62Yiqzpe5iVglrw6AmOBWIJ6rAxN4
	bIuT9QnSoxhVGnmCgVsCPIaC69W44Xdy7zyIHfkmJUhoMD2b9dp8RqUuXkYnr4KeDhDzAL+84252I
	DjoubMQ6l00JK0N+cZXKmgv95nlBfX8meMchRuYG9Aju+Hw2x14KfbkGu/l661HCwax/6PkCCEIcw
	cSx1uWqGjy6a6CVVWmGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrvr-0006HC-Sz; Wed, 01 May 2019 16:18:07 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLrvl-0006Gt-Ts
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 16:18:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 718BEA78;
 Wed,  1 May 2019 09:18:01 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A8D143F719;
 Wed,  1 May 2019 09:17:58 -0700 (PDT)
Date: Wed, 1 May 2019 17:17:52 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH v3 1/4] ptrace: move clearing of TIF_SYSCALL_EMU flag to
 core
Message-ID: <20190501161752.GA12498@e107155-lin>
References: <20190430170520.29470-1-sudeep.holla@arm.com>
 <20190430170520.29470-2-sudeep.holla@arm.com>
 <20190501161330.GD30235@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501161330.GD30235@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_091801_966373_3374D68C 
X-CRM114-Status: GOOD (  13.57  )
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
 Bin Lu <bin.lu@arm.com>, Ingo Molnar <mingo@redhat.com>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Andy Lutomirski <luto@kernel.org>, Richard Weinberger <richard@nod.at>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 06:13:30PM +0200, Oleg Nesterov wrote:
> On 04/30, Sudeep Holla wrote:
> >
> > While the TIF_SYSCALL_EMU is set in ptrace_resume independent of any
> > architecture, currently only powerpc and x86 unset the TIF_SYSCALL_EMU
> > flag in ptrace_disable which gets called from ptrace_detach.
> >
> > Let's move the clearing of TIF_SYSCALL_EMU flag to __ptrace_unlink
> > which gets executed from ptrace_detach and also keep it along with
> > or close to clearing of TIF_SYSCALL_TRACE.
> >
> > Cc: Oleg Nesterov <oleg@redhat.com>
> > Cc: Paul Mackerras <paulus@samba.org>
> > Cc: Michael Ellerman <mpe@ellerman.id.au>
> > Cc: Thomas Gleixner <tglx@linutronix.de>
> > Cc: Ingo Molnar <mingo@redhat.com>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> 
> Acked-by: Oleg Nesterov <oleg@redhat.com>
>

Since 1/4 and 2/4 are completely independent of arm64 changes in 3&4/4,
I prefer you take these via your tree.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
