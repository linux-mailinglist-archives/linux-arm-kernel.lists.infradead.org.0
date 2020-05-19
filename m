Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B795F1D93A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 11:42:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=btvXIW9VZiopKyhkNnuIM675QaPJXnm6m5SJNehtpNs=; b=eTm
	4VLcZ7ZNZgqNB7xyZ5m5kR+uc33hlAicd2u0CBPvcQAb28bZ23J97dxCsCIu2mUJr2l25fZkwvTuq
	YUkqZl4Zn0zNmtCGyahSo4zNeZnyejFU7u/ytzsXjiEqqCcHxtAwXBU1stWy3zgOb4DzwaxRyd1rm
	AQHuWjmQ+a2Z18JfSvVyTyP2S7h2zmyBS7R4S6o+1CBrnq0rHBIZ9KfL1U1x0GJNE21E/ohmD7ASX
	G7sa9agBT2d5FXZ7eMAYFCU8GxuatYBXi5fewgsIrTumaz1Z/X2jtbRzBc0Ah2GoSgHpZMoJbZsYW
	QVCIlVwvMvRUP9QTirj2t4NJp7ObgJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaylq-0005NA-Go; Tue, 19 May 2020 09:42:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaykm-0004fM-Fw
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:41:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AFE9B101E;
 Tue, 19 May 2020 02:41:37 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.75.102])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B439D3F305;
 Tue, 19 May 2020 02:41:34 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V4 00/17] arm64/cpufeature: Introduce ID_PFR2, ID_DFR1,
 ID_MMFR5 and other changes
Date: Tue, 19 May 2020 15:10:37 +0530
Message-Id: <1589881254-10082-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_024140_624942_B4190F09 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, maz@kernel.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series is primarily motivated from an adhoc list from Mark Rutland
during our previous ID_ISAR6 discussion [1]. The current proposal also
accommodates some more suggestions from Will and Suzuki.

This series adds missing 32 bit system registers (ID_PFR2, ID_DFR1 and
ID_MMFR5), adds missing features bits on all existing system registers
(32 and 64 bit) and some other miscellaneous changes. While here it also
includes a patch which does macro replacement for various open bits shift
encodings for various CPU ID registers. There is a slight re-order of the
patches here as compared to the previous version (V1).

This series is based on arm64 tree (for-next/cpufeature). All feature bits
enabled here can be referred in ARM DDI 0487F.a specification. Though I
have tried to select appropriate values for each new feature being added
here, there might be some inconsistencies (or mistakes). In which case,
please do let me know if anything needs to change. Thank you.

[1] https://patchwork.kernel.org/patch/11287805/

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com> 
Cc: Marc Zyngier <maz@kernel.org>
Cc: James Morse <james.morse@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: kvmarm@lists.cs.columbia.edu
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

Changes in V4:

- Updated ftr_id_dfr0[] with a documentation for now missing [31:28] Tracfilt per Will
- Fixed erroneous bit width value from 28 to 4 for double lock feature per Will
- Replaced ID_SANITIZED() with ID_HIDDEN() for SYS_ID_DFR1_EL1 per Suzuki
- Fixed positions for register definitions as per new name based grouping per Will
- Replaced FTR_VISIBLE with FTR_HIDDEN for TLB feature in ID_AA64ISAR0 per Suzuki
- Replaced FTR_VISIBLE with FTR_HIDDEN for MPAM and SEL2 in ID_AA64PFR0 per Suzuki
- Replaced FTR_VISIBLE with FTR_HIDDEN for MPAMFRAC and RASFRAC in ID_AA64PFR1 per Suzuki
- Dropped both MTE and BT features from ftr_id_aa64pfr1[] to be added later per Suzuki
- Added ID_MMFR4_EL1 into the cpuinfo_arm64 context per Will

Changes in V3: (https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=281211)

- Rebased on git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git (for-next/cpufeature)

Changes in V2: (https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=270605)

- Added Suggested-by tag from Mark Rutland for all changes he had proposed
- Added comment for SpecSEI feature on why it is HIGHER_SAFE per Suzuki
- Added a patch which makes ID_AA64DFR0_DOUBLELOCK a signed feature per Suzuki
- Added ID_DFR1 and ID_MMFR5 system register definitions per Will
- Added remaining features bits for relevant 64 bit system registers per Will
- Changed commit message on [PATCH 5/7] regarding TraceFilt feature per Suzuki
- Changed ID_PFR2.CSV3 (FTR_STRICT -> FTR_NONSTRICT) as 64 bit registers per Will
- Changed ID_PFR0.CSV2 (FTR_STRICT -> FTR_NONSTRICT) as 64 bit registers per Will 
- Changed some commit messages

Changes in V1: (https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=234093)

Anshuman Khandual (17):
  arm64/cpufeature: Add explicit ftr_id_isar0[] for ID_ISAR0 register
  arm64/cpufeature: Drop TraceFilt feature exposure from ID_DFR0 register
  arm64/cpufeature: Make doublelock a signed feature in ID_AA64DFR0
  arm64/cpufeature: Introduce ID_PFR2 CPU register
  arm64/cpufeature: Introduce ID_DFR1 CPU register
  arm64/cpufeature: Introduce ID_MMFR5 CPU register
  arm64/cpufeature: Add remaining feature bits in ID_PFR0 register
  arm64/cpufeature: Add remaining feature bits in ID_MMFR4 register
  arm64/cpufeature: Add remaining feature bits in ID_AA64ISAR0 register
  arm64/cpufeature: Add remaining feature bits in ID_AA64PFR0 register
  arm64/cpufeature: Add remaining feature bits in ID_AA64PFR1 register
  arm64/cpufeature: Add remaining feature bits in ID_AA64MMFR0 register
  arm64/cpufeature: Add remaining feature bits in ID_AA64MMFR1 register
  arm64/cpufeature: Add remaining feature bits in ID_AA64MMFR2 register
  arm64/cpufeature: Add remaining feature bits in ID_AA64DFR0 register
  arm64/cpufeature: Replace all open bits shift encodings with macros
  arm64/cpuinfo: Add ID_MMFR4_EL1 into the cpuinfo_arm64 context

 arch/arm64/include/asm/cpu.h    |   4 +
 arch/arm64/include/asm/sysreg.h |  90 ++++++++++++++++++++
 arch/arm64/kernel/cpufeature.c  | 144 +++++++++++++++++++++++++-------
 arch/arm64/kernel/cpuinfo.c     |   4 +
 arch/arm64/kvm/sys_regs.c       |   6 +-
 5 files changed, 216 insertions(+), 32 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
