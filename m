Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1A0898E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 10:43:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EoIbQ3JGZY1V2T/aR3g8GbGUOdkc0wAtlGabPXZkBpM=; b=DlLWBhb8jvHoBU
	hYxoOmfk1Og3R3lY4FWb/lpZ2Atpj5GT1EesNs4l96SDPnWTglvxua1TTCEen1B4qD7cd0g/GV2xj
	EdUVVjU42CbTKimKmCiOSfRnePc3KZeFX7/Obs6QJvz+UcDgTdPyRylrs5BlPxBsFT37y9cfn8zAr
	ZxOpc1E/VpRibeYz+11SCtrH/mvAw/l4ZwJGmvzOW0LnBUAvh+5HiQROeC+YwRM3pDFh43cKdlOB2
	d8ih3s1NnwUOJTO4eSpPwguFQYCHSz3Li5E5KmuQyMmd0IbxY5NN06Z7aV7s+OrwJJAIEsRzK0Ur6
	p27mH/ppWKv5DKyBZ+kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx5v9-0007cG-UN; Mon, 12 Aug 2019 08:43:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hx5ui-0007PR-FP
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 08:42:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A4F8C15A2;
 Mon, 12 Aug 2019 01:42:43 -0700 (PDT)
Received: from queper01-lin.cambridge.arm.com (queper01-lin.cambridge.arm.com
 [10.1.195.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A01643F718;
 Mon, 12 Aug 2019 01:42:41 -0700 (PDT)
From: Quentin Perret <quentin.perret@arm.com>
To: edubezval@gmail.com, rui.zhang@intel.com, javi.merino@kernel.org,
 viresh.kumar@linaro.org, amit.kachhap@gmail.com, rjw@rjwysocki.net,
 catalin.marinas@arm.com, will@kernel.org, daniel.lezcano@linaro.org
Subject: [PATCH v7 0/4] Make IPA use PM_EM
Date: Mon, 12 Aug 2019 09:42:31 +0100
Message-Id: <20190812084235.21440-1-quentin.perret@arm.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_014248_606474_F96C361A 
X-CRM114-Status: GOOD (  14.80  )
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
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 quentin.perret@arm.com, mka@chromium.org, ionela.voinescu@arm.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes in v7
*************
 - Added patch 02/04 to fix the build error reported by the kbuild bot

Changes in v6
*************
 - Added Daniel's and Viresh's Acked-by to all patches

Changes in v5:
**************
 - Changed patch 02 to guard IPA-specific code in cpu_cooling.c with
   appropriate ifdefery (Daniel)
 - Rebased on 5.2-rc2

Changes in v4:
**************
 - Added Viresh's Acked-by to all 3 patches
 - Improved commit message of patch 3/3 to explain how it has no
   functional impact on existing users (Eduardo)

Changes in v3:
**************
 - Changed warning message for unordered tables to something more
   explicit (Viresh)
 - Changed WARN() into a pr_err() for consistency

Changes in v2:
**************
 - Fixed patch 01/03 to actually enable CONFIG_ENERGY_MODEL
 - Added "depends on ENERGY_MODEL" to IPA (Daniel)
 - Added check to bail out if the freq table is unsorted (Viresh)

Cover letter:
*************

The Intelligent Power Allocator (IPA) thermal governor uses an Energy
Model (or EM) of the CPUs to re-distribute the power budget. To do so,
it builds a table of <frequency, power> tuples where the power values
are computed using the 'dynamic-power-coefficient' DT property. All of
this is done in and only for the thermal subsystem, and more
specifically for CPUs -- the power of other types of devices is obtained
differently.

Recently, the CPU scheduler has seen the introduction of Energy Aware
Scheduling (EAS) patches, which also rely on an EM of the CPUs. This EM,
however, is managed by an independent framework, called PM_EM, aimed to
be used by all kernel subsystems interested in the power consumed by
CPUs, and not only the scheduler.

This patch series follows this logic and removes the (now redundant)
thermal-specific EM computation code to migrate IPA to use PM_EM
instead.

Doing so should have no visible functional impact for existing users of
IPA since:

 - during the 5.1 development cycle, a series of patches [1] introduced
   in PM_OPP some infrastructure (dev_pm_opp_of_register_em()) enabling
   the registration of EMs in PM_EM using the DT property used by IPA;

 - the existing upstream cpufreq drivers marked with the
   'CPUFREQ_IS_COOLING_DEV' flag all call dev_pm_opp_of_register_em(),
   which means they all support PM_EM (the only two exceptions are
   qoriq-cpufreq which doesn't in fact use an EM and scmi-cpufreq which
   already supports PM_EM without using the PM_OPP infrastructurei
   because it read power costs directly from firmware);

So, migrating IPA to using PM_EM should effectively be just plumbing
since for the existing IPA users the PM_EM tables will contain the
exact same power values that IPA used to compute on its own until now.
The only new dependency is to compile in CONFIG_ENERGY_MODEL.

Why is this migration still a good thing ? For three main reasons.

 1. it removes redundant code;

 2. it introduces an abstraction layer between IPA and the EM
    computation. PM_EM offers to EAS and IPA (and potentially other
    clients) standardized EM tables and hides 'how' these tables have
    been obtained. PM_EM as of now supports power values either coming
    from the 'dynamic-power-coefficient' DT property or obtained
    directly from firmware using SCMI. The latter is a new feature for
    IPA and that comes 'for free' with the migration. This will also be
    true in the future every time PM_EM gets support for other ways of
    loading the EM. Moreover, PM_EM is documented and has a debugfs
    interface which should help adding support for new platforms.

 3. it builds a consistent view of the EM of CPUs across kernel
    subsystems, which is a pre-requisite for any kind of future work
    aiming at a smarter power allocation using scheduler knowledge about
    the system for example.

[1] https://lore.kernel.org/lkml/20190204110952.16025-1-quentin.perret@arm.com/


Quentin Perret (4):
  arm64: defconfig: Enable CONFIG_ENERGY_MODEL
  PM / EM: Declare EM data types unconditionally
  thermal: cpu_cooling: Make the power-related code depend on IPA
  thermal: cpu_cooling: Migrate to using the EM framework

 arch/arm64/configs/defconfig  |   1 +
 drivers/thermal/Kconfig       |   1 +
 drivers/thermal/cpu_cooling.c | 428 ++++++++++++++--------------------
 include/linux/energy_model.h  |   3 +-
 4 files changed, 179 insertions(+), 254 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
