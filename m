Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBC9175FA4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 17:30:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TbFkOiLeXM/JO3aLOG5b6OR6GuvLLVPdsB9tFihKRsA=; b=J95ozOynmihA2r
	M9CfGZmGU3FhDJeuka0dcGN9x6J/Ib2M9iBcLP1DVD1TYjV4A5xalOyOk3SxvGrWF2NJcK3hqOdbN
	kPuTB5tG2lmOd/Fy1bWmQFV2K1fERv4yT8aXa//eqClpO+lt9SiSIRKWj/TCn273FEy3isgwaL/Dr
	F+2FrvC6QrlXFuy/15YSVj/L8uRhsMtBYweoZ9+u/2poSCrHiXxduVje0TrCQvLpZfdhSWUYeohqW
	K48/mxqiQ7+RrPjFnP+8psGV/qyW/8P9dkg1l9zQEf9dMAd99ISiO55PYtzKERIbGlg/ozi0Uzxqa
	Myjkwv6rTnFMtQ2Y/Egw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8nxB-0004hk-1V; Mon, 02 Mar 2020 16:30:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8nx3-0004h9-Sx
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 16:29:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A44DF21556;
 Mon,  2 Mar 2020 16:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583166593;
 bh=aQwFBIEFymMg+SbLZYm+H1s25h6H8TWj3yOMojUhAEw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eWjY+SPSqFT5gpqRIRoMalYK4S0yFwviM85JQsvOPfqaYaa0Raigd/dyM3ya8mmq3
 otJHhBJkdMfLjFKKQepx7rYVx48FCyBjgUMD2HqhxNrIVTJuLmUFH4RB9tIsiqn1QD
 MOjm39XiKIUchBH/9HYqjgi6b/WOp1YDfkX/7JFI=
Date: Mon, 2 Mar 2020 16:29:48 +0000
From: Will Deacon <will@kernel.org>
To: Amit Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH 1/2] arm64: ptrauth: add pointer authentication Armv8.6
 enhanced feature
Message-ID: <20200302162948.GB11427@willie-the-truck>
References: <1582117240-15330-1-git-send-email-amit.kachhap@arm.com>
 <1582117240-15330-2-git-send-email-amit.kachhap@arm.com>
 <20200228115736.GA3275@willie-the-truck>
 <20200228120314.GD36089@lakrids.cambridge.arm.com>
 <20200228122345.GC3275@willie-the-truck>
 <194f0008-4071-b143-f326-2f067e3b82fe@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <194f0008-4071-b143-f326-2f067e3b82fe@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_082953_973457_AEAE7DA1 
X-CRM114-Status: GOOD (  25.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 06:18:17PM +0530, Amit Kachhap wrote:
> On 2/28/20 5:53 PM, Will Deacon wrote:
> > On Fri, Feb 28, 2020 at 12:03:14PM +0000, Mark Rutland wrote:
> > > On Fri, Feb 28, 2020 at 11:57:37AM +0000, Will Deacon wrote:
> > > > On Wed, Feb 19, 2020 at 06:30:39PM +0530, Amit Daniel Kachhap wrote:
> > > > > diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> > > > > index 8d1c979..a4f8adb 100644
> > > > > --- a/arch/arm64/kernel/cpufeature.c
> > > > > +++ b/arch/arm64/kernel/cpufeature.c
> > > > > @@ -154,9 +154,9 @@ static const struct arm64_ftr_bits ftr_id_aa64isar1[] = {
> > > > >   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_FCMA_SHIFT, 4, 0),
> > > > >   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_JSCVT_SHIFT, 4, 0),
> > > > >   	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
> > > > > -		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_API_SHIFT, 4, 0),
> > > > > +		       FTR_STRICT, FTR_EXACT, ID_AA64ISAR1_API_SHIFT, 4, 0),
> > > > >   	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
> > > > > -		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_APA_SHIFT, 4, 0),
> > > > > +		       FTR_STRICT, FTR_EXACT, ID_AA64ISAR1_APA_SHIFT, 4, 0),
> > > > >   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_DPB_SHIFT, 4, 0),
> > > > >   	ARM64_FTR_END,
> > > > 
> > > > Hmm. This is a user-visible change and should probably be in its own patch.
> > > > It also means we will no longer advertise PAC on systems where not all of
> > > > the cores have "Enhanced PAC"; is that really necessary?
> > > 
> > > It matters for KVM, since a guest won't expect the enhanced PAC trap if
> > > the ID registers say it does not have it.
> > > 
> > > For userspace, the difference is it'll get a SIGILL on the AUT*
> > > instruction rather than a SIGSEGV when using the result of the AUT*
> > > instruction.
> > 
> > Yes, if PAC is enabled.
> > 
> > > > Generally we rely on incremental updates to unsigned ID register fields
> > > > being a superset (i.e. compatible with) the old behaviour. If that's not
> > > > the case here, then older kernels are broken and we may need new HWCAPs.
> > > 
> > > In this case, the behaviour isn't a strict superset. Enhanced PAC
> > > unconditionally changed the behaviour of AUT* (i.e. there's no opt-in
> > > with a control bit), but it's not clear to me how much this matters for
> > > userspace.
> > 
> > Doesn't that violate D13.1.3 "Principles of the ID scheme for fields in
> > ID registers"?
> > 
> > The part I dislike is that older kernels will happily advertise PAC to
> > userspace on a system with mismatched legacy/enhanced PAC, and so the
> > change above doesn't make sense for userspace because the HWCAPs are
> > already unreliable.
> 
> How to got about it? Shall I send this part as a separate fix patch
> mentioning the requirement for doing it?

I didn't see a reply from Mark, but yes, I think this should be a separate
patch. Further, I think it should only affect KVM and not userspace.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
