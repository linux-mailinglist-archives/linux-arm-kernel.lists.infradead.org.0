Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B872FD43CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 17:07:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ri05sWu96J5AUytx7bhfns/sJwWxjEy+WtXlFlFfLWc=; b=JozRlluGT2ejrGU8TvPuXCFpU4
	/0moF8jtpiV+vaNqipIDEI4Sny99q2+beCq9xSejef+qTJJ02UkEqQOvt4ENzENhzgL9r47moH1dJ
	0VtYuHSaBiDFDyhX9SLQjRJ38tGV5sioxcx8T9hw8neqlv5nUCUfL7TppLiufy6Hsx0zG/n+sEYZ5
	vn3eP1NJS9tmTWZtPWSL5263gsnlnMQKDWvc5LM3EQw4MeKh7fpWog7g0Axrfkh9zA0ZUQ1qghpzQ
	DwCrbiNkMJGW/2rnGSSzpG/e/GJnYJedLqHbbgN3rJxf4hGgnnZ2iaSpWwJsiOem6JP+9rFPzIi7A
	cC5+v2og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIwVw-0000sR-Md; Fri, 11 Oct 2019 15:07:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIwVk-0000rq-2C
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 15:07:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A77B8142F;
 Fri, 11 Oct 2019 08:07:19 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A59083F68E;
 Fri, 11 Oct 2019 08:07:16 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [FIXUP 1/2] squash! arm64: Basic Branch Target Identification support
Date: Fri, 11 Oct 2019 16:06:28 +0100
Message-Id: <1570806389-16014-2-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1570806389-16014-1-git-send-email-Dave.Martin@arm.com>
References: <1570733080-21015-6-git-send-email-Dave.Martin@arm.com>
 <1570806389-16014-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_080720_145658_4E63085D 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Suzuki Poulose <suzuki.poulose@arm.com>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H.J. Lu" <hjl.tools@gmail.com>, Andrew Jones <drjones@redhat.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 =?UTF-8?q?Kristina=20Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 Sudakshina Das <sudi.das@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Dave Martin <Dave.Martin@arm.com>

---

Changes since v2:

 * Fix Kconfig typo that claimed that Pointer authentication is part of
   ARMv8.2.  It's v8.3.
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 563dec5..6e26b72 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1425,7 +1425,7 @@ config ARM64_BTI
 
 	  This is intended to provide complementary protection to other control
 	  flow integrity protection mechanisms, such as the Pointer
-	  authentication mechanism provided as part of the ARMv8.2 Extensions.
+	  authentication mechanism provided as part of the ARMv8.3 Extensions.
 
 	  To make use of BTI on CPUs that support it, say Y.
 
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
