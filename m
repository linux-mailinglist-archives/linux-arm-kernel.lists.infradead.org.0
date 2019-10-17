Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 241DBDB39C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 19:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pj+ps0fPIVxTSlJbXRWdqL0GPmlaZ6t4XM3jOj4GKXY=; b=NchvkFlkanpb3i
	DHGRFyXjmM9H6hMyGem5JZQFvyJHHyNLn3KB7P2KaN8KtStThaWmueMqFxbdvAdZS3GVTG++FHXCe
	rcp7OozN2G1CWhLOn4zQ45JTPJOCBT8vCR6zJccRTyQq07L9JP9mkcanRfZXAzwAlbHuepanjrqVB
	6Gp6E/DraZ33W5GnipzcOiBf1Hoaj6os+MLSyAAS3grR1PH4Bg5a0zC8I58xs0a8nVfH5jxslBmIn
	rY+3CENp/t3jwetmt/5ny1XUsAS1oZIJB9IOikjmF6i5hWNPV3VGbUs5dNYCkx0jg99UkyV7YYH4A
	69M9upQ7j6aCeDWrAK+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9oa-0003W7-P2; Thu, 17 Oct 2019 17:43:56 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9o0-00036z-3B
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 17:43:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E051329;
 Thu, 17 Oct 2019 10:43:09 -0700 (PDT)
Received: from eglon.cambridge.arm.com (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 816BE3F718;
 Thu, 17 Oct 2019 10:43:08 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/3] arm64: errata: Workaround Neoverse-N1 #1542419
Date: Thu, 17 Oct 2019 18:42:57 +0100
Message-Id: <20191017174300.29770-1-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_104320_222987_8EDDAE79 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>, Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

---
Changes since v1:
 * Rebased on rc3 to disappear patch4, now merged as dd8a1f134884
   This series is aimed for v5.5

 * Update silicon-errata.txt
 * Consider big-little, to avoid shearing DIC.
 * Added CTR_IMINLINE_MASK masks and comment

Changes are also noted in the tear-off of each patch.

---

Neoverse-N1 cores with the 'COHERENT_ICACHE' feature may fetch stale
instructions when software depends on prefetch-speculation-protection
instead of explicit synchronization. [0]

This concerns self modifying executables, like a JIT ... and the kernel.
The ARM-ARM has some fairly heavy rules for software that modifies
instructions that may be currently executing on another CPU.
There are some easier requirements if the instructions being modified
are just between Branches and NOP, (and a few others).

(See B2.2.5 "Concurrent modification and execution of instructions"
of DDI0487E.a for details).


A JIT can use all this to avoid synchronisation between threads. It
can generate new instructions at some new location, then update a
branch in the executable instructions to point at the new location.

Prefetch-speculation-protection guarantees that if another CPU sees
the new branch, it also sees the new instructions that were written
there.

On affected Neoverse-N1 cores, this can go wrong, fortunately its rare.

The workaround is to trap I-Cache maintenance and issue an
inner-shareable TLBI.

The affected cores have a Coherent I-Cache, so the I-Cache maintenance
isn't necessary. The core tells user-space it can skip it with
CTR_EL0.DIC. We also have to trap this register to hide the bit forcing
DIC-aware user-space to perform the maintenance.

Because the cache-maintenance wasn't needed, we can do the TLBI instead.
In fact, the I-Cache line-size isn't relevant anymore, we can reduce
the number of traps by producing a fake value.

Unfortunately the bulk of user-space is not DIC-aware, it blindly does
the D-side and I-side cache maintenance. To make matters worse, the
kernel can only trap all cache maintenance from EL0 with SCTLR_EL1.UCI.
The normal-world can't trap Data/Instruction cache maintenance
independently, but EL3 firmware can.

To avoid trapping all cache-maintenance, this workaround depends on
a firmware component that only traps I-cache maintenance from EL0 and
performs the workaround.


For user-space, the kernel's work is now to trap CTR_EL0 to hide DIC,
and produce a fake IminLine. EL3 traps the now-necessary I-Cache
maintenance and performs the inner-shareable-TLBI that makes everything
better.


We can't detect whether EL3 has the workaround for any particular
erratum. We lamely print '(kernel portion)' as part of the CPU-feature
text.

While the kernel has some JIT like features, they don't rely on
prefetch-speculation-protection. In particular the module-loader
ends up calling kick_all_cpus_sync() as part of the 'heavy' rules
above.

commit dd8a1f134884 ("arm64: ftrace: Ensure synchronisation in PLT setup
for Neoverse-N1 #1542419") lists the cases the kernel modifies itself.
Only one of these depends on prefetch-speculation-protection, it was easy
enough to remove it.

... questions welcome ...


Thanks,

James

James Morse (3):
  arm64: errata: Hide CTR_EL0.DIC on systems affected by Neoverse-N1
    #1542419
  arm64: Fake the IminLine size on systems affected by Neoverse-N1
    #1542419
  arm64: compat: Workaround Neoverse-N1 #1542419 for compat user-space

 Documentation/arm64/silicon-errata.rst |  2 ++
 arch/arm64/Kconfig                     | 16 +++++++++++++
 arch/arm64/include/asm/cache.h         |  3 ++-
 arch/arm64/include/asm/cpucaps.h       |  3 ++-
 arch/arm64/kernel/cpu_errata.c         | 32 +++++++++++++++++++++++++-
 arch/arm64/kernel/sys_compat.c         | 11 +++++++++
 arch/arm64/kernel/traps.c              |  9 ++++++++
 7 files changed, 73 insertions(+), 3 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
