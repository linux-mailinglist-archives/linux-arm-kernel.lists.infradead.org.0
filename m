Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D283C87826
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 13:04:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtzltFqsM76dE6PQ8s0R8aXSHZF4vSDYY4E54f5EfAE=; b=c1iQlkDLGYm6qn
	kxxkx7YHGDTVTlPZi1gu2zGzMCA24V/SqgJMytzOkl2EmDCxGSTycFJcHLhWbeEqScZmUN4mwcjHG
	P1vWBJRc3sDJBIE5AGJYrPtub5MDjnfG6rv/6dBQhjv95ChNrTetuMMNC28M2yWTejoSxQ2PGpr9D
	0A3KXkozQ1JNvxldcqflw5n1EwuDOO27H9P4Rq+XyvEThg4VOgf6ffZ29nTqMqMRDqC/qt+eTj0Np
	b9MMkNVWKBT3pVN5Dztrg9dm/lxxL7CyAxn6FI3sHnqI4bGt1DjEFwfS4uYs1tupOxA/4lt+HXLfE
	6h3EaXbThv4ivnM6r3gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw2gk-0005Du-86; Fri, 09 Aug 2019 11:04:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw2g8-0004zM-4H
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 11:03:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AE7EA1596;
 Fri,  9 Aug 2019 04:03:20 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2357D3F575;
 Fri,  9 Aug 2019 04:03:19 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: linux-pm@vger.kernel.org
Subject: [PATCH v2 0/8] ARM: psci: cpuidle: PSCI CPUidle rework
Date: Fri,  9 Aug 2019 12:03:06 +0100
Message-Id: <cover.1565348376.git.lorenzo.pieralisi@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
References: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_040324_260468_2F84D27C 
X-CRM114-Status: GOOD (  17.62  )
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

v2 of a previous posting:

v1: https://lore.kernel.org/linux-pm/20190722153745.32446-1-lorenzo.pieralisi@arm.com/

v1->v2:

- Split config files updates into separate patches
- Fixed minor memory leaks/bisectability issues

Original cover letter
---

Current PSCI CPUidle driver is built on top of the generic ARM
CPUidle infrastructure that relies on the architectural back-end
idle operations to initialize and enter idle states.

On ARM64 systems, PSCI is the only interface the kernel ever uses
to enter idle states, so, having to rely on a generic ARM CPUidle
driver when there is and there will always be only one method
for entering idle states proved to be overkill, more so given
that on ARM 32-bit systems (that can also enable the generic
ARM CPUidle driver) only one additional idle back-end was
ever added:

drivers/soc/qcom/spm.c

and it can be easily converted to a full-fledged CPUidle driver
without requiring the generic ARM CPUidle framework.

Furthermore, the generic ARM CPUidle infrastructure forces the
PSCI firmware layer to keep CPUidle specific information in it,
which does not really fit its purpose that should be kernel
control/data structure agnostic.

Lastly, the interface between the generic ARM CPUidle driver and
the arch back-end requires an idle state index to be passed to
suspend operations, with idle states back-end internals (such
as idle state parameters) hidden in architectural back-ends and
not available to the generic ARM CPUidle driver.

To improve the above mentioned shortcomings, implement a stand
alone PSCI CPUidle driver; this improves the current kernel
code from several perspective:

- Move CPUidle internal knowledge into CPUidle driver out of
  the PSCI firmware interface
- Give the PSCI CPUidle driver control over power state parameters,
  in particular in preparation for PSCI OSI support
- Remove generic CPUidle operations infrastructure from the kernel

This patchset does not go as far as removing the generic ARM CPUidle
infrastructure in order to collect feedback on the new approach
before completing the removal from the kernel, the generic and PSCI
CPUidle driver are left to co-exist.

Tested on Juno platform with both DT and ACPI boot firmwares.

Cc: Will Deacon <will@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>

Lorenzo Pieralisi (8):
  ARM: cpuidle: Remove useless header include
  ARM: cpuidle: Remove overzealous error logging
  drivers: firmware: psci: Decouple checker from generic ARM CPUidle
  ARM: psci: cpuidle: Introduce PSCI CPUidle driver
  ARM: psci: cpuidle: Enable PSCI CPUidle driver
  PSCI: cpuidle: Refactor CPU suspend power_state parameter handling
  arm64: defconfig: Enable the PSCI CPUidle driver
  ARM: imx_v6_v7_defconfig: Enable the PSCI CPUidle driver

 MAINTAINERS                          |   8 +
 arch/arm/configs/imx_v6_v7_defconfig |   1 +
 arch/arm64/configs/defconfig         |   1 +
 arch/arm64/kernel/cpuidle.c          |  50 +++++-
 arch/arm64/kernel/psci.c             |   4 -
 drivers/cpuidle/Kconfig.arm          |  10 ++
 drivers/cpuidle/Makefile             |   1 +
 drivers/cpuidle/cpuidle-arm.c        |  13 +-
 drivers/cpuidle/cpuidle-psci.c       | 236 +++++++++++++++++++++++++++
 drivers/firmware/psci/psci.c         | 167 +------------------
 drivers/firmware/psci/psci_checker.c |  16 +-
 include/linux/cpuidle.h              |  17 +-
 include/linux/psci.h                 |   4 +-
 13 files changed, 342 insertions(+), 186 deletions(-)
 create mode 100644 drivers/cpuidle/cpuidle-psci.c

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
