Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F15571A20
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 16:19:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lqudmtp9p+jUSiDOBEBNJASa6Flu8cRfJUAoESe8Irw=; b=JGBtwnHjvKz5pz
	lewDIW6bTI84CFF2tWM1VJnv9U7i117z8UJnY55ipDtHgcwTHJb/PyvzO9ijd0YfxGXyvMy0u+FVd
	EM9bhRA54su7q9NDDwuqlbOTaNSEbrIwI5H31XznrKm+LdGiLZ8PvNua8NNi6SiZlDyD0idD6nQIP
	gkz44f9vBxigzzNMBXEq9dz2IPkyJlti7+y2cNZtq+RhexsPj1uD9ZLdRnvTp5HNdJ3VU5bmCdjNq
	moIGN7Ububb8+aLrv/XPP6icsz6nS7N0gw7wouETM3QCPybIg7apbLMFkcNl4uF5wyxkbB64CI4by
	xPgsYn8VH3cg7kpnCBJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpvdU-000602-GF; Tue, 23 Jul 2019 14:19:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpvdG-0005zH-6V
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 14:19:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7B26328;
 Tue, 23 Jul 2019 07:19:09 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 252A33F71F;
 Tue, 23 Jul 2019 07:19:08 -0700 (PDT)
Date: Tue, 23 Jul 2019 15:19:05 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 0/6] ARM: psci: cpuidle: PSCI CPUidle rework
Message-ID: <20190723141905.GB22025@e121166-lin.cambridge.arm.com>
References: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
 <CAPDyKFqAMhx_8T5FF7MujYc7HuNVAfCYx4j1UEfesuCc-TE-rw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFqAMhx_8T5FF7MujYc7HuNVAfCYx4j1UEfesuCc-TE-rw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_071910_332155_28E9427A 
X-CRM114-Status: GOOD (  27.96  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Linux PM <linux-pm@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 01:49:15PM +0200, Ulf Hansson wrote:
> On Mon, 22 Jul 2019 at 17:37, Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
> >
> > Current PSCI CPUidle driver is built on top of the generic ARM
> > CPUidle infrastructure that relies on the architectural back-end
> > idle operations to initialize and enter idle states.
> >
> > On ARM64 systems, PSCI is the only interface the kernel ever uses
> > to enter idle states, so, having to rely on a generic ARM CPUidle
> > driver when there is and there will always be only one method
> > for entering idle states proved to be overkill, more so given
> > that on ARM 32-bit systems (that can also enable the generic
> > ARM CPUidle driver) only one additional idle back-end was
> > ever added:
> >
> > drivers/soc/qcom/spm.c
> >
> > and it can be easily converted to a full-fledged CPUidle driver
> > without requiring the generic ARM CPUidle framework.
> >
> > Furthermore, the generic ARM CPUidle infrastructure forces the
> > PSCI firmware layer to keep CPUidle specific information in it,
> > which does not really fit its purpose that should be kernel
> > control/data structure agnostic.
> >
> > Lastly, the interface between the generic ARM CPUidle driver and
> > the arch back-end requires an idle state index to be passed to
> > suspend operations, with idle states back-end internals (such
> > as idle state parameters) hidden in architectural back-ends and
> > not available to the generic ARM CPUidle driver.
> >
> > To improve the above mentioned shortcomings, implement a stand
> > alone PSCI CPUidle driver; this improves the current kernel
> > code from several perspective:
> >
> > - Move CPUidle internal knowledge into CPUidle driver out of
> >   the PSCI firmware interface
> > - Give the PSCI CPUidle driver control over power state parameters,
> >   in particular in preparation for PSCI OSI support
> > - Remove generic CPUidle operations infrastructure from the kernel
> >
> > This patchset does not go as far as removing the generic ARM CPUidle
> > infrastructure in order to collect feedback on the new approach
> > before completing the removal from the kernel, the generic and PSCI
> > CPUidle driver are left to co-exist.
> 
> I like the approach and I think this series definitely moves things in
> the right direction.
> 
> Of course, some additional cleanups/re-works on top are needed to show
> its full benefit, but step by step we reach that point.

I pushed code out as we agreed.

git://git.kernel.org/pub/scm/linux/kernel/git/lpieralisi/linux.git

branch: cpuidle/psci-driver

I will version the code as I update the patches, I will leave
them on the list for this week before sending a v2.

> > Tested on Juno platform with both DT and ACPI boot firmwares.
> >
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Ulf Hansson <ulf.hansson@linaro.org>
> > Cc: Sudeep Holla <sudeep.holla@arm.com>
> > Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> >
> > Lorenzo Pieralisi (6):
> >   ARM: cpuidle: Remove useless header include
> >   ARM: cpuidle: Remove overzealous error logging
> >   drivers: firmware: psci: Decouple checker from generic ARM CPUidle
> >   ARM: psci: cpuidle: Introduce PSCI CPUidle driver
> >   ARM: psci: cpuidle: Enable PSCI CPUidle driver
> >   PSCI: cpuidle: Refactor CPU suspend power_state parameter handling
> >
> >  MAINTAINERS                          |   8 +
> >  arch/arm/configs/imx_v6_v7_defconfig |   1 +
> >  arch/arm64/configs/defconfig         |   1 +
> >  arch/arm64/kernel/cpuidle.c          |  50 +++++-
> >  arch/arm64/kernel/psci.c             |   4 -
> >  drivers/cpuidle/Kconfig.arm          |   7 +
> >  drivers/cpuidle/Makefile             |   1 +
> >  drivers/cpuidle/cpuidle-arm.c        |  13 +-
> >  drivers/cpuidle/cpuidle-psci.c       | 235 +++++++++++++++++++++++++++
> >  drivers/firmware/psci/psci.c         | 167 +------------------
> >  drivers/firmware/psci/psci_checker.c |  16 +-
> >  include/linux/cpuidle.h              |  17 +-
> >  include/linux/psci.h                 |   4 +-
> >  13 files changed, 338 insertions(+), 186 deletions(-)
> >  create mode 100644 drivers/cpuidle/cpuidle-psci.c
> >
> > --
> > 2.21.0
> >
> 
> For the series, besides the minor comments I had on patch 4, feel free to add:
> 
> Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Thanks !
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
