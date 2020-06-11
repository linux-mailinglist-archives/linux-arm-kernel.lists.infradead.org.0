Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFB11F6465
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 11:10:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ud27MKIOTxZQh2YF+Okg8Rh3J+UruPoBQXR38hQ0jpM=; b=l65jeqN57gdPve
	oL2ZCpD2wROjL9RBP8Dvho67+yXzST0E8BWhC06gWjj3OVCVmReF9VfvzteL5VEGWsVskQ5sD24RR
	FEfqqai2MiXIDakB+XfhcNHCpkrDL94FMuUZgL0Q1I/IYbpkZ5imsqvFdtVcTmW5YLRDm+7YBPfe2
	HphXHvCD6dbgR+aY1vHqEzbyg7qRby1b9ADzwkCXAOGjZJY17ZE7GKjv+GXGQplYCAHH/Q5qv+dy/
	rZmD1nhuY3rij15FCQI17xtPTVk7lwkcpQyKleLGrxOa49qn0L02zUblZnFTzJuMN5SJZwTQC/8HV
	vqn0r2gm+h+pmQcl+L2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjJE7-0005Zn-UF; Thu, 11 Jun 2020 09:10:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjJDt-00050C-Hm
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 09:10:11 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A390420760;
 Thu, 11 Jun 2020 09:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591866608;
 bh=LEb0TmHs9BwF0am32RadcRA4RU0L0oWhcV5wOopAYI8=;
 h=From:To:Cc:Subject:Date:From;
 b=q1kTyCd8T/68YBv3CRIYzkVpMPW1eVFfsQhmwQGWah+mz+QtZQFif1Ws68NKb1Ewv
 5h33hP+50DG851IfhM3j8LD838jhq44IXS+5sTXtxTnDJ4e+bh7XESwG8QuHZGDUJE
 zliMhna5ReRYb8SpviD876yx5zB7YHXzQKgvvrPE=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jjJDr-0022ZT-4w; Thu, 11 Jun 2020 10:10:07 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [GIT PULL] KVM/arm64 fixes for 5.8, take #1
Date: Thu, 11 Jun 2020 10:09:45 +0100
Message-Id: <20200611090956.1537104-1-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, alexandru.elisei@arm.com,
 ascull@google.com, james.morse@arm.com, mark.rutland@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_021009_645784_A632A18A 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Scull <ascull@google.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paolo,

Here's a bunch of fixes that cropped up during the merge window,
mostly falling into two categories: 32bit system register accesses,
and 64bit pointer authentication handling.

Please pull,

	M.

The following changes since commit 8f7f4fe756bd5cfef73cf8234445081385bdbf7d:

  KVM: arm64: Drop obsolete comment about sys_reg ordering (2020-05-28 13:16:57 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-fixes-5.8-1

for you to fetch changes up to 15c99816ed9396c548eed2e84f30c14caccad1f4:

  Merge branch 'kvm-arm64/ptrauth-fixes' into kvmarm-master/next (2020-06-10 19:10:40 +0100)

----------------------------------------------------------------
KVM/arm64 fixes for Linux 5.8, take #1

* 32bit VM fixes:
  - Fix embarassing mapping issue between AArch32 CSSELR and AArch64
    ACTLR
  - Add ACTLR2 support for AArch32
  - Get rid of the useless ACTLR_EL1 save/restore
  - Fix CP14/15 accesses for AArch32 guests on BE hosts
  - Ensure that we don't loose any state when injecting a 32bit
    exception when running on a VHE host

* 64bit VM fixes:
  - Fix PtrAuth host saving happening in preemptible contexts
  - Optimize PtrAuth lazy enable
  - Drop vcpu to cpu context pointer
  - Fix sparse warnings for HYP per-CPU accesses

----------------------------------------------------------------
James Morse (3):
      KVM: arm64: Stop writing aarch32's CSSELR into ACTLR
      KVM: arm64: Add emulation for 32bit guests accessing ACTLR2
      KVM: arm64: Stop save/restoring ACTLR_EL1

Marc Zyngier (9):
      KVM: arm64: Flush the instruction cache if not unmapping the VM on reboot
      KVM: arm64: Save the host's PtrAuth keys in non-preemptible context
      KVM: arm64: Handle PtrAuth traps early
      KVM: arm64: Stop sparse from moaning at __hyp_this_cpu_ptr
      KVM: arm64: Remove host_cpu_context member from vcpu structure
      KVM: arm64: Make vcpu_cp1x() work on Big Endian hosts
      KVM: arm64: Synchronize sysreg state on injecting an AArch32 exception
      KVM: arm64: Move hyp_symbol_addr() to kvm_asm.h
      Merge branch 'kvm-arm64/ptrauth-fixes' into kvmarm-master/next

 arch/arm64/include/asm/kvm_asm.h     | 33 ++++++++++++++++--
 arch/arm64/include/asm/kvm_emulate.h |  6 ----
 arch/arm64/include/asm/kvm_host.h    |  9 +++--
 arch/arm64/include/asm/kvm_mmu.h     | 20 -----------
 arch/arm64/kvm/aarch32.c             | 28 ++++++++++++++++
 arch/arm64/kvm/arm.c                 | 20 ++++++-----
 arch/arm64/kvm/handle_exit.c         | 32 ++----------------
 arch/arm64/kvm/hyp/debug-sr.c        |  4 +--
 arch/arm64/kvm/hyp/switch.c          | 65 ++++++++++++++++++++++++++++++++++--
 arch/arm64/kvm/hyp/sysreg-sr.c       |  8 ++---
 arch/arm64/kvm/pmu.c                 |  8 ++---
 arch/arm64/kvm/sys_regs.c            | 25 +++++++-------
 arch/arm64/kvm/sys_regs_generic_v8.c | 10 ++++++
 13 files changed, 171 insertions(+), 97 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
