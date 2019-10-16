Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1367DD9534
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YOr9Qsh21POqHUGvEWnunTp/ZbwewYW+QB3GbSco7to=; b=bsak4X/JyTA9a7
	BWWIaC14T+OVlDYvEX2OmozD4It1NNAlcore14usE0sMMCNCGmBSZbnkOcKr9iHzkPc93W26gfd3v
	KP+fRyjgbJvHUIbWxJFeqDbIRQb4SAMxvesMQS4uJuakBRHOr9cU+0M4C+9Pz2RQVben0R2klM2m0
	ilALG9/aznzZI2abQk2D07jQYhidSaXsXe2H1lErFPT93jmlz7KNAbaEyed8EKb6IFURCYl3qFqlT
	Fk8Dm0GkZyiwUoZ8WVB7VUUYre4g20V3k9mm0Wg9XfJZ4PkylunKn/fAzVW/mkYEKWH4UvarulqZa
	+vuR4qzbDM1J1jQn0h4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKl0q-00022Z-KT; Wed, 16 Oct 2019 15:14:56 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKl0T-0001t2-Ax
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:14:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OS7xrOrRryLaZLwKjRzVAdVUShjxoZtTRbWtWq8h/6w=; b=kiTFtuy8Xm2kgr9ipmpZY3965X
 wQRyqriGxJutoyvDqO3Nf/4v6+dDwddw39BmQuUwlwFlxmvAssiznOVoFLXEGnCGYp483aasE3OxC
 xpdh+mPMrfNje8C1j/CfsCBAEsiu5YgSSaTs50lKP++/FtqRP1GfMSw/bgJuPYGB0CVc=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iKl0R-0005gQ-1G; Wed, 16 Oct 2019 15:14:31 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 7F45027428FD; Wed, 16 Oct 2019 16:14:30 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v3 3/3] arm64: Don't use KPTI where we have E0PD
Date: Wed, 16 Oct 2019 16:14:21 +0100
Message-Id: <20191016151421.27708-4-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016151421.27708-1-broonie@kernel.org>
References: <20191016151421.27708-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_081433_415853_1B25A15E 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

v3: Greatly simplified as a result of E0PD becoming a system feature.

 arch/arm64/include/asm/mmu.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index 55e285fff262..d61908bf4c9c 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -38,10 +38,21 @@ static inline bool arm64_kernel_unmapped_at_el0(void)
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
