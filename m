Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A492D1BDB5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 21:23:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WC1BoAcMTO+C9Pyw77HY2yfYkUldKAlVSyscbJIrMQo=; b=rTx
	SF7HDae+ZvYAkQ1PJvR78kA4PlyeSNvj74RLkhN84VsBhhkT8iubONpWhxyEu10HCK9Wlzg9Q0F5I
	m9jGCD+vWgHFL51HmspRANPaSvPI+s7e9+Bvv3I2Ise10ePLjTO/v1K9iL9cxqCdLwOuXYocYOX/k
	15UR3vnXH+Q1XpFAbLLVIJKT1fdQA71DyI3kXa4ovc75m428oVQeq8u3bpl295m3fs7PeRO+VpHOI
	2s4LeQ7OpdslfzPSoWADCuSM+Vl2g1y+S3BzLa5/WyK/yO6sx/hNbjO8gru3G81gldkN8Va4EDiaI
	GcBImfECNeAJyryVfopVwrNmLGP9k5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQGXc-0000qz-Ca; Mon, 13 May 2019 19:23:16 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQGXU-0000qG-3Y
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 19:23:09 +0000
Received: by mail-lj1-x243.google.com with SMTP id d15so12061521ljc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 12:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Gzzr3aPqnDTR4xJuZ6Dwo8dyXxy5sIUZgyMsJ7pPoY0=;
 b=Mzo5I774dXYMHByU7wsqj3lng+uKL8knf8ObGK3ASOFvgRuuzH0EFF5DVfEKVc3CxF
 heZjV67nx216HD5b+aMO7oOxn8Mi2KHLUf4q3asBIiQjlqZEUJb+b4N/0Td5sDbVKEfh
 4a/uhflYJk2rXduqkIyG3LzIIWpcT6R2xYGpjMvItHNnUsjE6XKkXdtgC3vDs1ngYDWk
 U0+Us+RYvk5sNGre/guOCQ77M3G6ShT42Lzu/+Uc1l7bxp6y0OvD5wposLorqen2+wsi
 6prpNYZaww9EzNj4Q9CmAvS8TK7yfwVLUoiTMmVHLn8C2FQkuz9Dz1sTycuhe4rljnoF
 7WVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Gzzr3aPqnDTR4xJuZ6Dwo8dyXxy5sIUZgyMsJ7pPoY0=;
 b=c97WDvUlNTat5P+ZJKOzIKdRvWOCYnP9SJk767KP4krVDEUg48jtD/h/fiy9n3MhLc
 DjCpVT2dnkldh9zzUWdfcPSyhNmBtArw7HWz/VT008t7DqmLEEltO6UD60CV8PnYkjPt
 bcQw2g859b8EC6QjXoCcUS2CYG6+skdWtnigceOO0vRtTQ2g1KDszhMAiqUQqKUXet7Y
 p0wQqkRmjOFbd2r1dhRA8OsJX3ApXM1ALNaAT74yK0qEyuNw2s7FPkq0GxNZOkJh1LAQ
 ad+NjgD+LuWIXY8WGnT3Rr7NYjxJ2S+JK1YIEkUy2xJYQkPNFviETP4PBT378GcbnDDE
 sDhQ==
X-Gm-Message-State: APjAAAXnLUX9TeKvTvzDC/gtwTVPtOf79pvteiFFdJhiPLak0PXwKq7t
 AxWPq/4B1ntzIORYKEjyNpx6Dg==
X-Google-Smtp-Source: APXvYqwitEWls33sFoMJJbAKOhzoDnMBmnyAJE/ot+GvPj1v5chGc9NXR/OeG4gvXkNOUG5EoPkgYg==
X-Received: by 2002:a2e:9f44:: with SMTP id v4mr14425722ljk.72.1557775385746; 
 Mon, 13 May 2019 12:23:05 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id q21sm3449365lfa.84.2019.05.13.12.23.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 12:23:04 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 00/18] ARM/ARM64: Support hierarchical CPU arrangement for PSCI
Date: Mon, 13 May 2019 21:22:42 +0200
Message-Id: <20190513192300.653-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_122308_206723_34E4E2FB 
X-CRM114-Status: GOOD (  21.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 Lina Iyer <ilina@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series enables support for hierarchical CPU arrangement, managed by PSCI
for ARM/ARM64. It's based on using the generic PM domain (genpd), which
recently was extended to manage devices belonging to CPUs.

The last two DTS patches enables the hierarchical topology to be used for the
Qcom 410c Dragonboard and the Hisilicon Hikey board. The former uses PSCI OS-
initiated mode, while the latter uses the PSCI Platform-Coordinated mode. In
other words, the hierarchical description of the topology in DT, is orthogonal
to the supported PSCI CPU suspend mode.

Do note, these patches have been posted earlier, but then being part of bigger
series, which at that point also included the needed infrastructure changes to
genpd and cpuidle. Rather than continue to carry the old version history,
which may be a bit confusing, I decided to start over. Although, for clarity,
the changelog below explains what changes that have been made since the last
submission was made.

Changes since last submission:
 - Converted to use dev_pm_domain_attach_by_name() rather than
   dev_pm_domain_attach(),when attaching a CPU to its PM domain. This is done to
   cope with multiple PM domains per CPU, if that turns out to be needed in the
   future. Changes mainly consisted of storing the returned struct device* from
   dev_pm_domain_attach_by_name() into a per CPU struct.
 - Due to above changes, some simplification of the code became possible, in
   particular the deployment of runtime PM became a bit nicer, I think.
 - Moved some of the new code inside "#ifdef CONFIG_CPU_IDLE".
 - Addressed various comments for each patch.

The series is also available at:
git.linaro.org/people/ulf.hansson/linux-pm.git next

More background (if you are still awake):
For ARM64/ARM based platforms CPUs are often arranged in a hierarchical manner.
From a CPU idle state perspective, this means some states may be shared among a
group of CPUs (aka CPU cluster).

To deal with idle management of a group of CPUs, sometimes the kernel needs to
be involved to manage the last-man standing algorithm, simply because it can't
rely solely on power management FWs to deal with this. Depending on the
platform, of course.

There are a couple of typical scenarios for when the kernel needs to be in
control, dealing with synchronization of when the last CPU in a cluster is about
to enter a deep idle state.

1)
The kernel needs to carry out so called last-man activities before the
CPU cluster can enter a deep idle state. This may for example involve to
configure external logics for wakeups, as the GIC may no longer be functional
once a deep cluster idle state have been entered. Likewise, these operations
may need to be restored, when the first CPU wakes up.

2)
Other more generic I/O devices, such as an MMC controller for example, may be a
part of the same power domain as the CPU cluster, due to a shared power-rail.
For these scenarios, when the MMC controller is in use dealing with an MMC
request, a deeper idle state of the CPU cluster may needs to be temporarily
disabled. This is needed to retain the MMC controller in a functional state,
else it may loose its register-context in the middle of serving a request.

Kind regards
Ulf Hansson


Lina Iyer (4):
  dt: psci: Update DT bindings to support hierarchical PSCI states
  cpuidle: dt: Support hierarchical CPU idle states
  drivers: firmware: psci: Support hierarchical CPU idle states
  arm64: dts: Convert to the hierarchical CPU topology layout for
    MSM8916

Ulf Hansson (14):
  of: base: Add of_get_cpu_state_node() to get idle states for a CPU
    node
  ARM/ARM64: cpuidle: Let back-end init ops take the driver as input
  drivers: firmware: psci: Simplify state node parsing
  drivers: firmware: psci: Prepare to use OS initiated suspend mode
  drivers: firmware: psci: Prepare to support PM domains
  drivers: firmware: psci: Add support for PM domains using genpd
  drivers: firmware: psci: Add hierarchical domain idle states converter
  drivers: firmware: psci: Introduce psci_dt_topology_init()
  drivers: firmware: psci: Add a helper to attach a CPU to its PM domain
  drivers: firmware: psci: Attach the CPU's device to its PM domain
  drivers: firmware: psci: Manage runtime PM in the idle path for CPUs
  drivers: firmware: psci: Support CPU hotplug for the hierarchical
    model
  arm64: kernel: Respect the hierarchical CPU topology in DT for PSCI
  arm64: dts: hikey: Convert to the hierarchical CPU topology layout

 .../devicetree/bindings/arm/psci.txt          | 166 ++++++++
 arch/arm/include/asm/cpuidle.h                |   4 +-
 arch/arm/kernel/cpuidle.c                     |   5 +-
 arch/arm64/boot/dts/hisilicon/hi6220.dtsi     |  87 +++-
 arch/arm64/boot/dts/qcom/msm8916.dtsi         |  57 ++-
 arch/arm64/include/asm/cpu_ops.h              |   4 +-
 arch/arm64/include/asm/cpuidle.h              |   6 +-
 arch/arm64/kernel/cpuidle.c                   |   6 +-
 arch/arm64/kernel/setup.c                     |   3 +
 drivers/cpuidle/cpuidle-arm.c                 |   2 +-
 drivers/cpuidle/dt_idle_states.c              |   5 +-
 drivers/firmware/psci/Makefile                |   2 +-
 drivers/firmware/psci/psci.c                  | 219 ++++++++--
 drivers/firmware/psci/psci.h                  |  29 ++
 drivers/firmware/psci/psci_pm_domain.c        | 403 ++++++++++++++++++
 drivers/of/base.c                             |  36 ++
 drivers/soc/qcom/spm.c                        |   3 +-
 include/linux/of.h                            |   8 +
 include/linux/psci.h                          |   6 +-
 19 files changed, 987 insertions(+), 64 deletions(-)
 create mode 100644 drivers/firmware/psci/psci.h
 create mode 100644 drivers/firmware/psci/psci_pm_domain.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
