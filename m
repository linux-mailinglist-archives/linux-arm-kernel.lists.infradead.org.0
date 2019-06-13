Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8E1441C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:18:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kwcUiHIpeJWoRffbQhHEiNGWNBqSByOpWb7VetBN7Po=; b=YKsWlx26ZUwEjm9smfbjBj0UHL
	DlW7osZ1PCQTue/O+ElRDrypolFRTWQUebr5HZIzBO7vBBwPtsRAgbUscTxR01fy5Tyw6MpmR7AD7
	RnTdS5URA4DDQoAlQlANUN3oCDIDOnx/80yyUsek8Bqz/YiX7thwQptlR0OrXCEZUiNjF66LdxYjM
	V9mp2FAKh+WF1KpG1bUZlOZ1xYcy17IlntW9NoXDJubuTSGRLA3NcQ/WueDxaacm8MYW33pCgYWuB
	HXyze9ofo+u7P827ACVtfft6DfZuuJC1OPj/Laa5heNzTbQteBunZLaOlouW4JkToMeO8iXXF7fyI
	0asH/36g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSQk-0004wK-FH; Thu, 13 Jun 2019 16:18:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSPU-00046b-Fu
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:17:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 08C6EC84;
 Thu, 13 Jun 2019 09:17:08 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8D6313F694;
 Thu, 13 Jun 2019 09:17:06 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v2 3/8] arm64/fpsimdmacros: Allow the macro "for" to be
 used in more cases
Date: Thu, 13 Jun 2019 17:16:51 +0100
Message-Id: <20190613161656.20765-4-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190613161656.20765-1-julien.grall@arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_091708_607411_EE463BE2 
X-CRM114-Status: GOOD (  12.41  )
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, Julien Grall <julien.grall@arm.com>,
 alex.bennee@linaro.org, Dave Martin <dave.martin@arm.com>, Daniel.Kiss@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current version of the macro "for" is only able to work when the
counter is used to generate registers using mnemonics. This is because
gas is not able to evaluate the expression generated if used in
registers name (i.e x\n).

Gas offers a way to evaluate macro arguments by using % in front of
them under the alternate macro mode [1].

The implementation of "for" is updated to use the alternate macro mode
and %, so we can use the macro in more cases. As the alternate macro mode
may have side-effect, this is disabled when generating the body.

While it is enough to prefix the argument of the macro "__for_body" with
%, the arguments of "__for" are also prefixed to get a more bearable
value in case of compilation error.

[1] https://sourceware.org/binutils/docs/as/Altmacro.html

Suggested-by: Dave Martin <dave.martin@arm.com>
Signed-off-by: Julien Grall <julien.grall@arm.com>

---
    Changes in v2:
        - Fix typo in the commit message
---
 arch/arm64/include/asm/fpsimdmacros.h | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/fpsimdmacros.h b/arch/arm64/include/asm/fpsimdmacros.h
index 46843515d77b..e2ab77dd9b4f 100644
--- a/arch/arm64/include/asm/fpsimdmacros.h
+++ b/arch/arm64/include/asm/fpsimdmacros.h
@@ -177,19 +177,23 @@
 
 .macro __for from:req, to:req
 	.if (\from) == (\to)
-		_for__body \from
+		_for__body %\from
 	.else
-		__for \from, (\from) + ((\to) - (\from)) / 2
-		__for (\from) + ((\to) - (\from)) / 2 + 1, \to
+		__for %\from, %((\from) + ((\to) - (\from)) / 2)
+		__for %((\from) + ((\to) - (\from)) / 2 + 1), %\to
 	.endif
 .endm
 
 .macro _for var:req, from:req, to:req, insn:vararg
 	.macro _for__body \var:req
+		.noaltmacro
 		\insn
+		.altmacro
 	.endm
 
+	.altmacro
 	__for \from, \to
+	.noaltmacro
 
 	.purgem _for__body
 .endm
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
