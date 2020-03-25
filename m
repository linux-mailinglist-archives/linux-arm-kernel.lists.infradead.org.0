Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4181924AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 10:50:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ogicLfoaefrn/X1ZDiPCX3uqDo5csOIwAJ8KjLdTD7M=; b=JLXy+zMeeEDoBF
	YIbOdFd95LIAJkgUg+GtFkAlUefm0jcssGlhMSPnQs6i7WQWSjmniOgU7kE0Bq2Io3nNxcbby8jaN
	ov8etjqdoa7wsZWG9FIqn++5alVK4qOuaFPCK3/7aQBYsUXTWPUQpcx7ub2wh4yv6KR+eF1fsVOcQ
	KZO8KoLepwwtqwoFVc12uBtCmbzp1Ak3CItFShAcnmYtM4y62hYUdIoyCRaEDq04BS8IJDBVa2UbZ
	pti9ExBfZA06WEEGstoGfm/hYn7ufSylCuXwfMECmmcRH/yd4QuJPxlgQnHQU4ZziO9CMBlbPaW8M
	o1vtN2A6SaEj1CWcnsRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH2gA-0006fw-CT; Wed, 25 Mar 2020 09:50:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH2g1-0006fb-9j
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 09:50:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14E4F1FB;
 Wed, 25 Mar 2020 02:50:20 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3E7163F792;
 Wed, 25 Mar 2020 02:50:19 -0700 (PDT)
Date: Wed, 25 Mar 2020 09:50:16 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: bti: Document behaviour for dynamically linked
 binaries
Message-ID: <20200325095016.GI3901@mbp>
References: <20200323170119.12263-1-broonie@kernel.org>
 <20200325080700.GA30293@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325080700.GA30293@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_025021_378821_1F70538E 
X-CRM114-Status: GOOD (  24.38  )
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
Cc: Szabolcs Nagy <szabolcs.nagy@arm.com>, Mark Rutland <mark.rutland@arm.com>,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 08:07:01AM +0000, Will Deacon wrote:
> On Mon, Mar 23, 2020 at 05:01:19PM +0000, Mark Brown wrote:
> > For dynamically linked binaries the interpreter is responsible for setting
> > PROT_BTI on everything except itself. The dynamic linker needs to be aware
> > of PROT_BTI, for example in order to avoid dropping that when marking
> > executable pages read only after doing relocations, and doing everything
> > in userspace ensures that we don't get any issues due to divergences in
> > behaviour between the kernel and dynamic linker within a single executable.
> > Add a comment indicating that this is intentional to the code to help
> > people trying to understand what's going on.
> > 
> > Signed-off-by: Mark Brown <broonie@kernel.org>
> > ---
> >  arch/arm64/kernel/process.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> > index 24af13d7bde6..9b668565dd10 100644
> > --- a/arch/arm64/kernel/process.c
> > +++ b/arch/arm64/kernel/process.c
> > @@ -674,6 +674,11 @@ asmlinkage void __sched arm64_preempt_schedule_irq(void)
> >  int arch_elf_adjust_prot(int prot, const struct arch_elf_state *state,
> >  			 bool has_interp, bool is_interp)
> >  {
> > +	/*
> > +	 * For dynamicly linked executables the interpreter is
> 
> dynamicly => dynamically
> 
> > +	 * responsible for setting PROT_BTI on everything except
> > +	 * itself.
> > +	 */
> >  	if (is_interp != has_interp)
> >  		return prot;
> 
> Catalin: With the typo fixed, it's probably worth sticking this on
> for-next/bti so we don't lose it,

I will queue it but I'd first like Szabolcs to confirm. IIUC, he's still
running some tests with this approach, may get the results in a couple
of days.

> but I don't think this is really 5.7 material until the tools folks
> are happy with the ABI. It's pretty frustrating, but committing to
> something broken would be far worse and it's better to get these
> issues resolved *now* before anything hits mainline.

I agree. I was hoping to get this in 5.7 but, given the recent
discussions, I'd like to see an official ack from the toolchain folk
that the ABI works for them (this includes both glibc and bionic camps).

I guess we could carry the branch forward for 5.8, there are some
trivial conflicts with other cpufeature changes. Anyway, it's up to you
for the next merging window ;).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
