Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B10A911D3E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 18:29:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6QD/EC7cnY69wvOWUEtJOZo8vI/MYTZwfujfZDUs4F8=; b=kghbLRmeVacxoA
	LePvlRHmIQhyLtCZhK0T67SXwl9AAzsbixBRzEn9QV9SpyIo4RuhQFRlXsVHYZWyp1+zeiPagyWoc
	a0Nea6rVoaLDUr9dI7bNuzd7gsNLaBcH4+mM3ZCE6OAKsljwVolF7DvPeOL2EdLGfQSKCYVzJHgzd
	ucbkpX/uzWiutuWn0TvoHS1EVuUHjAfgRV7k0IFISg04fXX1cmr06EEDKxjGCiniD1lY70MMgx7Pl
	G81Yhf/swh75T5r4CGsFkOEFJ30TwgJljtSP0Z7o6G9KGpk/HFBPhMMqdfV9zrZPLwllq4/uLR5Lh
	Fusf67Q6NJ5P0OR4cYaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifSGp-0005DB-SL; Thu, 12 Dec 2019 17:28:59 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifSGe-00059t-KI
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 17:28:50 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ifSGU-00069s-N1; Thu, 12 Dec 2019 18:28:38 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [GIT PULL] KVM/arm updates for 5.5-rc2
Date: Thu, 12 Dec 2019 17:28:16 +0000
Message-Id: <20191212172824.11523-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, rkrcmar@redhat.com,
 alexandru.elisei@arm.com, ard.biesheuvel@linaro.org, christoffer.dall@arm.com,
 eric.auger@redhat.com, james.morse@arm.com, justin.he@arm.com,
 mark.rutland@arm.com, linmiaohe@huawei.com, steven.price@arm.com,
 will@kernel.org, kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_092848_811027_DA107787 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, Miaohe Lin <linmiaohe@huawei.com>,
 Jia He <justin.he@arm.com>, kvm@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Steven Price <steven.price@arm.com>, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Paolo, Radim,

This is the first set of fixes for 5.5-rc2. This time around,
a couple of MM fixes, a ONE_REG fix for an issue detected by
GCC-10, and a handful of cleanups.

Please pull,

	M.

The following changes since commit cd7056ae34af0e9424da97bbc7d2b38246ba8a2c:

  Merge remote-tracking branch 'kvmarm/misc-5.5' into kvmarm/next (2019-11-08 11:27:29 +0000)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-fixes-5.5-1

for you to fetch changes up to 6d674e28f642e3ff676fbae2d8d1b872814d32b6:

  KVM: arm/arm64: Properly handle faulting of device mappings (2019-12-12 16:22:40 +0000)

----------------------------------------------------------------
KVM/arm fixes for .5.5, take #1

- Fix uninitialised sysreg accessor
- Fix handling of demand-paged device mappings
- Stop spamming the console on IMPDEF sysregs
- Relax mappings of writable memslots
- Assorted cleanups

----------------------------------------------------------------
Jia He (1):
      KVM: arm/arm64: Remove excessive permission check in kvm_arch_prepare_memory_region

Marc Zyngier (1):
      KVM: arm/arm64: Properly handle faulting of device mappings

Mark Rutland (2):
      KVM: arm64: Sanely ratelimit sysreg messages
      KVM: arm64: Don't log IMP DEF sysreg traps

Miaohe Lin (3):
      KVM: arm/arm64: Get rid of unused arg in cpu_init_hyp_mode()
      KVM: arm/arm64: vgic: Fix potential double free dist->spis in __kvm_vgic_destroy()
      KVM: arm/arm64: vgic: Use wrapper function to lock/unlock all vcpus in kvm_vgic_create()

Will Deacon (1):
      KVM: arm64: Ensure 'params' is initialised when looking up sys register

 arch/arm64/kvm/sys_regs.c     | 25 ++++++++++++++++++-------
 arch/arm64/kvm/sys_regs.h     | 17 +++++++++++++++--
 virt/kvm/arm/arm.c            |  4 ++--
 virt/kvm/arm/mmu.c            | 30 +++++++++++++++++-------------
 virt/kvm/arm/vgic/vgic-init.c | 20 +++++---------------
 5 files changed, 57 insertions(+), 39 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
