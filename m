Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C777C752D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 17:36:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yQn42t/vjHO6+whiPX/uoPGI1839oQZU1/kn0cwIFAk=; b=c54ai9lktTlwZW
	VX5BVyRABpai6MMspg0Q+40JkFK9bTlPqU6+gOl0rFCzPuQ1yB8hQ6ZaRoOBxp3Fppk8Y8DyrO5+y
	Tk20nMK8ek8QHpLweYklBe2St3tp1lYQwQYGrNnKzMGzRGGFhs3uLx5oHa0Moj09lCjcIoQpAYgxw
	V/jFP1CI5aJpyvlE78h6IdC5Pj2KL89LS7ZDH2NKKnK+R+m1vW6A/rGaJeO3k57638Bwd4O4mwudK
	x9QyKRBzqhRowOAcaqPQGNQAIpgIf6H4bG0lKcUNs/F8W4VCG2qD+zKfyUUKm8uTdHsja4vXrE+Bi
	lvmQzwVcH5a4U1lcgeJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqfnP-0004kT-Gy; Thu, 25 Jul 2019 15:36:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfn9-0004iw-DC
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 15:36:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 94448344;
 Thu, 25 Jul 2019 08:36:25 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E2A1C3F71A;
 Thu, 25 Jul 2019 08:36:23 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v3 00/10] KVM: arm/arm64: vgic: ITS translation cache
Date: Thu, 25 Jul 2019 16:35:33 +0100
Message-Id: <20190725153543.24386-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_083627_536376_B6D302B7 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Andre Przywara <Andre.Przywara@arm.com>,
 "Raslan, KarimAllah" <karahmed@amazon.de>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>, "Saidi,
 Ali" <alisaidi@amazon.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

It recently became apparent[1] that our LPI injection path is not as
efficient as it could be when injecting interrupts coming from a VFIO
assigned device.

Although the proposed patch wasn't 100% correct, it outlined at least
two issues:

(1) Injecting an LPI from VFIO always results in a context switch to a
    worker thread: no good

(2) We have no way of amortising the cost of translating a DID+EID pair
    to an LPI number

The reason for (1) is that we may sleep when translating an LPI, so we
do need a context process. A way to fix that is to implement a small
LPI translation cache that could be looked up from an atomic
context. It would also solve (2).

This is what this small series proposes. It implements a very basic
LRU cache of pre-translated LPIs, which gets used to implement
kvm_arch_set_irq_inatomic. The size of the cache is currently
hard-coded at 16 times the number of vcpus, a number I have picked
under the influence of Ali Saidi. If that's not enough for you, blame
me, though.

Does it work? well, it doesn't crash, and is thus perfect. More
seriously, I don't really have a way to benchmark it directly, so my
observations are only indirect:

On a TX2 system, I run a 4 vcpu VM with an Ethernet interface passed
to it directly. From the host, I inject interrupts using debugfs. In
parallel, I look at the number of context switch, and the number of
interrupts on the host. Without this series, I get the same number for
both IRQ and CS (about half a million of each per second is pretty
easy to reach). With this series, the number of context switches drops
to something pretty small (in the low 2k), while the number of
interrupts stays the same.

Yes, this is a pretty rubbish benchmark, what did you expect? ;-)

Andre did run some benchmarks of his own, with some rather positive
results[2]. So I'm putting this out for people with real workloads to
try out and report what they see.

[1] https://lore.kernel.org/lkml/1552833373-19828-1-git-send-email-yuzenghui@huawei.com/
[2] https://www.spinics.net/lists/arm-kernel/msg742655.html

* From v2:

  - Added invalidation on turning the ITS off
  - Added invalidation on MAPC with V=0
  - Added Rb's from Eric

* From v1:

  - Fixed race on allocation, where the same LPI could be cached multiple times
  - Now invalidate the cache on vgic teardown, avoiding memory leaks
  - Change patch split slightly, general reshuffling
  - Small cleanups here and there
  - Rebased on 5.2-rc4

Marc Zyngier (10):
  KVM: arm/arm64: vgic: Add LPI translation cache definition
  KVM: arm/arm64: vgic: Add __vgic_put_lpi_locked primitive
  KVM: arm/arm64: vgic-its: Add MSI-LPI translation cache invalidation
  KVM: arm/arm64: vgic-its: Invalidate MSI-LPI translation cache on
    specific commands
  KVM: arm/arm64: vgic-its: Invalidate MSI-LPI translation cache on
    disabling LPIs
  KVM: arm/arm64: vgic-its: Invalidate MSI-LPI translation cache on ITS
    disable
  KVM: arm/arm64: vgic-its: Invalidate MSI-LPI translation cache on vgic
    teardown
  KVM: arm/arm64: vgic-its: Cache successful MSI->LPI translation
  KVM: arm/arm64: vgic-its: Check the LPI translation cache on MSI
    injection
  KVM: arm/arm64: vgic-irqfd: Implement kvm_arch_set_irq_inatomic

 include/kvm/arm_vgic.h           |   3 +
 virt/kvm/arm/vgic/vgic-init.c    |   5 +
 virt/kvm/arm/vgic/vgic-irqfd.c   |  36 +++++-
 virt/kvm/arm/vgic/vgic-its.c     | 207 +++++++++++++++++++++++++++++++
 virt/kvm/arm/vgic/vgic-mmio-v3.c |   4 +-
 virt/kvm/arm/vgic/vgic.c         |  26 ++--
 virt/kvm/arm/vgic/vgic.h         |   5 +
 7 files changed, 270 insertions(+), 16 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
