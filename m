Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 538CECADA5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 19:51:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7YxTPm8J5/2SR080Gxj/kc6aeoQ+XhmN8LLCp/S6g8=; b=BIvaXOSiTTW4Rv
	jwC2ovOOVV2MHyjb1ttqeRRaG/WM+9mdMW+cjDbzLOYuMVyI/aGC/uNXMdQMDS0EUEEtQ6SyBBtEm
	95DT+FFJkbPUZm/ANyg1sLM7gereEfAkPO/4qY4WKeSN+eYPcVZDXBoH7fqgEeSNUETxbngb80ead
	EIkFA0i7LzvPdbZIKACmt11gGPY6Ej2oK5c03sZ+EbaZLWPrMpFv5hSvZufs8Hk8MklLNEt0eAbQj
	uKQmpcQFaHKLLR4VtpOxyhYxhLvBfzJhlNmFGamkNWX0Hn2imiWblLCgl9mC3soO46WO4D3pc8roB
	TQ/nW3sTBQwzCA3539mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG5GJ-0002BY-Vk; Thu, 03 Oct 2019 17:51:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG5Dl-0007ny-HR
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 17:48:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 684E01000;
 Thu,  3 Oct 2019 10:48:57 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 300563F739;
 Thu,  3 Oct 2019 10:48:56 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 6/6] lib: vdso: Remove CROSS_COMPILE_COMPAT_VDSO
Date: Thu,  3 Oct 2019 18:48:38 +0100
Message-Id: <20191003174838.8872-7-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191003174838.8872-1-vincenzo.frascino@arm.com>
References: <20191003174838.8872-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_104857_633344_363B8D8A 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
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
Cc: ard.biesheuvel@linaro.org, catalin.marinas@arm.com, ndesaulniers@google.com,
 luto@kernel.org, tglx@linutronix.de, vincenzo.frascino@arm.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

arm64 was the last architecture using CROSS_COMPILE_COMPAT_VDSO config
option. With this patch series the dependency in the architecture has
been removed.

Remove CROSS_COMPILE_COMPAT_VDSO from the Unified vDSO library code.

Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Andy Lutomirski <luto@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 lib/vdso/Kconfig | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/lib/vdso/Kconfig b/lib/vdso/Kconfig
index cc00364bd2c2..9fe698ff62ec 100644
--- a/lib/vdso/Kconfig
+++ b/lib/vdso/Kconfig
@@ -24,13 +24,4 @@ config GENERIC_COMPAT_VDSO
 	help
 	  This config option enables the compat VDSO layer.
 
-config CROSS_COMPILE_COMPAT_VDSO
-	string "32 bit Toolchain prefix for compat vDSO"
-	default ""
-	depends on GENERIC_COMPAT_VDSO
-	help
-	  Defines the cross-compiler prefix for compiling compat vDSO.
-	  If a 64 bit compiler (i.e. x86_64) can compile the VDSO for
-	  32 bit, it does not need to define this parameter.
-
 endif
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
