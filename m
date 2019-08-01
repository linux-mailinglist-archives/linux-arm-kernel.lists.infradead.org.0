Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 259F37D712
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:19:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XOYu0JlDJnWeJUsSq4BcgPZiWI9Tsf+A5Tr73SGXmNY=; b=Wa4R0dtseATsgs
	WWLs5obBwBZIRAOMVkDTCi4F1rzDx1Z+DWU6Scbza1MXrcjD3CHNKJFHqsvg5GX/vPTObEEnSL7rd
	UnE3QQu0DLeFJ9UHZ9nhMs4vHRVXmy9swWFuxtvWOk34UqyC6C+ZZd7NYPptW1pczk0qQLfpUIoCO
	+/LaaOBPgDC0R04mozG76VPaXZqtAcIHfnPFeccGOOe1RakqZIyJLjDhuCrGF+t0fnT6eQI91PZgh
	7a+HfguqjI2UyLgUrAsMIe16XPY53lH/penaT7AG+hz9+RZEHfz+019jaftFcxrVE+EFdZwGlpINh
	llybPEtSELbVEhWpgFiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6JP-0000A0-4E; Thu, 01 Aug 2019 08:19:47 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6JE-00009O-Lx
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:19:38 +0000
Received: by mail-pg1-x542.google.com with SMTP id x15so23385108pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bhUQ8CbBxnutQFMCz2w4dwMypfrLtFZ8t2rl5QcIMUU=;
 b=F1n3TvtiV8FBSBJzc4RL3P9w7OsvZRL1G9sv0KMkmvxKv+KUmyWuUMObng6sV+MrOG
 mm6IXetH04vdKG/l3lSTZL9QFyZy9Zxkd0cHcrni1j2/YIdjGFrQTFoTrWjvhyp3ksvV
 ThMJ95KIV8EMnjFrzS7i073Vyz0Pi9FsneWsk6rxXnyDHIpK9jMPRYv4YefP5bv9LAUv
 UgGzk7q+wnHARtuhTLcks9/NVAsQOR+WNIQ13/dLerUzfrNAUAsvOe2ZWSUcFBVX9EmI
 8UzFSrndPYpmVN0wJXitcBIvZHfuy2a0nDQkyvMehDVp8F4PrZVpAi0jZO0SX2dLGnrF
 xfYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bhUQ8CbBxnutQFMCz2w4dwMypfrLtFZ8t2rl5QcIMUU=;
 b=iwUNrgiM/1g0RUQ7qJiyQCHS8xQqNTiCFqJSGLSBBofZQ7vmhcoPZ3uhMKiXAinK88
 3ioZSGMNzUpnZ4W3QG1wz/SaZm0LeNDRMaIIN3zf1lMacHrZX7h9H9rBDzG2hbP+jB5H
 j9tpmxWsKqGiOC3jl15WyMgrrK+vNk01dMSgx3SW5bOACHqy00/7MeufB1XWyrFAsL/a
 /CL5JA8OtWtnbNMLkeJwoTc/OYoZ0iog3F3uDQWTsmsPxyb0WWntQiWKaZyW3bOzMLeo
 X2Gw4nQUCbSJSR0k2StjXLpmCs20Ca7dXQ5XHmheBxE+0BO/YrRQuW2ytOJ4P+hepZ1y
 jt8Q==
X-Gm-Message-State: APjAAAV2fe6Bi5rUYtUT/xDwefgGHP98+dHhCdgbvYHzUU/CeQbuX5IS
 tLEfeXZIruOioIJfRmTSpd1zLg==
X-Google-Smtp-Source: APXvYqzqh2cq2nbxSE3V6/uTwv+GNJMkSI/7I3/C99ClaCU+Mj94EeDY8pr/PaBXgYo/NP2XN5kDyA==
X-Received: by 2002:a17:90a:30cf:: with SMTP id
 h73mr7374254pjb.42.1564647575852; 
 Thu, 01 Aug 2019 01:19:35 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id e124sm116491472pfh.181.2019.08.01.01.19.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:19:35 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 00/47] V4.4 backport of arm32 Spectre patches
Date: Thu,  1 Aug 2019 13:45:44 +0530
Message-Id: <cover.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_011936_744825_1B01DE4A 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Here is an attempt to backport arm32 spectre patches to v4.4 stable
tree. This was last tried around an year back by David Long [1]. He was
backporting only a subset (18) of patches and this series include a lot
of other patches present in Russell's spectre branch.

Just like arm64 backport [2], KVM patches are dropped and they can be
backported separately if required.

Dropped patches (compared to Russell's spectre branch):
 KVM related:
  3f7e8e2e1ebd ARM: KVM: invalidate BTB on guest exit for Cortex-A12/A17
  0c47ac8cd157 ARM: KVM: invalidate icache on guest exit for Cortex-A15
  3c908e16396d ARM: spectre-v2: KVM: invalidate icache on guest exit for Brahma B15
  b800acfc70d9 ARM: KVM: Add SMCCC_ARCH_WORKAROUND_1 fast handling
  add5609877c6 ARM: KVM: report support for SMCCC_ARCH_WORKAROUND_1
 
 Dropped in 4.9 backport as well:
  73839798af7e ARM: 8790/1: signal: always use __copy_to_user to save iwmmxt context


Additional patches picked to avoid rebase conflicts and build issues:

 9f73bd8bb445 ARM: uaccess: remove put_user() code duplication
 122e022eebb3 arch: Introduce post-init read-only memory
 7b90ba3eb4af ARM: 8595/2: apply more __ro_after_init
 
 SMCCC related patches, are part of arm64 backport [2] as well and all
 KVM related changes are dropped from them:
 
  56b35dfda10c ARM: 8478/2: arm/arm64: add arm-smccc
  e6e9cc47cea9 arm/arm64: KVM: Advertise SMCCC v1.1
  91958fe7a4eb arm64: KVM: Report SMCCC_ARCH_WORKAROUND_1 BP hardening support
  1b232ad7ca05 drivers/firmware: Expose psci_get_version through psci_ops structure
  df2030616c6f firmware/psci: Expose PSCI conduit
  30f8c32765fd firmware/psci: Expose SMCCC version through psci_ops
  17f6f98d5069 arm/arm64: smccc: Make function identifiers an unsigned quantity
  e6d9b2fef81e arm/arm64: smccc: Implement SMCCC v1.1 inline primitive


All the patches are pushed here [3].

This is tested in Linaro Lava on Qemu_arm and X15 platforms and the
results are here [4]. Lava also check for some Spectre tests and one of
the test fails on x15 with this message:

CVE-2018-3640: VULN (an up-to-date CPU microcode is needed to mitigate
this vulnerability).

Perhaps this is an issue with x15 setup and not the patches themselves ?

I have also pushed this to be tested by kernel-ci, looks like my branch
isn't getting tested there currently. I am co-ordinating with them to
get it tested soon, we can start the review process until that time
though.

--
Viresh

[1] https://lore.kernel.org/stable/20181031140436.2964-1-dave.long@linaro.org/
[2] https://lore.kernel.org/stable/cover.1562908074.git.viresh.kumar@linaro.org/
[3] https://git.kernel.org/pub/scm/linux/kernel/git/vireshk/linux.git stable/arm32/v4.4.y/spectre
[4] https://staging-qa-reports.linaro.org/lkft/vishal.bhoj-stable-arm32-v4.4.y-spectre/build/v3.16-rc2-119419-g4ba6a2292f0e/


Ard Biesheuvel (1):
  ARM: 8809/1: proc-v7: fix Thumb annotation of cpu_v7_hvc_switch_mm

Jens Wiklander (1):
  ARM: 8478/2: arm/arm64: add arm-smccc

Julien Thierry (9):
  ARM: 8789/1: signal: copy registers using __copy_to_user()
  ARM: 8791/1: vfp: use __copy_to_user() when saving VFP state
  ARM: 8792/1: oabi-compat: copy oabi events using __copy_to_user()
  ARM: 8793/1: signal: replace __put_user_error with __put_user
  ARM: 8794/1: uaccess: Prevent speculative use of the current
    addr_limit
  ARM: 8795/1: spectre-v1.1: use put_user() for __put_user()
  ARM: 8796/1: spectre-v1,v1.1: provide helpers for address sanitization
  ARM: 8797/1: spectre-v1.1: harden __copy_to_user
  ARM: 8810/1: vfp: Fix wrong assignement to ufp_exc

Kees Cook (2):
  arch: Introduce post-init read-only memory
  ARM: 8595/2: apply more __ro_after_init

Marc Zyngier (6):
  arm/arm64: KVM: Advertise SMCCC v1.1
  arm64: KVM: Report SMCCC_ARCH_WORKAROUND_1 BP hardening support
  firmware/psci: Expose PSCI conduit
  firmware/psci: Expose SMCCC version through psci_ops
  arm/arm64: smccc: Make function identifiers an unsigned quantity
  arm/arm64: smccc: Implement SMCCC v1.1 inline primitive

Russell King (27):
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
  ARM: uaccess: remove put_user() code duplication
  ARM: make lookup_processor_type() non-__init
  ARM: split out processor lookup
  ARM: clean up per-processor check_bugs method call
  ARM: add PROC_VTABLE and PROC_TABLE macros
  ARM: spectre-v2: per-CPU vtables to work around big.Little systems
  ARM: ensure that processor vtables is not lost after boot
  ARM: fix the cockup in the previous patch

Will Deacon (1):
  drivers/firmware: Expose psci_get_version through psci_ops structure

 arch/arm/include/asm/assembler.h   |  23 +++
 arch/arm/include/asm/barrier.h     |  32 ++++
 arch/arm/include/asm/bugs.h        |   6 +-
 arch/arm/include/asm/cp15.h        |  18 ++
 arch/arm/include/asm/cputype.h     |   9 +
 arch/arm/include/asm/proc-fns.h    |  65 +++++--
 arch/arm/include/asm/system_misc.h |  15 ++
 arch/arm/include/asm/thread_info.h |   8 +-
 arch/arm/include/asm/uaccess.h     | 176 +++++++++++--------
 arch/arm/kernel/Makefile           |   1 +
 arch/arm/kernel/bugs.c             |  18 ++
 arch/arm/kernel/cpuidle.c          |   2 +-
 arch/arm/kernel/entry-common.S     |  18 +-
 arch/arm/kernel/entry-header.S     |  25 +++
 arch/arm/kernel/head-common.S      |   6 +-
 arch/arm/kernel/setup.c            |  50 +++---
 arch/arm/kernel/signal.c           | 126 +++++++-------
 arch/arm/kernel/smp.c              |  38 +++-
 arch/arm/kernel/suspend.c          |   2 +
 arch/arm/kernel/sys_oabi-compat.c  |  16 +-
 arch/arm/lib/copy_from_user.S      |   5 +
 arch/arm/lib/copy_to_user.S        |   6 +-
 arch/arm/lib/delay.c               |   2 +-
 arch/arm/lib/uaccess_with_memcpy.c |   3 +-
 arch/arm/mm/Kconfig                |  23 +++
 arch/arm/mm/Makefile               |   2 +-
 arch/arm/mm/fault.c                |   3 +
 arch/arm/mm/mmu.c                  |   2 +-
 arch/arm/mm/proc-macros.S          |  13 +-
 arch/arm/mm/proc-v7-2level.S       |   6 -
 arch/arm/mm/proc-v7-bugs.c         | 161 +++++++++++++++++
 arch/arm/mm/proc-v7.S              | 154 +++++++++++++----
 arch/arm/vfp/vfpmodule.c           |  37 ++--
 arch/parisc/include/asm/cache.h    |   3 +
 drivers/firmware/Kconfig           |   3 +
 drivers/firmware/psci.c            |  58 ++++++-
 include/asm-generic/vmlinux.lds.h  |   1 +
 include/linux/arm-smccc.h          | 267 +++++++++++++++++++++++++++++
 include/linux/cache.h              |  14 ++
 include/linux/psci.h               |  14 ++
 40 files changed, 1174 insertions(+), 257 deletions(-)
 create mode 100644 arch/arm/kernel/bugs.c
 create mode 100644 arch/arm/mm/proc-v7-bugs.c
 create mode 100644 include/linux/arm-smccc.h

-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
