Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C5BB4F8C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 15:43:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Yzr6Toe7NXt/9moZavRNGFHMoJkDWRJoQpxIvJkaM1Q=; b=dzx
	RdznJwkD9KhbMctqGCUhPJvF4GG27SDzPPQp0YpOz4G2vzY2vq0ZQb42Fc6oc5sNru7hyeL9KOKt4
	bk+7Ui62h8IFGpkODACfT/yE8EtMfK+3pyeISiM38xc6Cb66ZI3i9q/EIncb/ZlQzLatEDupwh+Sy
	kFLLbrUWTm30nQhbplEfyzHdEfNBuUZmIJlvJBKTsDIBrGX16T4ulnuynUZAxgIDr6NFDIMdBO3eD
	1iNDilH1hQtuIwr6nixumgHs1NVBZMVyU41guAU487g7A/yiON/bDi6akubbwoLvz7PKuks7Zz8oJ
	0LopcV2bXoenr6ZqYWKAEHJJZT8pOqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADlP-0007Tb-5N; Tue, 17 Sep 2019 13:43:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADl9-0007Sd-OW
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 13:43:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BA8C828;
 Tue, 17 Sep 2019 06:43:07 -0700 (PDT)
Received: from e108754-lin.cambridge.arm.com (e108754-lin.cambridge.arm.com
 [10.1.199.68])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9B9913F575;
 Tue, 17 Sep 2019 06:43:06 -0700 (PDT)
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: catalin.marinas@arm.com, will@kernel.org, maz@kernel.org, corbet@lwn.net
Subject: [PATCH 0/4] arm64: ARMv8.4 Activity Monitors support
Date: Tue, 17 Sep 2019 14:42:24 +0100
Message-Id: <20190917134228.5369-1-ionela.voinescu@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_064311_843496_D84E4A02 
X-CRM114-Status: GOOD (  12.92  )
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
Cc: Ionela Voinescu <ionela.voinescu@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These patches introduce support for the Activity Monitors Unit (AMU)
CPU extension, an optional extension in ARMv8.4 CPUs. This provides
performance counters intended for system management use.

With the CONFIG_ARM64_AMU_EXTN enabled the kernel is able to safely
run a mix of CPUs with and without support for the AMU extension.
The AMU capability is unconditionally enabled in the kernel as to
allow any late CPU to use the feature: the cpu_enable function will
be called for all CPUs that match the criteria, including secondary
and hotplugged CPUs, marking this feature as present on that
respective CPU (through a per-cpu variable).

To be noted that firmware must implement AMU support when running on
CPUs that present the activity monitors extension: allow access to
the registers from lower exception levels, enable the counters,
implement save and restore functionality. More details can be found
in the documentation.

Given that the activity counters inform on activity on the CPUs, and 
that not all CPUs might implement the extension, for functional and 
security reasons, it's best to disable access to the AMU registers
from userspace (EL0) and KVM guests.

The current series is based on linux-next 20190916.

Testing:
 - Build tested for multiple architectures and defconfigs.
 - AMU feature detection, EL0 and KVM guest access to AMU registers,
   feature support in firmware (version 1.5 and later of the ARM 
   Trusted Firmware) was tested on an Armv8-A Base Platform FVP:
   Architecture Envelope Model [1] (supports version 8.0 to 8.5),
   with the following configurations:

   cluster0.has_arm_v8-4=1
   cluster1.has_arm_v8-4=1
   cluster0.has_amu=1
   cluster1.has_amu=1

[1] https://developer.arm.com/tools-and-software/simulation-models/fixed-virtual-platforms

Ionela Voinescu (4):
  arm64: add support for the AMU extension v1
  arm64: trap to EL1 accesses to AMU counters from EL0
  arm64/kvm: disable access to AMU registers from kvm guests
  Documentation: arm64: document support for the AMU extension

 Documentation/arm64/amu.rst                   | 107 ++++++++++++++++++
 Documentation/arm64/booting.rst               |  14 +++
 Documentation/arm64/cpu-feature-registers.rst |   2 +
 Documentation/arm64/index.rst                 |   1 +
 arch/arm64/Kconfig                            |  27 +++++
 arch/arm64/include/asm/assembler.h            |  10 ++
 arch/arm64/include/asm/cpucaps.h              |   3 +-
 arch/arm64/include/asm/kvm_arm.h              |   7 +-
 arch/arm64/include/asm/sysreg.h               |  44 +++++++
 arch/arm64/kernel/cpufeature.c                |  71 +++++++++++-
 arch/arm64/kvm/hyp/switch.c                   |  13 ++-
 arch/arm64/kvm/sys_regs.c                     |  95 +++++++++++++++-
 arch/arm64/mm/proc.S                          |   3 +
 13 files changed, 386 insertions(+), 11 deletions(-)
 create mode 100644 Documentation/arm64/amu.rst

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
