Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F14CF2DFC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 13:13:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pUja1QiG/LHU1rnN7D88O1Es80cxczlvR1oFHTJHW4w=; b=QLzKnlVZr/s3wQ
	UbTQ1wYcQGVhnP4FI8Nx2flCQ4kiN47N69PYYTxRj6KnG5O4aok6AfdIaiMyR13NRW66JB2SZm1dL
	dOcGYBF3iEet4HbTVqE8yfyHplMJjAc02/MD6+/ItqqgmHyXvZayf7I5CXr2qS6gzyHUTlmYQkaHo
	4I8/p3Xx1E95glYV0hx/SOb1BiL7jUiDZU/X3VUFLF8tjC5dszKW+vgsrU++GeFHocMxnwLR//y3p
	XN8UE2Iq4lNx3KGdSCnvW720TsShSU8bCAAdZhpdeVxjbFsewLVXfop96s3ti3vGLNFwXKD4sWzYb
	TO9vwKzswyG3QpEdMWxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSgel-0000Ux-In; Thu, 07 Nov 2019 12:12:55 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSgeb-0000U6-Ud
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 12:12:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mqab7UDvfBiNsFyyYLe+hloVEA9Ce+SF33HE2FH0Aw0=; b=v574dL0BaUIne7goIh34RUj/8
 qHCOtqDv4rVC3R46Tqg/KmcqnUqOpb+RIbMMFvIeKa0Erds62PmfKmXkfbU0IInLi+A+OLFR3Rf7U
 F/7LMZCgzA/ZPsg9MQFnGO83/eILO9ipEUZUR62/vBxfUza7dl6hz8GgwriPOXBWLseb4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iSgeZ-0004H4-DZ; Thu, 07 Nov 2019 12:12:43 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id A363627431AF; Thu,  7 Nov 2019 12:12:42 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: kaslr: Print warning if KASLR is disabled due to lack
 of seed
Date: Thu,  7 Nov 2019 12:12:41 +0000
Message-Id: <20191107121241.8458-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_041245_987274_241273B1 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

It seems to be a relatively common system integration error for system
integrators and administrators to enable KASLR in their configuration but
not provide the seed at runtime, sometimes due to that breaking at some
later point after it is initially enabled. Since KASLR is not announced at
boot time unless it forces on KPTI this can lead to users incorrectly
believing their system has the feature enabled when in fact it does not,
and if they notice the problem the lack of any diagnostics makes it harder
to understand the problem. Provide a warning message to assist in these
situations.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/kaslr.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
index 416f537bf614..c2ba5e783ada 100644
--- a/arch/arm64/kernel/kaslr.c
+++ b/arch/arm64/kernel/kaslr.c
@@ -98,8 +98,10 @@ u64 __init kaslr_early_init(u64 dt_phys)
 	 * Retrieve (and wipe) the seed from the FDT
 	 */
 	seed = get_kaslr_seed(fdt);
-	if (!seed)
+	if (!seed) {
+		pr_warn("No seed available for KASLR, disabling\n");
 		return 0;
+	}
 
 	/*
 	 * Check if 'nokaslr' appears on the command line, and
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
