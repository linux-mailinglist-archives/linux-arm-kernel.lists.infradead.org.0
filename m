Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C24CD3E9E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 13:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ilZQWFuLV/roXSc/ys0QWQpxNOjSuLNah4Kmn+tci1w=; b=HVYRk28ZVd2NO+
	BTr7cxUvZWDN3eVWetC49JF4+hFCXIlrx1wOfdHpEXLBo6IRE/onqI8jdI/89qv6j0qC328fK+wN+
	mDtEMp0jqlHvtaeRIJCSgIowoD4wiBKA6+I7D/ZL40oBL4FScnkPifwWprsuc+qo3SyCNwB+XvGwd
	BoimQUwpyRmEYM2+bbPh/tJrVIC5CtsJ8iNgboWy2Iwmsr24fG6eMo22j9N6y0liDGsaRqgbF0HEP
	QYMdEBct+0sSl39bMGVXsg44m0W9a3Wntb8xAs9whZtnUr9c3G9PXP8RaKTNsVmSpfullZhEKNSxz
	EHqeRZmjLXU9gp1OmlUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iItHY-0007xp-B3; Fri, 11 Oct 2019 11:40:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iItHO-0007xR-Ri
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 11:40:20 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1522B2084C;
 Fri, 11 Oct 2019 11:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570794018;
 bh=/tVdMx7BnAqW/hbSXgiwkMgRA7V28nzkW3pfiavEQO4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pbGIcDDN7BNI6vl7wJhDq93lpR4i9kAH6qtAk8ZB3eQDeZVFng+DPzgDbyZargU82
 iwqja87omDa8Vu3esHUSCjpjzw55VwczpmF+S95BCS9KZzGwvMc1OkcggqpALOUTSF
 VpOZuH+qQwRiyB2m6Kj6eRIN47NZR95+jLaXV+YM=
Date: Fri, 11 Oct 2019 12:40:13 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 1/2] arm64: Add initial support for E0PD
Message-ID: <20191011114013.ovvs36rrolkn2hzv@willie-the-truck>
References: <20190814183103.33707-1-broonie@kernel.org>
 <20190814183103.33707-2-broonie@kernel.org>
 <20191010161317.GD24793@lakrids.cambridge.arm.com>
 <20191011111715.GH4741@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011111715.GH4741@sirena.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_044018_923038_C54A87D8 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 12:17:15PM +0100, Mark Brown wrote:
> On Thu, Oct 10, 2019 at 05:13:17PM +0100, Mark Rutland wrote:
> 
> > So if all the boot-time CPUs have E0PD, we can spawn a VM that starts
> > using E0PD, but we might (silently) later migrate it to a CPU without
> > E0PD, breaking the security guarantee.
> 
> > I think we want this to be STRICT, so that we at least warn in such a
> > case.
> 
> > More generally than this patch, I suspect we probably want to abort the
> > hotplug if we online a CPU that doesn't provide the same gaurantees as
> > the sys_val for the field.
> 
> Right, if we make it STRICT we at least avoid that issue with KVM.
> 
> > > +#ifdef CONFIG_ARM64_E0PD
> > > +	{
> > > +		.desc = "E0PD",
> > > +		.capability = ARM64_HAS_E0PD,
> > > +		.type = ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE,
> 
> > I suspect it would be better to treat this as a system-wide capability,
> > as with KPTI, which will make it much easier to reason about.
> 
> > That would rule out having E0PD on a subset of CPUs, with or without
> > KPTI. With KPTI it's not really necessary, and without KPTI we don't
> > have a consistent guarantee, so that sounds reasonable to me.
> 
> It does - the main motivation for doing it as a local feature was
> to avoid the regression with systems with late CPUs that lack the
> capability which Will was concerned about but I'm not sure how
> realistic such systems actually are.

I think we need to handle the case where not all CPUs support ExPD :(

It's not like E0PD is something critical like support for a particular page
size, so I think it's a tough sell for SoC integrators to ensure that it's
matched up.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
