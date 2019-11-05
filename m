Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28309F08AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:49:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5M15zURBrDySxfgaH7tmx0S0UsXQvUbbGd1ScCGhIQ=; b=qjdnO9U4HCasaz
	PDbiZLLZ0myvpCQOck/kgF1kg0Lb3M/+rFbkVQUVS79T4IbxWK2WGBXfDbDmXUVRfTyCFKA3v/hPn
	2d0dUhXRVEJeG/t18FYd/0WvVzyCLG4vO2Mim1oSKjnkCIZdl0FJdPNMdunqeTqazGp1DCPIq0jRZ
	KqIOoNEAvW6tGAyLiWrQrY+DFpPkvLZ4zS/SrzpUxT7Rw+ULIjZT/oUexZ5fVuJyAXPZ/bM6m3JO0
	7C7OFtvTgtw5eY5aQ/O0WrwHlbHiFsYsFZZjNp8kw34uzfFg7/5nYvneUw9H2gI0bTmN8fdtiPZQK
	R83BGIv5zEJnBxKZMChQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6hJ-0007HY-Sl; Tue, 05 Nov 2019 21:49:09 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS6h9-0007Fx-P7
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:49:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d24s9yKYK2Ti3h908D0MYpheIQstoAGndo4qvHtjlK0=; b=TJKj7+PRxdb22yfvK1O0hi49DU
 ezlSNJ8j9zn2+VkhgWDKDihWdfeDN9U9XtQZbOxDiIN/UruMQ6Z0RLhOC8hMyTABm8EAUwLnnJUbQ
 YOB8BG+ItFP/E5L9fDyk9Xc2ibaGVP3jWtaG/qyu2U2oE9d+tCv1Jw7m7SJRMea26WxQ=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iS6h6-0007oN-9z; Tue, 05 Nov 2019 21:48:56 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 9E0C427431C3; Tue,  5 Nov 2019 21:48:55 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v6 3/4] arm64: Don't use KPTI where we have E0PD
Date: Tue,  5 Nov 2019 21:48:53 +0000
Message-Id: <20191105214854.30725-4-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191105214854.30725-1-broonie@kernel.org>
References: <20191105214854.30725-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_134859_855847_149096C6 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
