Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE5EE3FA8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 00:52:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SP1Ck5i/rccVpfOnPdcMPB8iKuSypL9dFiuzRBX3LGU=; b=KBOneiaksryqFG
	mJm4SgtcJ993OJzq1LsKF42xN0FEkscH9n2E/P5VTKMIlOCP2NaBNfshctiJfDHeoFdrvZ8vztzlG
	2XjXalGGuoJ0KnR8194WyFG3aHQaNV4dyJaVgY52nhNij2BjaW7cC8cXjf1nRDvlzZnmgwS0qfu6+
	KAiN8zwxmlVzkqKzX1PX16Wnxq2Z1YE5xyvcTkztqUfGteZYSARhEEooYtMWthpNwjU3aS820GFI1
	+iFyR0M2SNGJMlpsCvqpnzfe+2HdC9s760E05Mzxl4YwIvdEbqZEZWr1sEq+2XIog04VXLqvtjF+J
	kckZKetuQOmU+MubS1iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNly5-0002hx-24; Thu, 24 Oct 2019 22:52:33 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNlxH-00029e-Fn
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 22:51:45 +0000
Received: by mail-pl1-x64a.google.com with SMTP id g7so191151plo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 15:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=NgbC4P1sZEmAi9I2/zNK/CWQSp6FGySYAm217ZB/f+0=;
 b=aAbpXLe/RbgLbT8xZhWHdVHT5dVobTWZ2zeaJn26sqghxbPOn1hyEluoVbihGwnJVX
 2sTJh9psYEdbVqtTsQnDUiirU3rSIN2iObeBn0VoMtmhqDTjev0XrK4xkkn10yZ+Q0CQ
 qQieedL1ZoyV5sNvwfuRyibtlPJYdWaoMENqlRJtjyounO1D3aNGbT5HttKX7bqJFlrS
 u+E2xmyNlChGcwv1fOgwCviR53T0OUqe0dx8eBZY2CQMQV6Rlav8ylsfWoWPViV/AVq/
 Ld3MbQPgWXnLnAh/uLGK9oGnldzg5EGbJFlCuxu9E3FIX7DkvE5hrzoYe3FszpdHZXsU
 /Fcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=NgbC4P1sZEmAi9I2/zNK/CWQSp6FGySYAm217ZB/f+0=;
 b=cMUMTajNArdJi1hxubqXDRAGVU5NHI7bbxyM27eCB+e1X/Wkls8n1WYKIb1VIG1YhD
 Z2L18EL+1QPoN3MBkq1pazTg88zYGzdknvNpNhXNMXDTkzoM7fsETy7P9MBOqfPgu3OC
 nvLdYCzcrlWI+cgQXiHL599ubM9YstgbIWvEbJXFO9A+HxnPAH+8x6RO/1IpYRuFOyT1
 ag2wg5NsH5N6Tmu7XaR33v8/tMlFCA8Eo/LWGG8VcFYgtnJgsW9sdlH2L7/vZEkSYpgZ
 Ir2wL4cfjRiknpQ1tCWIn9cbm87Qgp3ojyq/W9SrvtXswhxRWUxSJ5q6Bj44zPfZhwE0
 yw/A==
X-Gm-Message-State: APjAAAWjSBJngtnuaLh0fafMg0XUdVEP8iCxQLKD+9399xeMSn60NODw
 8Eg7FjwgWhSqlfrA7A2+GPAiDebF7m/r7ftiWuc=
X-Google-Smtp-Source: APXvYqzw5xus5EvdHEIjmfQfA9wYtkvgKtcSQO5+TX3Njkn9NrtKNZdJ55itK1BRfXGS16EOOSbRdd4kdMnueWHGf1c=
X-Received: by 2002:a63:4104:: with SMTP id o4mr484324pga.169.1571957501557;
 Thu, 24 Oct 2019 15:51:41 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:17 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 02/17] arm64/lib: copy_page: avoid x18 register in
 assembler code
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_155143_590150_54B2606D 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
