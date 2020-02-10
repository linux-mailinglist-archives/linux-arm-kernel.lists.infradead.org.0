Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD33158375
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 20:21:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YW7pbLMXvH8GxtcxGyd69K8n8DVltFdiUer79gwOgCI=; b=ftlGftql8QC13P
	Bnss0MSPbvoPRZZLA0u/Vii/Dx0CRl0c/H6uc5c4p9XeTw7y2VWiszQCd4Po332n5D2cLwdEwikFN
	2Cx3g0Sx4XQFRxjh3RQ8j7aAISWid6uHMOSlJw3q9tI2AqK8gZGmUs4bAUsvuRhbIHUIQX1rTwWmg
	IDDg5/XVxF0C6KELBu+TzFH1Za/jAOIaUfh9nIp1zwG59zj82n9yyZkc331fE671UPUsdAfA6S1wb
	VIZ3/F9fbiPBmNCyPneQMBgRmi+ngoAZde0y8sBgbwpf6sqYgyKZiQUc4fsFZruiWoFLkizbzFgc9
	HpAjccv6lKGofk22k47w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1EcS-0001YK-Lc; Mon, 10 Feb 2020 19:21:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1EcI-0001X1-0n
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 19:21:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A8F51FB;
 Mon, 10 Feb 2020 11:21:06 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 611153F68F;
 Mon, 10 Feb 2020 11:21:05 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com
Subject: [PATCH] arm64: Fix CONFIG_ARCH_RANDOM=n build
Date: Mon, 10 Feb 2020 19:21:01 +0000
Message-Id: <245aede65d9834101efc9e470f50633b7052e1a8.1581362270.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_112110_099396_D245D009 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The entire asm/archrandom.h header is generically included via
linux/archrandom.h only when CONFIG_ARCH_RANDOM is already set, so the
stub definitions of __arm64_rndr() and __early_cpu_has_rndr() are only
visible to KASLR if it explicitly includes the arch-internal header.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/kernel/kaslr.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
index 53b8a4ee64ff..91a83104c6e8 100644
--- a/arch/arm64/kernel/kaslr.c
+++ b/arch/arm64/kernel/kaslr.c
@@ -11,6 +11,7 @@
 #include <linux/sched.h>
 #include <linux/types.h>
 
+#include <asm/archrandom.h>
 #include <asm/cacheflush.h>
 #include <asm/fixmap.h>
 #include <asm/kernel-pgtable.h>
-- 
2.23.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
