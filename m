Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E09527AE1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 12:39:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=j6W6k49WyYX43Dkr623O3gAjdf/pc1K91tnrm8WxSes=; b=Bs1
	0jnyPeAcwIJX+Raqp2vZaASNprjGqD1JSAtHwpqNHHOnhuE3rgd9i2P52OnsmK7noT0cxf0uChru2
	nxK1TJ33oafGG7/thk56X9Ret5MA2zo3JN3Nq7Xax+OXDsp1nDxaGg/dQAsJhdHZyV2X5zQlo4HDU
	LIaU3guBppvzUa5mnQrlHFOCcFlRnkYng4KoEkMcCNmD4fWVy2pjWJI57VsSNPF+XK14Rqmnn/94Y
	DKgdbVbrZ5VnngJM1/dFyHzcpdYxY10B1KRwKPNgYp3C6F9ezYh4OpYC9HhtBx1jsuSJJkumpxCJc
	6k1S6QpAuDXxSXjFCp10nX2sSa+TE1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTl89-0004oh-7a; Thu, 23 May 2019 10:39:25 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTl7j-0004nA-IN
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 10:39:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1F909341;
 Thu, 23 May 2019 03:38:59 -0700 (PDT)
Received: from e111045-lin.cambridge.arm.com (unknown [10.1.39.23])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A01D43F718;
 Thu, 23 May 2019 03:38:57 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64/module: deal with ambiguity in PRELxx relocation
 ranges
Date: Thu, 23 May 2019 11:38:54 +0100
Message-Id: <20190523103854.29762-1-ard.biesheuvel@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_033859_607684_3ABAA88C 
X-CRM114-Status: GOOD (  12.30  )
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
Cc: mark.rutland@arm.com, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 marc.zyngier@arm.com, guillaume.gardet@arm.com, will.deacon@arm.com,
 james.morse@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

The R_AARCH64_PREL16 and R_AARCH64_PREL32 relocations are
documented as permitting a range of [-2^15 .. 2^16), resp.
[-2^31 .. 2^32). It is also documented that this means we
cannot detect overflow in some cases, which is bad.

Since we always interpret the targets of these relocations as
signed quantities (e.g., in the ksymtab handling code), let's
tighten the overflow checks so that targets that are out of
range for our signed interpretation of the relocated quantity
get flagged.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
v2: add clarifying comment to the code

 arch/arm64/kernel/module.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/module.c b/arch/arm64/kernel/module.c
index 07e5402cde76..6d299a9054fb 100644
--- a/arch/arm64/kernel/module.c
+++ b/arch/arm64/kernel/module.c
@@ -96,15 +96,27 @@ static int reloc_data(enum aarch64_reloc_op op, void *place, u64 val, int len)
 {
 	s64 sval = do_reloc(op, place, val);
 
+	/*
+	 * The ELF psABI for AArch64 documents the 16-bit and 32-bit place
+	 * relative relocations as having a range of [-2^15, 2^16) or
+	 * [-2^31, 2^32), respectively. However, in order to be able to detect
+	 * overflows reliably, we have to choose whether we interpret such
+	 * quantities as signed or as unsigned, and stick with it.
+	 * The way we organize our address space requires a signed
+	 * interpretation of 32-bit relative references, so let's use that
+	 * for all R_AARCH64_PRELxx relocations. This means our upper
+	 * bound for overflow detection should be Sxx_MAX rather than Uxx_MAX.
+	 */
+
 	switch (len) {
 	case 16:
 		*(s16 *)place = sval;
-		if (sval < S16_MIN || sval > U16_MAX)
+		if (sval < S16_MIN || sval > S16_MAX)
 			return -ERANGE;
 		break;
 	case 32:
 		*(s32 *)place = sval;
-		if (sval < S32_MIN || sval > U32_MAX)
+		if (sval < S32_MIN || sval > S32_MAX)
 			return -ERANGE;
 		break;
 	case 64:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
