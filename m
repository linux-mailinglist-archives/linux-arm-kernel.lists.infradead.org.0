Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7464D4CE3F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 15:06:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dzfL3Z/whUPshd+zcFuYMjsPlzqJJ1JIvgamHSV0DRk=; b=QBY
	dM3pmBTumCS//tp3ECvUFvy00ZkdnLrR8wyyRzg2hPDptWL0fzat6+zc3rPyasYtw8DmOR2Ey2R2l
	zEugL6Xhs+fmwkyK6kOaKQfu8bc3ngES7Wd0TGk/IBG8OgVTJ2PHrPAKiQuC5xKGWOe82fXeTRMvf
	MjFxRHDOMmEful+2ttiDHMSa/koR13TZBAceO9/05bjc0QsQuQaMlFzu2NkOeeSa407MS7OpEQUon
	8x4/D0QlNp8rFrjEZU5rE0DMzZYia9d1FaQqWxrpDCSWPpHbspZD5Z6K1u4G7FQ6lH4+GxkBjd2q7
	OKDgd0qrJ33MfeHODVT3qg8zfR/TxfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdwm0-0005GH-VA; Thu, 20 Jun 2019 13:06:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdwll-0005EZ-N9
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 13:06:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC969360;
 Thu, 20 Jun 2019 06:06:22 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7BB733F718;
 Thu, 20 Jun 2019 06:06:21 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: [RFC v2 00/14] kvm/arm: Align the VMID allocation with the arm64 ASID
 one
Date: Thu, 20 Jun 2019 14:05:54 +0100
Message-Id: <20190620130608.17230-1-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_060625_848023_8ED407A9 
X-CRM114-Status: GOOD (  15.23  )
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

Compare to the first RFC, Arm is not duplicated most of the code anymore.
Instead, Arm will build the version from Arm64.

A branch with the patch based on 5.2-rc5 can be found:

http://xenbits.xen.org/gitweb/?p=people/julieng/linux-arm.git;a=shortlog;h=refs/heads/vmid-rework/rfc-v2

Best regards,

Cc: Russell King <linux@armlinux.org.uk>

Julien Grall (14):
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
  arm64/lib: asid: Allow user to update the context under the lock
  arm/kvm: Introduce a new VMID allocator
  kvm/arm: Align the VMID allocation with the arm64 ASID one

 arch/arm/include/asm/kvm_asm.h    |   2 +-
 arch/arm/include/asm/kvm_host.h   |   5 +-
 arch/arm/include/asm/kvm_hyp.h    |   1 +
 arch/arm/include/asm/lib_asid.h   |  81 +++++++++++++++
 arch/arm/kvm/Makefile             |   1 +
 arch/arm/kvm/hyp/tlb.c            |   8 +-
 arch/arm64/include/asm/kvm_asid.h |   8 ++
 arch/arm64/include/asm/kvm_asm.h  |   2 +-
 arch/arm64/include/asm/kvm_host.h |   5 +-
 arch/arm64/include/asm/lib_asid.h |  81 +++++++++++++++
 arch/arm64/kvm/hyp/tlb.c          |  10 +-
 arch/arm64/lib/Makefile           |   2 +
 arch/arm64/lib/asid.c             | 191 +++++++++++++++++++++++++++++++++++
 arch/arm64/mm/context.c           | 205 ++++++--------------------------------
 virt/kvm/arm/arm.c                | 112 +++++++--------------
 15 files changed, 447 insertions(+), 267 deletions(-)
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
