Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 596311E3623
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 05:05:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CW0SfGs1rpnXp2jqjBm/D6yHOFCJe03ZcLUT2thhK/w=; b=eqMP56dsSChmtNsfizca7BfTTO
	wqpzJY62chVjzUCoH8B7nwRA9IA6mJZZjlxMnJwKYEpCPtB3KSKp/DIOTrcfeFj8vJT6i2GOAxEZt
	EJGc9UbA8hbrvyyrAwpKMshCEjyb4drlEy8f6nv3OI/AGfk+Ks1Dyprr11cStIs6UdXW2h3DIoN53
	gG18VGyY1kZ0N7ytagN0ULjNB/L4gNdIpMFVOnbS2Yt7rzImcMBtrsKns6U1y7cfjKUUgnhnre3ZP
	c5c4rt4FRg3uG+Os/qYsbFqS67gyrqhZaeF3DPyiovMdDgYRCO5tb0r6EHs/N2o+cHJQcIws62enF
	Og+OXaEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdmNt-0003Qo-Mm; Wed, 27 May 2020 03:05:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdmN4-0000g3-SN
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 03:04:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4EF1730E;
 Tue, 26 May 2020 20:04:46 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.76.100])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 85A5D3F6C4;
 Tue, 26 May 2020 20:04:43 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V5 2/4] arm64/cpufeature: Add remaining feature bits in
 ID_AA64MMFR1 register
Date: Wed, 27 May 2020 08:33:37 +0530
Message-Id: <1590548619-3441-3-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590548619-3441-1-git-send-email-anshuman.khandual@arm.com>
References: <1590548619-3441-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_200446_981642_CCDD2C46 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, Anshuman Khandual <anshuman.khandual@arm.com>,
 catalin.marinas@arm.com, suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 will@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable ETS, TWED, XNX and SPECSEI features bits in ID_AA64MMFR1 register as
per ARM DDI 0487F.a specification.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Suggested-by: Will Deacon <will@kernel.org>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/include/asm/sysreg.h | 4 ++++
 arch/arm64/kernel/cpufeature.c  | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index cf983d03aa4c..a798bb9c0845 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -731,6 +731,10 @@
 #endif
 
 /* id_aa64mmfr1 */
+#define ID_AA64MMFR1_ETS_SHIFT		36
+#define ID_AA64MMFR1_TWED_SHIFT		32
+#define ID_AA64MMFR1_XNX_SHIFT		28
+#define ID_AA64MMFR1_SPECSEI_SHIFT	24
 #define ID_AA64MMFR1_PAN_SHIFT		20
 #define ID_AA64MMFR1_LOR_SHIFT		16
 #define ID_AA64MMFR1_HPD_SHIFT		12
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index feaa6dcd6f7b..c2253fb3401e 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -295,6 +295,10 @@ static const struct arm64_ftr_bits ftr_id_aa64mmfr0[] = {
 };
 
 static const struct arm64_ftr_bits ftr_id_aa64mmfr1[] = {
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR1_ETS_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR1_TWED_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR1_XNX_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_HIGHER_SAFE, ID_AA64MMFR1_SPECSEI_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR1_PAN_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR1_LOR_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR1_HPD_SHIFT, 4, 0),
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
