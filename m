Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3735DF18C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 17:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=edIJFxdsCcTVKvB9is+PAD9iXKlGarNC3YMMsxA7BIY=; b=oI598txaduIytj
	AzGajQAXZ6sMSKJLmGPqyWrC5TKSYQnUxqt9RqIMGSDUiuXPUKoryIktN9KyKjXFQZmG/JeVOFBWx
	t7A+y/ybODrO4YsUQ6/CBIV2jNCGpt/PmfLP98PWUiMU5W4KbZtY6HiGK4lZkhtOH7eU17vNEL9S3
	Rjs90F4iqE6dJ8jkU8CGNbS9RUwcO7zV9Wm9V5Z8cjb0kEFkoesarkzXqcFWnx7lnXj++HogqNn3E
	ekUrKRFtKB7DHebztWtpTqP2Qc7SlaOBhK+SxxkejWqg4KpfbMfWzlRFkL5+japNsbvmde/X81yMS
	ygMSe1rsBRlzQzBluvug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMZd9-0005NV-DY; Mon, 21 Oct 2019 15:29:59 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMZbw-0004L4-Nj
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 15:28:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5A9E3CA3;
 Mon, 21 Oct 2019 08:28:33 -0700 (PDT)
Received: from e112269-lin.cambridge.arm.com (e112269-lin.cambridge.arm.com
 [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 532DD3F71F;
 Mon, 21 Oct 2019 08:28:31 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
Subject: [PATCH v7 00/10] arm64: Stolen time support
Date: Mon, 21 Oct 2019 16:28:13 +0100
Message-Id: <20191021152823.14882-1-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_082844_912741_6A5C2DC6 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org,
 kvm@vger.kernel.org,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Steven Price <steven.price@arm.com>,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series add support for paravirtualized time for arm64 guests and
KVM hosts following the specification in Arm's document DEN 0057A:

https://developer.arm.com/docs/den0057/a

It implements support for stolen time, allowing the guest to
identify time when it is forcibly not executing.

Note that Live Physical Time (LPT) which was previously part of the
above specification has now been removed.

Also available as a git tree:
git://linux-arm.org/linux-sp.git stolen_time/v7

Changes from v6:
https://lore.kernel.org/kvm/20191011125930.40834-1-steven.price@arm.com/
 * Rebased onto Mark Rutland's SMCCC cleanup
 * Added comment about putting stolen time structures in their own 64k
   page
 * Split 'init' functionality out from kvm_update_stolen_time()
 * Enforce address provided by user space for structure is in a valid
   memslot
 * Rename functions/structures in paravirt.c to avoid 'KVM' since the
   functionality isn't specific to KVM
 * Minor cleanups from review comments

Changes from v5:
https://lore.kernel.org/kvm/20191002145037.51630-1-steven.price@arm.com/
 * Convert document to RST format
 * Rename PV_FEATURES to PV_TIME_FEATURES to match spec
 * Correct SMC number of PV_TIME_ST

Changes from v4:
https://lore.kernel.org/kvm/20190830084255.55113-1-steven.price@arm.com/
 * Rebased to v5.4-rc1
 * Renamed KVM_ARM_VCPU_PVTIME_SET_IPA to remove _SET as it is used for
   both set/get operations
 * Added kvm/arm_hypercalls.h to header-test-$(CONFIG_ARM{,64}) as it is
   only buildable on arm/arm64
 * Documented no-steal-acc kernel parameter

Changes from v3:
https://lore.kernel.org/lkml/20190821153656.33429-1-steven.price@arm.com/
 * There's no longer a PV_TIME device, instead there are attributes on
   the VCPU. This allows the stolen time structures to be places
   arbitrarily by user space (subject to 64 byte alignment).
 * Split documentation between information on the hypercalls and the
   attributes on the VCPU
 * Fixed the type of SMCCC functions to return long not int

Changes from v2:
https://lore.kernel.org/lkml/20190819140436.12207-1-steven.price@arm.com/
 * Switched from using gfn_to_hva_cache to a new macro kvm_put_guest()
   that can provide the single-copy atomicity required (on arm64). This
   macro is added in patch 4.
 * Tidied up the locking for kvm_update_stolen_time().
   pagefault_disable() was unnecessary and the caller didn't need to
   take kvm->srcu as the function does it itself.
 * Removed struct kvm_arch_pvtime from the arm implementation, replaced
   instead with inline static functions which are empty for arm.
 * Fixed a few checkpatch --strict warnings.

Changes from v1:
https://lore.kernel.org/lkml/20190802145017.42543-1-steven.price@arm.com/
 * Host kernel no longer allocates the stolen time structure, instead it
   is allocated by user space. This means the save/restore functionality
   can be removed.
 * Refactored the code so arm has stub implementations and to avoid
   initcall
 * Rebased to pick up Documentation/{virt->virtual} change
 * Bunch of typo fixes

Christoffer Dall (1):
  KVM: arm/arm64: Factor out hypercall handling from PSCI code

Steven Price (9):
  KVM: arm64: Document PV-time interface
  KVM: arm64: Implement PV_TIME_FEATURES call
  KVM: Implement kvm_put_guest()
  KVM: arm64: Support stolen time reporting via shared structure
  KVM: Allow kvm_device_ops to be const
  KVM: arm64: Provide VCPU attributes for stolen time
  arm/arm64: Provide a wrapper for SMCCC 1.1 calls
  arm/arm64: Make use of the SMCCC 1.1 wrapper
  arm64: Retrieve stolen time as paravirtualized guest

 .../admin-guide/kernel-parameters.txt         |   6 +-
 Documentation/virt/kvm/arm/pvtime.rst         |  81 ++++++++++
 Documentation/virt/kvm/devices/vcpu.txt       |  14 ++
 arch/arm/include/asm/kvm_host.h               |  25 ++++
 arch/arm/kvm/Makefile                         |   2 +-
 arch/arm/kvm/handle_exit.c                    |   2 +-
 arch/arm/mm/proc-v7-bugs.c                    |  13 +-
 arch/arm64/include/asm/kvm_host.h             |  29 ++++
 arch/arm64/include/asm/paravirt.h             |   9 +-
 arch/arm64/include/asm/pvclock-abi.h          |  17 +++
 arch/arm64/include/uapi/asm/kvm.h             |   2 +
 arch/arm64/kernel/cpu_errata.c                |  81 ++++------
 arch/arm64/kernel/paravirt.c                  | 140 ++++++++++++++++++
 arch/arm64/kernel/time.c                      |   3 +
 arch/arm64/kvm/Kconfig                        |   1 +
 arch/arm64/kvm/Makefile                       |   2 +
 arch/arm64/kvm/guest.c                        |   9 ++
 arch/arm64/kvm/handle_exit.c                  |   4 +-
 include/Kbuild                                |   2 +
 include/kvm/arm_hypercalls.h                  |  43 ++++++
 include/kvm/arm_psci.h                        |   2 +-
 include/linux/arm-smccc.h                     |  59 ++++++++
 include/linux/cpuhotplug.h                    |   1 +
 include/linux/kvm_host.h                      |  26 +++-
 include/linux/kvm_types.h                     |   2 +
 include/uapi/linux/kvm.h                      |   2 +
 virt/kvm/arm/arm.c                            |  11 ++
 virt/kvm/arm/hypercalls.c                     |  71 +++++++++
 virt/kvm/arm/psci.c                           |  84 +----------
 virt/kvm/arm/pvtime.c                         | 131 ++++++++++++++++
 virt/kvm/kvm_main.c                           |   6 +-
 31 files changed, 724 insertions(+), 156 deletions(-)
 create mode 100644 Documentation/virt/kvm/arm/pvtime.rst
 create mode 100644 arch/arm64/include/asm/pvclock-abi.h
 create mode 100644 include/kvm/arm_hypercalls.h
 create mode 100644 virt/kvm/arm/hypercalls.c
 create mode 100644 virt/kvm/arm/pvtime.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
