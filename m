Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB4689EFF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 14:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=85Fvp8I0GAK0yWTQIgKA1/CPYc6FFv7IaQ5khwxQBzY=; b=Ct/oSEDXOcZ4e6
	q1HrzII+VpS0PWZHoSCiVo41iiNtEeIdsRY7nvihHmQcoQHRL1aZLsejcUHLwdjCchgtahaXGOwLF
	IngXSY6D//xXp5w+xnganFbPjCz+qqy2zdVvRzbPzzW8sSyXRaXly918U3hXveY7G76f3Ym0bQ4G4
	4f+nrxNHKyr0d75Qg25F4/E1apX0yfm0vQPYlf/qmd1BULVAGoo+234AFzNTKbakf/qQ/BTzkDZBx
	jtDePKtIyeZaLaQGI2xAt9b30T3VXvpEGwt7qLqnOmG25caBJDEXxRe4/idK1QS/Y2ycVndfILd6h
	2UjA7YwzYdYhxjZHIcpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9uL-0004JZ-CO; Mon, 12 Aug 2019 12:58:41 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9ta-0003qe-9N
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 12:57:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EuE7qcR7asHYOmWVrpMaMCisYR0jxCQ3m0HnpBUBox0=; b=vp/B87E0USn8zaZmh1ytq5bXIP
 jZ+B8OZFEWjO8aRtRTu2pbrTVvtVPLKsjC18FiqFKHDYx2shSRMC7JsuFuhlQMIbyXdAzbBSm3Z5j
 K0LydWHzRCebgHhgDfpcJAqJ73oDhOf5QBInsY/R/qi/Atb6F+JJzNHxloanjBIs54cs=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hx9tX-0001Jn-G9; Mon, 12 Aug 2019 12:57:51 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 0EA6B2740CB7; Mon, 12 Aug 2019 13:57:51 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 2/2] arm64: Don't use KPTI where we have E0PD
Date: Mon, 12 Aug 2019 13:57:38 +0100
Message-Id: <20190812125738.17388-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190812125738.17388-1-broonie@kernel.org>
References: <20190812125738.17388-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_055754_322533_F221410F 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Since we repeat the KPTI check for all CPUs we will still enable KPTI if
any of the CPUs in the system lacks E0PD. Since KPTI itself is not changed
by this patch once we enable KPTI we will do so for all CPUs. This is safe
but not optimally performant for such systems.

KPTI can still be forced on from the command line if required.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/cpufeature.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 4aa1d2026bef..322004409211 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -995,7 +995,7 @@ static bool unmap_kernel_at_el0(const struct arm64_cpu_capabilities *entry,
 
 	/* Useful for KASLR robustness */
 	if (IS_ENABLED(CONFIG_RANDOMIZE_BASE) && kaslr_offset() > 0) {
-		if (!__kpti_forced) {
+		if (!__kpti_forced && !this_cpu_has_cap(ARM64_HAS_E0PD)) {
 			str = "KASLR";
 			__kpti_forced = 1;
 		}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
