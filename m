Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A30D227906
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 11:18:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BLIZWtO9C4b9dYAsyjn/x0iLwPXDIKWvwa5KZrKc/oc=; b=FRw
	/f9I+w3RRM1F/Qs8FE/r8qtf7+IT3uQqcRQ8r9557n7Q6P+wh6NSO61GLJp1qhvM43pZRGNqDUS46
	sEYvrCSr6AKrQLtq52vPKbXSJIeTnc2bjxX4OAs3eamJMc+JVBsUoro9UmL1lcT/SmdZJQVXBao2a
	LBpKARkA7nKj0Ka0C0EHavMY6qdD3u1k47fBDCrfCmNJtM7cRDdAimsRA/V7dLkjg25UcDJNIQw8D
	9QBQL/1uX/K2LpWouWBppd5TEfTFX+lWJPPkVx10eVHUuuzHBOLNGSQHpXUnw+uT65avQsk00k0h5
	uPsvi9lxC+uzfV7V0h3wECiMmjfEfVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjrN-0001Fx-FQ; Thu, 23 May 2019 09:18:01 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjrG-0001FT-EZ
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 09:17:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CE3FC341;
 Thu, 23 May 2019 02:17:53 -0700 (PDT)
Received: from e111045-lin.cambridge.arm.com (unknown [10.1.39.23])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3827F3F718;
 Thu, 23 May 2019 02:17:52 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/kernel: kaslr: reduce module randomization range to 2 GB
Date: Thu, 23 May 2019 10:17:37 +0100
Message-Id: <20190523091737.18797-1-ard.biesheuvel@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_021754_497011_61C6C2DB 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, guillaume.gardet@arm.com, marc.zyngier@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, james.morse@arm.com,
 Ard Biesheuvel <ard.biesheuvel@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following commit

  7290d5809571 ("module: use relative references for __ksymtab entries")

updated the ksymtab handling of some KASLR capable architectures
so that ksymtab entries are emitted as pairs of 32-bit relative
references. This reduces the size of the entries, but more
importantly, it gets rid of statically assigned absolute
addresses, which require fixing up at boot time if the kernel
is self relocating (which takes a 24 byte RELA entry for each
member of the ksymtab struct).

Since ksymtab entries are always part of the same module as the
symbol they export, it was assumed at the time that a 32-bit
relative reference is always sufficient to capture the offset
between a ksymtab entry and its target symbol.

Unfortunately, this is not always true: in the case of per-CPU
variables, a per-CPU variable's base address (which usually differs
from the actual address of any of its per-CPU copies) is allocated
in the vicinity of the ..data.percpu section in the core kernel
(i.e., in the per-CPU reserved region which follows the section
containing the core kernel's statically allocated per-CPU variables).

Since we randomize the module space over a 4 GB window covering
the core kernel (based on the -/+ 4 GB range of an ADRP/ADD pair),
we may end up putting the core kernel out of the -/+ 2 GB range of
32-bit relative references of module ksymtab entries that refer to
per-CPU variables.

So reduce the module randomization range a bit further. We lose
1 bit of randomization this way, but this is something we can
tolerate.

Cc: <stable@vger.kernel.org> # v4.19+
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@arm.com>
---

This supersedes

module/ksymtab: use 64-bit relative reference for target symbol
x86/tools: deal with 64-bit relative relocations for per-CPU symbols

and is complemented by

arm64/module: deal with ambiguity in PRELxx relocation ranges

 arch/arm64/kernel/kaslr.c  | 4 ++--
 arch/arm64/kernel/module.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
index b09b6f75f759..5d5f3ed3e66a 100644
--- a/arch/arm64/kernel/kaslr.c
+++ b/arch/arm64/kernel/kaslr.c
@@ -152,8 +152,8 @@ u64 __init kaslr_early_init(u64 dt_phys)
 		 * resolved via PLTs. (Branches between modules will be
 		 * resolved normally.)
 		 */
-		module_range = SZ_4G - (u64)(_end - _stext);
-		module_alloc_base = max((u64)_end + offset - SZ_4G,
+		module_range = SZ_2G - (u64)(_end - _stext);
+		module_alloc_base = max((u64)_end + offset - SZ_2G,
 					(u64)MODULES_VADDR);
 	} else {
 		/*
diff --git a/arch/arm64/kernel/module.c b/arch/arm64/kernel/module.c
index 2e4e3915b4d0..b2f99ff76ed1 100644
--- a/arch/arm64/kernel/module.c
+++ b/arch/arm64/kernel/module.c
@@ -56,7 +56,7 @@ void *module_alloc(unsigned long size)
 		 * can simply omit this fallback in that case.
 		 */
 		p = __vmalloc_node_range(size, MODULE_ALIGN, module_alloc_base,
-				module_alloc_base + SZ_4G, GFP_KERNEL,
+				module_alloc_base + SZ_2G, GFP_KERNEL,
 				PAGE_KERNEL_EXEC, 0, NUMA_NO_NODE,
 				__builtin_return_address(0));
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
