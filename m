Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE2090184
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 14:28:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LqIF3whFTOJcAbhOpETXB8QgFdy9SlQ9UuCYDjupZ9M=; b=Jh8+1oHl7KJ+LXFTwo1Es7rTXQ
	3Evu1DezugcGLM/6Hcg0mTTHim6Myy+tkcvGHhhHTSbPPgdub7GKcOp5LgY8rUZjg0NufquRrgT2Y
	ezq+UCR+FopBAlA4Z/NmH30YxTXYoG+9Zjg3u+/fu1K7h1PEWDbIck43hYB41E7qLnEPR1nGvUVgI
	PSAdlzp/Z5d3F8Aq2i1AxEtdP5d+kjB2uRZeaUVaqmwh7gKRvGdqJUCLSUaVEZuRS9yhemABCityA
	myRuepBxNFVOZiK+Xrj/3IeEy19g+G6XgpSsef+0m4L0YEI8IA15AF1I5CcPJWSMBY2HtzhTeHTki
	uEjCLrDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybL1-0008Do-OM; Fri, 16 Aug 2019 12:28:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hybHr-0004Np-To
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 12:24:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C592C344;
 Fri, 16 Aug 2019 05:24:55 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8C2B63F706;
 Fri, 16 Aug 2019 05:24:54 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jpoimboe@redhat.com
Subject: [RFC v4 11/18] arm64: alternative: Mark .altinstr_replacement as
 containing executable instructions
Date: Fri, 16 Aug 2019 13:23:56 +0100
Message-Id: <20190816122403.14994-12-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190816122403.14994-1-raphael.gault@arm.com>
References: <20190816122403.14994-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_052456_155360_0469E0DC 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: raph.gault+kdev@gmail.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, Raphael Gault <raphael.gault@arm.com>,
 julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Until now, the section .altinstr_replacement wasn't marked as containing
executable instructions on arm64. This patch changes that so that it is
coherent with what is done on x86.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 arch/arm64/include/asm/alternative.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
index b9f8d787eea9..e9e6b81e3eb4 100644
--- a/arch/arm64/include/asm/alternative.h
+++ b/arch/arm64/include/asm/alternative.h
@@ -71,7 +71,7 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
 	ALTINSTR_ENTRY(feature,cb)					\
 	".popsection\n"							\
 	" .if " __stringify(cb) " == 0\n"				\
-	".pushsection .altinstr_replacement, \"a\"\n"			\
+	".pushsection .altinstr_replacement, \"ax\"\n"			\
 	"663:\n\t"							\
 	newinstr "\n"							\
 	"664:\n\t"							\
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
