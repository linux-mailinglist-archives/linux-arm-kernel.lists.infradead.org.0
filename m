Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9475191A4A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 20:49:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hn6FTGsVqo7k+S/5gT4CFf9laak1sU0iEZARyUPsrGI=; b=rdn0NPFyhPdCqo
	7vflGaeIh1j0WZl9Q86h1djS2ocR951ucTFRHF0EXcdiqwEYaZ0hxDgNwqWd0ckeL84f7BhcIdB0J
	bVkVD1AykVTy3LkCeMu9aW6N7ULsOo9IXQNI1LCG3E22Smdu1QIP55e8Q7X1q7Cbgt20QHwGRrL6Z
	RH5jEIx7RUHBRpaLgoHQMY4ESNcQ6bpJbk/2XZ+eOeg0C3ILiAMl8r9iM6PNgYCohOglHC2vgtObb
	LLKAGlNFlRsFXY0X//icZnkpStiG8bmMq5Ss0Xj5iW4o2AdXgj+wdHelJhKd3rMdytrQSxJ9bKOx+
	Iuu2asiUg43fRnYStA7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGpXm-0005CD-5s; Tue, 24 Mar 2020 19:48:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGpXJ-0004so-TX
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 19:48:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C715BFEC;
 Tue, 24 Mar 2020 12:48:27 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4BEB03F71F;
 Tue, 24 Mar 2020 12:48:27 -0700 (PDT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 1/3] arm64: insn: Don't assume unrecognized HINTs are NOPs
Date: Tue, 24 Mar 2020 19:48:20 +0000
Message-Id: <20200324194822.15682-2-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200324194822.15682-1-broonie@kernel.org>
References: <20200324194822.15682-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_124829_997944_2AD4F95B 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the kernel assumes that any HINT which it does not explicitly
recognise is a NOP.  This is not robust as new instructions may be added
which need special handling, including recent extensions like PAC, and
in any case software should only be using explicit NOP instructions for
deliberate NOPs.

This has the effect of rendering PAC and BTI instructions unprobeable
which means that probes can't be inserted on the first instruction of
functions built with those features.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/insn.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index 4a9e773a177f..535a3a7a053e 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -58,14 +58,10 @@ bool __kprobes aarch64_insn_is_nop(u32 insn)
 		return false;
 
 	switch (insn & 0xFE0) {
-	case AARCH64_INSN_HINT_YIELD:
-	case AARCH64_INSN_HINT_WFE:
-	case AARCH64_INSN_HINT_WFI:
-	case AARCH64_INSN_HINT_SEV:
-	case AARCH64_INSN_HINT_SEVL:
-		return false;
-	default:
+	case AARCH64_INSN_HINT_NOP:
 		return true;
+	default:
+		return false;
 	}
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
