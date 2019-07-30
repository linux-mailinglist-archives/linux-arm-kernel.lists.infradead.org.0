Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFC97A602
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 12:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l5myXhBPKTCp5shEgzvvmPJkm830+mIiwL+ZFZaBauo=; b=NKReeifIrP/S+5
	ocYS7elYFSViIZzRiZVoB83oJKtREH5DMzqdpFli39nno5s/GDWLQg+vh3ewf6QjBVSXR+OliNBcd
	NLO+wwUocWynPeRchXsu8D9YBnbtwzCvl0uB1z9HiCLZ2bP5L/SdVpFDd0kXlq4rnjIe6ZvZT9lXI
	3vHlk1x10NYfziRsFvdhiNbXZgIkDFbodsMx1+W24QnQBFVrq+LgZGU3IGlw6iHHYmeB5MxW0EoP0
	R6e0vF4zF2DkRPmoC5WsCtBwoRUpoyMuetzcFZfTDP0gS3wSm4P99I7jXeNjWUw9rw/6B8z+8D2Pj
	3LVS3uVgw5wnYcOkEg6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsPLZ-0000Kg-NB; Tue, 30 Jul 2019 10:27:09 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsPL5-0000KI-SS
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 10:26:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Oq65KDnY9XqFo6m1/tHdeW5VvhuWjCwDoJglK6ltgPM=; b=LgK3wXeEmDLxBFCqxf9YuI43x
 YKM94LmHs2ECngNxFCRvmkPJmCSG3iwuKSHlkaqR8lYwYR0s9ZnVeUpPjr2sBe9QtfQqozlsK8buN
 deisiDOdcNpL+eaEA+Z7QD/O/fzrwQWAJMgRZUBX0zgUCLa9Y+5FlMrnnIEKO5u34ltkw=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hsPL3-00075W-7Y; Tue, 30 Jul 2019 10:26:37 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 4E9EA2742CB5; Tue, 30 Jul 2019 11:26:36 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: Remove unused cpucap_multi_entry_cap_cpu_enable()
Date: Tue, 30 Jul 2019 11:26:31 +0100
Message-Id: <20190730102631.6218-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_032639_918968_2B26BC87 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The function cpucap_multi_entry_cap_cpu_enable() is unused, remove it to
avoid any confusion reading the code and potential for bit rot.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/include/asm/cpufeature.h | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 407e2bf23676..74295194759f 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -362,21 +362,6 @@ cpucap_multi_entry_cap_matches(const struct arm64_cpu_capabilities *entry,
 	return false;
 }
 
-/*
- * Take appropriate action for all matching entries in the shared capability
- * entry.
- */
-static inline void
-cpucap_multi_entry_cap_cpu_enable(const struct arm64_cpu_capabilities *entry)
-{
-	const struct arm64_cpu_capabilities *caps;
-
-	for (caps = entry->match_list; caps->matches; caps++)
-		if (caps->matches(caps, SCOPE_LOCAL_CPU) &&
-		    caps->cpu_enable)
-			caps->cpu_enable(caps);
-}
-
 extern DECLARE_BITMAP(cpu_hwcaps, ARM64_NCAPS);
 extern struct static_key_false cpu_hwcap_keys[ARM64_NCAPS];
 extern struct static_key_false arm64_const_caps_ready;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
