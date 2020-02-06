Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D657215442B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 13:41:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cdVe+cFjeh9On3dtAajT3Gx5pRTVhbm+54CoFCmdTLo=; b=rIOeAtS1JLwxUNxjPh9v4x88L
	WhjPfJRhTodM3FYwWA6SVHZxqBm/SK6Y95nsSuLCPORf+6ugwuERieqDM40rOEPudIPA8sAmOxpd9
	p2EJ0H2idOPtOLvYXBxKMLF5Rzlc3SEZmOYfkXVHB9/wNNAabDUggTJ3cRdE9CV0zeq1AJFkR5ZFm
	BxV+taZORnWBPkM+gwn90TaKGYujxlIkqMZ7D/oUGJGswKizS3Idu3Mbj/UyCdZjwB/c9uuehsRtz
	Xu6Ch6BY5b1vrdhTNoMFEoUqE04eeeGUYQ0Q4819jFOVdUe8qlFhv5Pxi9pQPLUnMwP9EI2hBlNVX
	dnuWj68Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izgTS-0002U6-Cs; Thu, 06 Feb 2020 12:41:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izgTJ-0002TG-BF
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 12:41:30 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8B6820661;
 Thu,  6 Feb 2020 12:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580992888;
 bh=QRviXGPtTLyzMnnQbv0vI0Mfd+YpBIYml21mlWgU0JY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dukTsp+cqOwyyk5+xn4FHVscByigbDNphLKi9gSUlLV0yVtNZKWg5f9dhq/yp5MLC
 sk7G/RWALNj0XyAJh+A1tcBawP19Ru3dlxpk+vq2mv1M7Y4lhTlbqs0We6AEje+Z+S
 e/ti5dLOVFHQVlvOJFToxne/19O8clq8AcbKPhC4=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1izgTG-003JYg-W4; Thu, 06 Feb 2020 12:41:27 +0000
MIME-Version: 1.0
Date: Thu, 06 Feb 2020 12:41:26 +0000
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: ssbs: Fix context-switch when SSBS instructions
 are present
In-Reply-To: <20200206122047.GA18762@willie-the-truck>
References: <20200206113410.18301-1-will@kernel.org>
 <10b7b4b0bcc443db7028efbdee789549@kernel.org>
 <20200206122047.GA18762@willie-the-truck>
Message-ID: <b96ac2ae6b444a53be72a8656592ab01@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: will@kernel.org, linux-arm-kernel@lists.infradead.org,
 mark.rutland@arm.com, kernel-team@android.com, stable@vger.kernel.org,
 catalin.marinas@arm.com, sramana@codeaurora.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_044129_429715_9F8AE360 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, Srinivas Ramana <sramana@codeaurora.org>,
 Catalin Marinas <catalin.marinas@arm.com>, stable@vger.kernel.org,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-06 12:20, Will Deacon wrote:
> On Thu, Feb 06, 2020 at 11:49:31AM +0000, Marc Zyngier wrote:
>> On 2020-02-06 11:34, Will Deacon wrote:
>> > When all CPUs in the system implement the SSBS instructions, we
>> > advertise this via an HWCAP and allow EL0 to toggle the SSBS field
>> > in PSTATE directly. Consequently, the state of the mitigation is not
>> > accurately tracked by the TIF_SSBD thread flag and the PSTATE value
>> > is authoritative.
>> >
>> > Avoid forcing the SSBS field in context-switch on such a system, and
>> > simply rely on the PSTATE register instead.
>> >
>> > Cc: <stable@vger.kernel.org>
>> > Cc: Marc Zyngier <maz@kernel.org>
>> > Cc: Catalin Marinas <catalin.marinas@arm.com>
>> > Cc: Srinivas Ramana <sramana@codeaurora.org>
>> > Fixes: cbdf8a189a66 ("arm64: Force SSBS on context switch")
>> > Signed-off-by: Will Deacon <will@kernel.org>
>> > ---
>> >  arch/arm64/kernel/process.c | 7 +++++++
>> >  1 file changed, 7 insertions(+)
>> >
>> > diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
>> > index d54586d5b031..45e867f40a7a 100644
>> > --- a/arch/arm64/kernel/process.c
>> > +++ b/arch/arm64/kernel/process.c
>> > @@ -466,6 +466,13 @@ static void ssbs_thread_switch(struct task_struct
>> > *next)
>> >  	if (unlikely(next->flags & PF_KTHREAD))
>> >  		return;
>> >
>> > +	/*
>> > +	 * If all CPUs implement the SSBS instructions, then we just
>> > +	 * need to context-switch the PSTATE field.
>> > +	 */
>> > +	if (cpu_have_feature(cpu_feature(SSBS)))
>> > +		return;
>> > +
>> >  	/* If the mitigation is enabled, then we leave SSBS clear. */
>> >  	if ((arm64_get_ssbd_state() == ARM64_SSBD_FORCE_ENABLE) ||
>> >  	    test_tsk_thread_flag(next, TIF_SSBD))
>> 
>> Looks goot to me.
> 
> Ja!

Ach...

> 
>> Reviewed-by: Marc Zyngier <maz@kernel.org>
> 
> Cheers. It occurs to me that, although the patch is correct, the 
> comment and
> the commit message need tweaking because we're actually predicating 
> this on
> the presence of SSBS in any form, so the instructions may not be
> implemented. That's fine because the prctl() updates pstate, so it 
> remains
> authoritative and can't be lost by one of the CPUs treating it as 
> RAZ/WI.

True. It is the PSTATE bit that actually matters, not the presence of 
the control
instruction.

> I'll spin a v2 later on.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
