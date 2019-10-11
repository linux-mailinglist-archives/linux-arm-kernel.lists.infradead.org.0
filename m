Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2347D4010
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 14:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ewHoXRpkKfcwvv6amUdG3ExWxrRH47P/PGvLJZWQDug=; b=AC8Kkep1EQC4b8
	lM8LYycCOemg55dMueF88ZMYVJLtEVZ3uWrJfWUmdXBVm6nZdYwJcY+E94sAyEdwo99QIwQO9a7go
	NUzJ/aqF9ByyXaUNlppLmv1yKXW8LAEPcTmiL+J387f7V/kRn8xGvI+7eR4FsmlULhVP6Rd8bVscF
	X8dNGHnVsS/1sSPq3XKtDIPh8RMh6xtSMpftdbw7dJ4XTaZVJ7YJyMY6jTAvIyt68XVfYPk5I/uCf
	RVFZ7aRvLw/ZJzI0VvRjA6P42wUZHZEAy9zN2xI1bcHJ3SKx80YW4CzyHBJhvkvlVDZXoVGo27bYY
	O/5CTOn6GyodrxrFdZyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuVD-00027J-Jj; Fri, 11 Oct 2019 12:58:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuV4-00025Z-Uf
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 12:58:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B2A4F28;
 Fri, 11 Oct 2019 05:58:27 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 E6D963F6C4; Fri, 11 Oct 2019 05:58:26 -0700 (PDT)
Date: Fri, 11 Oct 2019 13:58:24 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 1/2] arm64: Add initial support for E0PD
Message-ID: <20191011125824.GD54842@arrakis.emea.arm.com>
References: <20190814183103.33707-1-broonie@kernel.org>
 <20190814183103.33707-2-broonie@kernel.org>
 <20191010161317.GD24793@lakrids.cambridge.arm.com>
 <20191011111715.GH4741@sirena.org.uk>
 <20191011114013.ovvs36rrolkn2hzv@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011114013.ovvs36rrolkn2hzv@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_055831_033759_7B4B7C91 
X-CRM114-Status: GOOD (  20.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 12:40:13PM +0100, Will Deacon wrote:
> On Fri, Oct 11, 2019 at 12:17:15PM +0100, Mark Brown wrote:
> > On Thu, Oct 10, 2019 at 05:13:17PM +0100, Mark Rutland wrote:
> > 
> > > So if all the boot-time CPUs have E0PD, we can spawn a VM that starts
> > > using E0PD, but we might (silently) later migrate it to a CPU without
> > > E0PD, breaking the security guarantee.
> > 
> > > I think we want this to be STRICT, so that we at least warn in such a
> > > case.
> > 
> > > More generally than this patch, I suspect we probably want to abort the
> > > hotplug if we online a CPU that doesn't provide the same gaurantees as
> > > the sys_val for the field.
> > 
> > Right, if we make it STRICT we at least avoid that issue with KVM.
> > 
> > > > +#ifdef CONFIG_ARM64_E0PD
> > > > +	{
> > > > +		.desc = "E0PD",
> > > > +		.capability = ARM64_HAS_E0PD,
> > > > +		.type = ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE,
> > 
> > > I suspect it would be better to treat this as a system-wide capability,
> > > as with KPTI, which will make it much easier to reason about.
> > 
> > > That would rule out having E0PD on a subset of CPUs, with or without
> > > KPTI. With KPTI it's not really necessary, and without KPTI we don't
> > > have a consistent guarantee, so that sounds reasonable to me.
> > 
> > It does - the main motivation for doing it as a local feature was
> > to avoid the regression with systems with late CPUs that lack the
> > capability which Will was concerned about but I'm not sure how
> > realistic such systems actually are.
> 
> I think we need to handle the case where not all CPUs support ExPD :(

That's fine but if such CPUs are brought up late and the kernel has
already made the decision to switch to global mappings, we should just
park them.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
