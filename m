Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0294B1888F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 16:18:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJUK9m4EFK+m+7oTv0TS7/tur13nc5hnWaEyYt4nmAs=; b=uaG4cr4bnARUkn
	9eolM2QRyb9L1saqTWyo1ktJAX/2ZBa1YUcgFRQOTe8mGG9ULq8pAjGTIfUekGh9YxJt1P+zNCKrL
	lG+lgjfriNJ59c0U9glqPpm/AUMdg0nfBuCfR/FD165C6iRyrjKBuoEUkktgFM06ABduw2mZBi9KP
	08GNCUrGPQc1+Txq5ZMnGWPiKbdfNjnFy0foohUHCUXnt02pnwheQBsLx3Q9BmbfWJbDcBEfvGAaP
	NHBqdJLkaINUEGmPDiP+hSyNm4gHvc8/YnalRwfV62dIvTV6Pi7ENQFT+3bqEKU/xxX02GQ+OOWRf
	IXl7IHd0WZR6AV+1occg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEDzM-0004Jw-QW; Tue, 17 Mar 2020 15:18:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEDz1-0004AK-QY
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 15:18:21 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD79C20714;
 Tue, 17 Mar 2020 15:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584458299;
 bh=kPqFh2OC+QYr6S9udTfHPUyXCCUZbCYYP+w4Ykyo5ac=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LUy+OokcgDni5hFal9vNvB6rC6CWzLecLAR9f1XopbpdGlLV9X07U3BWT4J1Jyptv
 +BJnDAuiik5lDTDZCkqpU0RGXJefbmywJuUAg/a8wyiePh7LnOVpvESitpBYCV7A+e
 2DBa1Y8EAPamXkr2ZdZUIVFv/dQQwZOAdMfsZp2Y=
Date: Tue, 17 Mar 2020 15:18:14 +0000
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [RFC PATCH] arm64: fix the missing ktpi= cmdline check in
 arm64_kernel_unmapped_at_el0()
Message-ID: <20200317151813.GA16579@willie-the-truck>
References: <20200317114708.109283-1-yaohongbo@huawei.com>
 <20200317121050.GH8831@lakrids.cambridge.arm.com>
 <20200317124323.GA16200@willie-the-truck>
 <20200317135719.GH3971@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317135719.GH3971@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_081819_952429_1A22F3E2 
X-CRM114-Status: GOOD (  22.15  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 Hongbo Yao <yaohongbo@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 01:57:19PM +0000, Mark Brown wrote:
> On Tue, Mar 17, 2020 at 12:43:24PM +0000, Will Deacon wrote:
> > On Tue, Mar 17, 2020 at 12:10:51PM +0000, Mark Rutland wrote:
> > > On Tue, Mar 17, 2020 at 07:47:08PM +0800, Hongbo Yao wrote:
> 
> > > > Kpti cannot be disabled from the kernel cmdline after the commit
> > > > 09e3c22a("arm64: Use a variable to store non-global mappings decision").
> 
> > > > Bring back the missing check of kpti= command-line option to fix the
> > > > case where the SPE driver complains the missing "kpti-off" even it has
> > > > already been set.
> 
> > > > -	return arm64_use_ng_mappings;
> > > > +	return arm64_use_ng_mappings &&
> > > > +		cpus_have_const_cap(ARM64_UNMAP_KERNEL_AT_EL0);
> > > >  }
> 
> > This probably isn't the right fix, since this will mean that early mappings
> > will be global and we'll have to go through the painful page-table rewrite
> > logic when the cap gets enabled for KASLR-enabled kernels.
> 
> Aren't we looking for a rewrite from non-global to global here (disable
> KPTI where we would otherwise have it), which we don't currently have
> code for?

What I mean is that cpus_have_const_cap() will be false initially, so we'll
put down global mappings early on because PTE_MAYBE_NG will be 0, which
means that we'll have to invoke the rewriting code if we then realise we
want non-global mappings after the caps are finalised.

> > Maybe a better bodge is something like:
> 
> > diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> > index 0b6715625cf6..ad10f55b7bb9 100644
> > --- a/arch/arm64/kernel/cpufeature.c
> > +++ b/arch/arm64/kernel/cpufeature.c
> > @@ -1085,6 +1085,8 @@ static bool unmap_kernel_at_el0(const struct arm64_cpu_capabilities *entry,
> >  		if (!__kpti_forced) {
> >  			str = "KASLR";
> >  			__kpti_forced = 1;
> > +		} else if (__kpti_forced < 0) {
> > +			arm64_use_ng_mappings = false;
> >  		}
> >  	}
> 
> That is probably a good idea but I think that runs too late to affect
> the early mappings, they're done based on kaslr_requires_kpti() well
> before we start secondaries.  My first pass not having paged everything
> back in yet is that there needs to be command line parsing in
> kaslr_requires_kpti() but as things stand the command line isn't
> actually ready then...

Yeah, and I think you probably run into chicken and egg problems mapping
the thing. With the change above, it's true that /some/ mappings will
still be nG if you pass kpti=off, but I was hoping that didn't really matter
:)

What was the behaviour prior to your patch? If it used to work without
any nG mappings, then I suppose we should try to restore that behaviour.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
