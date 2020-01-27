Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC02814ABD8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 22:55:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5a7RA6GjInu9EWmMJu1me4M/hVsI2DNpJA2a4SZbs1g=; b=r4n
	nLzmM9vGM4kL+YpbWsQZuRp0gTFrIVCHkTwjMZxoEGzYQWCtrphCUQ3mK2ARQoHPwApwP0ysRD6/+
	JB+s+RyvzJLJnrH9DC562w3aycT8Hyq3Wp+7Hjjm13tvfYwwM8rHiRlRKQg2UdajbbjGtZRKoLMgF
	FQwkjGIiNqsGWvEzT5b/wPDEyj0HPgKxYIw83YH8oN9Kry1Vcnl6hiLdibmn+A+Nmo1VA80/nz1kV
	hH1sWSUMLIFK3VQdsgtr0gyPTEyNukF3qwGznEuSvIgzwLwstTZGmX2r9y68VlKzlHlZ8Sbd63rB4
	i7q6yWOs5gcMYlxONiNJ9rvC0LsWXBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwCM3-00088F-6J; Mon, 27 Jan 2020 21:55:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwCLu-00086e-71
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 21:55:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B720331B;
 Mon, 27 Jan 2020 13:55:18 -0800 (PST)
Received: from e123648.arm.com (unknown [10.37.12.150])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 02FD73F68E;
 Mon, 27 Jan 2020 13:55:13 -0800 (PST)
From: lukasz.luba@arm.com
To: kgene@kernel.org, krzk@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: [PATCH 0/3] Enable Odroid-XU3/4 to use Energy Model and Energy Aware
 Scheduler 
Date: Mon, 27 Jan 2020 21:54:50 +0000
Message-Id: <20200127215453.15144-1-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_135526_299813_3D6EA19A 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, b.zolnierkie@samsung.com, robh+dt@kernel.org,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, myungjoo.ham@samsung.com,
 dietmar.eggemann@arm.com, lukasz.luba@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lukasz Luba <lukasz.luba@arm.com>

The Odroid-XU3/4 is a decent and easy accessible ARM big.LITTLE platform,
which might be used for research and development.

This small patch set provides possibility to run Energy Aware Scheduler (EAS)
on Odroid-XU4/3 and experiment with it. 

The patch 1 enables SCHED_MC, which adds another level in sched_domain.
The patch 2 provides 'dynamic-power-coefficient' in CPU DT nodes, which is
then is used by the Energy Model (EM).
The patch 3 enables EM and makes EAS possible to run. Please read the commit
message in the patch 3 describing how to enable or disable EAS at runtime.
Some of the test results are provided also in there.

The patch set is on top of Krzysztof's tree, branch 'next/dt' [1] and has 
been tested on Odroid-XU3.

Regards,
Lukasz Luba

[1] https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git/log/?h=next/dt

Lukasz Luba (3):
  ARM: exynos_defconfig: Enable SCHED_MC
  ARM: dts: exynos: Add Exynos5422 CPU dynamic-power-coefficient
    information
  ARM: exynos_defconfig: Enable Energy Model framework

 arch/arm/boot/dts/exynos5422-cpus.dtsi | 8 ++++++++
 arch/arm/configs/exynos_defconfig      | 2 ++
 2 files changed, 10 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
