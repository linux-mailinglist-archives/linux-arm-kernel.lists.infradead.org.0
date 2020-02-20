Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA60165AAA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 10:57:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RyMdMyd50x0QVA64Z96AdLDxhPQGfWlH7T+QBc0P5mY=; b=Hp2o0nl116L2nZyOyooAPVGVj6
	jnRtZPEjzlZ5b0Bwke5RucVJnNoM0/mh3Kysg8wyi/I4Ap72azL/UMcs3VY0QxyYymj4GICQ4zjD+
	A/w2HYkeJ0vftwfyN7xdXSQS8qRJ2TAQWV90s821VNry5wMOE3BCyRcwwZPTp53yVIKfnL57nVsIf
	MsnjHgXFPTOBnXpFYHMQiUvp4r4Y3RDf5Q5H2ic6l4t5mAi23ozM1aSqyI7KybqwGnqOq/+UihaYS
	2YslDx0ZktjmyN0iRQqKMPYo4HEBU4opZ+iQvMVC3DvWBQj2nz05Rbw+TDL3m1eplzizvvfDm86dl
	Dz/CN7Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4iaL-0001p8-LW; Thu, 20 Feb 2020 09:57:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4iZs-0001TA-OJ
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 09:57:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8236930E;
 Thu, 20 Feb 2020 01:57:02 -0800 (PST)
Received: from e123648.arm.com (unknown [10.37.12.146])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C7E613F703;
 Thu, 20 Feb 2020 01:56:58 -0800 (PST)
From: Lukasz Luba <lukasz.luba@arm.com>
To: linux-kernel@vger.kernel.org, kgene@kernel.org, krzk@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: [RESEND PATCH v2 2/2] ARM: exynos_defconfig: Enable SCHED_MC and
 ENERGY_MODEL
Date: Thu, 20 Feb 2020 09:56:36 +0000
Message-Id: <20200220095636.29469-3-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200220095636.29469-1-lukasz.luba@arm.com>
References: <20200220095636.29469-1-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_015705_036030_4114D8DF 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
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

The Energy Model (EM) is needed to run Energy Aware Scheduler (EAS).
Enable ENERGY_MODEL to make that happen. This will increase energy
efficiency of the big.LITTLE platform by smart decisions in scheduling
tasks in non-heavy workloads.

Add SCHED_MC in order to create another level in scheduling domains: 'MC'.
This improves scheduler's decisions on platforms with CPU clusters, such
as big.LITTLE.

Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
---
 arch/arm/configs/exynos_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/exynos_defconfig b/arch/arm/configs/exynos_defconfig
index c8e0c14092e8..90d376eb333b 100644
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
@@ -17,6 +18,7 @@ CONFIG_ZBOOT_ROM_BSS=0x0
 CONFIG_ARM_APPENDED_DTB=y
 CONFIG_ARM_ATAG_DTB_COMPAT=y
 CONFIG_CMDLINE="root=/dev/ram0 rw ramdisk=8192 initrd=0x41000000,8M console=ttySAC1,115200 init=/linuxrc mem=256M"
+CONFIG_ENERGY_MODEL=y
 CONFIG_CPU_FREQ=y
 CONFIG_CPU_FREQ_STAT=y
 CONFIG_CPU_FREQ_DEFAULT_GOV_ONDEMAND=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
