Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0649CADA54
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 15:49:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eWAbV2oRNdUXuc7cxDnQumwa4wqxIWPsKRc4ZL+xA3w=; b=YROVlNED6XQyAA
	amw+T+QaJJ98p8VrfY++R31oPHMDyH8i/UHJYqqBfYfSdo0FSrHCUbjQtfqXhvQq1ckVTt52P9VkR
	tS9aLtbcmf8e9v8tw/UbHIj6RfvnuDFMdD0zGVF/gq/G4RipKq48swtuqGnKu/XG5hvRPAN4iDJTy
	69p1b6SFaARBxDqWTggXopVzjXbqojWtSXD3qWmOXtQwLUxfzf5ozDLbdE8f9rE6yyxY+I4jm8K43
	Ao/BOqkC3T6HF01fygOITDTBiglIGGz8UDctBYLPxXpA10axVIH/NuxvVMhxXblbmNA/Ep1LkkJbW
	EW40o9tM+bokO7TLSROg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7K2S-0002DP-SO; Mon, 09 Sep 2019 13:49:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7K2F-0002Cv-F8
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 13:48:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 62C0228;
 Mon,  9 Sep 2019 06:48:50 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 257243F59C;
 Mon,  9 Sep 2019 06:48:47 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 00/17] KVM/arm updates for 5.4
Date: Mon,  9 Sep 2019 14:47:50 +0100
Message-Id: <20190909134807.27978-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_064851_605037_51BDA40D 
X-CRM114-Status: GOOD (  12.79  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Andre Przywara <andre.przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Paolo, Radim,

Here is the KVM/arm updates for 5.4: a new ITS translation cache
improving performance for interrupt injection of of assigned devices,
a couple of fixes to allow up to 512 vcpus, and a number of fixes and
other cleanups.

Please pull,

	M.

The following changes since commit d45331b00ddb179e291766617259261c112db872:

  Linux 5.3-rc4 (2019-08-11 13:26:41 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-5.4

for you to fetch changes up to 92f35b751c71d14250a401246f2c792e3aa5b386:

  KVM: arm/arm64: vgic: Allow more than 256 vcpus for KVM_IRQ_LINE (2019-09-09 12:29:09 +0100)

----------------------------------------------------------------
KVM/arm updates for 5.4

- New ITS translation cache
- Allow up to 512 CPUs to be supported with GICv3 (for real this time)
- Now call kvm_arch_vcpu_blocking early in the blocking sequence
- Tidy-up device mappings in S2 when DIC is available
- Clean icache invalidation on VMID rollover
- General cleanup

----------------------------------------------------------------
Alexandru Elisei (1):
      KVM: arm/arm64: vgic: Make function comments match function declarations

Eric Auger (1):
      KVM: arm/arm64: vgic: Use a single IO device per redistributor

James Morse (1):
      arm64: KVM: Device mappings should be execute-never

Marc Zyngier (13):
      KVM: arm/arm64: vgic: Add LPI translation cache definition
      KVM: arm/arm64: vgic: Add __vgic_put_lpi_locked primitive
      KVM: arm/arm64: vgic-its: Add MSI-LPI translation cache invalidation
      KVM: arm/arm64: vgic-its: Invalidate MSI-LPI translation cache on specific commands
      KVM: arm/arm64: vgic-its: Invalidate MSI-LPI translation cache on disabling LPIs
      KVM: arm/arm64: vgic-its: Invalidate MSI-LPI translation cache on ITS disable
      KVM: arm/arm64: vgic-its: Invalidate MSI-LPI translation cache on vgic teardown
      KVM: arm/arm64: vgic-its: Cache successful MSI->LPI translation
      KVM: arm/arm64: vgic-its: Check the LPI translation cache on MSI injection
      KVM: arm/arm64: vgic-irqfd: Implement kvm_arch_set_irq_inatomic
      KVM: Call kvm_arch_vcpu_blocking early into the blocking sequence
      KVM: arm/arm64: vgic: Remove spurious semicolons
      KVM: arm/arm64: vgic: Allow more than 256 vcpus for KVM_IRQ_LINE

Mark Rutland (1):
      arm64/kvm: Remove VMID rollover I-cache maintenance

 Documentation/virt/kvm/api.txt        |  12 +-
 arch/arm/include/uapi/asm/kvm.h       |   4 +-
 arch/arm64/include/asm/pgtable-prot.h |   2 +-
 arch/arm64/include/uapi/asm/kvm.h     |   4 +-
 arch/arm64/kvm/hyp/tlb.c              |  14 ++-
 include/kvm/arm_vgic.h                |   4 +-
 include/uapi/linux/kvm.h              |   1 +
 virt/kvm/arm/arm.c                    |   2 +
 virt/kvm/arm/vgic/vgic-init.c         |   8 +-
 virt/kvm/arm/vgic/vgic-irqfd.c        |  36 +++++-
 virt/kvm/arm/vgic/vgic-its.c          | 207 ++++++++++++++++++++++++++++++++++
 virt/kvm/arm/vgic/vgic-mmio-v3.c      |  85 +++++---------
 virt/kvm/arm/vgic/vgic-v2.c           |   7 +-
 virt/kvm/arm/vgic/vgic-v3.c           |   7 +-
 virt/kvm/arm/vgic/vgic.c              |  26 +++--
 virt/kvm/arm/vgic/vgic.h              |   5 +
 virt/kvm/kvm_main.c                   |   7 +-
 17 files changed, 339 insertions(+), 92 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
