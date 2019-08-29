Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBE8A18BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:35:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yoI8ln9+ZBlSYXk3Px1+GHZES/0W5YcnD//lk4+ghkM=; b=C/fW1eF/TL8XbN
	uACkWck1YQAkTPYCmM/YaU9kc1Ouj4qLEVCS5KB5bNF5NFwhqDmU+8t76kN9rKbNOmvwQrM+ixdUM
	Sf1JwlAe8HosRhvxsvlGrYedvNBYGa4zKKJjdrYm/PKH135Le8qHrVBgaDzOQ1oF/NH2sR9F2lZWC
	29VSL5DO5NW8DXUBZ7slS39hv3Ng2r2R0FoHblOhTvX/TFqXLi7HaqFw4LxtGPlqnGJ7ho7bXpEC9
	8p9FJWrygtO/LYRnYANkF+vO3PkBlPg9QAyIaGU6UVo5a1139NXzTRdSNKUPc1lZ5QiQvyRthjN7A
	6aGfplx/O9wj+pYP6txw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Ihv-0004hY-Gy; Thu, 29 Aug 2019 11:35:15 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IhZ-0004gr-Dg
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:34:55 +0000
Received: by mail-pg1-x542.google.com with SMTP id d1so1451833pgp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=D2J/t69Zf3EeyVzUCGcYWrwc93qZYKVnJxeE+TDH3Rs=;
 b=aQMSYYqrlsFVNyEavU/oXNHoLSLIK1ODgnUg4IbOjuVcXWz0qzmQRWGjtIr1UhJTZ/
 dV8vyXuUsxLLKfnpwmbcFTORm0BC8CQlJqhu3EzsE63oxSH0vmReSR/Wyqo/y8T4IwNT
 4WCkBbBjt92uO0sy41+o8+bpj8B9KDDuQoD2qNECmcKX10Fwie0zzLSsc3on7b/U6el3
 YgUHmCrsSZ2v3ZRhCn9FjmLIEg39MneAef5D8v7E1zQr5wbvSHGkURCGvm4NBoIonAII
 4QRMMmIxMBkAEhHacwmK+IouKN3+GScQ4e2itpuqJ8j/VhzkHvLt8ilEMKze5wehSTzw
 LgmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=D2J/t69Zf3EeyVzUCGcYWrwc93qZYKVnJxeE+TDH3Rs=;
 b=Dk9KvEYJOj9e2gFhfwDcZpqGbm17OP29MeKo7nAm24Tou9izY6QEgEUeaVgs/Q7GMm
 pB8Wg+hIPFDkuewHNKffvM0Q5/CIwRDguuRvFRhMOiVx0RuosCN3s5030o/mED92vwz4
 OcOOYfrCeha7xSU73F3OjPvyWBKNQw3uiEvh7jsOwkkv6hHWtKFcWSzU0OJ07iXviSi+
 tHBxaSGIn3DMUrbfrS2TUEapumE7oHuzDsx98Sq6wcAvc+c8N1dpxD8yIJley6FGYOuv
 Af0Bk3X2007SMmNWTClkXHvWGoaTbX8R+VCL9PtoS4zdsU+XlG9Z1z0UqM64RlmOifOR
 EMrA==
X-Gm-Message-State: APjAAAXiHfnnu/GanJvmVVOzydLNdzCvEo7iscUHKGMEA6YmgAuW/erX
 FCXFPl0e1wPmouk1Vj8J2u5HbQ==
X-Google-Smtp-Source: APXvYqy2mHSjLbuGnfsIwDTSXRN6MmsFaxnKz5usjPikqrjVKO5Qt+64UoanwDEvm7K7aq7Uzuzodw==
X-Received: by 2002:a65:608e:: with SMTP id t14mr7877437pgu.373.1567078492203; 
 Thu, 29 Aug 2019 04:34:52 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id e189sm2041532pgc.15.2019.08.29.04.34.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:34:50 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 00/44] V4.4 backport of arm64 Spectre patches
Date: Thu, 29 Aug 2019 17:03:45 +0530
Message-Id: <cover.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043453_463572_159C4CC9 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This series backports arm64 spectre patches to v4.4 stable kernel. I
have started this backport with Mark Rutland's backport of Spectre to
4.9 [1] and tried applying the upstream version of them over 4.4 and
resolved conflicts by checking how they have been resolved in 4.9.

The KVM changes are mostly dropped as the KVM code in v4.4 is quite
different and it makes backport more complex. This was suggested by the
ARM team.

I had to pick few extra upstream patches to avoid conflicts and to make
things work:

  mm/kasan: add API to check memory regions
  arm64: kasan: instrument user memory access API
  arm64: cpufeature: Add scope for capability check
  arm64: cputype info for Broadcom Vulcan
  arm64: cputype: Add MIDR values for Cavium ThunderX2 CPUs
  ARM: 8478/2: arm/arm64: add arm-smccc
  arm64: cpufeature: Test 'matches' pointer to find the end of the list
  arm64: Introduce cpu_die_early
  arm64: Move cpu_die_early to smp.c
  arm64: Verify CPU errata work arounds on hotplugged CPU
  arm64: errata: Calling enable functions for CPU errata too
  arm64: Rearrange CPU errata workaround checks
  arm64: Add a helper for parking CPUs in a loop


I also had to drop few patches as they weren't getting applied properly
due to missing files/features or they were KVM related:

  arm64: cpufeature: __this_cpu_has_cap() shouldn't stop early
  arm64: KVM: Use per-CPU vector when BP hardening is enabled
  arm64: KVM: Make PSCI_VERSION a fast path
  mm: Introduce lm_alias
  arm64: KVM: Increment PC after handling an SMC trap
  arm/arm64: KVM: Consolidate the PSCI include files
  arm/arm64: KVM: Add PSCI_VERSION helper
  arm/arm64: KVM: Add smccc accessors to PSCI code
  arm/arm64: KVM: Implement PSCI 1.0 support
  arm/arm64: KVM: Turn kvm_psci_version into a static inline
  arm64: KVM: Add SMCCC_ARCH_WORKAROUND_1 fast handling

The patches in this series are pushed here [2].

This is tested on Hikey board (octa A53) and I verified that BP
hardening code is getting hit for CPUs (had to hack a bit and enable
BP hardening support for A53 for this).

V2->V3:
- Included an extra patch and used the helper introduced by it:
  arm64: Add a helper for parking CPUs in a loop 
- Droped few extra blank lines added by mistake
- Avoid overlapping with SVE2 bits

V1->V2:

- Rebased over 4.4.184 (was 4.4.180 earlier).

- Fixed an build issue with CONFIG_KASAN (Julien).

- Dropped few patches, mostly KVM stuff (Julien):

  arm64: remove duplicate macro __KERNEL__ check
  mm: Introduce lm_alias
  arm64: KVM: Increment PC after handling an SMC trap
  arm/arm64: KVM: Consolidate the PSCI include files
  arm/arm64: KVM: Add PSCI_VERSION helper
  arm/arm64: KVM: Add smccc accessors to PSCI code
  arm/arm64: KVM: Implement PSCI 1.0 support
  arm/arm64: KVM: Turn kvm_psci_version into a static inline
  arm64: KVM: Add SMCCC_ARCH_WORKAROUND_1 fast handling


- Added few patches to fix issues reported by Julien:

  arm64: cpufeature: Test 'matches' pointer to find the end of the list
  arm64: Introduce cpu_die_early
  arm64: Move cpu_die_early to smp.c
  arm64: Verify CPU errata work arounds on hotplugged CPU
  arm64: errata: Calling enable functions for CPU errata too
  arm64: Rearrange CPU errata workaround checks

--
viresh

[1] https://patches.linaro.org/cover/133195/ with top commit in 4.9 stable tree:
    a3b292fe0560 arm64: futex: Mask __user pointers prior to dereference

[2] https://git.kernel.org/pub/scm/linux/kernel/git/vireshk/linux.git stable/arm64/v4.4.y/spectre

-------------------------8<-------------------------


Andre Przywara (1):
  arm64: errata: Calling enable functions for CPU errata too

Andrey Ryabinin (1):
  mm/kasan: add API to check memory regions

Catalin Marinas (1):
  arm64: Factor out TTBR0_EL1 post-update workaround into a specific asm
    macro

James Morse (1):
  arm64: cpufeature: Test 'matches' pointer to find the end of the list

Jayachandran C (3):
  arm64: cputype info for Broadcom Vulcan
  arm64: cputype: Add MIDR values for Cavium ThunderX2 CPUs
  arm64: Branch predictor hardening for Cavium ThunderX2

Jens Wiklander (1):
  ARM: 8478/2: arm/arm64: add arm-smccc

Marc Zyngier (11):
  arm64: Move post_ttbr_update_workaround to C code
  arm64: Move BP hardening to check_and_switch_context
  arm64: cpu_errata: Allow an erratum to be match for all revisions of a
    core
  arm/arm64: KVM: Advertise SMCCC v1.1
  arm64: KVM: Report SMCCC_ARCH_WORKAROUND_1 BP hardening support
  firmware/psci: Expose PSCI conduit
  firmware/psci: Expose SMCCC version through psci_ops
  arm/arm64: smccc: Make function identifiers an unsigned quantity
  arm/arm64: smccc: Implement SMCCC v1.1 inline primitive
  arm64: Add ARM_SMCCC_ARCH_WORKAROUND_1 BP hardening support
  arm64: Kill PSCI_GET_VERSION as a variant-2 workaround

Robin Murphy (3):
  arm64: Implement array_index_mask_nospec()
  arm64: Make USER_DS an inclusive limit
  arm64: Use pointer masking to limit uaccess speculation

Suzuki K Poulose (7):
  arm64: cpufeature: Add scope for capability check
  arm64: Introduce cpu_die_early
  arm64: Add a helper for parking CPUs in a loop
  arm64: Move cpu_die_early to smp.c
  arm64: Verify CPU errata work arounds on hotplugged CPU
  arm64: Rearrange CPU errata workaround checks
  arm64: Run enable method for errata work arounds on late CPUs

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

 MAINTAINERS                         |  14 ++
 arch/arm64/Kconfig                  |  17 ++
 arch/arm64/include/asm/assembler.h  |  18 ++
 arch/arm64/include/asm/barrier.h    |  23 +++
 arch/arm64/include/asm/cpufeature.h |  24 ++-
 arch/arm64/include/asm/cputype.h    |  12 ++
 arch/arm64/include/asm/futex.h      |   9 +-
 arch/arm64/include/asm/memory.h     |  15 --
 arch/arm64/include/asm/mmu.h        |  39 ++++
 arch/arm64/include/asm/processor.h  |  24 +++
 arch/arm64/include/asm/smp.h        |   9 +
 arch/arm64/include/asm/sysreg.h     |   2 +
 arch/arm64/include/asm/uaccess.h    | 173 ++++++++++++------
 arch/arm64/kernel/Makefile          |   5 +
 arch/arm64/kernel/arm64ksyms.c      |   8 +-
 arch/arm64/kernel/bpi.S             |  75 ++++++++
 arch/arm64/kernel/cpu_errata.c      | 213 +++++++++++++++++++++-
 arch/arm64/kernel/cpufeature.c      | 186 +++++++++----------
 arch/arm64/kernel/cpuinfo.c         |   2 -
 arch/arm64/kernel/entry.S           |  26 ++-
 arch/arm64/kernel/smp.c             |  30 +++-
 arch/arm64/lib/clear_user.S         |   6 +-
 arch/arm64/lib/copy_from_user.S     |   4 +-
 arch/arm64/lib/copy_in_user.S       |   4 +-
 arch/arm64/lib/copy_to_user.S       |   4 +-
 arch/arm64/mm/context.c             |  12 ++
 arch/arm64/mm/fault.c               |  31 ++++
 arch/arm64/mm/proc.S                |  12 +-
 drivers/firmware/Kconfig            |   3 +
 drivers/firmware/psci.c             |  58 +++++-
 include/linux/arm-smccc.h           | 267 ++++++++++++++++++++++++++++
 include/linux/kasan-checks.h        |  12 ++
 include/linux/psci.h                |  14 ++
 mm/kasan/kasan.c                    |  12 ++
 34 files changed, 1150 insertions(+), 213 deletions(-)
 create mode 100644 arch/arm64/kernel/bpi.S
 create mode 100644 include/linux/arm-smccc.h
 create mode 100644 include/linux/kasan-checks.h

-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
