Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEBFF07F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:13:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rbQqTuYrUQmpvKAaGv92odOHaDZfgTS+6TleLoBoPP0=; b=HSA2nGdaQeS4WVV21vOqiwrJcX
	IdVcRh/e9Ixp70gE366ATdyHG/3hJ0xdG0zxzHtzKzYdppRtCY4ZSJw21PJ40Ua0D1qdh+B0ck/LP
	p08K/Jbaokpt1qXSw6Mh+kO4y38g9oacm4k34XB00NugIVHbcTIOK77soHcj79xR7zQ5sO9gETNCL
	KjhpW48AD2iEaS/21u5h5sSbYCB8L2OZSmzk36/3ykTnxEOd3q+rd6NaCkMlOwRncjh2bGJ1HLo9h
	otXQbR0B95TAXJijje9wVRVLLMfqkXwP63DGJMKaPdna08Q4fQTGE9FjPdzrjHwDULaulZnJ/PV0K
	QXgKs+uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS69C-00065Q-4t; Tue, 05 Nov 2019 21:13:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5xB-00008Z-3R
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:01:30 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A9A1521929;
 Tue,  5 Nov 2019 21:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987688;
 bh=OHFK0s++1NG+26ps1ryADcjFmcu2J6IdT8VhHfuWE0o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WsnW4MeIJJc1lr+sTxK9BSL8fSPo8EPqEe7n8xK0hZfUCUsz4La4UL86EdSQ+L4zh
 goul9BLytd14903WI9G2E1+Ntknh2AlQ0kFxgycl+Eu3genK05H4WXajqZrdwY9zxj
 3G/vQELUHVfqCJXkDPDEQy/+N4srPL6+zDq3ydRk=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 52/53] ARM: ensure that processor vtables is
 not lost after boot
Date: Tue,  5 Nov 2019 21:58:45 +0100
Message-Id: <20191105205846.1394-53-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_130129_240939_54E6A7E0 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Sasha Levin <sashal@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Tony Lindgren <tony@atomide.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 "David A . Long" <dave.long@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit 3a4d0c2172bcf15b7a3d9d498b2b355f9864286b upstream.

Marek Szyprowski reported problems with CPU hotplug in current kernels.
This was tracked down to the processor vtables being located in an
init section, and therefore discarded after kernel boot, despite being
required after boot to properly initialise the non-boot CPUs.

Arrange for these tables to end up in .rodata when required.

Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
Tested-by: Krzysztof Kozlowski <krzk@kernel.org>
Fixes: 383fb3ee8024 ("ARM: spectre-v2: per-CPU vtables to work around big.Little systems")
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: David A. Long <dave.long@linaro.org>
Reviewed-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/mm/proc-macros.S | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/mm/proc-macros.S b/arch/arm/mm/proc-macros.S
index 212147c78f4b..d36a283b4099 100644
--- a/arch/arm/mm/proc-macros.S
+++ b/arch/arm/mm/proc-macros.S
@@ -259,6 +259,13 @@
 	.endm
 
 .macro define_processor_functions name:req, dabort:req, pabort:req, nommu=0, suspend=0, bugs=0
+/*
+ * If we are building for big.Little with branch predictor hardening,
+ * we need the processor function tables to remain available after boot.
+ */
+#if 1 // defined(CONFIG_BIG_LITTLE) && defined(CONFIG_HARDEN_BRANCH_PREDICTOR)
+	.section ".rodata"
+#endif
 	.type	\name\()_processor_functions, #object
 	.align 2
 ENTRY(\name\()_processor_functions)
@@ -294,6 +301,9 @@ ENTRY(\name\()_processor_functions)
 	.endif
 
 	.size	\name\()_processor_functions, . - \name\()_processor_functions
+#if 1 // defined(CONFIG_BIG_LITTLE) && defined(CONFIG_HARDEN_BRANCH_PREDICTOR)
+	.previous
+#endif
 .endm
 
 .macro define_cache_functions name:req
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
