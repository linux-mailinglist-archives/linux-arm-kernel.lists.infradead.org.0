Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A0F7CA9A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 19:37:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MnACvxj5VOE+N/I1qWIPuU5IFXmWj3n32wl85CPDQKk=; b=I+84z7t4ZdqVu2
	w9E5+9wVuekoCgUL4VQ8Ngp895m5OnDTZLYU8lINvgltXyc7BgZ9pHuybmDe9eGk2+q3DyeZ4Q/OZ
	RQxgZuOUMcBbaoH83ZNbDVjBXI9DAtcJ2eIaD35T3Rs7eZOU7cYxQ/GdjtcTD4nn7ZXThcBg2GG69
	0FSm/wv4CU7dhyeUsTh0smRmm/Z4LJ3F8PqQQNlC5PDeRnkoqrvMJq2JeIRJ6rb7P0HImWHtOYQtR
	F/YvU7HRB07P64o4NXFa8+5Qvus/0X35fpWQxRCTalolqQaL7jYX9LH+G/OFYl3/mo3biZibQM3wV
	98Dp0nbB0ABlqbPYHn0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hssXD-0004bh-RR; Wed, 31 Jul 2019 17:37:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hssX6-0004bM-C7
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 17:37:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 70839337;
 Wed, 31 Jul 2019 10:36:59 -0700 (PDT)
Received: from big-swifty.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BD8053F71F;
 Wed, 31 Jul 2019 10:36:56 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [GIT PULL] KVM/arm updates for 5.3-rc3
Date: Wed, 31 Jul 2019 18:36:45 +0100
Message-Id: <20190731173650.12627-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_103700_459608_B48FF20F 
X-CRM114-Status: GOOD (  10.87  )
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
Cc: Anders Roxell <anders.roxell@linaro.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Andrew Murray <andrew.murray@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Paolo, Radim,

Here's a handful of patches for 5.3-rc3: Two actual fixes (missing
break; in the 32bit register mapping, PMU reset being broken after the
chained counter update). The rest is either cosmetic (exception
classes in debug/tracing) or silence warnings (the fall-through
explosion).

Please pull.

	M.

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-fixes-for-5.3

for you to fetch changes up to cdb2d3ee0436d74fa9092f2df46aaa6f9e03c969:

  arm64: KVM: hyp: debug-sr: Mark expected switch fall-through (2019-07-29 11:01:37 +0100)

----------------------------------------------------------------
KVM/arm fixes for 5.3

- A bunch of switch/case fall-through annotation, fixing one actual bug
- Fix PMU reset bug
- Add missing exception class debug strings

----------------------------------------------------------------
Anders Roxell (3):
      arm64: KVM: regmap: Fix unexpected switch fall-through
      KVM: arm: vgic-v3: Mark expected switch fall-through
      arm64: KVM: hyp: debug-sr: Mark expected switch fall-through

Zenghui Yu (2):
      KVM: arm/arm64: Introduce kvm_pmu_vcpu_init() to setup PMU counter index
      KVM: arm64: Update kvm_arm_exception_class and esr_class_str for new EC

 arch/arm64/include/asm/kvm_arm.h |  7 ++++---
 arch/arm64/kernel/traps.c        |  1 +
 arch/arm64/kvm/hyp/debug-sr.c    | 30 ++++++++++++++++++++++++++++++
 arch/arm64/kvm/regmap.c          |  5 +++++
 include/kvm/arm_pmu.h            |  2 ++
 virt/kvm/arm/arm.c               |  2 ++
 virt/kvm/arm/hyp/vgic-v3-sr.c    |  8 ++++++++
 virt/kvm/arm/pmu.c               | 18 +++++++++++++++---
 8 files changed, 67 insertions(+), 6 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
