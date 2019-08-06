Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DA983712
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 18:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HlhtnvKmBQvF+VzVuejsYNDK3eqkBglW+0Cl9ARFPJo=; b=qD95UYk9xgX/tR
	CbNa0ceDhGFT9csAJ0bGXRS0Qx84Gjjm3dnbWJqWrHQv6I7F1/uMtmYhc5LACjNTBbX3eTzqGK3v4
	X67ZQlX8uxMYzZbasYmtviQW7ZkPRYaSJbhfchkWeMx0Bd3WQVpwHWOoGv3bBgdzkKO94IDP776by
	Z5bX4zXgHgKCoV6nMGJ4DOnC3VfBi+3lN8SlQB4MuqAKdWHghf5vYXXcDPBL/4JucoBc4SFnky9cw
	++wTyrWugzNK5HX0DLGVtxoyqn1iv+0G18OdDAPk9sLU+Rtt5NtCFeeySRm/xp61G0dhJk5ddQN2i
	AWjrKye7xlDJd8EhI5Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2Pp-0005cR-5f; Tue, 06 Aug 2019 16:34:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2Ph-0005c2-Gn
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 16:34:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C1B54344;
 Tue,  6 Aug 2019 09:34:15 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3932C3F575;
 Tue,  6 Aug 2019 09:34:14 -0700 (PDT)
Date: Tue, 6 Aug 2019 17:34:11 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 4/6] ARM: psci: cpuidle: Introduce PSCI CPUidle driver
Message-ID: <20190806163411.GC15498@e121166-lin.cambridge.arm.com>
References: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
 <20190722153745.32446-5-lorenzo.pieralisi@arm.com>
 <20190806161033.GD16546@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806161033.GD16546@e107155-lin>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_093417_642675_592B1C81 
X-CRM114-Status: GOOD (  25.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-pm@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Will Deacon <will@kernel.org>, LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 05:10:33PM +0100, Sudeep Holla wrote:
> On Mon, Jul 22, 2019 at 04:37:43PM +0100, Lorenzo Pieralisi wrote:
> > PSCI firmware is the standard power management control for
> > all ARM64 based platforms and it is also deployed on some
> > ARM 32 bit platforms to date.
> >
> > Idle state entry in PSCI is currently achieved by calling
> > arm_cpuidle_init() and arm_cpuidle_suspend() in a generic
> > idle driver, which in turn relies on ARM/ARM64 CPUidle back-end
> > to relay the call into PSCI firmware if PSCI is the boot method.
> >
> > Given that PSCI is the standard idle entry method on ARM64 systems
> > (which means that no other CPUidle driver are expected on ARM64
> > platforms - so PSCI is already a generic idle driver), in order to
> > simplify idle entry and code maintenance, it makes sense to have a PSCI
> > specific idle driver so that idle code that it is currently living in
> > drivers/firmware directory can be hoisted out of it and moved
> > where it belongs, into a full-fledged PSCI driver, leaving PSCI code
> > in drivers/firmware as a pure firmware interface, as it should be.
> >
> > Implement a PSCI CPUidle driver. By default it is a silent Kconfig entry
> > which is left unselected, since it selection would clash with the
> > generic ARM CPUidle driver that provides a PSCI based idle driver
> > through the arm/arm64 arches back-ends CPU operations.
> >
> > Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Ulf Hansson <ulf.hansson@linaro.org>
> > Cc: Sudeep Holla <sudeep.holla@arm.com>
> 
> Once the error path issues pointed by Ulf are resolved,
> 
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> 
> > Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> > ---
> >  MAINTAINERS                    |   8 ++
> >  drivers/cpuidle/Kconfig.arm    |   3 +
> >  drivers/cpuidle/Makefile       |   1 +
> >  drivers/cpuidle/cpuidle-psci.c | 150 +++++++++++++++++++++++++++++++++
> >  4 files changed, 162 insertions(+)
> >  create mode 100644 drivers/cpuidle/cpuidle-psci.c
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 783569e3c4b4..c2bf8ce65e83 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -4286,6 +4286,14 @@ S:	Supported
> >  F:	drivers/cpuidle/cpuidle-exynos.c
> >  F:	arch/arm/mach-exynos/pm.c
> >
> > +CPUIDLE DRIVER - ARM PSCI
> > +M:	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > +M:	Sudeep Holla <sudeep.holla@arm.com>
> > +L:	linux-pm@vger.kernel.org
> > +L:	linux-arm-kernel@lists.infradead.org
> > +S:	Supported
> > +F:	drivers/cpuidle/cpuidle-psci.c
> > +
> >  CPU IDLE TIME MANAGEMENT FRAMEWORK
> >  M:	"Rafael J. Wysocki" <rjw@rjwysocki.net>
> >  M:	Daniel Lezcano <daniel.lezcano@linaro.org>
> > diff --git a/drivers/cpuidle/Kconfig.arm b/drivers/cpuidle/Kconfig.arm
> > index 48cb3d4bb7d1..929b57424ea4 100644
> > --- a/drivers/cpuidle/Kconfig.arm
> > +++ b/drivers/cpuidle/Kconfig.arm
> > @@ -13,6 +13,9 @@ config ARM_CPUIDLE
> >            initialized by calling the CPU operations init idle hook
> >            provided by architecture code.
> >
> > +config ARM_PSCI_CPUIDLE
> > +	bool
> > +
> 
> [nit] I understand the intention to keep it hidden, but can't we have
> the dependency and selection of other config as part of this patch to
> make it more complete ?

Yes we can, it makes sense.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
