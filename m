Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 783F11CFBB1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 19:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zi8Fvei3+AkFWrzdOJyie70yHkssWFPgPvQ29JLvX+8=; b=IuoGv+czFWICpD
	225XBcWy5s20/nXVrbs/kd/CgNvNRI8Z7couiclexA9GwnNO+CkgXqFKt/Sa7bTMNoz9lIOzSZTCO
	zSHPl1+PgUzlu1GaC2EWgVB8AJtMTJjMSyCBZQEgBnbDstBxQ9fVJ0UnZnEIv5cR6tn8fSCYACgeF
	yd8T4mNwdl2UUVUYmtZFPk83Fc3VQT0eekD6OlIh3JUKghP0xs5KzrAGljUwjcxmU8ppcw4kd841r
	tOnYjT2BQULR2GmNeW6O0LwO4tix1T5cSOKv406ns5ynwgoRnSfRbsu1IPvYaiFZYky05E+BH7ziB
	ePTpjvwm6v7nl/Gr5Nww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYYS9-0007tn-MI; Tue, 12 May 2020 17:12:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYYS0-0007tT-Vb
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 17:12:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 19CCD1FB;
 Tue, 12 May 2020 10:12:16 -0700 (PDT)
Received: from C02TF0J2HF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 23AD13F305;
 Tue, 12 May 2020 10:12:12 -0700 (PDT)
Date: Tue, 12 May 2020 18:12:09 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Amit Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v2 2/4] arm64: ptrauth: add pointer authentication
 Armv8.6 enhanced feature
Message-ID: <20200512171209.GA21213@C02TF0J2HF1T.local>
References: <1586842314-19527-1-git-send-email-amit.kachhap@arm.com>
 <1586842314-19527-3-git-send-email-amit.kachhap@arm.com>
 <20200506163155.GG2878@gaia>
 <b9823e15-3d5f-9689-562a-284921377dbf@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b9823e15-3d5f-9689-562a-284921377dbf@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_101217_059418_2ECCA83D 
X-CRM114-Status: GOOD (  20.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 08:58:51PM +0530, Amit Kachhap wrote:
> On 5/6/20 10:01 PM, Catalin Marinas wrote:
> > On Tue, Apr 14, 2020 at 11:01:52AM +0530, Amit Daniel Kachhap wrote:
> > > This patch add changes for Pointer Authentication enhanced features
> > > mandatory for Armv8.6. These features are,
> > > 
> > > * Uses an enhanced PAC generation logic which hardens finding the correct
> > >    PAC value of the authenticated pointer. However, no code change done
> > >    for this.
> > > 
> > > * Fault(FPAC) is generated now when the ptrauth authentication instruction
> > >    fails in authenticating the PAC present in the address. This is different
> > >    from earlier case when such failures just adds an error code in the top
> > >    byte and waits for subsequent load/store to abort. The ptrauth
> > >    instructions which may cause this fault are autiasp, retaa etc.
> > > 
> > > The above features are now represented by additional configurations
> > > for the Address Authentication cpufeature.
> > > 
> > > The fault received in the kernel due to FPAC is treated as Illegal
> > > instruction and hence signal SIGILL is injected with ILL_ILLOPN as the
> > > signal code. Note that this is different from earlier ARMv8.3 ptrauth
> > > where signal SIGSEGV is issued due to Pointer authentication failures.
[...]
> > While the new behaviour is a lot more useful in practice, I wonder
> > whether we could still emulate the old one by setting regs->pc to a
> > faulting address and returning to user.
> 
> However even if we set regs->pc to the faulting lr address but this lr
> may not be same as earlier one as theoretically there can be two autia
> instructions so I am not sure if complete emulation is possible. Also other
> work will be change ESR value, set error pattern in the faulting address etc
> when the error pattern is itself not defined.

You are right, we can't fully emulate this. I was thinking of getting a
fake faulting PC and returning to it so that we trigger a SIGSEGV.
Anyway, I don't think it buys us anything and I really doubt we have
user space relying on the 8.3 behaviour.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
