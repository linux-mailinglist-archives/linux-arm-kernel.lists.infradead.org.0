Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B137934AC7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 16:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=69uu8KOnYtyZhmQmlMa7VGWgmJM9kyEq5DYM57yCfA0=; b=I3DbJnUTm+hhpg
	Inx7hcqYhhoK994i8xFcrUgPqKR5lkXFsUwehdWlY3QWOYFbaeHhWwukKd3ICsHfBfdaBKr0FwJ/s
	sdpy7wZXlRU5UDSNA5GWXv9hOAeJTtwBJwRTtb8ZnCsH1UlynBotlBHdEnwQDdhdzPvrQQvUymNJe
	N/kWPIELIsz9c4MnfcOegRTP3SPt9Dp/+/CkPW/1GCbVL4ZWHivvBbiJjFVgk71zuA5QWJ202jmJ6
	wtzUc64bqlwERyiyQM0iP/41sNjzXqG3rSqGz5/MJMvtff/iroa8eubmo20vzJTFmvDNQ024n5Im+
	a+pBgs8d6D0mA7YgQDXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAic-0007nP-JB; Tue, 04 Jun 2019 14:47:18 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAht-000700-4X
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 14:46:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD95115AB;
 Tue,  4 Jun 2019 07:46:32 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 637063F690;
 Tue,  4 Jun 2019 07:46:31 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH v1 4/6] arm64: Update silicon-errata.txt for Neoverse-N1
 #1349291
Date: Tue,  4 Jun 2019 15:45:49 +0100
Message-Id: <20190604144551.188107-5-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604144551.188107-1-james.morse@arm.com>
References: <20190604144551.188107-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_074633_648638_C9510C83 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
index 68d9b74fd751..7d010f739146 100644
--- a/Documentation/arm64/silicon-errata.txt
+++ b/Documentation/arm64/silicon-errata.txt
@@ -62,6 +62,7 @@ stable kernels.
 | ARM            | Cortex-A76      | #1165522        | ARM64_ERRATUM_1165522       |
 | ARM            | Cortex-A76      | #1286807        | ARM64_ERRATUM_1286807       |
 | ARM            | Neoverse-N1     | #1188873        | ARM64_ERRATUM_1188873       |
+| ARM            | Neoverse-N1     | #1349291        | N/A                         |
 | ARM            | MMU-500         | #841119,#826419 | N/A                         |
 |                |                 |                 |                             |
 | Cavium         | ThunderX ITS    | #22375, #24313  | CAVIUM_ERRATUM_22375        |
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index ade32046f3fe..4f427ad1089d 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -892,6 +892,10 @@ bool arm64_is_fatal_ras_serror(struct pt_regs *regs, unsigned int esr)
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
