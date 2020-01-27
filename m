Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA03814ABD9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 22:56:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tiKrAsgYxMtn4e9mU8zJN3XwXXd7SGJ3Q5coEZj14IA=; b=YLlwtVjc+Dq6XiOQluOvns6fG7
	5HI4U3mAOJ7PJEReftbCKJNbzYPYAptZwVtk3WRg2M8d+Wce6tHU/C2kPBzOmDHYbOMZyFmqhSJ9Q
	W7WRnvkkkZUD/MpU0TXVnM7M1N/vxs9yeB0MgY02kZiMESZpZPyaG/8qyrMdQTgQ//JKOWLpfcnO3
	U51wG68c6kjS765XrpC/7UxIemk86LOv0CGQjJdfVuj+5FOxIo9/WNoR2EyL8QNeOSeSlbvevF5Am
	8GHTHiyRDvQGG36r/T9b+eBajVlD59aiAwAJDtp2hvpZetpebyeFx2O/9PwW9IJi6O0BeHWz8VCQ7
	6xVjbctg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwCMP-0008FM-5r; Mon, 27 Jan 2020 21:55:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwCLv-00087A-4E
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 21:55:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C957B101E;
 Mon, 27 Jan 2020 13:55:24 -0800 (PST)
Received: from e123648.arm.com (unknown [10.37.12.150])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 214493F68E;
 Mon, 27 Jan 2020 13:55:18 -0800 (PST)
From: lukasz.luba@arm.com
To: kgene@kernel.org, krzk@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: [PATCH 1/3] ARM: exynos_defconfig: Enable SCHED_MC
Date: Mon, 27 Jan 2020 21:54:51 +0000
Message-Id: <20200127215453.15144-2-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200127215453.15144-1-lukasz.luba@arm.com>
References: <20200127215453.15144-1-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_135527_206120_AD7859A6 
X-CRM114-Status: UNSURE (   8.90  )
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

Since the 'capacities-dmips-mhz' are present in the CPU nodes, make use of
this knowledge in smarter decisions during scheduling.

The values in 'capacities-dmips-mhz' are normilized, this means that i.e.
when CPU0's capacities-dmips-mhz=100 and CPU1's 'capacities-dmips-mhz'=50,
cpu0 is twice fast as CPU1, at the same frequency. The proper hirarchy
in sched_domain topology could exploit the SoC architecture advantages
like big.LITTLE. Enabling the SCHED_MC will create two levels in
sched_domain hierarchy, which might be observed in:

grep . /proc/sys/kernel/sched_domain/cpu*/domain*/{name,flags}
/proc/sys/kernel/sched_domain/cpu0/domain0/name:MC
/proc/sys/kernel/sched_domain/cpu0/domain1/name:DIE
...
/proc/sys/kernel/sched_domain/cpu0/domain0/flags:575
/proc/sys/kernel/sched_domain/cpu0/domain1/flags:4223

Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
---
 arch/arm/configs/exynos_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/exynos_defconfig b/arch/arm/configs/exynos_defconfig
index e7e4bb5ad8d5..1db857056992 100644
--- a/arch/arm/configs/exynos_defconfig
+++ b/arch/arm/configs/exynos_defconfig
@@ -8,6 +8,7 @@ CONFIG_PERF_EVENTS=y
 CONFIG_ARCH_EXYNOS=y
 CONFIG_CPU_ICACHE_MISMATCH_WORKAROUND=y
 CONFIG_SMP=y
+CONFIG_SCHED_MC=y
 CONFIG_BIG_LITTLE=y
 CONFIG_NR_CPUS=8
 CONFIG_HIGHMEM=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
