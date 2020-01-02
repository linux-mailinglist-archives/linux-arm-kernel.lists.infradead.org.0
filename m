Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DD212E86C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 17:08:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=F/5tShcZvPVV5uLaKsEAjkCIND7HN6CDrlCsJUO6zVg=; b=QpS
	V9I8JN4lB6ZDUjTe2H/M4zDd5Pkfa6VQZ8yXyKNlHACkfAtUrcjAaURceezOTuOd6bdU424wLEi/1
	mHIOVZLmTNyd8+mEGUbzzowBBctlSVJC7Qwoc/v9NrdPfR8CikdTCemKW7/mpxH8g4pc3PBazlARk
	6hKpacwvnNZ5AslwRHLUtyI43utiBS/ibkT3QnhVmDqGVu8SFuxC05k8uI6uUrxepq013Kkvn3H6w
	lBnQaHutW9wKDWbxQtXUlarkTD3RB1HgdfiqNhfNoJ3UTptcFtKL9KG8XUlg18BD/j+ul1IeB7Slx
	gAS7uTQtCH7g59MtJJ8duGEPdDOxCMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in31V-0004BE-W9; Thu, 02 Jan 2020 16:08:34 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in31M-0004At-NG
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 16:08:26 +0000
Received: by mail-lj1-x243.google.com with SMTP id z22so36377756ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 08:08:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=VAhfEde+SAbFW5iLC5LHy9bClcSBdjHBTW1GKNdApwM=;
 b=OlU6t8fcBKQbMw/uu5n3nHGccxYInVKRi6Vwq1anfKdZeIwjfVamfYUK/890GQ9m/G
 EhY6crqBUaIPbA3Y97BFRJnjF6B4BMrdUrKcnDeJvE50Qq4nrZM9BIND8AIZvN6jFtWE
 RL8eSmUqQNrjjid2DH5X8CE6credCD+kiEVRnHlitSaRPrOPUDxIlNdDqijzedF5Oczn
 b56HjESeUPek2ja1K7TnljI/hyf+qzRB3Omio6iljZTG6cbXmdrOccn6ls8nb3DC4GKN
 GigtnAQ5xMajjMKskPzI27bAs5mSDcgivuN55xiT4FEAlA5F1hjs2FuAf9dVCx50W/5v
 VR4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=VAhfEde+SAbFW5iLC5LHy9bClcSBdjHBTW1GKNdApwM=;
 b=RVeMlk3GRCXQRgASnc1EWNMwlJmTLISPe9IxmrKaH9eMJNEITD1XvBtpeI9ZO9fLvm
 b0CDMBm1WJlKJSwZ+p2IAiJ1O1DYYbb3itd1J8EJU+yB/ex15Mj8+GsWWiYWZmMrVmj5
 8aVqy7QqTS5cJDRbSe2PomB0K0QnsNPe1VzRE1Kc9hh5kBerxnKC6URxNIf5GWlDymPj
 75VCgDBr6B+qU5yqRcEH9Ks4pqjTuzQgdw4ZkVH5aXnjt3YYkapJLXl/tRiAEGUDPCk8
 IjwKDsXsYBhidY5subZZVFVgKs6zAzKrahlTqSK51PZKMt3iyK4ND/sLlPLAYRG8YC6B
 Y2Ng==
X-Gm-Message-State: APjAAAXBidV8ye4RIvyojW3LAMvbngQYZzbxSWN9lZ/0QNmGE7QeXc2z
 aihzFwwdG09BNaZPdwiEQmRQGQ==
X-Google-Smtp-Source: APXvYqxpuLmLhv6JkG6FkQ02uFQLUMKN0SFHEatYF5ZKIOBYVhHCVtmDGprRi3auVS1xmWEmpcBpZA==
X-Received: by 2002:a2e:3608:: with SMTP id d8mr48249090lja.152.1577981302762; 
 Thu, 02 Jan 2020 08:08:22 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id u13sm23198924lfq.19.2020.01.02.08.08.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jan 2020 08:08:21 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: arm@kernel.org,
	soc@kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] cpuidle/psci updates for v5.6
Date: Thu,  2 Jan 2020 17:08:20 +0100
Message-Id: <20200102160820.3572-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_080824_951460_CF54BD03 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Kevin Hilman <khilman@kernel.org>, linux-arm-msm@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Olof Johansson <olof@lixom.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi SoC maintainers,

Here's a PR with updates for v5.6 for cpuidle/psci for ARM/ARM64.

The changes are somewhat sprinkled over a couple of different directories and
there is also dts update for MSM8916. The main changes are in drivers/cpuidle/,
which have been acked-by Rafael [1] and Sudeep.

If you have any further questions, please just tell.

Please pull this in!

Kind regards
Ulf Hansson

[1]
https://lore.kernel.org/linux-arm-msm/CAJZ5v0gSY_Zg+sbBEfTaeBCiOf_L6JP4_-4tdpeFU0iCGJu3Nw@mail.gmail.com/


The following changes since commit fd6988496e79a6a4bdb514a4655d2920209eb85d:

  Linux 5.5-rc4 (2019-12-29 15:29:16 -0800)

are available in the Git repository at:

  git://git.linaro.org/people/ulf.hansson/linux-pm.git tags/cpuidle_psci-v5.5-rc4

for you to fetch changes up to e37131556801dd76880914f0930fe0cbd1fd3223:

  arm64: dts: Convert to the hierarchical CPU topology layout for MSM8916 (2020-01-02 16:53:10 +0100)

----------------------------------------------------------------
Initial support for hierarchical CPU arrangement, managed by PSCI and its
corresponding cpuidle driver. This support is based upon using the generic
PM domain, which already supports devices belonging to CPUs.

Finally, these is a DTS patch that enables the hierarchical topology to be
used for the Qcom 410c Dragonboard, which supports the PSCI OS-initiated
mode.

----------------------------------------------------------------
Lina Iyer (1):
      cpuidle: dt: Support hierarchical CPU idle states

Sudeep Holla (1):
      cpuidle: psci: Align psci_power_state count with idle state count

Ulf Hansson (13):
      dt: psci: Update DT bindings to support hierarchical PSCI states
      firmware: psci: Export functions to manage the OSI mode
      of: base: Add of_get_cpu_state_node() to get idle states for a CPU node
      cpuidle: psci: Simplify OF parsing of CPU idle state nodes
      cpuidle: psci: Support hierarchical CPU idle states
      cpuidle: psci: Add a helper to attach a CPU to its PM domain
      cpuidle: psci: Attach CPU devices to their PM domains
      cpuidle: psci: Prepare to use OS initiated suspend mode via PM domains
      cpuidle: psci: Manage runtime PM in the idle path
      cpuidle: psci: Support CPU hotplug for the hierarchical model
      PM / Domains: Introduce a genpd OF helper that removes a subdomain
      cpuidle: psci: Add support for PM domains by using genpd
      arm64: dts: Convert to the hierarchical CPU topology layout for MSM8916

 Documentation/devicetree/bindings/arm/cpus.yaml |  15 ++
 Documentation/devicetree/bindings/arm/psci.yaml | 104 ++++++++
 arch/arm64/boot/dts/qcom/msm8916.dtsi           |  57 ++++-
 drivers/base/power/domain.c                     |  38 +++
 drivers/cpuidle/Makefile                        |   4 +-
 drivers/cpuidle/cpuidle-psci-domain.c           | 308 ++++++++++++++++++++++++
 drivers/cpuidle/cpuidle-psci.c                  | 161 +++++++++++--
 drivers/cpuidle/cpuidle-psci.h                  |  17 ++
 drivers/cpuidle/dt_idle_states.c                |   5 +-
 drivers/firmware/psci/psci.c                    |  18 +-
 drivers/of/base.c                               |  36 +++
 include/linux/cpuhotplug.h                      |   1 +
 include/linux/of.h                              |   8 +
 include/linux/pm_domain.h                       |   8 +
 include/linux/psci.h                            |   2 +
 15 files changed, 747 insertions(+), 35 deletions(-)
 create mode 100644 drivers/cpuidle/cpuidle-psci-domain.c
 create mode 100644 drivers/cpuidle/cpuidle-psci.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
