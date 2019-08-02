Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8127FC95
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 16:50:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+6vDp69ayABJjWyty+PDQyK0p4E9vnsjGf0ZTCun2xw=; b=p9xassbcj3oUHJ
	PRQtfsthL7QVrh3gX1lvFzt9x2Sa51etnJojoDZ2aypJU06erHZeRcTVVcElBAfDbu2FBr/f/cfAE
	z1JqpQ6JEONUp58gwVjUivl+Ywkj/kFkURqcmxSsMZ9j5y2cAJbrwjwdf7LYaQvJf3FeR8BKz3lF4
	OsQAUND+n7bK5GvCaP0hBqFVFatyIvcZQ6O7zYRTRkanI3pGNrS5z9/ak5YTKFqcLom2xC/9ENf5v
	7uiw3menneUpo/h4dpFRd1GF07+n02s0XSNk456oqsPX2iiMruXqbjzuZjBzi3MkJ/dMMoDJJ/chX
	D+7agU6hzYA42iX/IMFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htYtG-0002nE-2w; Fri, 02 Aug 2019 14:50:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htYt6-0002mU-1Q
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 14:50:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C9FD11596;
 Fri,  2 Aug 2019 07:50:29 -0700 (PDT)
Received: from e112269-lin.arm.com (e112269-lin.cambridge.arm.com
 [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E2E0B3F575;
 Fri,  2 Aug 2019 07:50:27 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: 
Subject: [PATCH 0/9] arm64: Stolen time support
Date: Fri,  2 Aug 2019 15:50:08 +0100
Message-Id: <20190802145017.42543-1-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_075032_173822_3C5B0554 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-kernel@vger.kernel.org, kvm@vger.kernel.org,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Steven Price <steven.price@arm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Marc Zyngier <maz@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
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

I previously posted a series including LPT (as well as stolen time):
https://lore.kernel.org/kvmarm/20181212150226.38051-1-steven.price@arm.com/

Patches 2, 5, 7 and 8 are cleanup patches and could be taken separately.

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

 Documentation/virtual/kvm/arm/pvtime.txt | 107 +++++++++++++
 arch/arm/kvm/Makefile                    |   2 +-
 arch/arm/kvm/handle_exit.c               |   2 +-
 arch/arm/mm/proc-v7-bugs.c               |  13 +-
 arch/arm64/include/asm/kvm_host.h        |  13 +-
 arch/arm64/include/asm/kvm_mmu.h         |   2 +
 arch/arm64/include/asm/pvclock-abi.h     |  20 +++
 arch/arm64/include/uapi/asm/kvm.h        |   6 +
 arch/arm64/kernel/Makefile               |   1 +
 arch/arm64/kernel/cpu_errata.c           |  80 ++++------
 arch/arm64/kernel/kvm.c                  | 155 ++++++++++++++++++
 arch/arm64/kvm/Kconfig                   |   1 +
 arch/arm64/kvm/Makefile                  |   2 +
 arch/arm64/kvm/handle_exit.c             |   4 +-
 include/kvm/arm_hypercalls.h             |  44 ++++++
 include/kvm/arm_psci.h                   |   2 +-
 include/linux/arm-smccc.h                |  58 +++++++
 include/linux/cpuhotplug.h               |   1 +
 include/linux/kvm_host.h                 |   4 +-
 include/linux/kvm_types.h                |   2 +
 include/uapi/linux/kvm.h                 |   2 +
 virt/kvm/arm/arm.c                       |  18 +++
 virt/kvm/arm/hypercalls.c                | 138 ++++++++++++++++
 virt/kvm/arm/mmu.c                       |  44 ++++++
 virt/kvm/arm/psci.c                      |  84 +---------
 virt/kvm/arm/pvtime.c                    | 190 +++++++++++++++++++++++
 virt/kvm/kvm_main.c                      |   6 +-
 27 files changed, 848 insertions(+), 153 deletions(-)
 create mode 100644 Documentation/virtual/kvm/arm/pvtime.txt
 create mode 100644 arch/arm64/include/asm/pvclock-abi.h
 create mode 100644 arch/arm64/kernel/kvm.c
 create mode 100644 include/kvm/arm_hypercalls.h
 create mode 100644 virt/kvm/arm/hypercalls.c
 create mode 100644 virt/kvm/arm/pvtime.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
