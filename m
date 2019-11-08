Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C25F51E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 18:02:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nEIb+xDeUap5O0AsU06ImDNroomokdw+60/DIPj5NU0=; b=UNCFXoxjfXZoDq
	BBX4lPMVab186tmKAOQ43IVtfLWmbfUbW9m3Kk+t5yKmgeixU7yvG2I13sClCkBiCF1zxblphJp21
	6xf8ZLnOjZ3muNmmLKxEblCeQKjfQy2mSQnJkVGmlnFEuWuM7IsMAfmzeJpfWC9PoHDKPk3uhycB2
	/nikTg9q53xuBEMLaj0lwG9kNAVSUJMFCXellFNsC88G718y7BYZp1AJLMGXwVp0ILYD7YevmSdaW
	ZFsmkgGIMZz06UbewAHTdKZO5qQmZ7HnouxVBTyXojrubBiUfahHgxuTS8WEqL6pWfrf7UvHsMhK5
	q+SWYVRFB7QrilySuyqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7e3-0006P2-Us; Fri, 08 Nov 2019 17:01:59 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7dS-0005yf-Nv
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 17:01:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EtnYr3LmwKuyA2P1mwmaYRggzxzGk7Qd45KJnaTEU0E=; b=CdSk8kcelJI4onOoxuWD3LqkhV
 u4WpAApEVMyrIwaRRyRVFDXJMhCR+HMIOYONH/gAjH9UnToGvkmBpY/D+5JJfRWqyLHHW8S2XY6Ih
 dVFI4qpcrddj0bu7Noco0ZHqgR6v3ev/r42dCB+ZInHah1SnWYe0mB4MSm/+7llYPtQ4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iT7dP-0007jZ-6w; Fri, 08 Nov 2019 17:01:19 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 8114F2741702; Fri,  8 Nov 2019 17:01:18 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH v8 3/4] arm64: Don't use KPTI where we have E0PD
Date: Fri,  8 Nov 2019 17:01:15 +0000
Message-Id: <20191108170116.32105-4-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108170116.32105-1-broonie@kernel.org>
References: <20191108170116.32105-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_090122_835750_0E5182F1 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
---
 arch/arm64/include/asm/mmu.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index 55e285fff262..2e2a0ade883c 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -38,10 +38,23 @@ static inline bool arm64_kernel_unmapped_at_el0(void)
 static inline bool kaslr_requires_kpti(void)
 {
 	bool tx1_bug;
+	u64 ftr;
 
 	if (!IS_ENABLED(CONFIG_RANDOMIZE_BASE))
 		return false;
 
+	/*
+	 * E0PD does a similar job to KPTI so can be used instead
+	 * where available. This will only run before the cpufeature
+	 * code has usefully run and we eventually check on all CPUs so
+	 * we can and must check locally.
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
