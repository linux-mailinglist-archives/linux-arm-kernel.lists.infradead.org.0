Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFAA1D57E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:29:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N49W+DugCknertA+7/dDE44tw5BQHuzCI5PBMMjQ3Uk=; b=beTYo5wMXcXaDo
	UXcIHrTURIW38KZNPw85cxV6SK2veenBaO2/xcolkSyCX+h9bjgZ6ZJyIctFAd70ednLFdDK8y+/n
	gmsEBVnxlEb7HXDkzdnpsGpbnC9kPKhRDWeqnlvotaPWXFPKjMTMuSJx18L6/fDBktsGl76kCmeiA
	Ns4Ifz3W13T4ALjDHcLA8uwKOsikaz11pgHZ6GryNMpA1vfZHOucddBKodrTQDy9y7cuOk8lQklAQ
	LlMP1Vl839k+yvzxH9zWtcES4BBioZgM0xT/R2+t5g/fl8f160XGzz5pnhb8ASobSUIUAE0e7kE5L
	RESvN/z/K2s7mka6tKdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZe9W-0001JU-Qy; Fri, 15 May 2020 17:29:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZe8A-0000EW-Ca
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:28:19 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DB162207DA;
 Fri, 15 May 2020 17:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589563697;
 bh=ABe6HtCY2BXd5/kuL4vILx9xPHe8+HCzgvhneFJFTyk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=r8Bq6TnL9F9NCbt6Nn3/Eifd+upKBoavceS4C7D/UHKa6I3fQ1C5JA+08R22FK84P
 tsHNSdBR7iXkE+esIPeR0qsd/EAs6d/+9zw36V/JLMVgYZio6erR905reXmUfnkBb/
 KLU94b9Y5U2Zn4rby6g+vUV7WHwL61PKSKauhK58=
From: Will Deacon <will@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5/6] scs: Remove references to asm/scs.h from core code
Date: Fri, 15 May 2020 18:27:55 +0100
Message-Id: <20200515172756.27185-6-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515172756.27185-1-will@kernel.org>
References: <20200515172756.27185-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_102818_480547_30339CE4 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel-team@android.com, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@am.com>,
 Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

asm/scs.h is no longer needed by the core code, so remove a redundant
header inclusion and update the stale Kconfig text.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/Kconfig | 4 ++--
 kernel/scs.c | 1 -
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index 45dfca9a98d3..2e6f843d87c4 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -537,8 +537,8 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
 	bool
 	help
 	  An architecture should select this if it supports Clang's Shadow
-	  Call Stack, has asm/scs.h, and implements runtime support for shadow
-	  stack switching.
+	  Call Stack and implements runtime support for shadow stack
+	  switching.
 
 config SHADOW_CALL_STACK
 	bool "Clang Shadow Call Stack"
diff --git a/kernel/scs.c b/kernel/scs.c
index faf0ecd7b893..222a7a9ad543 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -10,7 +10,6 @@
 #include <linux/scs.h>
 #include <linux/slab.h>
 #include <linux/vmstat.h>
-#include <asm/scs.h>
 
 static struct kmem_cache *scs_cache;
 
-- 
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
