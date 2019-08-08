Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49563863B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 15:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GxCV67G3763yvvYq4Qu51MeCpLiC76/J0/du5IMK5H8=; b=PRXovW194M6AZg
	lvXi60Y7UG8Mngeea/N1yTV3tn9S/MousGZPkhaZlBADRAxScoFLCbLI4BEKYcFeIU48hv5nEuHQx
	LcXShpnOnbuvvYz4UkTQteWSRDT9aQnxUtHC6tSGr/sj93xrFT00psbXtoQHknkNihM7V7xQ3fD8W
	iuHUnpCuElzq3WidP+GL9OiJ/0kkZkTsLDei2oRHc2lHoH2q5l3nddQhezNOU8Riaccz+vPDG4iO6
	oHO9vw1I7hYu3wK9rxoLFqs1pmvFVfDOe02zBNqf1KPKcLCOcy9TI2g+OXWL/eNzmV6muWGPlshl6
	bLdoQETWhn5EY4G3PMJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvirO-0000PP-GR; Thu, 08 Aug 2019 13:53:42 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvirF-0000Oq-0V
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 13:53:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j9sVkX7iG95XW2uL1ci6XZZXOp4E1p7xcPTgu3H1MTQ=; b=Z9SUE7rXhSWc8Me1l6zmgkIOW
 Ma8mJnYlK3aNJFNwz0VUfDsyDs/zXDz/DVXcsNIA6kyYNYTRg3KYV8Pypgsj6bE4bHRRQvYyISEwm
 TUoKfGvH35k/Hrb2IiIrwFbNDm18Rlyz3p85xAAMWo2AWACxxTfgUHaBQUzLbvqiOZMwE=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hvirB-00033c-QM; Thu, 08 Aug 2019 13:53:29 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id D5DE02742B42; Thu,  8 Aug 2019 14:53:28 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, will@kernel.org,
 catalin.marinas@arm.com
Subject: [PATCH v2] arm64: Clarify when cpu_enable() is called
Date: Thu,  8 Aug 2019 14:53:28 +0100
Message-Id: <20190808135328.12655-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_065333_075851_AC05D9CC 
X-CRM114-Status: GOOD (  10.68  )
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

v2: Much more verbose wording from Suzuki.

 arch/arm64/include/asm/cpufeature.h | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index cf65a47ee6b4..2447d4afbf54 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -289,9 +289,17 @@ struct arm64_cpu_capabilities {
 	u16 type;
 	bool (*matches)(const struct arm64_cpu_capabilities *caps, int scope);
 	/*
-	 * Take the appropriate actions to enable this capability for this CPU.
-	 * For each successfully booted CPU, this method is called for each
-	 * globally detected capability.
+	 * Take the appropriate actions to configure this capability
+	 * for this CPU.  If the capability is detected by the kernel
+	 * this will be called on all the CPUs in the system,
+	 * including the hotplugged CPUs, regardless of if the
+	 * capability was *available* on that specific CPU. This is
+	 * useful for some capabilities (e.g, working around CPU
+	 * errata), where all the CPUs must take some action (e.g,
+	 * changing system control/configuration).  Thus, if an action
+	 * is required only if the CPU has the capability then the
+	 * routine must check it before taking any action.
+
 	 */
 	void (*cpu_enable)(const struct arm64_cpu_capabilities *cap);
 	union {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
