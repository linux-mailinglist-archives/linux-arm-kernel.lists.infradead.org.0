Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C53431F8619
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 03:11:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CVvmFcQoeDcZGrSNVMr4AVKYXYNc9Ch+ruoV/sGhp9U=; b=NPbsEZiidvjXah
	NnaC3X8fOW7wApPTI7d9CTOc7CtOqA2OkN6PiCaUvaqclEl6u2cCLLlLNqJymd9blCyB2kpwoiDIi
	IJS6cvTP8bOSa+Wm6gCY0BLoOH/DemAVXknLZ+HLUVKl4cUKQCTGmfIjECv1Ly3wrHhya7wFguCjH
	6gIciXDM0XFONskkuxO4QsEIdvfxq4tGKDSTiqZ4rMbpnDMTusTBCS/7pjUMHxWXyvm0xcjDEOdYJ
	dRrbmg4RoytjJDsgMpGZG+uiM4zUIJJJsBBDNsM1kFaUWvaJsfMibqN9yPUgBGS9Z/y9KnDXm7uAa
	dkO81nXfM26fSZHHqkDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkHAh-0000fv-QG; Sun, 14 Jun 2020 01:10:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkHAI-0000YM-D6
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 01:10:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 544221FB;
 Sat, 13 Jun 2020 18:10:21 -0700 (PDT)
Received: from e113632-lin.cambridge.arm.com (e113632-lin.cambridge.arm.com
 [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 621943F73C;
 Sat, 13 Jun 2020 18:10:19 -0700 (PDT)
From: Valentin Schneider <valentin.schneider@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Subject: [PATCH 0/3] sched,
 arch_topology: Thermal pressure configuration cleanup
Date: Sun, 14 Jun 2020 02:07:52 +0100
Message-Id: <20200614010755.9129-1-valentin.schneider@arm.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_181026_488570_672F1A52 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>,
 Thara Gopinath <thara.gopinath@linaro.org>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi folks,

This stems from this thread [1] on the list. TL;DR: the thermal pressure config
has no helpful documentation, and figuring out if the right dependencies are in
place is not easy for a regular user. 

The current landscape also paints an odd picture: arch_set_thermal_pressure() is
hardcoded in sched/core.c, and is *not* architecture-definable, while
arch_get_thermal_pressure() is. Patch 1 is tackling this, the rest is Kconfig
stuff.

Cheers,
Valentin

[1]: https://lkml.kernel.org/r/20200603173150.GB1551@shell.armlinux.org.uk

Valentin Schneider (3):
  thermal/cpu-cooling, sched/core: Cleanup thermal pressure definition
  sched: Cleanup SCHED_THERMAL_PRESSURE setup
  arm, arm64: Select CONFIG_SCHED_THERMAL_PRESSURE

 arch/arm/Kconfig                  |  1 +
 arch/arm64/Kconfig                |  1 +
 drivers/base/arch_topology.c      | 11 +++++++++++
 drivers/thermal/cpufreq_cooling.c |  5 +++++
 include/linux/arch_topology.h     |  3 ---
 init/Kconfig                      | 15 ++++++++++++++-
 kernel/sched/core.c               | 11 -----------
 7 files changed, 32 insertions(+), 15 deletions(-)

--
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
