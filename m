Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF581D4D87
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 14:14:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9VJNDpB1BCTS9y5S0Oop2gikCJEEXGOGjp6BK5Bv+o=; b=aJpgX0RGjLFZSI
	LPEo9xsobNXwAn0z9XEykw2gm8XIZhsKxST+3Pje6tB8FPpKO0WNKs+jLly8BlA6b7gFF3i76q9AG
	jhbDgJd/F9MxrjeFBCJEtg8FEvfAGeDaljdKJIYxVq+yj7rG5NPrEiyT8H1/AMIdWzFJlDKB0N3Q/
	BXJQZHh3cpYXoozX99xAS4CpgvB671jsWFWfnV8rc9jCqlkvqtMPtyuvwlpwRzsI3EuZzzAotTh+o
	xtAVFylTud46tyuQtprnN7XsPzwP3gkysciTeeOhDf6jtW0rdl+RSvWSovdUDnzhayx2WOPJMVWFW
	Gp2xeTS/v2PKLiPpmLrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZZE0-0008LR-8x; Fri, 15 May 2020 12:14:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZZDs-0008KI-G9
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 12:13:53 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 610E220657;
 Fri, 15 May 2020 12:13:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589544831;
 bh=wO3WfBzz3sXFu/UmGn0py5JO3lUtLdiDwLGHsADKYzQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OsxPPfg8b47Ez+Exn/r04LsRNi/MOD4RC8HIxKVhYoBXCknPhrB81UTnuY82bTnST
 xjZFUoU/z4q1C6LQ2OtKCL9UCkY8wFJqidpfGSwzLxp3GbF9pGYjx0i+hlHR1148wq
 h56oGW78rqtJVj2ZPA/uRZnJIASubirSvGrbrUtg=
Date: Fri, 15 May 2020 13:13:47 +0100
From: Will Deacon <will@kernel.org>
To: Keno Fischer <keno@juliacomputing.com>
Subject: Re: PTRACE_SYSEMU behavior difference on arm64
Message-ID: <20200515121346.GA22919@willie-the-truck>
References: <CABV8kRyHrDMK4o=UZZZWJMuQNjPA8Xuoj-JFF-Lsx26fBTR0WA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABV8kRyHrDMK4o=UZZZWJMuQNjPA8Xuoj-JFF-Lsx26fBTR0WA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_051352_558483_F410CCC0 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Keno,

On Fri, May 15, 2020 at 07:15:35AM -0400, Keno Fischer wrote:
> The behavior of PTRACE_SYSEMU on arm64
> appears to differ substantially from that of x86 and powerpc
> (the other two architectures on which this feature is implemented).
> In particular, after PTRACE_SYSEMU the syscall will always
> be skipped on x86 and powerpc, but executed on arm64 unless
> the syscall-entry stop was again continued using PTRACE_SYSEMU.
> The skipping behavior is also documented in the manpage,
> so I suspect this may just be a bug (the skipping behavior
> makes sense to me and is what I would expect).
> The reason this happens is that `syscall_trace_enter`
> re-checks TIF_SYSCALL_EMU after the ptrace stop, but at that
> point it may have already been superseded by a new ptrace
> request. x86 and power save the original value of the flag,
> rather than acting on the new value. I can submit a patch to
> fix this, but wanted to check first whether this was intentional.
> If it is, I can fix the man page instead.

Please send a patch, since this looks like a silly bug to me. But it also
means that nobody is using this on arm64, so we could also consider removing
it entirely. Did you spot this because you are trying to use it for
something or just by inspection/unit-testing?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
