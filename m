Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A98B5F077A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 21:59:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/6h30M5XqyMzyhZ/nFvt6EhKj5vRRoA1H213WVx9MQQ=; b=fcx
	i7bPe4qDRH+MOANnXgZDg9wgK4J7YcQtUiCKPX6M4Zzwfv+aIMTRNAD5ROZ72DVHSQnJgJXDg7bZE
	l5RW0hk9on4C0V+QmaK8QASZ1c7T1cJcB5tEDME/3K07lyAo6SzzRnS3mrNiwYl0xh7psRFYn3e0G
	XRAGJ9etMWwA5+f1/lJR841Ah2oYRlMe8MS/L8tpst1nZn+OyjIyI+5rtwkZJ8aPH4ynL3g6ppgoL
	5vjdwaV1DcrJDOiTRrPF36EnTH5XasdXRi41Y6IRx7wLxfFBKCcZ4tQRvory2PNVWEp2PCE5BUHvS
	hJI4K/M+0gVzBXwIVJQMRTWdpycFuSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS5ut-0004tR-Sa; Tue, 05 Nov 2019 20:59:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5ul-0004sP-Om
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 20:59:01 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 12D0621A49;
 Tue,  5 Nov 2019 20:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987539;
 bh=fhC0g7qM5Nl5Z+ueAfCdIaNNielAOdsqRjtW+e0Zhyw=;
 h=From:To:Cc:Subject:Date:From;
 b=O7y/zmO3d+qaKNMPaut/iAGQBBQiEzFegzTV1B5sBO5e78AD79pWYVhN+0M7+Rnpl
 Fr3Iv7x4yiCUvt+LLbHA6JWGKQ3JppFLMswk1xUqnxY8HZBuorJSGcX0dfEB5eACgQ
 pHll4MpicFQrzXCJjmbsFyHfT8DVxl96Ridw9tGk=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 00/53] ARM: spectre v1/v2 mitigations
Date: Tue,  5 Nov 2019 21:57:53 +0100
Message-Id: <20191105205846.1394-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_125859_850096_C7D19E63 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Tony Lindgren <tony@atomide.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a backport to v4.4 of the Spectre v1 and v2 mitigations that have
already been backported to v4.9. Note that this submission was not yet
cc'ed to <stable@vger.kernel.org>, but is being proposed for review first.

Patches #20 and up were cherry-picked from the v4.9 tree, and applied cleanly.
The first 19 patches are prerequisites that were introduced between v4.4 and
v4.9, and some needed minor massaging to apply. Some notable issues:
- the 32-bit KVM host parts were omitted, given the lack of demand and the
  fact that those pieces saw significantly more churn during the v4.4-v4.9
  timeframe due to the fact that the code is shared with arm64
- some other changes are shared between ARM and arm64 (notably, the ARM SMCCCC
  changes), so the backport affects both architectures
- patch #9 is needed due to the changes it makes to linux/arm-smccc.h, but
  the qcom firmware code is not actually used on 64-bit in v4.4, so we could
  drop the arm64 changes from it as well

Patches can be found at [0]. They were build and boot tested using a variety
of ARM and arm64 configs and platforms, both locally and on KernelCI [1].

Comments and/or test results welcome. If no concerns are raised, I'll send
these to -stable by the end of the week.

Cc: Russell King <rmk+kernel@armlinux.org.uk>
Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Tony Lindgren <tony@atomide.com>

[0] https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/log/?h=for-kernelci
[1] https://kernelci.org/build/ardb/branch/for-kernelci/kernel/v4.4-12970-gf4fc4dad03aa/

Andrey Ryabinin (1):
  ARM: 8051/1: put_user: fix possible data corruption in put_user

Andy Gross (2):
  arm: kernel: Add SMC structure parameter
  firmware: qcom: scm: Fix interrupted SCM calls

Jens Wiklander (4):
  ARM: 8478/2: arm/arm64: add arm-smccc
  ARM: 8479/2: add implementation for arm-smccc
  ARM: 8480/2: arm64: add implementation for arm-smccc
  ARM: 8481/2: drivers: psci: replace psci firmware calls

Julien Thierry (8):
  ARM: 8789/1: signal: copy registers using __copy_to_user()
  ARM: 8791/1: vfp: use __copy_to_user() when saving VFP state
  ARM: 8792/1: oabi-compat: copy oabi events using __copy_to_user()
  ARM: 8793/1: signal: replace __put_user_error with __put_user
  ARM: 8794/1: uaccess: Prevent speculative use of the current
    addr_limit
  ARM: 8795/1: spectre-v1.1: use put_user() for __put_user()
  ARM: 8796/1: spectre-v1,v1.1: provide helpers for address sanitization
  ARM: 8810/1: vfp: Fix wrong assignement to ufp_exc

Marc Zyngier (3):
  arm/arm64: smccc: Add SMCCC-specific return codes
  arm/arm64: smccc-1.1: Make return values unsigned long
  arm/arm64: smccc-1.1: Handle function result as parameters

Mark Rutland (6):
  arm/arm64: KVM: Advertise SMCCC v1.1
  arm64: KVM: Report SMCCC_ARCH_WORKAROUND_1 BP hardening support
  firmware/psci: Expose PSCI conduit
  firmware/psci: Expose SMCCC version through psci_ops
  arm/arm64: smccc: Make function identifiers an unsigned quantity
  arm/arm64: smccc: Implement SMCCC v1.1 inline primitive

Russell King (27):
  ARM: uaccess: remove put_user() code duplication
  ARM: add more CPU part numbers for Cortex and Brahma B15 CPUs
  ARM: bugs: prepare processor bug infrastructure
  ARM: bugs: hook processor bug checking into SMP and suspend paths
  ARM: bugs: add support for per-processor bug checking
  ARM: spectre: add Kconfig symbol for CPUs vulnerable to Spectre
  ARM: spectre-v2: harden branch predictor on context switches
  ARM: spectre-v2: add Cortex A8 and A15 validation of the IBE bit
  ARM: spectre-v2: harden user aborts in kernel space
  ARM: spectre-v2: add firmware based hardening
  ARM: spectre-v2: warn about incorrect context switching functions
  ARM: spectre-v1: add speculation barrier (csdb) macros
  ARM: spectre-v1: add array_index_mask_nospec() implementation
  ARM: spectre-v1: fix syscall entry
  ARM: signal: copy registers using __copy_from_user()
  ARM: vfp: use __copy_from_user() when restoring VFP state
  ARM: oabi-compat: copy semops using __copy_from_user()
  ARM: use __inttype() in get_user()
  ARM: spectre-v1: use get_user() for __get_user()
  ARM: spectre-v1: mitigate user accesses
  ARM: make lookup_processor_type() non-__init
  ARM: split out processor lookup
  ARM: clean up per-processor check_bugs method call
  ARM: add PROC_VTABLE and PROC_TABLE macros
  ARM: spectre-v2: per-CPU vtables to work around big.Little systems
  ARM: ensure that processor vtables is not lost after boot
  ARM: fix the cockup in the previous patch

Vladimir Murzin (1):
  ARM: Move system register accessors to asm/cp15.h

Will Deacon (1):
  ARM: smccc: Update HVC comment to describe new quirk parameter

 arch/arm/Kconfig                   |   3 +-
 arch/arm/include/asm/arch_gicv3.h  |  27 +-
 arch/arm/include/asm/assembler.h   |  23 ++
 arch/arm/include/asm/barrier.h     |  34 +++
 arch/arm/include/asm/bugs.h        |   6 +-
 arch/arm/include/asm/cp15.h        |  18 ++
 arch/arm/include/asm/cputype.h     |   9 +
 arch/arm/include/asm/proc-fns.h    |  65 +++-
 arch/arm/include/asm/system_misc.h |  15 +
 arch/arm/include/asm/thread_info.h |   8 +-
 arch/arm/include/asm/uaccess.h     | 177 ++++++-----
 arch/arm/kernel/Makefile           |   4 +-
 arch/arm/kernel/armksyms.c         |   6 +
 arch/arm/kernel/bugs.c             |  18 ++
 arch/arm/kernel/entry-common.S     |  18 +-
 arch/arm/kernel/entry-header.S     |  25 ++
 arch/arm/kernel/head-common.S      |   6 +-
 arch/arm/kernel/psci-call.S        |  31 --
 arch/arm/kernel/setup.c            |  40 ++-
 arch/arm/kernel/signal.c           | 125 ++++----
 arch/arm/kernel/smccc-call.S       |  64 ++++
 arch/arm/kernel/smp.c              |  36 +++
 arch/arm/kernel/suspend.c          |   2 +
 arch/arm/kernel/sys_oabi-compat.c  |  16 +-
 arch/arm/lib/copy_from_user.S      |   5 +
 arch/arm/mm/Kconfig                |  23 ++
 arch/arm/mm/Makefile               |   2 +-
 arch/arm/mm/fault.c                |   3 +
 arch/arm/mm/proc-macros.S          |  13 +-
 arch/arm/mm/proc-v7-2level.S       |   6 -
 arch/arm/mm/proc-v7-bugs.c         | 161 ++++++++++
 arch/arm/mm/proc-v7.S              | 154 ++++++++--
 arch/arm/vfp/vfpmodule.c           |  37 +--
 arch/arm64/Kconfig                 |   1 +
 arch/arm64/kernel/Makefile         |   4 +-
 arch/arm64/kernel/arm64ksyms.c     |   5 +
 arch/arm64/kernel/asm-offsets.c    |   6 +
 arch/arm64/kernel/psci-call.S      |  28 --
 arch/arm64/kernel/smccc-call.S     |  52 ++++
 drivers/firmware/Kconfig           |   3 +
 drivers/firmware/psci.c            |  78 ++++-
 include/linux/arm-smccc.h          | 310 ++++++++++++++++++++
 include/linux/psci.h               |  13 +
 43 files changed, 1354 insertions(+), 326 deletions(-)
 create mode 100644 arch/arm/kernel/bugs.c
 delete mode 100644 arch/arm/kernel/psci-call.S
 create mode 100644 arch/arm/kernel/smccc-call.S
 create mode 100644 arch/arm/mm/proc-v7-bugs.c
 delete mode 100644 arch/arm64/kernel/psci-call.S
 create mode 100644 arch/arm64/kernel/smccc-call.S
 create mode 100644 include/linux/arm-smccc.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
