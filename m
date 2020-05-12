Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF0A1CF3CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 13:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0m1WiFlSHJ69iRrjAwCVONS+gQ1Q2G12vghgjCSc/Ls=; b=cYNmLDY2JQZDZp
	yecXmdB53jm1Uo2ubc0xQys0axkqQp5lW+XBiUspoKsJjpy4lHB+JJEZAXpN6UFtL3/A7+nSz05+1
	3fiA72hWUki0A66Y9TEFq/folXeEGO6ouKq2SQaXkGCtLtwALv7a04AanxeF80SFnKGGJFEftWHaL
	Mf57pFn4nww+oRuh6KzP9yC7FNgj2ji44QMppmjLjNtVj3gNLmIQ+ZRjPSMzrqykVdVFV8QuhpEAO
	jgwlvGQyOXv2X40oYHrhaO3+TUsFhuow2iExVgOcGNtU65/RB/T0MOx7dM6JBfW/8rWZvbqvUtSD4
	OmfRIVdp3lWy454tsdjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYTVM-0004WH-Mv; Tue, 12 May 2020 11:55:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYTV8-0003pW-Ht
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 11:55:12 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6ABF72075E;
 Tue, 12 May 2020 11:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589284510;
 bh=FZfmeCbUerOkCBJLZ7NmCpKdBkgEslXcgByYoEGO390=;
 h=From:To:Cc:Subject:Date:From;
 b=cqJEDANx4Ix/Nf16vkMh++3xayPEefOEQc/KWT6HrsBZichnyl48iAyfhhrJS6sQ1
 j9cdDHABncLKCKngJTzmW4PphiMRJUwU/fUhgz2gjcab9A5/3U3gR/Slay6/fj9PHg
 vBnbBTKeRK6yRhAC31QddPkcW0oo0LMDjc9t+N/Y=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: kconfig: Update and comment GCC version check for
 kernel BTI
Date: Tue, 12 May 2020 12:54:58 +0100
Message-Id: <20200512115458.4985-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_045510_627221_A2749486 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Brown <broonie@kernel.org>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some versions of GCC are known to suffer from a BTI code generation bug,
meaning that CONFIG_CC_HAS_BRANCH_PROT_PAC_RET_BTI cannot be solely used
to determine whether or not we can compile with kernel with BTI enabled.

Update the BTI Kconfig entry to refer to the relevant GCC bugzilla entry
(https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697) and update the check
now that the fix has been merged into GCC release 10.1.

Cc: Mark Brown <broonie@kernel.org>
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 77d5fa96f9d0..e058854bcefc 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1616,7 +1616,8 @@ config ARM64_BTI_KERNEL
 	depends on ARM64_BTI
 	depends on ARM64_PTR_AUTH
 	depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
-	depends on !CC_IS_GCC || GCC_VERSION >= 100000
+	# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
+	depends on !CC_IS_GCC || GCC_VERSION >= 100100
 	depends on !(CC_IS_CLANG && GCOV_KERNEL)
 	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
 	help
-- 
2.26.2.645.ge9eca65c58-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
