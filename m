Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A22971A790B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 13:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZbgN95KHJxe8sgM8x/mUoBLqTk3mhfDF8sM2D8sxm6Y=; b=L/Nd6BKxyiyE15
	DSo+cVsVuZQm8NGGQgTIbTRkda0UX6a7SXtPmpMJ/h6hA1RoOyXzzYNQYpjlc0ijC3nAhHaSDSH07
	aKernMug889aFwIPsv9eW+HIZGovEBSWYwYitZlda3gdM/y5XdyAL1eEiVz9Fjbs+xk+K0grzISCD
	M742dMaCPCaMOEqSmusLinsYcu2uRkMoWxr8rlXKQwDM12Kz9SUjI1iqzadOZzzT1R1+OokZcxQnJ
	T0r0n9zE/tL62iRzSrFSmrekgL2vLDoQZVmzb2yZxN9Bb5yJfu12x11y+RVMOCBsxJCXFNc4VVKUn
	5vxs8n5nUQBydZgbWJ9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOJJU-0007D0-TS; Tue, 14 Apr 2020 11:01:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOJJO-0007CU-HE
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 11:01:03 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 83C902072D;
 Tue, 14 Apr 2020 11:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586862061;
 bh=4KfkzKJjz5RIUKdgy04cqT3v8IcNTwfDjxLuBg15CKU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HjUjbR/eiLWaR/rDWLBvSriLUazACWu9IaPJimMjkgUuwRFzpxmQEWuctrVnt0O40
 kO/dk94ki+h5trKnGOadhSJHifqvgY+Y/DpZJDv++GbgAPrRgQvpgD3nt8QfrW0kKG
 57kDP7JH40nT7fI2TvXBM/ERgQ8qjIEqvrTldtA0=
Date: Tue, 14 Apr 2020 12:00:56 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: Optimize ptrauth by enabling it for non-leaf
 functions
Message-ID: <20200414110056.GB26395@willie-the-truck>
References: <1586856741-26839-1-git-send-email-amit.kachhap@arm.com>
 <20200414100033.GA26395@willie-the-truck>
 <20200414101649.GC1278@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414101649.GC1278@C02TD0UTHF1T.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_040102_591454_9786B93B 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 11:16:49AM +0100, Mark Rutland wrote:
> On Tue, Apr 14, 2020 at 11:00:33AM +0100, Will Deacon wrote:
> > On Tue, Apr 14, 2020 at 03:02:21PM +0530, Amit Daniel Kachhap wrote:
> > > Compilers are optimized to not store the stack frame record for the leaf
> > > function in the stack so applying pointer authentication in the leaf
> > > function is not useful from security point of view.
> > 
> > I'm missing the reasoning here -- why don't we care about leaf functions?
> > 
> > Sounds like there's a performance/security trade-off that needs spelling
> > out and justifying with some numbers, or is it clear-cut and I'm missing
> > something?
> 
> I believe this is because leaf functions don't store the LR to the stack
> (as they don't create a frame record), so it cannot be modified by a
> stray memory write.

That makes some sense, but doesn't it also mean you can jump into the middle
of a leaf function and it will happily return to whatever sits in LR?
Perhaps it would make sense to relax to the 'non-leaf' version only if
stack protector is enabled?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
