Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D48E0F0AA6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 00:57:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QMzMIckDD8LXvaTnwwv1OTj6jHEPyRyDFXVu0f329RI=; b=uXdxs5gIwnL7Nc
	q3ehxZeelJvonEcc26KVPZirmzZam1jqueQwz+XtsfJgQsbqjbu8gY5qB04Oo8R2RRPsfOKzbX713
	JPRMS4+4+RZ9ZsMlJetofKiNApUulBraPT7RSKPqH9Mdndq8X08I8f3NS24Sh2U/tLNQRNNB/4FyL
	VHuPSvv847RMNQ48vmF/G0w85xWf6yBWAqz7uhVfR3AJx157Dohf8aOe3ENssZp0kOD9SYFs8xVC6
	13s9fEh9PAzE/EErReQOnf1xtLZqcKR5aL+ELJmLikS922X+NR20twyRbt89Eaa2UdWCQB2QxM7m+
	U3dYuqnsRXIALnKrWejQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS8h0-00088d-KI; Tue, 05 Nov 2019 23:56:58 +0000
Received: from mail-vk1-xa4a.google.com ([2607:f8b0:4864:20::a4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS8gT-0007i8-0O
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 23:56:26 +0000
Received: by mail-vk1-xa4a.google.com with SMTP id i25so5117514vkk.23
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 15:56:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=OH2SjYe0B8esWxTAcCgR+62MsPomBC+RzRSTMU1rFk8=;
 b=LANLIsSLRt+jERn9z/YC1fWtMQVX8zCypiEu6yw+A7ph5wykxHwT9wsDMQDlDMl2rg
 stArYiAU/nb/XpN8wDOhlGyfTc0fdCPVyLoqsctOyYeGq24aghzkvptD+XVbn9Xq4Qx2
 yxJPdKckjUE2Le0UST7HQhi45E/yHrtn4L5mNNxo+7JL+AcIOJugxBvuaOWMfQaRKd19
 pgc7iEsvYu0XarG32KP1cibZw6Yh6odpoBcAbe/UiVxBTEh1uk9MrGBjI2ktk5L02xPX
 x9VA45PGyhIT4mZVHxYbG80ZMkQKYGWocfpS2nmfUWNgOvxc1mQu8MLaMnzS4vac3Qt1
 JBZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=OH2SjYe0B8esWxTAcCgR+62MsPomBC+RzRSTMU1rFk8=;
 b=A2Wsh5oPxw8mPRj3dl3J91gzkuJFGi5Bsaox3bNQLDkzKEShNYYnor/xwGNmFw9Hy2
 H8Gle2mB9OoOOsm3D3mwSS7YWokB7ctRJMgDMOZHQv10lkIwKwl2Ia8WPfzr3QuL6u1D
 0zMc/D7LmZX1MkN9NoVoJpj5Lct5kxLYqMuqNRmyjfxGqOBt+9b6JClmUSYtlLbCbAR7
 gatg06eiw7w5+Cu03ob0CZJ2GBg2iMNzTyvoYX7OxBOp5RoL/d35e2dyNeMPRPLd3c1z
 egmx74anwbbIU56XN2oLwXC9iYNT9+PwZdLC65w3UZeoYAtaxrVKZrNngpJVHeWnfK2D
 JD6w==
X-Gm-Message-State: APjAAAU8uYk2IZA+NRo4iWCJ2yNxbQOVKxxEM5v4f89aZCzDt1ZXMPBp
 C9hXhxwO9WXvGnSbzjQqJAN/U4rzuuEPiLghjPU=
X-Google-Smtp-Source: APXvYqxFzno9MSXI4Ly95n1ixFuKJLy5PBpFiCEvi59EZLe1JMvD55HUp/RJhtm2+ZnxbDY2T+pgxUE1vx1ZzWw2zK4=
X-Received: by 2002:a67:ef0c:: with SMTP id j12mr9381038vsr.201.1572998180740; 
 Tue, 05 Nov 2019 15:56:20 -0800 (PST)
Date: Tue,  5 Nov 2019 15:55:56 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 02/14] arm64/lib: copy_page: avoid x18 register in
 assembler code
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_155625_066615_340C90A5 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a4a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
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
[Sami: changed the offset and bias to be explicit]
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/lib/copy_page.S | 38 +++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/lib/copy_page.S b/arch/arm64/lib/copy_page.S
index bbb8562396af..290dd3c5266c 100644
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
+	stnp	x4, x5, [x0, #16 - 256]
 	ldp	x4, x5, [x1, #16]
-	stnp	x6, x7, [x0, #32]
+	stnp	x6, x7, [x0, #32 - 256]
 	ldp	x6, x7, [x1, #32]
-	stnp	x8, x9, [x0, #48]
+	stnp	x8, x9, [x0, #48 - 256]
 	ldp	x8, x9, [x1, #48]
-	stnp	x10, x11, [x0, #64]
+	stnp	x10, x11, [x0, #64 - 256]
 	ldp	x10, x11, [x1, #64]
-	stnp	x12, x13, [x0, #80]
+	stnp	x12, x13, [x0, #80 - 256]
 	ldp	x12, x13, [x1, #80]
-	stnp	x14, x15, [x0, #96]
+	stnp	x14, x15, [x0, #96 - 256]
 	ldp	x14, x15, [x1, #96]
-	stnp	x16, x17, [x0, #112]
+	stnp	x16, x17, [x0, #112 - 256]
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
+	stnp	x4, x5, [x0, #16 - 256]
+	stnp	x6, x7, [x0, #32 - 256]
+	stnp	x8, x9, [x0, #48 - 256]
+	stnp	x10, x11, [x0, #64 - 256]
+	stnp	x12, x13, [x0, #80 - 256]
+	stnp	x14, x15, [x0, #96 - 256]
+	stnp	x16, x17, [x0, #112 - 256]
 
 	ret
 ENDPROC(copy_page)
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
