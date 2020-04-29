Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EED1BD63C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 09:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WesQ3qpq6Ar34CpU6lt8uHdQhdUnm5mrl+c1NWEDvts=; b=qBMx9HsWC5um6r
	h/1baQzDPfxM5XGdVu1+ejf13EIdgqArh6SOOxzIP03TkxIr+m5rfAyJOqIbMXZE05vM3sExtr4DT
	dihAsz2Y8xXLdLb4dpHJfPD6e+jZz/isyiFqPBs0WXzEYabUifIWjTthRwerCcYQ4P8yRL1U50l5t
	wWY9bGxC14J4k42MvUJKmmjIHaNqGSBsOW2AwKWIX3V92YlRGBxV3LeZJh84Ccw38KWoRfj4zJ6zP
	ad10RrQ8T1wPogUae+p71zIXctOvq9fjNg5FSeJ44md39JgnLzbQEYgtkcAj51PCfj3+0Qc2U3fvw
	FcYfno/MBtJdVjmW/x3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jThKb-0003DS-TO; Wed, 29 Apr 2020 07:40:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jThKS-0003C0-Dh
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 07:40:25 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1CAF32073E;
 Wed, 29 Apr 2020 07:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588146020;
 bh=DEnkRcxLwdAamo5hCdkBse8Ox/fKU72UTlCSL9YLApE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FLXQl3NisbVfzEWTAuwakK1bl4QcHnCiMW3pqQAHkzYJueB1SOxJBQFRK2JXiEG/b
 RFTFBq7alWYH496+mosfG6bDAEKCijzHdsWcvDTp2zDqsHc3WrR9z85wmhvk4oPItF
 pOhMJf40W6G1hfF0t4hP7n2WJMwlioiqlFzavIsc=
Date: Wed, 29 Apr 2020 08:40:15 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 04/10] arm64: Set GP bit in kernel page tables to enable
 BTI for the kernel
Message-ID: <20200429074012.GA29143@willie-the-truck>
References: <20200415130750.18645-1-broonie@kernel.org>
 <20200415130750.18645-5-broonie@kernel.org>
 <20200428172432.GB18257@gaia> <20200428180353.GN5677@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428180353.GN5677@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_004024_481587_A97CBEC4 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 07:03:53PM +0100, Mark Brown wrote:
> On Tue, Apr 28, 2020 at 06:24:32PM +0100, Catalin Marinas wrote:
> > On Wed, Apr 15, 2020 at 02:07:43PM +0100, Mark Brown wrote:
> 
> > > +#define PAGE_KERNEL_EXEC_GP	__pgprot((PROT_NORMAL & ~PTE_PXN) | PTE_GP)
> > >  #define PAGE_KERNEL_EXEC_CONT	__pgprot((PROT_NORMAL & ~PTE_PXN) | PTE_CONT)
> 
> > Are the PAGE_*_GP defines used anywhere in this series?
> 
> Not any more, I'll drop them.
> 
> > > +#ifdef CONFIG_ARM64_BTI_KERNEL
> > > +		.type = ARM64_CPUCAP_STRICT_BOOT_CPU_FEATURE,
> > > +#else
> > >  		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
> > > +#endif
> 
> > As with PtrAuth, I'm tempted to have a single config for both user and
> > kernel. Not a strong opinion though, just looking for some consistency.
> 
> Yeah, it's not ideal.  My concern with this was that at the time I sent
> the patches out GCC had a sufficiently severe code generation issue that
> it was unsustainable to use for building the kernel.  That seemed
> excessively restrictive so I made it a separate option.  This will be
> fixed in GCC 10 all being well (one of the things I need to do before
> reposting this is to verify that the current fix addresses everything I
> was seeing and update the dependencies) so it's less of a concern
> although still a bit annoying.

FWIW, I don't agree with Catalin here (I realise this is unhelpful ;) and
would much prefer to have separate config options for user and kernel. I
also think it would be worth doing this for pointer auth too, since at the
moment we have nonsensical dependencies such as user pointer auth depending
on VHE if KVM is enabled.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
