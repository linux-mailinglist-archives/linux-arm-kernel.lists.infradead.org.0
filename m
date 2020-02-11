Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A083C158EAF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 13:40:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z2wwiG1XHycHwQR4RkoDRnzWLl+bNSqenox0+R3LDWA=; b=jAxYR0+jXoYSrR
	9imTqzlGNcNd1ruykmHIKYNtgvjoI1eBWF9FPmDIQvGH3X22nilY+28J+LUwOGkSOFGWCIouin6uH
	vD3eNkpXDd8gpMYmxXFUf50aJ3D/LQqgCSXby9c8oBV9FgZrTGiYeDk5WSW8WZbSTsnS2eOHy2DRc
	rq7mqJLdHJ9wUEbk7EHFrJqwPGOySikGFeDoDDV7PFbSnkcU3tUlB0EDxavdtAKRpPgt3Md8TBh6s
	bpPjo+QCfzFQsCicAd4/8CZ7CRe9rUhxzh+rfVTF5AD7heF+G0uckVXvYiUl0pQ3OTLNu97jngE15
	0zfalQtThOMLLPp2fAnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1UqM-0002BO-Gg; Tue, 11 Feb 2020 12:40:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Upc-0000PL-Cr
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 12:40:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 42F181FB;
 Tue, 11 Feb 2020 04:39:59 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BD3253F6CF;
 Tue, 11 Feb 2020 04:39:58 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 3/3] arm64: ftrace: Modernise annotation of return_to_handler
Date: Tue, 11 Feb 2020 12:39:51 +0000
Message-Id: <20200211123951.6945-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200211123951.6945-1-broonie@kernel.org>
References: <20200211123951.6945-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_044000_514698_26EFD5FD 
X-CRM114-Status: GOOD (  10.26  )
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In an effort to clarify and simplify the annotation of assembly
functions new macros have been introduced. These replace ENTRY and
ENDPROC with two different annotations for normal functions and those
with unusual calling conventions.

return_to_handler does entertaining things with LR so doesn't follow the
usual C conventions and should therefore be annotated as code rather than
a function.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/entry-ftrace.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/entry-ftrace.S b/arch/arm64/kernel/entry-ftrace.S
index baf5a20a5566..820101821ac4 100644
--- a/arch/arm64/kernel/entry-ftrace.S
+++ b/arch/arm64/kernel/entry-ftrace.S
@@ -320,7 +320,7 @@ SYM_FUNC_END(ftrace_stub)
  * Run ftrace_return_to_handler() before going back to parent.
  * @fp is checked against the value passed by ftrace_graph_caller().
  */
-ENTRY(return_to_handler)
+SYM_CODE_START(return_to_handler)
 	/* save return value regs */
 	sub sp, sp, #64
 	stp x0, x1, [sp]
@@ -340,5 +340,5 @@ ENTRY(return_to_handler)
 	add sp, sp, #64
 
 	ret
-END(return_to_handler)
+SYM_CODE_END(return_to_handler)
 #endif /* CONFIG_FUNCTION_GRAPH_TRACER */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
