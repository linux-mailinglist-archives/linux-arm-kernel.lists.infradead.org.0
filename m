Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EABB925E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 16:05:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KWGvkj2ZMCfUWC3dxqRUREgbstGujXhpr1h/Dz8zGCw=; b=be36P9h/gM3NiK
	d8Zf036c1EKE0HODlyRM+ClgvejRYaZFb+Y9RuCq3EQrtruMJiX49DYmJiBwsfD3TxEhZQ0qDR3IF
	XUFn9jUadRNWtWS3KaoHW12cNnX7OVqyjSqbAG0IuYiS4UJPWtEa4qXZiJ1mcBPV6I8eNTeGQMdtS
	qck76zR2Ql/PmJtGji0csjXCcUIN1rnXGftB+IPk6ZgN5O8DfpEdUDirIU1jCYzCUzsrM7Ewm3Hz5
	uZV4UB71UiMUR25NY39VYiRbLZrdugPrCs6MXzi5pa3fSJGSLArXPEsjLBcsbmskexYUiLg0v68Ra
	mMiHW96BKd8A3O+6caGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hziHJ-0005Ib-Dd; Mon, 19 Aug 2019 14:04:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hziH9-0005H0-CD
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 14:04:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E064628;
 Mon, 19 Aug 2019 07:04:43 -0700 (PDT)
Received: from e112269-lin.arm.com (e112269-lin.cambridge.arm.com
 [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DD9BC3F718;
 Mon, 19 Aug 2019 07:04:41 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
Subject: [PATCH v2 0/9] arm64: Stolen time support
Date: Mon, 19 Aug 2019 15:04:27 +0100
Message-Id: <20190819140436.12207-1-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_070447_500526_78308FD9 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

It doesn't implement support for Live Physical Time (LPT) as there are
some concerns about the overheads and approach in the above
specification, and I expect an updated version of the specification to
be released soon with just the stolen time parts.

NOTE: Patches 7 and 8 will conflict with Mark Rutland's series[1] cleaning
up the SMCCC conduit. I do feel that the addition of an _invoke() call
makes a number of call sites cleaner and it should be possible to
integrate both this and Mark's other cleanups.

[1] https://lore.kernel.org/linux-arm-kernel/20190809132245.43505-1-mark.rutland@arm.com/

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

Steven Price (8):
  KVM: arm64: Document PV-time interface
  KVM: arm64: Implement PV_FEATURES call
  KVM: arm64: Support stolen time reporting via shared structure
  KVM: Allow kvm_device_ops to be const
  KVM: arm64: Provide a PV_TIME device to user space
  arm/arm64: Provide a wrapper for SMCCC 1.1 calls
  arm/arm64: Make use of the SMCCC 1.1 wrapper
  arm64: Retrieve stolen time as paravirtualized guest

 Documentation/virt/kvm/arm/pvtime.txt | 100 +++++++++++++
 arch/arm/include/asm/kvm_host.h       |  21 +++
 arch/arm/kvm/Makefile                 |   2 +-
 arch/arm/kvm/handle_exit.c            |   2 +-
 arch/arm/mm/proc-v7-bugs.c            |  13 +-
 arch/arm64/include/asm/kvm_host.h     |  19 ++-
 arch/arm64/include/asm/paravirt.h     |   9 +-
 arch/arm64/include/asm/pvclock-abi.h  |  17 +++
 arch/arm64/include/uapi/asm/kvm.h     |   8 ++
 arch/arm64/kernel/cpu_errata.c        |  80 ++++-------
 arch/arm64/kernel/paravirt.c          | 147 +++++++++++++++++++
 arch/arm64/kernel/time.c              |   3 +
 arch/arm64/kvm/Kconfig                |   1 +
 arch/arm64/kvm/Makefile               |   2 +
 arch/arm64/kvm/handle_exit.c          |   4 +-
 include/kvm/arm_hypercalls.h          |  43 ++++++
 include/kvm/arm_psci.h                |   2 +-
 include/linux/arm-smccc.h             |  58 ++++++++
 include/linux/cpuhotplug.h            |   1 +
 include/linux/kvm_host.h              |   4 +-
 include/linux/kvm_types.h             |   2 +
 include/uapi/linux/kvm.h              |   2 +
 virt/kvm/arm/arm.c                    |  20 +++
 virt/kvm/arm/hypercalls.c             |  68 +++++++++
 virt/kvm/arm/psci.c                   |  84 +----------
 virt/kvm/arm/pvtime.c                 | 194 ++++++++++++++++++++++++++
 virt/kvm/kvm_main.c                   |   6 +-
 27 files changed, 758 insertions(+), 154 deletions(-)
 create mode 100644 Documentation/virt/kvm/arm/pvtime.txt
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
