Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E2CEB566
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:52:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MRucDTZGQdLVPSeQMm94UJhAJKDxlOBWPuvhZh9mjt0=; b=GPW2JW/dO5R8ec
	ODcQmDiIr5U8g3P08sjsmaU7UaBUV9xi/AeLiqmuuF7h7x3qtWu380dX6ZedCf7x/8a384nAB+/tz
	GQ+sify87C5630oXonAoShjLDd0bXIWW0AEIUNfTiAds5gjazyzmr5gvetl1e+0Q+iVL+8gz3efzc
	4fA3fkq9T9dFnzEf5bgwv04vTQc1YAwoEu5VbksEluDdvYW3cfbbjsKePZl3dtcIyyiTWPA7T6fQk
	2EdXIqn0+6fjlEaNVfiQIzXoz4cp7eWYGVgwMWn8YUOhhVRmveLyA/79FUyI/kX+cSLhI5Hfm7Ciq
	Ws16bZzklOCiu32U1i9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDgs-0003R9-VM; Thu, 31 Oct 2019 16:52:54 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDbY-0007Dx-60
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:47:37 +0000
Received: by mail-pg1-x54a.google.com with SMTP id w9so4796139pgl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 09:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=3L2fKWe0mnTKbOXtDJWS5MdWfgbISjm7SM0mf8jhMMs=;
 b=M2bQgEs0bbsNq8MNMFthK/YaXaNa7lsVfAcQUrIhxB6WHow3p7zT6DMI2hPzQ12JyE
 dBDu7tLmmK0EEcTfQyug+zjuDgAcD7mKPl6tI6HWHtIIlglIWBDrRvtighs9FmRdTeuA
 Utjfp/h/JCLg0sI4eJJnpaaKwajzXzqbouGFFnbQW8bF3vHks01IkHDwLbusJqIJbbtz
 HjJPj0I7fONVzT+V+kvjMVqj2r1bUa9I2Mu1YNcXlrszcM7cVDBp5tO3PZ8B+1C1keZf
 wVg7wmq11bbXPEPFRcmQQMxy7vNpqsJV3Tc3WBhABGzYCzx8tPiXjJJoVrXeY98hn2vr
 fLvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=3L2fKWe0mnTKbOXtDJWS5MdWfgbISjm7SM0mf8jhMMs=;
 b=Mwx+zGFQL7orsI/nlDgwpV6/dGlY7LUGXY02XA1hKidkQpBQ0qImGU+seheqIuDhPQ
 LRjKF/BJC0Ns+ZIE79lefkWUoyXZB913DbJjyViqi3ryUL6mUO+BaH1BAKM2+uWKMZ3L
 2N8cHxDJ+Zxc9q+XgB58XVANwoJS14t1aG4DbTSLxoekUXl5d76XYdxm3FgFFnEczHOo
 I8gw/ni+8Gm5LtFGwZnHJ5feLme06eMPSKfdBDNDJEwULQGkxSxb9vUCFBEPdX1YHuNi
 wXE130wUFBvpTIgRNrLOTE+tJ5oXCofi5VmXtQYiavmafQKn+l/BAGJAQ2Rz1z5y1rO1
 q38g==
X-Gm-Message-State: APjAAAVRBqEmoVzfGEl9DOtj/WaJ7gGxdX71cqrKPdSTfxMc4a3+exMN
 O3ehGkz4G2jPnpLyPeN31ACSX8JYxdBUOSmoNtw=
X-Google-Smtp-Source: APXvYqydEhVHkKqut2+3OaRd8Srg3EG2C5xvERxBciOyTLScaCHzKIIF3dA+VkAqRL7gbd3nEjDN/XqnvRbx9STn/rY=
X-Received: by 2002:a63:d0d:: with SMTP id c13mr7797535pgl.138.1572540438115; 
 Thu, 31 Oct 2019 09:47:18 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:33 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 13/17] arm64: preserve x18 when CPU is suspended
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_094732_831160_92F4A3B3 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Don't lose the current task's shadow stack when the CPU is suspended.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/include/asm/suspend.h | 2 +-
 arch/arm64/mm/proc.S             | 9 +++++++++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/suspend.h b/arch/arm64/include/asm/suspend.h
index 8939c87c4dce..0cde2f473971 100644
--- a/arch/arm64/include/asm/suspend.h
+++ b/arch/arm64/include/asm/suspend.h
@@ -2,7 +2,7 @@
 #ifndef __ASM_SUSPEND_H
 #define __ASM_SUSPEND_H
 
-#define NR_CTX_REGS 12
+#define NR_CTX_REGS 13
 #define NR_CALLEE_SAVED_REGS 12
 
 /*
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index fdabf40a83c8..0e7c353c9dfd 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -49,6 +49,8 @@
  * cpu_do_suspend - save CPU registers context
  *
  * x0: virtual address of context pointer
+ *
+ * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
  */
 ENTRY(cpu_do_suspend)
 	mrs	x2, tpidr_el0
@@ -73,6 +75,9 @@ alternative_endif
 	stp	x8, x9, [x0, #48]
 	stp	x10, x11, [x0, #64]
 	stp	x12, x13, [x0, #80]
+#ifdef CONFIG_SHADOW_CALL_STACK
+	str	x18, [x0, #96]
+#endif
 	ret
 ENDPROC(cpu_do_suspend)
 
@@ -89,6 +94,10 @@ ENTRY(cpu_do_resume)
 	ldp	x9, x10, [x0, #48]
 	ldp	x11, x12, [x0, #64]
 	ldp	x13, x14, [x0, #80]
+#ifdef CONFIG_SHADOW_CALL_STACK
+	ldr	x18, [x0, #96]
+	str	xzr, [x0, #96]
+#endif
 	msr	tpidr_el0, x2
 	msr	tpidrro_el0, x3
 	msr	contextidr_el1, x4
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
