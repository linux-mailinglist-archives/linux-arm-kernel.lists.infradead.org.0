Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A86621173DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:16:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ra8B2v0I5qKgGcXbGmUFSkggTaWXYlU+/Pku0BnU7wM=; b=WnqM5E5weQhrOS
	vupui3tDSQsSqujYqA/IMVIrKr3Xtv4FU1IkEStNzXG1TaRyxzwkhVMa1hqvmpmaqF71cSf5Pj+5k
	C6TkxDW7gLkmbkmnapv9PHeWDh7GRdwGh0zHp12F9iiZ5P9M8/2bhZ6rtlKhQxbZPMJFBkYcM0mRf
	FMQ/RaS6VYgC4wOtO/qwp5vCfnr7Yk2sUF7C2crsOmy4GD1g9c/mKz3SR19za5scHlcuASOCI+/LP
	AG3dJbMzsWyZEomUX2J3OMslWz6wp2xJUqHjVckUfglPTFFFUZOnH9HWP1kV7fuVBzhPDUQrPPztH
	vS9ozE/E84oi5v5Nnwgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNaG-0001mT-5w; Mon, 09 Dec 2019 18:16:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNWG-00055r-Qm
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:12:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 229DE328;
 Mon,  9 Dec 2019 10:12:28 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 968303F6CF;
 Mon,  9 Dec 2019 10:12:27 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH v9 3/4] arm64: Don't use KPTI where we have E0PD
Date: Mon,  9 Dec 2019 18:12:16 +0000
Message-Id: <20191209181217.44890-4-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191209181217.44890-1-broonie@kernel.org>
References: <20191209181217.44890-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_101229_014925_6B77AFD9 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since E0PD is intended to fulfil the same role as KPTI we don't need to
use KPTI on CPUs where E0PD is available, we can rely on E0PD instead.
Change the check that forces KPTI on when KASLR is enabled to check for
E0PD before doing so, CPUs with E0PD are not expected to be affected by
meltdown so should not need to enable KPTI for other reasons.

Since E0PD is a system capability we will still enable KPTI if any of
the CPUs in the system lacks E0PD, this will rewrite any global mappings
that were established in systems where some but not all CPUs support
E0PD.  We may transiently have a mix of global and non-global mappings
while booting since we use the local CPU when deciding if KPTI will be
required prior to completing CPU enumeration but any global mappings
will be converted to non-global ones when KPTI is applied.

KPTI can still be forced on from the command line if required.

Signed-off-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 arch/arm64/include/asm/mmu.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index 2a93d34cc0ca..1eec3971f0a9 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -47,10 +47,21 @@ static inline bool arm64_kernel_unmapped_at_el0(void)
 static inline bool kaslr_requires_kpti(void)
 {
 	bool tx1_bug;
+	u64 ftr;
 
 	if (!IS_ENABLED(CONFIG_RANDOMIZE_BASE))
 		return false;
 
+	/*
+	 * E0PD does a similar job to KPTI so can be used instead
+	 * where available.
+	 */
+	if (IS_ENABLED(CONFIG_ARM64_E0PD)) {
+		ftr = read_sysreg_s(SYS_ID_AA64MMFR2_EL1);
+		if ((ftr >> ID_AA64MMFR2_E0PD_SHIFT) & 0xf)
+			return false;
+	}
+
 	/*
 	 * Systems affected by Cavium erratum 24756 are incompatible
 	 * with KPTI.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
