Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0CA519B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 19:38:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RpU75qT0son+g1zRcF7JS8svNHOuOPhObnBWAkIhy6A=; b=qlkC3igWUjV3OU
	frGfoT6EinTAFASf7RfVtqEqUyl8SmgOg+JM6O0geJEs45S17NH156rj/fozOh6Pdfd07GzVDCtRG
	jmxjGSgJwHPolhRW9N9usnJF3HpQWa10bhfzJI84RfPv7mb8t5xuUnYINBhXzrz7yXLmyOWYGv83U
	iVZTIVaE/LDXEbiSzNJtQRDJxm/MreHxZWkvIGRQDvyNRqiJ/nsB4S22Ycg6TUq9LHpZ3WEF9wTr7
	39QVvxER04HZp8zz8EPcR9IQs+2WihXeY6d/56M+vySRIPu7/XXzhxpqjKaa8B/nlBeBZPsE8qNlG
	3vLO3msuNwMYs3uwrbeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfSuk-0004ew-Sr; Mon, 24 Jun 2019 17:37:58 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfSua-0004e8-Qc
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 17:37:50 +0000
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hfSuT-0002VP-3j; Mon, 24 Jun 2019 19:37:41 +0200
Date: Mon, 24 Jun 2019 19:37:40 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v5 2/4] x86/entry: Simplify _TIF_SYSCALL_EMU handling
In-Reply-To: <20190624173008.GJ29120@arrakis.emea.arm.com>
Message-ID: <alpine.DEB.2.21.1906241936480.32342@nanos.tec.linutronix.de>
References: <20190523090618.13410-3-sudeep.holla@arm.com>
 <20190611145627.23229-1-sudeep.holla@arm.com>
 <20190624173008.GJ29120@arrakis.emea.arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_103749_007463_6FB962B6 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Haibo Xu <haibo.xu@arm.com>, Steve Capper <Steve.Capper@arm.com>,
 Richard Weinberger <richard@nod.at>, jdike@addtoit.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, Oleg Nesterov <oleg@redhat.com>,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Jun 2019, Catalin Marinas wrote:
> On Tue, Jun 11, 2019 at 03:56:27PM +0100, Sudeep Holla wrote:
> > The usage of emulated and _TIF_SYSCALL_EMU flags in syscall_trace_enter
> > is more complicated than required.
> > 
> > Cc: Andy Lutomirski <luto@kernel.org>
> > Cc: Ingo Molnar <mingo@redhat.com>
> > Cc: Borislav Petkov <bp@alien8.de>
> > Acked-by: Oleg Nesterov <oleg@redhat.com>
> > Reviewed-by: Thomas Gleixner <tglx@linutronix.de>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  arch/x86/entry/common.c | 17 ++++++-----------
> >  1 file changed, 6 insertions(+), 11 deletions(-)
> > 
> > Hi Catalin,
> > 
> > I assume you can now pick up this patch.
> 
> I can, unless Thomas picks it up through the tip tree (there is no
> dependency on the other patches in this series, which I already queued
> via arm64).

Last time I checked I had no dependencies either. I'll recheck later
tonight.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
