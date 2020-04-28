Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FC41BC691
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 19:25:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OrjY6ty8zOBmduN10OPGTg0rTaaY+MsY6Eok3iZyrNk=; b=gggiyyyfnHiq+/
	Z0p9opHApvPelYf6GaMfxVom00AbfCVEo+uCXlfdLpGsIez/gg5lhiCg/kThGIUWpgesr4DtnR5EP
	kvAv2yHGzeKmV2O8mQVO6TRJcxY+XdkxASFmQzt52WQ+DlmfnOupwPff5xogf5wLcLC2Qldn/so8n
	vrMfh1oNeQOYjeQkOk8CIOk9SNnX18jYRpJK+G2DcLz0ReIWlNjW501gCI7orutf0LCj4UPvi4pyb
	yovp0TwhtP9Cj+ppMyKZCHkIs93LS5IJAnLriHLzokCJOpJDA/TParcwCHglNqbCTE6j7XA49jRbE
	BFrS6Kc6RjuspGA0cTyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTzG-0000Ks-C9; Tue, 28 Apr 2020 17:25:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTyM-0005so-IA
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 17:24:44 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5EF90208E0;
 Tue, 28 Apr 2020 17:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588094681;
 bh=PxzVwDQSxz91y669CDllRzV9oc10BYU/GB6IQFwvqB4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XEr2thpbtCnBg/TTm84AtqisvRQEE91Owavo3n/ysqCQ3AIJOaE74Nf+bMwJZRbd0
 zC5ZxyvgQxMyaEmCd0up2N/F3uGM6ajtHrHKFF7BpD690jhJ1ZSTzN7B5kyweZD8w/
 OeIqVBmEQEkcHzgAKgvNd3LUhGJpm18A3Wg9457E=
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v2 1/3] arm64: insn: Don't assume unrecognized HINTs are NOPs
Date: Tue, 28 Apr 2020 18:24:31 +0100
Message-Id: <20200428172433.48830-2-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200428172433.48830-1-broonie@kernel.org>
References: <20200428172433.48830-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_102442_763171_3C7FFEF2 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Currently the kernel assumes that any HINT which it does not explicitly
recognise is a NOP.  This is not robust as new instructions may be added
which need special handling, including recent extensions like PAC, and
in any case software should only be using explicit NOP instructions for
deliberate NOPs.

This has the effect of rendering PAC and BTI instructions unprobeable
which means that probes can't be inserted on the first instruction of
functions built with those features.

Signed-off-by: Mark Brown <broonie@kernel.org>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
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
