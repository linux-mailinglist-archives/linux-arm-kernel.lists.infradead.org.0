Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B421E3621
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 05:04:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6IErJURX80iUzZeSIzSOaqiogEl8oSKQmrAiorsmztI=; b=b+W
	49vAGx13pmmldXE0st9hXgEl3Wf4LK68o9Hosq3xyOaHpLEHPjUANu16wNOrDQOaAn65ea0Onkley
	G+wb3rqfCeTLkcwhPAgLcyUJVP2kb1Nxd1bVw+5bqWsMzRYIwMoaQcOM2560fAA0hibMbV8iUS8Ed
	OM0NmQ7y68OusCk6b8cC8blh7aKjIn6KK80dsaX1JBLyqwRbbkgcsr4dxiBbgH5BTYEYpSrI/URSc
	Av08gm140+l2dXcYIC6uB6BbfyhgnkH3rtWM/Mk0sGoTOWwU1Fef6ZSjjkntmnf4dGP1iDXWz7x1h
	929dkHXDPzRpnc8sFTaYPjy4Bd9hsCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdmNA-0000bY-0H; Wed, 27 May 2020 03:04:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdmMy-0000au-Ax
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 03:04:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B9B030E;
 Tue, 26 May 2020 20:04:39 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.76.100])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D387E3F6C4;
 Tue, 26 May 2020 20:04:35 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V5 0/4] arm64/cpufeature: Introduce ID_PFR2, ID_DFR1,
 ID_MMFR5 and other changes
Date: Wed, 27 May 2020 08:33:35 +0530
Message-Id: <1590548619-3441-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_200440_460932_147B1821 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, Anshuman Khandual <anshuman.khandual@arm.com>,
 catalin.marinas@arm.com, suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 will@kernel.org, kvmarm@lists.cs.columbia.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These are remaining patches from V4 series which had some pending reviews
from Suzuki (https://patchwork.kernel.org/cover/11557333/). Also dropped
[PATCH 15/17] as that will need some more investigation and rework.

This series applies on arm64/for-next/cpufeature.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com> 
Cc: Marc Zyngier <maz@kernel.org>
Cc: James Morse <james.morse@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: kvmarm@lists.cs.columbia.edu
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

Changes in V5:

- Dropped TGRAN features along with it's macros from ID_AA64MMFR0 per Suzuki
- Replaced with FTR_HIGHER_SAFE for SpecSEI feature in ID_AA64MMFR1 per Suzuki
- Dropped patch "arm64/cpufeature: Add remaining feature bits in ID_AA64DFR0 register"

Changes in V4: (https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=290085)

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

Anshuman Khandual (4):
  arm64/cpufeature: Add remaining feature bits in ID_AA64MMFR0 register
  arm64/cpufeature: Add remaining feature bits in ID_AA64MMFR1 register
  arm64/cpufeature: Add remaining feature bits in ID_AA64MMFR2 register
  arm64/cpufeature: Replace all open bits shift encodings with macros

 arch/arm64/include/asm/sysreg.h | 42 +++++++++++++++++++++
 arch/arm64/kernel/cpufeature.c  | 67 ++++++++++++++++++++-------------
 2 files changed, 83 insertions(+), 26 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
