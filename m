Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9618D863E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 16:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RFEKR1mRLoOEDRS5C+qxSRzz2H/AqH6t9EzmCZW3xTI=; b=DEuL8h09D+5st4
	PaYaHXvP6NLqMw1hBmtcwGMenFzD4N4Tw2GRZab46uTJ52jgyon5vlH9kugMNYgLgd/89vgcw60sr
	lMFMKAMFP1Zeh+S2El186NN/sOphD2SHHO6ZxJdaWT+kyshamI/lQz+uRTXJSZxZjLZqjDAsHUSI9
	SzuZhKLQCsyf0OEBOZtp8eZAhKoPEP0IpM011fdvK9X/jAvF5H47QSMY6PJGuKNMAdzRcFkKNhmiQ
	YfI+elhPk7Za+Y+Bou6aFTrMotTDwUyIy8rVnfIrd8sUreYijTdDZcCKDaSaC34sSH0OkpXzzI9Fk
	lnMyLysSU8r++Z7nvUzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvj3T-0005wA-14; Thu, 08 Aug 2019 14:06:11 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvj3H-0005vg-0k
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 14:06:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SImDKSM2HcJ+ZUqsqr20BIz97cO5dr6FVETqnhsBBs4=; b=uROR0PwB9njR93Gr+89JKDpG3
 0kWnzZxB0/ld6D9SM2llJ90InXgJCCBWv1dgJu+B/RScRxgEFC4g7kk+nUhTdL3Mf5h+8vTkOKe3m
 9MmgqN2BJtjzaSjIAIqRUguhtbhnIzVjkjTHbBuThEs2xjG9ioI7jRcgvTKBaKzNiSBF8=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hvj3E-00034v-J2; Thu, 08 Aug 2019 14:05:56 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 49CCD2742B42; Thu,  8 Aug 2019 15:05:55 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, will@kernel.org,
 catalin.marinas@arm.com
Subject: [PATCH v3] arm64: Clarify when cpu_enable() is called
Date: Thu,  8 Aug 2019 15:05:54 +0100
Message-Id: <20190808140554.13212-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_070559_062166_CAAD1D16 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Strengthen the wording in the documentation for cpu_enable() to make it
more obvious to readers not already familiar with the code when the core
will call this callback and that this is intentional.

Signed-off-by: Mark Brown <broonie@kernel.org>
---

v3: Whitespace
v2: Much more verbose wording from Suzuki.

 arch/arm64/include/asm/cpufeature.h | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index cf65a47ee6b4..eaeb030d0b95 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -289,9 +289,16 @@ struct arm64_cpu_capabilities {
 	u16 type;
 	bool (*matches)(const struct arm64_cpu_capabilities *caps, int scope);
 	/*
-	 * Take the appropriate actions to enable this capability for this CPU.
-	 * For each successfully booted CPU, this method is called for each
-	 * globally detected capability.
+	 * Take the appropriate actions to configure this capability
+	 * for this CPU. If the capability is detected by the kernel
+	 * this will be called on all the CPUs in the system,
+	 * including the hotplugged CPUs, regardless of if the
+	 * capability was *available* on that specific CPU. This is
+	 * useful for some capabilities (e.g, working around CPU
+	 * errata), where all the CPUs must take some action (e.g,
+	 * changing system control/configuration). Thus, if an action
+	 * is required only if the CPU has the capability, then the
+	 * routine must check it before taking any action.
 	 */
 	void (*cpu_enable)(const struct arm64_cpu_capabilities *cap);
 	union {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
