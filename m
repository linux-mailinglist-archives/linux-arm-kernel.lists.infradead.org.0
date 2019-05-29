Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 258632DDDB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 15:15:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8he8fu9mAJi1SgkhBG52vnNFLfnh/HM24jL4IejR8WU=; b=E4kPbc4sxFZeto1lB9LcTXGkxr
	O0lxjh7TnNpUcxPIfGU44gVkR411Z/a1wRSQLVu4JnX8diiw3eNQkcnd66uGQQJTT9AbK/R4tb4l4
	lqCWr5yDg0sJpl8LmISKh9jl1SW3xZeQg7/S2tyUIjp7uINhKX6+LmKYvZz4HPN4eCIB9VZUZrjjs
	Sc3V6MT3xSpIJ2xXQaFjw1ilKIICQwbIErRVIkjjGEvLmyvlKrPen/XD2bURGrLHE4Dqlhbx1y+N4
	fNlSy9odDmU+lghLMeDDnZ1vrBC6Tu/sSPgxImrfzojd9UgXd42AQmYrdefo40UGJLdrCS0Qnisr4
	CyL3ikQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVyQ4-0006kH-KZ; Wed, 29 May 2019 13:15:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVyPu-0006jO-OG
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 13:14:56 +0000
Received: from localhost (unknown [23.100.24.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C6B4208CB;
 Wed, 29 May 2019 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559135693;
 bh=vlSMAs+YRllFBzTFut0nLCbF+ISoCnC/wWXi2i+cB8w=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Cc:Cc:Subject:In-Reply-To:References:
 From;
 b=ITyt/Hl1M7CybVXG3kfEksbje76K9RNyKhRWZ/PO6vswVHoyWSNFIJxUMAURv0k90
 tyhyBizXtxvfN9uVY0GAS9v2BCqDuRQ64YUkPsZBes8PNbGEZpGopbRaYIdPPnSzkU
 F9QqR/zZkARvr5GIFTphbUm9Br5FMahPvQQkhi9g=
Date: Wed, 29 May 2019 13:14:52 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Will Deacon <will.deacon@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: errata: Add workaround for Cortex-A76 erratum
 #1463225
In-Reply-To: <20190522152016.10764-1-will.deacon@arm.com>
References: <20190522152016.10764-1-will.deacon@arm.com>
Message-Id: <20190529131453.6C6B4208CB@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_061454_823298_DAE8CC4B 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 stable@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: all

The bot has tested the following trees: v5.1.4, v5.0.18, v4.19.45, v4.14.121, v4.9.178, v4.4.180, v3.18.140.

v5.1.4: Failed to apply! Possible dependencies:
    3891ebccace18 ("arm64: Add sysfs vulnerability show for spectre-v1")
    526e065dbca6d ("arm64: add sysfs vulnerability show for speculative store bypass")
    52c6d145da15a ("arm64: debug: Remove unused return value from do_debug_exception()")
    6989303a3b2d8 ("arm64: Apply ARM64_ERRATUM_1188873 to Neoverse-N1")
    73f3816609594 ("arm64: Advertise mitigation of Spectre-v2, or lack thereof")
    8c1e3d2bb44cb ("arm64: Always enable spectre-v2 vulnerability detection")
    b9585f53bcf1a ("arm64: Advertise ARM64_HAS_DCPODP cpu feature")
    d2532e27b5638 ("arm64: add sysfs vulnerability show for spectre-v2")
    e5ce5e7267ddc ("arm64: Provide a command line to disable spectre_v2 mitigation")

v5.0.18: Failed to apply! Possible dependencies:
    3891ebccace18 ("arm64: Add sysfs vulnerability show for spectre-v1")
    526e065dbca6d ("arm64: add sysfs vulnerability show for speculative store bypass")
    52c6d145da15a ("arm64: debug: Remove unused return value from do_debug_exception()")
    6989303a3b2d8 ("arm64: Apply ARM64_ERRATUM_1188873 to Neoverse-N1")
    73f3816609594 ("arm64: Advertise mitigation of Spectre-v2, or lack thereof")
    8c1e3d2bb44cb ("arm64: Always enable spectre-v2 vulnerability detection")
    b90d2b22afdc7 ("arm64: cpufeature: Add cpufeature for IRQ priority masking")
    b9585f53bcf1a ("arm64: Advertise ARM64_HAS_DCPODP cpu feature")
    d2532e27b5638 ("arm64: add sysfs vulnerability show for spectre-v2")
    e5ce5e7267ddc ("arm64: Provide a command line to disable spectre_v2 mitigation")

v4.19.45: Failed to apply! Possible dependencies:
    5ffdfaedfa0ab ("arm64: mm: Support Common Not Private translations")
    6989303a3b2d8 ("arm64: Apply ARM64_ERRATUM_1188873 to Neoverse-N1")
    86d0dd34eafff ("arm64: cpufeature: add feature for CRC32 instructions")
    880f7cc47265e ("arm64: cpu_errata: Remove ARM64_MISMATCHED_CACHE_LINE_SIZE")
    8f04e8e6e29c9 ("arm64: ssbd: Add support for PSTATE.SSBS rather than trapping to EL3")
    95b861a4a6d94 ("arm64: arch_timer: Add workaround for ARM erratum 1188873")
    ce8c80c536dac ("arm64: Add workaround for Cortex-A76 erratum 1286807")
    d71be2b6c0e19 ("arm64: cpufeature: Detect SSBS and advertise to userspace")
    e03a4e5bb7430 ("arm64: Add silicon-errata.txt entry for ARM erratum 1188873")

v4.14.121: Failed to apply! Possible dependencies:
    0234bf885236a ("KVM: x86: introduce ISA specific SMM entry/exit callbacks")
    14f0e5f8d97e6 ("ASoC: stm32: Add synchronization to SAI bindings")
    282e45dc64d18 ("mtd: spi-nor: Add support for mr25h128")
    3d345b5f7b2f6 ("ASoC: tfa9879: Add device tree bindings")
    54839d012d5f9 ("dt-bindings: mmc: renesas_sdhi: add R-Car Gen[123] fallback compatibility strings")
    5acc5c063196b ("KVM: Introduce KVM_MEMORY_ENCRYPT_OP ioctl")
    5c2b4d5b78144 ("KVM: document KVM_CAP_S390_[BPB|PSW|GMAP|COW]")
    631989303b06b ("Merge tag 'kvmarm-for-v4.19' of git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm into HEAD")
    6989303a3b2d8 ("arm64: Apply ARM64_ERRATUM_1188873 to Neoverse-N1")
    69eaedee411c1 ("KVM: Introduce KVM_MEMORY_ENCRYPT_{UN,}REG_REGION ioctl")
    7bf14c28ee776 ("Merge branch 'x86/hyperv' of git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip")
    86d0dd34eafff ("arm64: cpufeature: add feature for CRC32 instructions")
    95b861a4a6d94 ("arm64: arch_timer: Add workaround for ARM erratum 1188873")
    95e91ade69005 ("dt-bindings: mmc: renesas_sdhi: provide example in bindings documentation")
    b07815d4eaf65 ("dt-bindings: mtd: add sst25wf040b and en25s64 to sip-nor list")
    b0d40d2b22fe4 ("sched/isolation: Document isolcpus= boot parameter flags, mark it deprecated")
    c1aea9196ef4f ("KVM: x86: hyperv: declare KVM_CAP_HYPERV_TLBFLUSH capability")
    cc3d967f7e32c ("KVM: SVM: detect opening of SMI window using STGI intercept")
    ce6a90027c10f ("platform/x86: Add driver to force WMI Thunderbolt controller power status")
    ce8c80c536dac ("arm64: Add workaround for Cortex-A76 erratum 1286807")
    d141babe42449 ("locking/lockdep: Add a boot parameter allowing unwind in cross-release and disable it by default")
    d71be2b6c0e19 ("arm64: cpufeature: Detect SSBS and advertise to userspace")
    d91ca84edeb04 ("mmc: dt-bindings: Add reg/source_cg/latch-ck for Mediatek MMC bindings")
    da9a1446d248f ("KVM: s390: provide a capability for AIS state migration")
    e03a4e5bb7430 ("arm64: Add silicon-errata.txt entry for ARM erratum 1188873")
    faeb7833eee0d ("kvm: x86: hyperv: guest->host event signaling via eventfd")

v4.9.178: Failed to apply! Possible dependencies:
    0c9d86833dfda ("KVM: s390: use defines for execution controls")
    2583b848cad04 ("s390: report new vector facilities")
    2ed4f9dd19c0f ("KVM: PPC: Book3S HV: Add capability to report possible virtual SMT modes")
    3c313524605a6 ("KVM: PPC: Book3S HV: Allow userspace to set the desired SMT mode")
    47a4693e1d3eb ("KVM: s390: introduce AIS capability")
    4d5f2c04c8a46 ("KVM: s390: log runtime instrumentation enablement")
    4e0b1ab72b8af ("KVM: s390: gs support for kvm guests")
    57d7f939e7bdd ("s390: add no-execute support")
    5c2b4d5b78144 ("KVM: document KVM_CAP_S390_[BPB|PSW|GMAP|COW]")
    631989303b06b ("Merge tag 'kvmarm-for-v4.19' of git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm into HEAD")
    6989303a3b2d8 ("arm64: Apply ARM64_ERRATUM_1188873 to Neoverse-N1")
    6e01398fe4505 ("arm64: arch_timer: document Hisilicon erratum 161010101")
    86d0dd34eafff ("arm64: cpufeature: add feature for CRC32 instructions")
    916cda1aa1b41 ("s390: add a system call for guarded storage")
    95b861a4a6d94 ("arm64: arch_timer: Add workaround for ARM erratum 1188873")
    a679c547d19de ("KVM: s390: gaccess: add ESOP2 handling")
    c1aea9196ef4f ("KVM: x86: hyperv: declare KVM_CAP_HYPERV_TLBFLUSH capability")
    cd1836f583d78 ("KVM: s390: instruction-execution-protection support")
    ce8c80c536dac ("arm64: Add workaround for Cortex-A76 erratum 1286807")
    d1f7e8f85b512 ("s390: squash facilities_src.h into gen_facilities.c")
    d3457c877b14a ("kvm: x86: hyperv: make VP_INDEX managed by userspace")
    d71be2b6c0e19 ("arm64: cpufeature: Detect SSBS and advertise to userspace")
    d9ff80f83ecbf ("arm64: Work around Falkor erratum 1009")
    da9a1446d248f ("KVM: s390: provide a capability for AIS state migration")
    e03a4e5bb7430 ("arm64: Add silicon-errata.txt entry for ARM erratum 1188873")
    efc479e6900c2 ("kvm: x86: hyperv: add KVM_CAP_HYPERV_SYNIC2")

v4.4.180: Failed to apply! Possible dependencies:
    06282fd2c2bf6 ("arm64: KVM: Implement vgic-v2 save/restore")
    1431af367e52b ("arm64: KVM: Implement timer save/restore")
    1bd37a6835bef ("iommu/arm-smmu: Workaround for ThunderX erratum #27704")
    4e3e9b6997b24 ("iommu/arm-smmu: Add support for 16 bit VMID")
    674e70127069f ("arm64: Document workaround for Cortex-A72 erratum #853709")
    67b65a3fb8e65 ("iommu/arm-smmu: Differentiate specific implementations")
    6989303a3b2d8 ("arm64: Apply ARM64_ERRATUM_1188873 to Neoverse-N1")
    6d6ec20fcf283 ("arm64: KVM: Implement system register save/restore")
    6e01398fe4505 ("arm64: arch_timer: document Hisilicon erratum 161010101")
    75df1386557c2 ("iommu/arm-smmu: Invalidate TLBs properly")
    8eb992674c9e6 ("arm64: KVM: Implement debug save/restore")
    9cb9c9e5ba845 ("arm64: Documentation: add list of software workarounds for errata")
    b97b66c14b96a ("arm64: KVM: Implement guest entry")
    be901e9b15cd2 ("arm64: KVM: Implement the core world switch")
    c76a0a6695c61 ("arm64: KVM: Add a HYP-specific header file")
    ce8c80c536dac ("arm64: Add workaround for Cortex-A76 erratum 1286807")
    e03a4e5bb7430 ("arm64: Add silicon-errata.txt entry for ARM erratum 1188873")
    e086d912d4d78 ("iommu/arm-smmu: Convert ThunderX workaround to new method")
    f0cfffc48cac5 ("iommu/arm-smmu: Work around MMU-500 prefetch errata")
    f68d2b1b73cc3 ("arm64: KVM: Implement vgic-v3 save/restore")

v3.18.140: Failed to apply! Possible dependencies:
    04597a65c5efc ("arm64: Track system support for mixed endian EL0")
    104a0c02e8b19 ("arm64: Add workaround for Cavium erratum 27456")
    1b907f46db074 ("arm64: kconfig: move emulation option under kernel features")
    1bd37a6835bef ("iommu/arm-smmu: Workaround for ThunderX erratum #27704")
    2d888f48e0561 ("arm64: Emulate SETEND for AArch32 tasks")
    338d4f49d6f71 ("arm64: kernel: Add support for Privileged Access Never")
    359b706473b47 ("arm64: Extract feature parsing code from cpu_errata.c")
    518f7136244c1 ("iommu/arm-smmu: make use of generic LPAE allocator")
    587064b610c70 ("arm64: Add framework for legacy instruction emulation")
    674e70127069f ("arm64: Document workaround for Cortex-A72 erratum #853709")
    67b65a3fb8e65 ("iommu/arm-smmu: Differentiate specific implementations")
    6989303a3b2d8 ("arm64: Apply ARM64_ERRATUM_1188873 to Neoverse-N1")
    6d4e11c5e2e8c ("irqchip/gicv3: Workaround for Cavium ThunderX erratum 23154")
    6e01398fe4505 ("arm64: arch_timer: document Hisilicon erratum 161010101")
    736d474f0fafd ("arm64: Consolidate hotplug notifier for instruction emulation")
    859a732e4f713 ("iommu/arm-smmu: add support for iova_to_phys through ATS1PR")
    870828e57b141 ("arm64: kernel: Move config_sctlr_el1")
    94a9e04aa16ab ("arm64: alternative: Introduce feature for GICv3 CPU interface")
    9b79f52d1a702 ("arm64: Add support for hooks to handle undefined instructions")
    9cb9c9e5ba845 ("arm64: Documentation: add list of software workarounds for errata")
    a720b41c41f5a ("iommu/arm-smmu: change IOMMU_EXEC to IOMMU_NOEXEC")
    bd35a4adc4131 ("arm64: Port SWP/SWPB emulation support from arm")
    c739dc83a0b6d ("arm64: lse: rename ARM64_CPU_FEAT_LSE_ATOMICS for consistency")
    c752ce45b213d ("iommu/arm-smmu: add support for DOMAIN_ATTR_NESTING attribute")
    c852f32058460 ("arm64: Emulate CP15 Barrier instructions")
    c9453a3ab1a39 ("arm64: alternatives: fix pr_fmt string for consistency")
    ce8c80c536dac ("arm64: Add workaround for Cortex-A76 erratum 1286807")
    e03a4e5bb7430 ("arm64: Add silicon-errata.txt entry for ARM erratum 1188873")
    ece1397cbc89c ("arm64: Add work around for Arm Cortex-A55 Erratum 1024718")
    eeb1efbcb83c0 ("arm64: cpu_errata: Add capability to advertise Cortex-A73 erratum 858921")
    f0cfffc48cac5 ("iommu/arm-smmu: Work around MMU-500 prefetch errata")


How should we proceed with this patch?

--
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
