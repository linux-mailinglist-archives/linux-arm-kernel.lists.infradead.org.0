Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F2F87373
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 09:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mLkU25UzQO4ULx4krJ7BH+EYjSkpEp5qIiXMACcYyfw=; b=RydBGgwfoGk3WM
	+LFHkffE2JCkmeM3HPlTKsyBc7gXdGfJnDsW74Ia5TeVpDDYq9WDIxL51of8McyV7oYSoczvmUMJW
	s5qhAMvcJQSkFv/jC8xa/XWP3Aw6Iw8DvcYZ7PzznpH8EEIBSDZI80ybaTdJ4GyKm7W3l8xV0k/MZ
	ACzpTMcyrGYxgdV+B3YGiO9yieL2LCrKs5QuGkC5RvzY4Z35D0qpudlgLbJ8mfTVH1kDp6EajoaLS
	oHEK+jl1MoE0CFQ8yXD/BSiI9VjUdnMNdAnI4ZRmoDF4uyVF8jcc40MJV/cVpSxNb7TA5DtCC80U8
	I7irvypX2/fgplDwxNqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvzeE-0004HD-JX; Fri, 09 Aug 2019 07:49:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvze0-0004GO-8x
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 07:49:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C7897344;
 Fri,  9 Aug 2019 00:48:58 -0700 (PDT)
Received: from why.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 290EE3F706;
 Fri,  9 Aug 2019 00:48:57 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [GIT PULL] KVM/arm updates for 5.3-rc4
Date: Fri,  9 Aug 2019 08:48:28 +0100
Message-Id: <20190809074832.13283-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_004900_365884_010D2D27 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Paolo, Radim,

Here's a set of update for -rc4. Yet another reset fix, and two subtle
VGIC fixes for issues that can be observed in interesting corner cases.

Note that this is on top of kvmarm-fixes-for-5.3[1], which hasn't been
pulled yet. Hopefully you can pull both at the same time!

Thanks,

	M.

[1] https://lore.kernel.org/kvmarm/20190731173650.12627-1-maz@kernel.org

The following changes since commit cdb2d3ee0436d74fa9092f2df46aaa6f9e03c969:

  arm64: KVM: hyp: debug-sr: Mark expected switch fall-through (2019-07-29 11:01:37 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-fixes-for-5.3-2

for you to fetch changes up to 16e604a437c89751dc626c9e90cf88ba93c5be64:

  KVM: arm/arm64: vgic: Reevaluate level sensitive interrupts on enable (2019-08-09 08:07:26 +0100)

----------------------------------------------------------------
KVM/arm fixes for 5.3, take #2

- Fix our system register reset so that we stop writing
  non-sensical values to them, and track which registers
  get reset instead.
- Sync VMCR back from the GIC on WFI so that KVM has an
  exact vue of PMR.
- Reevaluate state of HW-mapped, level triggered interrupts
  on enable.

----------------------------------------------------------------
Alexandru Elisei (1):
      KVM: arm/arm64: vgic: Reevaluate level sensitive interrupts on enable

Marc Zyngier (3):
      KVM: arm/arm64: Sync ICH_VMCR_EL2 back when about to block
      KVM: arm64: Don't write junk to sysregs on reset
      KVM: arm: Don't write junk to CP15 registers on reset

 arch/arm/kvm/coproc.c         | 23 +++++++++++++++--------
 arch/arm64/kvm/sys_regs.c     | 32 ++++++++++++++++++--------------
 include/kvm/arm_vgic.h        |  1 +
 virt/kvm/arm/arm.c            | 11 +++++++++++
 virt/kvm/arm/vgic/vgic-mmio.c | 16 ++++++++++++++++
 virt/kvm/arm/vgic/vgic-v2.c   |  9 ++++++++-
 virt/kvm/arm/vgic/vgic-v3.c   |  7 ++++++-
 virt/kvm/arm/vgic/vgic.c      | 11 +++++++++++
 virt/kvm/arm/vgic/vgic.h      |  2 ++
 9 files changed, 88 insertions(+), 24 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
