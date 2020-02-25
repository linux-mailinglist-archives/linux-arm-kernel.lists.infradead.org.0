Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CEA16F3EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 00:53:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4+BukzoxpCF7wpZDHs2nFzDXLz2P3gdmvpUl4ALIIo4=; b=ApcvGkOu1JiFya
	32v2hLy6P5l5lU+mfD4Ru+SE2aOml7Xwrrh5wHdWjYoTdlYtPVGCg/wltDY73r6mR4s7qikKmpQZL
	cseHuTTx9vW5SQbB1eloK2tGupLKXUG3X1Qs4WUq5yyLK0dJDUkK6k+fg2g9v/dn0oZ0V/K9R5Ph4
	SFN7JgeOWCjePHbhNKfSKfQNjEsiCF+r8oYeRpys88uuUxz4NVVVXV/DbwkYbIRBvRbLQq3b8dJds
	2vj5FEyYQ7q6PyOqewtxXJuX1DsMWe78eaY5ke+8jmihhYQm1HHP1MyNSygFssP5MFfh9Czzhb6wG
	VNnvp7LPVdKmNIE06aFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6k1B-0004sJ-PD; Tue, 25 Feb 2020 23:53:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6k0K-0004Lp-Pn
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 23:52:46 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C2A972176D;
 Tue, 25 Feb 2020 23:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582674762;
 bh=JAt+10w4pTyb4WokWSXrkj9e3fSa/lhHsi0hfJmHzm4=;
 h=From:To:Cc:Subject:Date:From;
 b=NjnL35vslyxSCJUxthm5XL7N4rxz1Bcbz4GG7ueerJlpLMMVellcTFHHVM9CYy4UF
 FezQFKCvMqN6Gko5oGLbxDnPFk4AVuLnRq85o05SS1Kwb+fhs1poi8wIVFf5ORUAPg
 FR36RKugApWByKPyix1o4ozVHaRYxW7iVpTBWm8I=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j6k0G-007xuY-S4; Tue, 25 Feb 2020 23:52:41 +0000
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [GIT PULL] KVM/arm fixes for 5.6
Date: Tue, 25 Feb 2020 23:52:18 +0000
Message-Id: <20200225235223.12839-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, james.morse@arm.com, jcline@redhat.com,
 mark.rutland@arm.com, will@kernel.org, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_155244_879834_1B3CC419 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Suzuki K Poulose <suzuki.poulose@arm.com>, Jeremy Cline <jcline@redhat.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Paolo,

This is a small update containing a number of fixes, the most important ones
making sure we force the inlining of any helper that gets used by the EL2 code
(James identified that some bad things happen with CLang and the Shadow Call
Stack extention).

Please pull,

	M.

The following changes since commit 4a267aa707953a9a73d1f5dc7f894dd9024a92be:

  KVM: arm64: Treat emulated TVAL TimerValue as a signed 32-bit integer (2020-01-28 13:09:31 +0000)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-fixes-5.6-1

for you to fetch changes up to e43f1331e2ef913b8c566920c9af75e0ccdd1d3f:

  arm64: Ask the compiler to __always_inline functions used by KVM at HYP (2020-02-22 11:01:47 +0000)

----------------------------------------------------------------
KVM/arm fixes for 5.6, take #1

- Fix compilation on 32bit
- Move  VHE guest entry/exit into the VHE-specific entry code
- Make sure all functions called by the non-VHE HYP code is tagged as __always_inline

----------------------------------------------------------------
James Morse (3):
      KVM: arm64: Ask the compiler to __always_inline functions used at HYP
      KVM: arm64: Define our own swab32() to avoid a uapi static inline
      arm64: Ask the compiler to __always_inline functions used by KVM at HYP

Jeremy Cline (1):
      KVM: arm/arm64: Fix up includes for trace.h

Mark Rutland (1):
      kvm: arm/arm64: Fold VHE entry/exit work into kvm_vcpu_run_vhe()

 arch/arm/include/asm/kvm_host.h          |  3 --
 arch/arm64/include/asm/arch_gicv3.h      |  2 +-
 arch/arm64/include/asm/cache.h           |  2 +-
 arch/arm64/include/asm/cacheflush.h      |  2 +-
 arch/arm64/include/asm/cpufeature.h      | 10 +++----
 arch/arm64/include/asm/io.h              |  4 +--
 arch/arm64/include/asm/kvm_emulate.h     | 48 ++++++++++++++++----------------
 arch/arm64/include/asm/kvm_host.h        | 32 ---------------------
 arch/arm64/include/asm/kvm_hyp.h         |  7 +++++
 arch/arm64/include/asm/kvm_mmu.h         |  3 +-
 arch/arm64/include/asm/virt.h            |  2 +-
 arch/arm64/kvm/hyp/switch.c              | 39 ++++++++++++++++++++++++--
 arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c |  4 +--
 virt/kvm/arm/arm.c                       |  2 --
 virt/kvm/arm/trace.h                     |  1 +
 15 files changed, 84 insertions(+), 77 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
