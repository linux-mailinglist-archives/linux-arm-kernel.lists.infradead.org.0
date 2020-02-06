Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1191543EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 13:21:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i352w5kmnl87OV6EAHSjR05amX52XLVWueS+0YY0X5Y=; b=HUGTuuRylB53aU
	OwqerbGz3yiXxcy6yBaXrKZ4ijQKGzNsgy+s8uM9ZgJbfsH6FT8Cv11ApGC9vMp30M72jQRKQOxO4
	Wc0WLWqCAowH/E8wySJduwaOA4FUy2MEgOlzW90j6EIqV5AvDpJ3VTnBSUxu7EPx5+LbBHePaFD2w
	7v/+c7NXAA1YnVAfd4Gs/sJ2AITRAc7VhHhjRBQHCXztVWGLVtR3LcU7IZ4vn/8kH17IAQnBA2hvi
	X0r1XcV/HEZl+7bfkcvuyubG6z4stSbasY7XwzR2vS2hohvrzob5vfol7e3mlZL+s/rljshr0h7Rw
	AqFDy40TnrioPnX98irQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izg9S-0002g8-Bw; Thu, 06 Feb 2020 12:20:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izg9M-0002ff-F4
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 12:20:53 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D044221741;
 Thu,  6 Feb 2020 12:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580991652;
 bh=Hz5mpDtiqCA0N/S1stMo+BEahL/BwrOPzwytyLbcvNQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RMhc20A6ccaCbc9w6tjniyG1wGM6LnQ7MctrJ88A82L9QdoUUDV1jFIwumX34uQRt
 T/YzRaL4SoWJPuMhu65w7sxTkjAXL3LOmnsLXrkKFGH+anVJEm11GMlk27ty5HjFSs
 e3J7Q3E/YF5v/tvxJm0I7aIU3TPwJLWewDt+nXoI=
Date: Thu, 6 Feb 2020 12:20:47 +0000
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] arm64: ssbs: Fix context-switch when SSBS instructions
 are present
Message-ID: <20200206122047.GA18762@willie-the-truck>
References: <20200206113410.18301-1-will@kernel.org>
 <10b7b4b0bcc443db7028efbdee789549@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10b7b4b0bcc443db7028efbdee789549@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_042052_530575_9E5DA8F1 
X-CRM114-Status: GOOD (  19.75  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 06, 2020 at 11:49:31AM +0000, Marc Zyngier wrote:
> On 2020-02-06 11:34, Will Deacon wrote:
> > When all CPUs in the system implement the SSBS instructions, we
> > advertise this via an HWCAP and allow EL0 to toggle the SSBS field
> > in PSTATE directly. Consequently, the state of the mitigation is not
> > accurately tracked by the TIF_SSBD thread flag and the PSTATE value
> > is authoritative.
> > 
> > Avoid forcing the SSBS field in context-switch on such a system, and
> > simply rely on the PSTATE register instead.
> > 
> > Cc: <stable@vger.kernel.org>
> > Cc: Marc Zyngier <maz@kernel.org>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Srinivas Ramana <sramana@codeaurora.org>
> > Fixes: cbdf8a189a66 ("arm64: Force SSBS on context switch")
> > Signed-off-by: Will Deacon <will@kernel.org>
> > ---
> >  arch/arm64/kernel/process.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> > index d54586d5b031..45e867f40a7a 100644
> > --- a/arch/arm64/kernel/process.c
> > +++ b/arch/arm64/kernel/process.c
> > @@ -466,6 +466,13 @@ static void ssbs_thread_switch(struct task_struct
> > *next)
> >  	if (unlikely(next->flags & PF_KTHREAD))
> >  		return;
> > 
> > +	/*
> > +	 * If all CPUs implement the SSBS instructions, then we just
> > +	 * need to context-switch the PSTATE field.
> > +	 */
> > +	if (cpu_have_feature(cpu_feature(SSBS)))
> > +		return;
> > +
> >  	/* If the mitigation is enabled, then we leave SSBS clear. */
> >  	if ((arm64_get_ssbd_state() == ARM64_SSBD_FORCE_ENABLE) ||
> >  	    test_tsk_thread_flag(next, TIF_SSBD))
> 
> Looks goot to me.

Ja!

> Reviewed-by: Marc Zyngier <maz@kernel.org>

Cheers. It occurs to me that, although the patch is correct, the comment and
the commit message need tweaking because we're actually predicating this on
the presence of SSBS in any form, so the instructions may not be
implemented. That's fine because the prctl() updates pstate, so it remains
authoritative and can't be lost by one of the CPUs treating it as RAZ/WI.

I'll spin a v2 later on.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
