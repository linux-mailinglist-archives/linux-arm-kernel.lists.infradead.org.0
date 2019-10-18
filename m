Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFF5DCA7C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:12:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FyUeX+zmZNBEZRdsACaDphKQQDmq2u9NoZS04ck3a0s=; b=BkBEcMbh2beThj
	deavCqMgzMEqGslF/Cm872vdbUnynaONDZ8U+sYTJCezdm0E9EHQHV5yrp6W/iktSOzHDzIzRzNYQ
	XwoXGuDezO3/UxfyLqCVURvtQbxFLfxlHtg7vuTREEw8ajQJq9NW513hzNwrXG9Iew6tR8QGqDDRG
	4lloew6YHwOq7CrRYU5UtIy/44ZLbPPOWK+Sr5m0v5lo20NZZLEXDmJ9Z72n4C6IDLQDUmUL5kdAR
	RktAMpPMqXV/3AXyelYPlI6p3BfIfJtkXGsC/1uBD+qW4S3uav6RhvsLnYMnMz8MUBAy74yEkrNrK
	rHO3f7UUhIQ6PqU/QVSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUrA-0002Ih-6q; Fri, 18 Oct 2019 16:12:00 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUq5-0001Uc-3x
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:10:54 +0000
Received: by mail-pl1-x649.google.com with SMTP id g7so4044024plo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=jUS0dhIzgmFNCiOAuEUXvcuYNkuGL56ryAS+MUv7C/I=;
 b=i/jDfxdkcHMKcb5mbJursCxkiE0tLbcAT50ryu4atkNnzE9tZW2TQb4DunSXt4JOkt
 hyqhR6jkusYNpX0FQ9xmE9MPM+OkoO9XULEt54Q1eChfRkMXo6zH0LLx5BfDV9XxTViq
 ZY4f/W9+YSMQLmVbr5Hvv7U5xrLsx6ePGTXBQJ2GfNYSLJa/kqRf7pp4MN5xmr1Pm9vV
 U0cyLViFkAWt3zk7EDLd8J6L/oTDFeTktzFlIC0dgmBDCYk0vOIQhRFpRS9l6HZ8lGvH
 d40Qs4Z3TDODrADDi1vpWtmXBnOPWrst+YFdZPhbhVcTVQ3PCuWW86qVwWdHqVcy9DgV
 E2Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=jUS0dhIzgmFNCiOAuEUXvcuYNkuGL56ryAS+MUv7C/I=;
 b=E2bFxqUBBnuSwNsdpE8eZVCFVyaCnwXaqYMogv8YRsNKxHNt0ZIbn20ygj302Iyb43
 4rs55Qw52sbcx1n3uzla1jj92RAhAahWeNlR+sX3nqQgVp7zfbP4odNf2Y2VfoyWRDHP
 H6vrTcrojXV/GRViwFbAG0ICNFhEyBEqPUjYf5wH+R3ehHefc6qIPbBW9uJpHNLX3pAw
 EqQjt4dr+WfxvyriyHAMFXm97u8cGPDXL3rklSzvMyY7qCY2DhKyhiHQ/5u/TXwhZ/tc
 4C3UE+3TNyc9RyyzjkGqcpcPlMSgbrRKsWEntrG68ne1jfViaiKu9JkXGzUh1f4AkFWI
 o5Ew==
X-Gm-Message-State: APjAAAUxu7lKUwwtOE0FuB/R2xJm/GYDxb+qgGgnYra0MhUZeuXc/iyq
 m1N7Bw/xVm4oKhofb+pMw3FHKD4ijvQkHnTpmBg=
X-Google-Smtp-Source: APXvYqz/HNu+DPymnhir5Vk43GMqjgbnDJ4wWnLMl8QOvY1mBOlys6EjB+4bJm7Ch3Zb+wSpV6DGjPmmablFROD07lw=
X-Received: by 2002:a63:3201:: with SMTP id y1mr10741272pgy.174.1571415050913; 
 Fri, 18 Oct 2019 09:10:50 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:17 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 02/18] arm64/lib: copy_page: avoid x18 register in assembler
 code
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_091053_206796_76378040 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Register x18 will no longer be used as a caller save register in the
future, so stop using it in the copy_page() code.

Link: https://patchwork.kernel.org/patch/9836869/
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/lib/copy_page.S | 38 +++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/lib/copy_page.S b/arch/arm64/lib/copy_page.S
index bbb8562396af..8b562264c165 100644
--- a/arch/arm64/lib/copy_page.S
+++ b/arch/arm64/lib/copy_page.S
@@ -34,45 +34,45 @@ alternative_else_nop_endif
 	ldp	x14, x15, [x1, #96]
 	ldp	x16, x17, [x1, #112]
 
-	mov	x18, #(PAGE_SIZE - 128)
+	add	x0, x0, #256
 	add	x1, x1, #128
 1:
-	subs	x18, x18, #128
+	tst	x0, #(PAGE_SIZE - 1)
 
 alternative_if ARM64_HAS_NO_HW_PREFETCH
 	prfm	pldl1strm, [x1, #384]
 alternative_else_nop_endif
 
-	stnp	x2, x3, [x0]
+	stnp	x2, x3, [x0, #-256]
 	ldp	x2, x3, [x1]
-	stnp	x4, x5, [x0, #16]
+	stnp	x4, x5, [x0, #-240]
 	ldp	x4, x5, [x1, #16]
-	stnp	x6, x7, [x0, #32]
+	stnp	x6, x7, [x0, #-224]
 	ldp	x6, x7, [x1, #32]
-	stnp	x8, x9, [x0, #48]
+	stnp	x8, x9, [x0, #-208]
 	ldp	x8, x9, [x1, #48]
-	stnp	x10, x11, [x0, #64]
+	stnp	x10, x11, [x0, #-192]
 	ldp	x10, x11, [x1, #64]
-	stnp	x12, x13, [x0, #80]
+	stnp	x12, x13, [x0, #-176]
 	ldp	x12, x13, [x1, #80]
-	stnp	x14, x15, [x0, #96]
+	stnp	x14, x15, [x0, #-160]
 	ldp	x14, x15, [x1, #96]
-	stnp	x16, x17, [x0, #112]
+	stnp	x16, x17, [x0, #-144]
 	ldp	x16, x17, [x1, #112]
 
 	add	x0, x0, #128
 	add	x1, x1, #128
 
-	b.gt	1b
+	b.ne	1b
 
-	stnp	x2, x3, [x0]
-	stnp	x4, x5, [x0, #16]
-	stnp	x6, x7, [x0, #32]
-	stnp	x8, x9, [x0, #48]
-	stnp	x10, x11, [x0, #64]
-	stnp	x12, x13, [x0, #80]
-	stnp	x14, x15, [x0, #96]
-	stnp	x16, x17, [x0, #112]
+	stnp	x2, x3, [x0, #-256]
+	stnp	x4, x5, [x0, #-240]
+	stnp	x6, x7, [x0, #-224]
+	stnp	x8, x9, [x0, #-208]
+	stnp	x10, x11, [x0, #-192]
+	stnp	x12, x13, [x0, #-176]
+	stnp	x14, x15, [x0, #-160]
+	stnp	x16, x17, [x0, #-144]
 
 	ret
 ENDPROC(copy_page)
-- 
2.23.0.866.gb869b98d4c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
