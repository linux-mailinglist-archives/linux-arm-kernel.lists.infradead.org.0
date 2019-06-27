Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C22DE57F4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 11:25:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rgkcngFJe1d1tGFVv+sYNO7ukiGWvHF8deHSCK4Lrzw=; b=VxTsYuBEjeFfkh
	DqeCG9d+9fDSkDskx06M2i/HADJ0VWam0z+ENoMpcWcso4V1CAi/afWOPzrXJHohVLYYDB/TAarBT
	VSA03pZQ7hHDKbOrxiDkhn0TDdLDsZZA5hhdjLnRW74mbhcIyBrfQmrxgWb/8RY7gdCAYarC/qZxw
	9JkxlCE9YUg67/gAawoiyIsD27YmwfZXhZuBPFLrkXPoVYw39Wfm2jxE4zN4Lf4GB31gRBKAZ717x
	wc1Nb3rU+S42nWUR9qq8Q8Z1z3hcdTThoTXlt1uChTQ9n8PjgDlMIe663CJblYQgoDslsBfy5Xiwm
	z8cH83MfmR3NksO6sKrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgQf9-0001gp-Fd; Thu, 27 Jun 2019 09:25:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgQes-0001gV-LB
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 09:25:36 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 297F820815;
 Thu, 27 Jun 2019 09:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561627533;
 bh=goq2/A7st83ja3Ukmer3IzeR7NeJxE0JXUBuAGZtzG8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=usXZ1Almi7iw/vNTG13gtkTbdBPTY88H4ZXJ5ih150x8FiCTR9J7sNSV5bQoY3aul
 plBSDB/R79EFy41UU3KERrpDgspoWD3vvQnGnjqutbrTGFfr6SyC3nWoe5vsOI0oLv
 p+93oWTyZfCVJpN4rQT2s9TR0mrMKsD6OnI4ZPKo=
Date: Thu, 27 Jun 2019 10:25:30 +0100
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] arm64: Add support for E0PD
Message-ID: <20190627092529.a2hdttgitnile3h6@willie-the-truck>
References: <20190626144535.27680-1-broonie@kernel.org>
 <20190626150403.dekq5l5rpmgzknfr@willie-the-truck>
 <20190626160622.GA5379@sirena.org.uk>
 <20190626165102.GE29672@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626165102.GE29672@arrakis.emea.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_022534_726756_66461E52 
X-CRM114-Status: GOOD (  28.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 05:51:03PM +0100, Catalin Marinas wrote:
> On Wed, Jun 26, 2019 at 05:06:22PM +0100, Mark Brown wrote:
> > On Wed, Jun 26, 2019 at 04:04:04PM +0100, Will Deacon wrote:
> > > I think you're missing one small thing here: all v8.5 CPUs will have
> > > hardware mitigations for meltdown as advertised in the ID registers.
> > > However, we still force KPTI on for those CPUs if KASLR is enabled to avoid
> > > it being trivially bypassed by looking at fault timings. As you point out,
> > > there are two issues with that: (1) the performance impact of KPTI and (2)
> > > the incompatibility with statistical profiling. It is these issues which
> > > E0PD attempts to address, so whilst I'm ok with enabling it unconditionally
> > > as you propose, we should go one step further and avoid enabling KPTI on
> > > CPUs with E0PD even if KASLR is enabled.
> > 
> > I agree, I'm currently working on a patch which will disable KPTI by
> > default if we've enabled E0PD - it's a bit of a faff due to how early we
> > decide if we're going to use KPTI so it probably needs to be a separate
> > patch anyway.
> 
> Could we not wire up this check in unmap_kernel_at_el0()? We can look at
> this as a more efficient KPTI handled by the hardware.

CPUs with this feature will already return false from unmap_kernel_at_el0(),
but I suppose the kaslr check could be augmented not to force kpti if E0PD
is supported. Something similar would need to be added to
arm64_kernel_use_ng_mappings(), so adding a kaslr_needs_kpti() helper might
be a good idea.

> > > We probably also need to consider the unfortunate situations where E0PD
> > > is not supported by all of the CPUs in the system.
> > 
> > Yes, I've marked it as ARM64_CPUCAP_SYSTEM_FEATURE so it should be safe
> > unless all the CPUs that don't support it are late CPUs (in which case
> > it'd stop them booting) but it's not ideal as it means we won't use it
> > at on mixed systems.  I did debate marking it as _WEAK so that we'd
> > enable it on the CPUs that can use it but I worried that that'd be
> > potentially misleading with regard to the level of hardening if the
> > kernel said it was turning on E0PD.
> 
> I think this will become problematic in combination with disabling kpti.
> If we decide early that it is meltdown-safe (unmap_kernel_at_el0()
> returning false) because the boot CPU supports E0PD, any subsequent CPU
> not having E0PD and hence requiring unmap_kernel_at_el0() will not boot.
> That's fine by me as long as we have a Kconfig option to disable E0PD
> and allow mixed CPU features on some custom SoCs.

No, I think that's a regression over the current behaviour where we do boot
on mixed SoCs like this. What we don't allow is late onlining of CPUs that
are affected if none of the initial CPUs were affected, but that's only an
issue with "maxcpus=" so it's not a big deal (you can just as easily pass
"kpti=on" at the same time).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
