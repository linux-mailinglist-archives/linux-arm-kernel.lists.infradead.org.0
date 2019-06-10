Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFCB3B962
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:26:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1wq8ltCDev72L7Uk6FkNMNlBXffMdToTPnKHkly/P7E=; b=HDsHpf80NwzxNb
	DKZpUKWWkWJjebmnj66k7cC+4IuOkHcbSVKAPaDjL7D0gy0h70tBy50Ad0hLF9QHep+geslBweC/f
	ZoZeQ1oxsGWbRfnGzrEAFEGMGzfrgdNz0Y03wh4gaw28/ie13ZX/XPs098XDa9XJ9vP5dtXUGhB9K
	Cm61xtfWKjgEQirLnZk5vJhSBKD8KffxkVCvTVGZHecDNnokKg89P/XYnTY81sEirpjlj7bpGsfPp
	fi2HT10QsddAPAE47WtQ5MKmmT/xF8mfNTJfSpSXylv9BfGfSmymYiPHGcNGdhOWVjttYWKHtqB9f
	1Uhaqoi8VVahAFDupYeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haN81-00026Y-MC; Mon, 10 Jun 2019 16:26:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haN6J-0007jg-1B
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 16:24:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 490CB337;
 Mon, 10 Jun 2019 09:24:49 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2AC9A3F246;
 Mon, 10 Jun 2019 09:24:48 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH v2 6/6] arm64: Update silicon-errata.txt for Neoverse-N1
 #1349291
Date: Mon, 10 Jun 2019 17:24:27 +0100
Message-Id: <20190610162427.115910-7-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610162427.115910-1-james.morse@arm.com>
References: <20190610162427.115910-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_092451_278295_CD33F971 
X-CRM114-Status: GOOD (  10.66  )
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
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 James Morse <james.morse@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neoverse-N1 affected by #1349291 may report an Uncontained RAS Error
as Unrecoverable. The kernel's architecture code already considers
Unrecoverable errors as fatal as without kernel-first support no
further error-handling is possible.

Now that KVM attributes SError to the host/guest more precisely
the host's architecture code will always handle host errors that
become pending during world-switch.
Errors misclassified by this errata that affected the guest will be
re-injected to the guest as an implementation-defined SError, which can
be uncontained.

Until kernel-first support is implemented, no workaround is needed
for this issue.

Signed-off-by: James Morse <james.morse@arm.com>
---
imp-def SError can mean uncontained. In the RAS spec, 2.4.2 "ESB and other
containable errors":
| It is [imp-def] whether [imp-def] and uncategorized SError interrupts
| are containable or Uncontainable.

 Documentation/arm64/silicon-errata.txt | 1 +
 arch/arm64/kernel/traps.c              | 4 ++++
 2 files changed, 5 insertions(+)

diff --git a/Documentation/arm64/silicon-errata.txt b/Documentation/arm64/silicon-errata.txt
index 2735462d5958..51d506a1f8dc 100644
--- a/Documentation/arm64/silicon-errata.txt
+++ b/Documentation/arm64/silicon-errata.txt
@@ -63,6 +63,7 @@ stable kernels.
 | ARM            | Cortex-A76      | #1286807        | ARM64_ERRATUM_1286807       |
 | ARM            | Cortex-A76      | #1463225        | ARM64_ERRATUM_1463225       |
 | ARM            | Neoverse-N1     | #1188873,1418040| ARM64_ERRATUM_1418040       |
+| ARM            | Neoverse-N1     | #1349291        | N/A                         |
 | ARM            | MMU-500         | #841119,826419  | N/A                         |
 |                |                 |                 |                             |
 | Cavium         | ThunderX ITS    | #22375,24313    | CAVIUM_ERRATUM_22375        |
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index e6be1a6efc0a..9f64cd609298 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -888,6 +888,10 @@ bool arm64_is_fatal_ras_serror(struct pt_regs *regs, unsigned int esr)
 		/*
 		 * The CPU can't make progress. The exception may have
 		 * been imprecise.
+		 *
+		 * Neoverse-N1 #1349291 means a non-KVM SError reported as
+		 * Unrecoverable should be treated as Uncontainable. We
+		 * call arm64_serror_panic() in both cases.
 		 */
 		return true;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
