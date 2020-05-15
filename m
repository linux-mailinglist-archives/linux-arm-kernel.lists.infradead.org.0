Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9F71D57AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:24:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fb53SIbcCoD+CEZYsq5fdRd7oSSVRktSwQw3g3paD74=; b=O+F3+bm55LddEQ
	TL69YJnzHea40Py5Immfdx98Nrw0QbFhkV7537Fw7ibcT1E5oyIBaNwsqasERsLL1Xkd2hn0uYLOU
	iVOmjMCaGFuYLB6vbbWEjasI/TIp8Shz+9V+ELgogju9YBL9mgjTXSlcAtgHJC4dSBveBgkaaSQGY
	I1WhSNhvydU1UIlIMiylUnWxsAoSBzdZbA6hQEnxboQq7rJWLwxTwI+cEZeM3aj0KW3fzii6/2tYI
	fXM4tRU3RGSPeV/YR1kyfaOLlGOz3pu/HmJn06Ejjm6XMKKxWJQiYvtjV08GO5O7NJybqPQaGikPA
	WLgpk1a/KV44ZR6YvvCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZe4T-0002xR-Pe; Fri, 15 May 2020 17:24:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdxO-0002nb-Ja
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:17:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC414113E;
 Fri, 15 May 2020 10:17:09 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 339633F305;
 Fri, 15 May 2020 10:17:08 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 24/26] arm64: mte: Introduce early param to disable MTE
 support
Date: Fri, 15 May 2020 18:16:10 +0100
Message-Id: <20200515171612.1020-25-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515171612.1020-1-catalin.marinas@arm.com>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_101710_838617_2388F641 
X-CRM114-Status: GOOD (  10.32  )
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
Cc: linux-arch@vger.kernel.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For performance analysis it may be desirable to disable MTE altogether
via an early param. Introduce arm64.mte_disable and, if true, filter out
the sanitised ID_AA64PFR1_EL1.MTE field to avoid exposing the HWCAP to
user.

Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
---

Notes:
    New in v4.

 Documentation/admin-guide/kernel-parameters.txt |  4 ++++
 arch/arm64/kernel/cpufeature.c                  | 11 +++++++++++
 2 files changed, 15 insertions(+)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index f2a93c8679e8..7436e7462b85 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -373,6 +373,10 @@
 	arcrimi=	[HW,NET] ARCnet - "RIM I" (entirely mem-mapped) cards
 			Format: <io>,<irq>,<nodeID>
 
+	arm64.mte_disable=
+			[ARM64] Disable Linux support for the Memory
+			Tagging Extension (both user and in-kernel).
+
 	ataflop=	[HW,M68k]
 
 	atarimouse=	[HW,MOUSE] Atari Mouse
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index aaadc1cbc006..f7596830694f 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -126,12 +126,23 @@ static void cpu_enable_cnp(struct arm64_cpu_capabilities const *cap);
 static bool __system_matches_cap(unsigned int n);
 
 #ifdef CONFIG_ARM64_MTE
+static bool mte_disable;
+
+static int __init arm64_mte_disable(char *buf)
+{
+	return strtobool(buf, &mte_disable);
+}
+early_param("arm64.mte_disable", arm64_mte_disable);
+
 s64 mte_ftr_filter(const struct arm64_ftr_bits *ftrp, s64 val)
 {
 	struct device_node *np;
 	static bool memory_checked = false;
 	static bool mte_capable = true;
 
+	if (mte_disable)
+		return ID_AA64PFR1_MTE_NI;
+
 	/* EL0-only MTE is not supported by Linux, don't expose it */
 	if (val < ID_AA64PFR1_MTE)
 		return ID_AA64PFR1_MTE_NI;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
