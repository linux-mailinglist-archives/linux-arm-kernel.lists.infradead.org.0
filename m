Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 504491870A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 17:54:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ohhWbHqzhLAAtgXBHWVM/MAS0YuN9V9Mdl172oYZxMM=; b=TJfgdPeLzTV9UN
	G97VZCoofq/yDRIXBawqs+tlXGHrTVUI6WmtULBuIJp9LmF9CxBk4BYt7PeItae6v4lAsXqeVK2Bc
	TdKchrL/YCg2kwxZgFSRKMr/zwocnE0ounac5Q8oxhTflfRvkfVk0aSHaMK/pq5h6ypZ/eMALq/30
	j3l15hDW8pDp8W+V13PjJfxwkTOqogl8OiLrStlNtcH7ovlTCiZ13y70zZUmURxOu6g22Tom+22Zq
	goQSQ2BZ9I7H/qonAEt85v+/asr/wZ7SOtA+FQ1HAfNTlLktekIpOSHZVfH2p+VlU6sAemz4wC4f9
	Fe6wUl2zevOX6tCzC1Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDt0S-0008RN-Qw; Mon, 16 Mar 2020 16:54:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDsxX-0005eI-G8
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 16:51:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D0FA7106F;
 Mon, 16 Mar 2020 09:51:22 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 559D33F67D;
 Mon, 16 Mar 2020 09:51:22 -0700 (PDT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v10 11/13] arm64: mm: Display guarded pages in ptdump
Date: Mon, 16 Mar 2020 16:50:53 +0000
Message-Id: <20200316165055.31179-12-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200316165055.31179-1-broonie@kernel.org>
References: <20200316165055.31179-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_095123_610180_592F0888 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Eugene Syromiatnikov <esyr@redhat.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, "H . J . Lu " <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 =?UTF-8?q?Kristina=20Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Florian Weimer <fweimer@redhat.com>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

v8.5-BTI introduces the GP field in stage 1 translation tables which
indicates that blocks and pages with it set are guarded pages for which
branch target identification checks should be performed. Decode this
when dumping the page tables to aid debugging.

Signed-off-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/mm/dump.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
index 860c00ec8bd3..78163b7a7dde 100644
--- a/arch/arm64/mm/dump.c
+++ b/arch/arm64/mm/dump.c
@@ -145,6 +145,11 @@ static const struct prot_bits pte_bits[] = {
 		.val	= PTE_UXN,
 		.set	= "UXN",
 		.clear	= "   ",
+	}, {
+		.mask	= PTE_GP,
+		.val	= PTE_GP,
+		.set	= "GP",
+		.clear	= "  ",
 	}, {
 		.mask	= PTE_ATTRINDX_MASK,
 		.val	= PTE_ATTRINDX(MT_DEVICE_nGnRnE),
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
