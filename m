Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 310A556F23
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 18:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKmwrymokYuyyD5Ia8b0+SE3AFaqH/mQEsdyKcHFXJE=; b=fKb2rxpBWNmCVH
	G2c0NZMoGuKP0fGU27Y2mVZIQXVEDL/4iC7Vdu9s4VDLpN6rpO3ErKR07hpKFLXSEhHN7B9nUdtNH
	zto5C4RbzXX7tvkd18KK3Q7daQlUwDW6cFJ1TcK6ddwVIi4emiUXnaEu+zVIXwKYRXv5xQLZ+C2ZT
	ddFU4vW0PiWqXZKyfmy3W0feQMmEWzF8R6jyWtRercdbDyQygD0w4dFZLk1uXdkiKdUuEM20voN3+
	cCAMFoxxdfFAL+6+YWt2ddWL6Ta71jFxz7GhpnarOKMTZufW8HXshn8qF1fz7WhsiNfHfUxjUbN7x
	+Y1qHOXDHo4L+aUbvMuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgB8k-0004VN-2u; Wed, 26 Jun 2019 16:51:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgB8W-0004Ur-L9
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 16:51:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D5E572B;
 Wed, 26 Jun 2019 09:51:05 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 49F953F706; Wed, 26 Jun 2019 09:51:05 -0700 (PDT)
Date: Wed, 26 Jun 2019 17:51:03 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: Add support for E0PD
Message-ID: <20190626165102.GE29672@arrakis.emea.arm.com>
References: <20190626144535.27680-1-broonie@kernel.org>
 <20190626150403.dekq5l5rpmgzknfr@willie-the-truck>
 <20190626160622.GA5379@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626160622.GA5379@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_095108_734373_96FB37E1 
X-CRM114-Status: GOOD (  23.55  )
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 05:06:22PM +0100, Mark Brown wrote:
> On Wed, Jun 26, 2019 at 04:04:04PM +0100, Will Deacon wrote:
> > I think you're missing one small thing here: all v8.5 CPUs will have
> > hardware mitigations for meltdown as advertised in the ID registers.
> > However, we still force KPTI on for those CPUs if KASLR is enabled to avoid
> > it being trivially bypassed by looking at fault timings. As you point out,
> > there are two issues with that: (1) the performance impact of KPTI and (2)
> > the incompatibility with statistical profiling. It is these issues which
> > E0PD attempts to address, so whilst I'm ok with enabling it unconditionally
> > as you propose, we should go one step further and avoid enabling KPTI on
> > CPUs with E0PD even if KASLR is enabled.
> 
> I agree, I'm currently working on a patch which will disable KPTI by
> default if we've enabled E0PD - it's a bit of a faff due to how early we
> decide if we're going to use KPTI so it probably needs to be a separate
> patch anyway.

Could we not wire up this check in unmap_kernel_at_el0()? We can look at
this as a more efficient KPTI handled by the hardware.

> > We probably also need to consider the unfortunate situations where E0PD
> > is not supported by all of the CPUs in the system.
> 
> Yes, I've marked it as ARM64_CPUCAP_SYSTEM_FEATURE so it should be safe
> unless all the CPUs that don't support it are late CPUs (in which case
> it'd stop them booting) but it's not ideal as it means we won't use it
> at on mixed systems.  I did debate marking it as _WEAK so that we'd
> enable it on the CPUs that can use it but I worried that that'd be
> potentially misleading with regard to the level of hardening if the
> kernel said it was turning on E0PD.

I think this will become problematic in combination with disabling kpti.
If we decide early that it is meltdown-safe (unmap_kernel_at_el0()
returning false) because the boot CPU supports E0PD, any subsequent CPU
not having E0PD and hence requiring unmap_kernel_at_el0() will not boot.
That's fine by me as long as we have a Kconfig option to disable E0PD
and allow mixed CPU features on some custom SoCs.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
