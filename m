Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A997DFC514
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 12:07:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DQ6IdVuI2SPRMX1dyneE0sgO32gKgCSA2hj8qF59J6E=; b=LqZbhL2iHodBtl
	QsuFAyhDI1ii+3ImzIwl68PSTYikbfJQIyRr0cuc2hRAUdLo+M9x3NW7h8YmvOkxQNoXvgMxpCTtL
	egdl9zYUSuWMUdbUrTrXhaUDXs8K5QQjOp431z84/7a7SX8uzy5lKB+t5AtdBJelpeD4gkjzv7+vl
	OZZBfxMyBFNUE0jgZ2OnOlMkgU1hzlt9kovm06Ve31NjaxvjPF11LpLIm7e/5lepzS5CWiltv9owS
	1+WjLqmkBjeRXsKKmeJ2ijQQ70VBc8ZucbX0pn/NuWZWVmUBd2cyeHxzETWnrSGe6Q1pi56RkVYYT
	dl5JoByDXqCjcvL/1dug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVCyP-0006Hg-Pm; Thu, 14 Nov 2019 11:07:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVCyE-0006GW-Ep
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 11:07:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7896C31B;
 Thu, 14 Nov 2019 03:07:25 -0800 (PST)
Received: from e112269-lin.cambridge.arm.com (e112269-lin.cambridge.arm.com
 [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 24B7A3F6C4;
 Thu, 14 Nov 2019 03:07:24 -0800 (PST)
From: Steven Price <steven.price@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>
Subject: [PATCH v4 0/3] arm64: Workaround for Cortex-A55 erratum 1530923
Date: Thu, 14 Nov 2019 11:06:55 +0000
Message-Id: <20191114110658.20560-1-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_030726_540879_2BE6519C 
X-CRM114-Status: GOOD (  10.69  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Version 4 fixes a silly mistake in the final patch.

This series enables a workaround for Cortex-A55 erratum 1530923. The
erratum potentially allows TLB entries to be allocated as a result of a
speculative AT instruction. This may happen in the middle of a guest
world switch while the relevant VMSA configuration is in an inconsistent
state, leading to erroneous content being allocated into TLBs.

There are existing workarounds for similar issues, 1165522 is
effectively the same, and 1319367/1319537 is similar but without VHE
support.  Rather than add to the selection of errata, the first patch
renames 1165522 to WORKAROUND_SPECULATIVE_AT which can be reused (in the
final patch) for 1530923.

The workaround for errata 1319367 and 1319537 although similar cannot
use VHE (not available on those CPUs) so cannot share the workaround.
However, to keep some sense of symmetry the workaround is renamed to
SPECULATIVE_AT_NVHE.

Changes since v3:
 * Added Suzuki's reviewed-bys - thanks!
 * Corrected ARM64_WORKAROUND_SPECULATIVE_AT to
   ARM64_WORKAROUND_SPECULATIVE_AT_VHE in the final patch

Changes since v2:
 * Split 1319367/1319537 back into their own workaround, but rename it
   for symmetry with the VHE workaround.

Changes since v1:
 * Combine 1319367/1319537 into the same 'SPECULATIVE_AT' workaround.

Steven Price (3):
  arm64: Rename WORKAROUND_1165522 to SPECULATIVE_AT_VHE
  arm64: Rename WORKAROUND_1319367 to SPECULATIVE_AT_NVHE
  arm64: Workaround for Cortex-A55 erratum 1530923

 Documentation/arm64/silicon-errata.rst |  2 ++
 arch/arm64/Kconfig                     | 21 +++++++++++++++++++++
 arch/arm64/include/asm/cpucaps.h       |  4 ++--
 arch/arm64/include/asm/kvm_host.h      |  2 +-
 arch/arm64/include/asm/kvm_hyp.h       |  6 +++---
 arch/arm64/kernel/cpu_errata.c         | 25 +++++++++++++++++++------
 arch/arm64/kvm/hyp/switch.c            | 10 +++++-----
 arch/arm64/kvm/hyp/sysreg-sr.c         |  4 ++--
 arch/arm64/kvm/hyp/tlb.c               | 12 ++++++------
 9 files changed, 61 insertions(+), 25 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
