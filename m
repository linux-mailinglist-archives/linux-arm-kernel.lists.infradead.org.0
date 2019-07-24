Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CE9733CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 18:26:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6Ts77dRSW/hawHZS2/7Gw5aDPzA8TUDNeBu5GjdEKbM=; b=OI3
	8awrgfOwM9+DXRXoN89M2UxrSjatNWRiGux75mr2Qvp3QNmDKiUGgdNB4ULUvtSA34zzLTWpp5Rrt
	7CuFXLfURYYd/tjgLOKB9rXwbAIL+lbqTznJkhjmlPFuCiUyoALo35B/vPZo0zyE3orAdaWnNfu4l
	xcsuOkCUjzfmJSQEnB+raN+VVXnvGJ5YHhIRLwhf0+g2lByoeToEc/Tc3KLR6jVLVbBCpy5gn/j5l
	kj0MeOLSXnxezvO+YJ4WkuTrsTOx1AMr4OmbI03F0py5rCi1X0QheZ0JMdm6VdQ7aYrHPQwyEicjI
	kwMRUzNiBwtjc4FuGF5rHqLRgx8RT+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqK5v-0000IU-Vm; Wed, 24 Jul 2019 16:26:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqK5N-0008VL-JL
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 16:25:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3172428;
 Wed, 24 Jul 2019 09:25:47 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B58EA3F71F;
 Wed, 24 Jul 2019 09:25:45 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: [PATCH v3 00/15] kvm/arm: Align the VMID allocation with the arm64
 ASID one
Date: Wed, 24 Jul 2019 17:25:19 +0100
Message-Id: <20190724162534.7390-1-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_092549_990192_59811936 
X-CRM114-Status: GOOD (  14.86  )
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
Cc: suzuki.poulose@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 julien.thierry@arm.com, will.deacon@arm.com,
 Russell King <linux@armlinux.org.uk>, Julien Grall <julien.grall@arm.com>,
 james.morse@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

This patch series is moving out the ASID allocator in a separate file in order
to re-use it for the VMID. The benefits are:
    - CPUs are not forced to exit on a roll-over.
    - Context invalidation is now per-CPU rather than
      broadcasted.

There are no performance regression on the fastpath for ASID allocation.
Actually on the hackbench measurement (300 hackbench) it was .7% faster.

The measurement was made on a Seattle based SoC (8 CPUs), with the
number of VMID limited to 4-bit. The test involves running concurrently 40
guests with 2 vCPUs. Each guest will then execute hackbench 5 times
before exiting.

The performance difference (on 5.1-rc1) between the current algo and the
new one are:
    - 2.5% less exit from the guest
    - 22.4% more flush, although they are now local rather than broadcasted
    - 0.11% faster (just for the record)

The ASID allocator rework to make it generic has been divided in multiple
patches to make the review easier.

A branch with the patch based on 5.3-rc1 can be found:

http://xenbits.xen.org/gitweb/?p=people/julieng/linux-arm.git;a=shortlog;h=refs/heads/vmid-rework/v3

For all the changes see in each patch.

Best regards,

Cc: Russell King <linux@armlinux.org.uk>

Julien Grall (15):
  arm64/mm: Introduce asid_info structure and move
    asid_generation/asid_map to it
  arm64/mm: Move active_asids and reserved_asids to asid_info
  arm64/mm: Move bits to asid_info
  arm64/mm: Move the variable lock and tlb_flush_pending to asid_info
  arm64/mm: Remove dependency on MM in new_context
  arm64/mm: Store the number of asid allocated per context
  arm64/mm: Introduce NUM_ASIDS
  arm64/mm: Split asid_inits in 2 parts
  arm64/mm: Split the function check_and_switch_context in 3 parts
  arm64/mm: Introduce a callback to flush the local context
  arm64: Move the ASID allocator code in a separate file
  arm64/lib: Add an helper to free memory allocated by the ASID
    allocator
  arm/kvm: Introduce a new VMID allocator
  arch/arm64: Introduce a capability to tell whether 16-bit VMID is
    available
  kvm/arm: Align the VMID allocation with the arm64 ASID one

 arch/arm/include/asm/kvm_asm.h    |   2 +-
 arch/arm/include/asm/kvm_host.h   |   5 +-
 arch/arm/include/asm/kvm_hyp.h    |   1 +
 arch/arm/include/asm/kvm_mmu.h    |   3 +-
 arch/arm/include/asm/lib_asid.h   |  79 +++++++++++++++
 arch/arm/kvm/Makefile             |   1 +
 arch/arm/kvm/hyp/tlb.c            |   8 +-
 arch/arm64/include/asm/cpucaps.h  |   3 +-
 arch/arm64/include/asm/kvm_asid.h |   8 ++
 arch/arm64/include/asm/kvm_asm.h  |   2 +-
 arch/arm64/include/asm/kvm_host.h |   5 +-
 arch/arm64/include/asm/kvm_mmu.h  |   7 +-
 arch/arm64/include/asm/lib_asid.h |  79 +++++++++++++++
 arch/arm64/kernel/cpufeature.c    |   9 ++
 arch/arm64/kvm/hyp/tlb.c          |  10 +-
 arch/arm64/lib/Makefile           |   2 +
 arch/arm64/lib/asid.c             | 190 ++++++++++++++++++++++++++++++++++++
 arch/arm64/mm/context.c           | 200 +++++---------------------------------
 virt/kvm/arm/arm.c                | 125 +++++++++---------------
 19 files changed, 458 insertions(+), 281 deletions(-)
 create mode 100644 arch/arm/include/asm/lib_asid.h
 create mode 100644 arch/arm64/include/asm/kvm_asid.h
 create mode 100644 arch/arm64/include/asm/lib_asid.h
 create mode 100644 arch/arm64/lib/asid.c

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
