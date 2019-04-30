Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0807DF43E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 12:32:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9ZWAonnf9sAp79Lg4uuN1tec02PUiUuxHCg4CorOHH8=; b=tEivym7xnl2Ds8jNBzxLdRsMfn
	u7VG1bPmumtQuVc686RiURdtobl1l6+Lgj3fciyOz+5cvcK1I60GQpgGuK4RGrXEQYQpWa0/4+pLd
	tiEtTeGE/YJqeN6HKcHiAjlkNoDzSTfu03hl4SQ3O+NWwd9e2PRN1Ia5VlOE8hcHYcZfL6bkDjH3C
	iYseR9dhmcRQGG2d8o1JSAUN77kTuKypAwJruZzczB520HDVTBV6QjJTCzmYRNBDMq0R0s/Ea86DZ
	tUr6wUo9cp+BEWPx8qdXt0CE7mGv0YzFST404L1uNmmopii2BgoevN91w1v7qDPNpaoTdq90hBCFk
	lOuW287w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLQ3i-0008Lt-AT; Tue, 30 Apr 2019 10:32:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLQ3R-0008Eq-DW
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 10:32:07 +0000
Received: from localhost (unknown [23.100.24.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E91D21743;
 Tue, 30 Apr 2019 10:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556620324;
 bh=BAWZaqNNffPbGErjf4obQqirpfuPTTVVpr+6fsTk4hE=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Cc:Cc:Subject:In-Reply-To:References:
 From;
 b=YXkire3Gyaw61PN3nv9aga38iwm8NJLGs6ibZIUgZtOjDG6DZIASKLuUZ+Cm2HlBb
 PfH/HkNxCt4JFoVCk2nuN9FOSRN5RMfslmLHeaGPwAZQA05Rm667Ttak90E+gwr0Ub
 ygRW9+KCVWgtkZCS5mnYX2LQkrHIuFf/UYgDz3bE=
Date: Tue, 30 Apr 2019 10:32:03 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Will Deacon <will.deacon@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: arch_timer: Ensure counter register reads occur
 with seqlock held
In-Reply-To: <20190429165912.9497-1-will.deacon@arm.com>
References: <20190429165912.9497-1-will.deacon@arm.com>
Message-Id: <20190430103204.2E91D21743@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_033205_498352_FA968717 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: , Marc Zyngier <marc.zyngier@arm.com>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, tglx@linutronix.de,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: all

The bot has tested the following trees: v5.0.10, v4.19.37, v4.14.114, v4.9.171, v4.4.179, v3.18.139.

v5.0.10: Build OK!
v4.19.37: Build OK!
v4.14.114: Failed to apply! Possible dependencies:
    f2e600c149fd ("arm64: Implement arch_counter_get_cntpct to read the physical counter")

v4.9.171: Failed to apply! Possible dependencies:
    16d10ef29f25 ("clocksource/drivers/arm_arch_timer: Introduce generic errata handling infrastructure")
    bb42ca474010 ("clocksource/drivers/arm_arch_timer: Work around Hisilicon erratum 161010101")
    d003d029cea8 ("arm64: arch_timer: Add HISILICON_ERRATUM_161010101 ACPI matching data")
    f2e600c149fd ("arm64: Implement arch_counter_get_cntpct to read the physical counter")
    fa8d815fac96 ("arm64: arch_timer: Workaround for Cortex-A73 erratum 858921")

v4.4.179: Failed to apply! Possible dependencies:
    0cb0786bac15 ("ARM64: PCI: Support ACPI-based PCI host controller")
    16d10ef29f25 ("clocksource/drivers/arm_arch_timer: Introduce generic errata handling infrastructure")
    1a4f93f7112f ("PCI: Factor DT-specific pci_bus_find_domain_nr() code out")
    1bd37a6835be ("iommu/arm-smmu: Workaround for ThunderX erratum #27704")
    1d8f51d41fc7 ("arm/arm64: arch_timer: Use archdata to indicate vdso suitability")
    21266be9ed54 ("arch: consolidate CONFIG_STRICT_DEVM in lib/Kconfig.debug")
    2ab51ddeca2f ("ARM64: PCI: Add acpi_pci_bus_find_domain_nr()")
    46fd5c6b3059 ("clocksource/drivers/arm_arch_timer: Control the evtstrm via the cmdline")
    4e3e9b6997b2 ("iommu/arm-smmu: Add support for 16 bit VMID")
    75df1386557c ("iommu/arm-smmu: Invalidate TLBs properly")
    9c7cb891ecfe ("PCI: Refactor pci_bus_assign_domain_nr() for CONFIG_PCI_DOMAINS_GENERIC")
    cd5f22d7967f ("arm64: arch_timer: simplify accessors")
    f2e600c149fd ("arm64: Implement arch_counter_get_cntpct to read the physical counter")
    f6dc1576cd51 ("arm64: arch_timer: Work around QorIQ Erratum A-008585")

v3.18.139: Failed to apply! Possible dependencies:
    04597a65c5ef ("arm64: Track system support for mixed endian EL0")
    104a0c02e8b1 ("arm64: Add workaround for Cavium erratum 27456")
    16d10ef29f25 ("clocksource/drivers/arm_arch_timer: Introduce generic errata handling infrastructure")
    1b907f46db07 ("arm64: kconfig: move emulation option under kernel features")
    1bd37a6835be ("iommu/arm-smmu: Workaround for ThunderX erratum #27704")
    2d888f48e056 ("arm64: Emulate SETEND for AArch32 tasks")
    338d4f49d6f7 ("arm64: kernel: Add support for Privileged Access Never")
    359b706473b4 ("arm64: Extract feature parsing code from cpu_errata.c")
    587064b610c7 ("arm64: Add framework for legacy instruction emulation")
    6d4e11c5e2e8 ("irqchip/gicv3: Workaround for Cavium ThunderX erratum 23154")
    736d474f0faf ("arm64: Consolidate hotplug notifier for instruction emulation")
    870828e57b14 ("arm64: kernel: Move config_sctlr_el1")
    94a9e04aa16a ("arm64: alternative: Introduce feature for GICv3 CPU interface")
    9b79f52d1a70 ("arm64: Add support for hooks to handle undefined instructions")
    9cb9c9e5ba84 ("arm64: Documentation: add list of software workarounds for errata")
    bd35a4adc413 ("arm64: Port SWP/SWPB emulation support from arm")
    c739dc83a0b6 ("arm64: lse: rename ARM64_CPU_FEAT_LSE_ATOMICS for consistency")
    c852f3205846 ("arm64: Emulate CP15 Barrier instructions")
    c9453a3ab1a3 ("arm64: alternatives: fix pr_fmt string for consistency")
    f2e600c149fd ("arm64: Implement arch_counter_get_cntpct to read the physical counter")
    f6dc1576cd51 ("arm64: arch_timer: Work around QorIQ Erratum A-008585")


How should we proceed with this patch?

--
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
