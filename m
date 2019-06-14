Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8179145266
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:12:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h2CzI1YmiCOz4IE1/2oNobr+H0x33eL0zH7/N/HEPgI=; b=UNxVLdH5X5zn2D
	/lBpdCn6sS/CZOFkWfBoUopspnfD53rhYQ4FblFLr4bACcgtMxqq6zVakUVe1tnBeVJI/OaTg9fjw
	KhnkRVYABit24e7LfvQ5qE9Cp/gU26snpBH+1/TAKzqJYDc3UDSVHQxtBXgK9tzTmXN2X4278LmEF
	AyzFMfkVvzSk47RHZd3eDEUg0cTa7OdsB0WSe0MYayWvta/cNy1UpnB58U82qJ/PufUHwxKDX3DTk
	SSnEIjbKpirscu/tbktNe1KSw0G3i+awlPSYdb1uO/ulzP8yVIM8fQSmDSk5D7lVaVXiS2lvTtrED
	WV64dL6AoeqUajeYgrVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcdM-0008Pg-2z; Fri, 14 Jun 2019 03:12:08 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcd9-0008P7-5h
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:11:57 +0000
Received: by mail-pf1-x441.google.com with SMTP id 19so497270pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/Zrvea35cbkKvmw3GyO8mr45YaSmzw+Vm5XNb6C1uoE=;
 b=IINufsBCwabC4xZ3Z7Ihw1NBxf6PRAByBJpQbktuQPIyE/vXWzkFTAqc+v3zdXazh6
 j59OZcOY3M0I5psnWKJfa0xg9HVk2PD0Hz6xUjvtpe9GX3D69rP8Qn5zng7J5mToEicP
 1ndjesa6p3amTdGZo8/u4drldThhVJ1zoqcLT6K7+ZudeQazL13KWelevKKGbYrDUjyb
 37KlIRGoapUge1ttfwfG6UccFvcS4Bwp2OHvaIQAz4BwkvBTS9xVm9RBJ+9VyAfn5noW
 XchJq03f5QsJU9kZHZCuIBH486GWwYuc9D9aa6HkSko9PMYRh7b0sMoi11VcPSAxvvzw
 962A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/Zrvea35cbkKvmw3GyO8mr45YaSmzw+Vm5XNb6C1uoE=;
 b=fYgMFxFeUnPrkL2a+bAu+vAWcwBD193EIGEKCmZKLxqjEr0szVJ53uliqaCCHplVOp
 LaUlfn5iooB+x2P1zvHcVOp6BtoxaCrAi6MQ0PW+BG/a9zBO3MRQ3y8oBT59RGn0vDSg
 iK54Pgd4RPaYaaaSMOAfX5Y/OVs59CWbrMBPp7XqXVhAADbKXSYOLhJ51ijK3vJudkdn
 A2gTREnHX+3PBD+b3rtowzYKBtpfgDif/TGDHryYoic22A8N8gSuvi1BbV8wkYc8fTgC
 eLL1aNDk0RnTHaKQofZyUPk2ZL7v7ru9Q0NJA8C+zEptRb6vuiX8Oa8Zy5axQTjkr0iB
 XoTw==
X-Gm-Message-State: APjAAAVyRSSUd84/zY+PBpQXEI6rB2WuZj/y3Y4E6qb4uBzV+pqkMMze
 9eRN4wKRYzXnZoTPv2tGDWuUfwcwhUg=
X-Google-Smtp-Source: APXvYqzwXebON2Qs5+W0zhKWg9zKJCZ0HYJ93OMl4DNPh7Vh1EY8nWZAwrcivqUOiKzvTNuLFdPIGA==
X-Received: by 2002:a63:306:: with SMTP id 6mr20591909pgd.263.1560481913746;
 Thu, 13 Jun 2019 20:11:53 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id a3sm1351944pje.3.2019.06.13.20.11.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:11:52 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 00/45] V4.4 backport of arm64 Spectre patches
Date: Fri, 14 Jun 2019 08:37:43 +0530
Message-Id: <cover.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201155_282906_2561173E 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Here is an attempt to backport arm64 spectre patches to v4.4 stable
tree.

I have started this backport with Mark Rutland's backport of Spectre to
4.9 [1] and tried applying the upstream version of them over 4.4 and
resolved conflicts by checking how they have been resolved in 4.9.

I had to pick few extra upstream patches to avoid unnecessary conflicts
(upstream commit ids mentioned):

  a842789837c0 arm64: remove duplicate macro __KERNEL__ check
  64f8ebaf115b mm/kasan: add API to check memory regions
  bffe1baff5d5 arm64: kasan: instrument user memory access API
  92406f0cc9e3 arm64: cpufeature: Add scope for capability check
  9eb8a2cdf65c arm64: cputype info for Broadcom Vulcan
  0d90718871fe arm64: cputype: Add MIDR values for Cavium ThunderX2 CPUs
  98dd64f34f47 ARM: 8478/2: arm/arm64: add arm-smccc


I had to drop few patches as well as they weren't getting applied
properly due to missing files/features (upstream commit id mentioned):

  93f339ef4175 arm64: cpufeature: __this_cpu_has_cap() shouldn't stop early
  3c31fa5a06b4 arm64: Run enable method for errata work arounds on late CPUs
  6840bdd73d07 arm64: KVM: Use per-CPU vector when BP hardening is enabled
  90348689d500 arm64: KVM: Make PSCI_VERSION a fast path


Since v4.4 doesn't contain arch/arm/kvm/hyp/switch.c file, changes for
it are dropped from some of the patches. The commit log of specific
patches are updated with this information.

Also for commit id (from 4.9 stable):
  c24c205d2528 arm64: Add ARM_SMCCC_ARCH_WORKAROUND_1 BP hardening support

I have dropped arch/arm64/crypto/sha256-core.S and sha512-core.S files
as they weren't part of the upstream commit. Not sure why it was
included by Mark as the commit log doesn't provide any reasoning for it.

The patches in this series are pushed here [2].

This is only build/boot tested by me as I don't have access to the
required test-suite which can verify spectre mitigations.

@Julien: Can you please help reviewing / testing them ? Thanks.

--
viresh

[1] https://patches.linaro.org/cover/133195/ with top commit in 4.9 stable tree:
    a3b292fe0560 arm64: futex: Mask __user pointers prior to dereference

[2] https://git.kernel.org/pub/scm/linux/kernel/git/vireshk/linux.git stable/v4.4.y/spectre


Andrey Ryabinin (1):
  mm/kasan: add API to check memory regions

Catalin Marinas (1):
  arm64: Factor out TTBR0_EL1 post-update workaround into a specific asm
    macro

Jayachandran C (3):
  arm64: cputype info for Broadcom Vulcan
  arm64: cputype: Add MIDR values for Cavium ThunderX2 CPUs
  arm64: Branch predictor hardening for Cavium ThunderX2

Jens Wiklander (1):
  ARM: 8478/2: arm/arm64: add arm-smccc

Laura Abbott (1):
  mm: Introduce lm_alias

Marc Zyngier (14):
  arm64: Move post_ttbr_update_workaround to C code
  arm64: Move BP hardening to check_and_switch_context
  arm64: cpu_errata: Allow an erratum to be match for all revisions of a
    core
  arm64: KVM: Increment PC after handling an SMC trap
  arm/arm64: KVM: Add PSCI_VERSION helper
  arm/arm64: KVM: Add smccc accessors to PSCI code
  arm/arm64: KVM: Implement PSCI 1.0 support
  arm64: KVM: Add SMCCC_ARCH_WORKAROUND_1 fast handling
  firmware/psci: Expose PSCI conduit
  firmware/psci: Expose SMCCC version through psci_ops
  arm/arm64: smccc: Make function identifiers an unsigned quantity
  arm/arm64: smccc: Implement SMCCC v1.1 inline primitive
  arm64: Add ARM_SMCCC_ARCH_WORKAROUND_1 BP hardening support
  arm64: Kill PSCI_GET_VERSION as a variant-2 workaround

Mark Rutland (4):
  arm/arm64: KVM: Consolidate the PSCI include files
  arm/arm64: KVM: Advertise SMCCC v1.1
  arm/arm64: KVM: Turn kvm_psci_version into a static inline
  arm64: KVM: Report SMCCC_ARCH_WORKAROUND_1 BP hardening support

Robin Murphy (3):
  arm64: Implement array_index_mask_nospec()
  arm64: Make USER_DS an inclusive limit
  arm64: Use pointer masking to limit uaccess speculation

Suzuki K Poulose (1):
  arm64: cpufeature: Add scope for capability check

Will Deacon (13):
  arm64: barrier: Add CSDB macros to control data-value prediction
  arm64: entry: Ensure branch through syscall table is bounded under
    speculation
  arm64: uaccess: Prevent speculative use of the current addr_limit
  arm64: uaccess: Don't bother eliding access_ok checks in __{get,
    put}_user
  arm64: uaccess: Mask __user pointers for __arch_{clear, copy_*}_user
  arm64: cpufeature: Pass capability structure to ->enable callback
  drivers/firmware: Expose psci_get_version through psci_ops structure
  arm64: Add skeleton to harden the branch predictor against aliasing
    attacks
  arm64: entry: Apply BP hardening for high-priority synchronous
    exceptions
  arm64: entry: Apply BP hardening for suspicious interrupts from EL0
  arm64: cputype: Add missing MIDR values for Cortex-A72 and Cortex-A75
  arm64: Implement branch predictor hardening for affected Cortex-A CPUs
  arm64: futex: Mask __user pointers prior to dereference

Yang Shi (1):
  arm64: kasan: instrument user memory access API

Yury Norov (1):
  arm64: move TASK_* definitions to <asm/processor.h>

zijun_hu (1):
  arm64: remove duplicate macro __KERNEL__ check

 MAINTAINERS                         |  14 ++
 arch/arm/include/asm/kvm_host.h     |   6 +
 arch/arm/include/asm/kvm_psci.h     |  27 ---
 arch/arm/kvm/arm.c                  |   2 +-
 arch/arm/kvm/handle_exit.c          |   4 +-
 arch/arm/kvm/psci.c                 | 143 ++++++++++++---
 arch/arm64/Kconfig                  |  17 ++
 arch/arm64/include/asm/assembler.h  |  18 ++
 arch/arm64/include/asm/barrier.h    |  23 +++
 arch/arm64/include/asm/cpufeature.h |  12 +-
 arch/arm64/include/asm/cputype.h    |  12 ++
 arch/arm64/include/asm/futex.h      |   9 +-
 arch/arm64/include/asm/kvm_host.h   |   5 +
 arch/arm64/include/asm/kvm_psci.h   |  27 ---
 arch/arm64/include/asm/memory.h     |  15 --
 arch/arm64/include/asm/mmu.h        |  39 ++++
 arch/arm64/include/asm/processor.h  |  26 ++-
 arch/arm64/include/asm/sysreg.h     |   2 +
 arch/arm64/include/asm/uaccess.h    | 175 ++++++++++++------
 arch/arm64/kernel/Makefile          |   5 +
 arch/arm64/kernel/arm64ksyms.c      |   8 +-
 arch/arm64/kernel/bpi.S             |  75 ++++++++
 arch/arm64/kernel/cpu_errata.c      | 185 ++++++++++++++++++-
 arch/arm64/kernel/cpufeature.c      | 112 ++++++------
 arch/arm64/kernel/entry.S           |  26 ++-
 arch/arm64/kvm/handle_exit.c        |  16 +-
 arch/arm64/kvm/hyp.S                |  20 ++-
 arch/arm64/lib/clear_user.S         |   6 +-
 arch/arm64/lib/copy_from_user.S     |   4 +-
 arch/arm64/lib/copy_in_user.S       |   4 +-
 arch/arm64/lib/copy_to_user.S       |   4 +-
 arch/arm64/mm/context.c             |  12 ++
 arch/arm64/mm/fault.c               |  31 ++++
 arch/arm64/mm/proc.S                |  12 +-
 drivers/firmware/Kconfig            |   3 +
 drivers/firmware/psci.c             |  58 +++++-
 include/kvm/arm_psci.h              |  51 ++++++
 include/linux/arm-smccc.h           | 267 ++++++++++++++++++++++++++++
 include/linux/kasan-checks.h        |  12 ++
 include/linux/mm.h                  |   4 +
 include/linux/psci.h                |  14 ++
 include/uapi/linux/psci.h           |   3 +
 mm/kasan/kasan.c                    |  12 ++
 43 files changed, 1270 insertions(+), 250 deletions(-)
 delete mode 100644 arch/arm/include/asm/kvm_psci.h
 delete mode 100644 arch/arm64/include/asm/kvm_psci.h
 create mode 100644 arch/arm64/kernel/bpi.S
 create mode 100644 include/kvm/arm_psci.h
 create mode 100644 include/linux/arm-smccc.h
 create mode 100644 include/linux/kasan-checks.h

-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
