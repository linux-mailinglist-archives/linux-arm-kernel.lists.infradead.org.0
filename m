Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 216C01640F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 10:59:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ARUk2BNFa6bU2JPxs4fh9dI9F4BGG8t9PKglC+Z6oTo=; b=T3P
	uaR4c+I8KcAr6miKBNFXiCM/3hm9lUwOmn3eOwV2C7Q11BGiLnBgP0ygwXMvMRjCABCGU2gWoLv2R
	Nrrg/Movg9idIPay1cNKHdfpghJA/oO7jir6SAmJMJvQrVBxj1M2Lf7YscHWfhphaGFnXPKED1/o1
	BFRgfcd2QeDvXNQxLYcqsHfDwyZb3C/caOVgi7DLUINUBycsDZfJG+1M2dFdr+pKj6JLAxxG+pozJ
	by68BxS8Gkw5rWQaaY+VLPjTaebsG6+hv+wr3RWR/leBr7/Tj8A6e+pvG93a7b35HPX/Wrgp+M8nQ
	i1KXuYRZXcANZqdJymALl0C5qyNu8pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4M8Q-00015a-P3; Wed, 19 Feb 2020 09:59:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4M8F-00014E-K6
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 09:59:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 550BE1FB;
 Wed, 19 Feb 2020 01:59:00 -0800 (PST)
Received: from e123648.arm.com (unknown [10.37.12.28])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5972A3F6CF;
 Wed, 19 Feb 2020 01:58:56 -0800 (PST)
From: lukasz.luba@arm.com
To: kgene@kernel.org, krzk@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: [PATCH v2 0/2] Enable Odroid-XU3/4 to use Energy Model and Energy
 Aware Scheduler 
Date: Wed, 19 Feb 2020 09:58:26 +0000
Message-Id: <20200219095828.8063-1-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_015903_750333_D2482882 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, b.zolnierkie@samsung.com, robh+dt@kernel.org,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, myungjoo.ham@samsung.com,
 dietmar.eggemann@arm.com, lukasz.luba@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lukasz Luba <lukasz.luba@arm.com>

The Odroid-XU4/3 is a decent and easy accessible ARM big.LITTLE platform,
which might be used for research and development.

This small patch set provides possibility to run Energy Aware Scheduler (EAS)
on Odroid-XU4/3 and experiment with it. 

The patch 1/2 provides 'dynamic-power-coefficient' in CPU DT nodes, which is
then used by the Energy Model (EM).
The patch 2/2 enables SCHED_MC (which adds another level in scheduling domains)
and enables EM making EAS possible to run (when schedutil is set as a CPUFreq
governor).

1. Test results

Two types of different tests have been executed. The first is energy test
case showing impact on energy consumption of this patch set. It is using a
synthetic set of tasks (rt-app based). The second is the performance test
case which is using hackbench (less time to complete is better).
In both tests schedutil has been used as cpufreq governor. In all tests
PROVE_LOCKING has not been compiled into the kernels.

1.1 Energy test case

10 iterations of 24 periodic rt-app tasks (16ms period, 10% duty-cycle)
with energy measurement. The cpufreq governor - schedutil. Unit is Joules.
The energy is calculated based on hwmon0 and hwmon3 power1_input.
The goal is to save energy, lower is better.

+-----------+-----------------+------------------------+
|           | Without patches | With patches           |
+-----------+--------+--------+----------------+-------+
| benchmark |  Mean  | RSD*   | Mean           | RSD*  |
+-----------+--------+--------+----------------+-------+
| 24 rt-app |  21.56 |  1.37% |  19.85 (-9.2%) | 0.92% |
|    tasks  |        |        |                |       |
+-----------+--------+--------+----------------+-------+

1.2 Performance test case

10 consecutive iterations of hackbench (hackbench -l 500 -s 4096),
no delay between two successive executions.
The cpufreq governor - schedutil. Units in seconds.
The goal is to see not regression, lower completion time is better.

+-----------+-----------------+------------------------+
|           | Without patches | With patches           |
+-----------+--------+--------+----------------+-------+
| benchmark | Mean   | RSD*   | Mean           | RSD*  |
+-----------+--------+--------+----------------+-------+
| hackbench |  8.15  | 2.86%  |  7.95 (-2.5%)  | 0.60% |
+-----------+--------+--------+----------------+-------+

*RSD: Relative Standard Deviation (std dev / mean)

Changes:
v2:
- changed dynamic power coeffcient to 90 for A7, which prevents odd
  behaviour for some low utilisation and at low OPPs;
  now, the power ratio is ~3x between big an LITTLE core;
  it's better aligned with [1]; probably due to measurement noise
  at lower OPPs the values obtained from hwmon0|3 were different
  from reality; some synthetic workloads showed this differences
- cleaned commit messages (no measurements in commit message)
- merged configs into one patch and re-ordered patches
- provided energy measurmements in the cover letter
- measurements focused on comparing similar setup - with schedutil governor,
  to compare apples with apples

The v1 can be found in [2].
The patch set is on top of Krzysztof's tree, branch 'next/dt' [3] and has 
been tested on Odroid-XU3 rev0.2 20140529.

Regards,
Lukasz Luba

[1] https://www.cl.cam.ac.uk/~rdm34/big.LITTLE.pdf
[2] https://lore.kernel.org/linux-arm-kernel/20200127215453.15144-1-lukasz.luba@arm.com/T/
[3] https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git/log/?h=next/dt

Lukasz Luba (2):
  ARM: dts: exynos: Add dynamic-power-coefficient to Exynos5422 CPUs
  ARM: exynos_defconfig: Enable SCHED_MC and ENERGY_MODEL

 arch/arm/boot/dts/exynos5422-cpus.dtsi | 8 ++++++++
 arch/arm/configs/exynos_defconfig      | 2 ++
 2 files changed, 10 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
