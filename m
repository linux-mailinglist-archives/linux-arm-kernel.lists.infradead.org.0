Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1C414ABDB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 22:56:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NnUQhb9k2LTZpp17lmuXQLRLtSoIT9mbIuLFJPM9oUY=; b=jVcigjmOE/HaXjFnBCsrVAgObw
	6bRGf2MI91ZakPO0RiQJmwpWmWBmAjsLMsMTbrtGdgTNKrH75x/QgU73TZPu+D84LimNAC7pN6VIY
	gdtmw2IVMMlIK7qPFZmU9y+HQMwVkUnAUAh2K7vHHU6SdwtBUSKAu1J1aZyGw6O6ovKjNbMeLln75
	Ixj2Y8KOkmy5ODbovStQetGleAghFPzNtjJowxRoyPtrB7sPfiKNN5i87UfuT+RVb8KpfTESTFyWR
	KCK1M4kk+FPJb29L9xWsp73nZUaYT0N65aAUxrMvhsGU7MTwMJnySJdjVOJAYi/3d84lEIK0cADoi
	3JJY71qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwCMo-0000Ka-32; Mon, 27 Jan 2020 21:56:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwCM4-0008GQ-QX
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 21:55:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1DD1031B;
 Mon, 27 Jan 2020 13:55:35 -0800 (PST)
Received: from e123648.arm.com (unknown [10.37.12.150])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9E54B3F68E;
 Mon, 27 Jan 2020 13:55:29 -0800 (PST)
From: lukasz.luba@arm.com
To: kgene@kernel.org, krzk@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: [PATCH 3/3] ARM: exynos_defconfig: Enable Energy Model framework
Date: Mon, 27 Jan 2020 21:54:53 +0000
Message-Id: <20200127215453.15144-4-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200127215453.15144-1-lukasz.luba@arm.com>
References: <20200127215453.15144-1-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_135536_918901_94B50ADC 
X-CRM114-Status: GOOD (  11.75  )
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

Enable the Energy Model (EM) brings possibility to use Energy Aware
Scheduler (EAS). This compiles the EM but does not enable to run EAS in
default. The EAS only works with SchedUtil - a CPUFreq governor which
handles direct requests from the scheduler for the frequency change. Thus,
to make EAS working in default, the SchedUtil governor should be
configured as default CPUFreq governor. Although, the EAS might be enabled
in runtime, when the EM is present for CPUs, the SchedUtil is compiled and
then set as CPUFreq governor, i.e.:

echo schedutil > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo schedutil > /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor

To check if EAS is ready to work, the read output from the command below
should show '1':
cat /proc/sys/kernel/sched_energy_aware

To disable EAS in runtime simply 'echo 0' to the file above.

Some test results, which stress the scheduler on Odroid-XU3:
hackbench -l 500 -s 4096
With mainline code and with this patch set.

The tests have been made with and without CONFIG_PROVE_LOCKING (PL)
(which is set to =y in default exynos_defconfig)

		|		this patch set			| mainline
		|-----------------------------------------------|---------------
		| performance	| SchedUtil	| SchedUtil	| performance
		| governor	| governor	| governor	| governor
		|		| w/o EAS	| w/ EAS	|
----------------|---------------|---------------|---------------|---------------
hackbench w/ PL | 12.7s		| 11.7s		| 12.0s		| 13.0s - 12.2s
hackbench w/o PL| 9.2s		| 8.1s		| 8.2s		| 9.2s - 8.4s

Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
---
 arch/arm/configs/exynos_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/exynos_defconfig b/arch/arm/configs/exynos_defconfig
index 1db857056992..c0f8ecabc607 100644
--- a/arch/arm/configs/exynos_defconfig
+++ b/arch/arm/configs/exynos_defconfig
@@ -18,6 +18,7 @@ CONFIG_ZBOOT_ROM_BSS=0x0
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
