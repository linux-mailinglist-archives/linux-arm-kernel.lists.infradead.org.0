Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D76CCEB533
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:48:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LtMFBO61czzxBQDTbXP2bkRmWfWyRkJmow7GidxznTs=; b=Q/2vQeN6jEoiZH
	BBW8y9hvRuYyDIOMKsQ7ZnV7LmMH7ME9m8dtnSd9/vN85rjsV4TrQ1MPq8Zs03FUHvIfH0btI3tS8
	b69jzhW4CdHqVMn9NRSu8kSWxbW/CjS5Pbxpr+6FJ/598mVegqtcHY88uo9MdcTludySGUoHxyfXg
	xwXVYy7JJu3Gx9mx6GVztqY9M2o2zPAtUPKCXu94+43R3qRfgmNOMYbx0opN+BujNAoOiVtaEzbvn
	4+nQXNze+Kac2NmJtQLeFVw7XcgMpBgetUl8lrp9sAe7B2n8BtFfZvKs1W9DwNIC2FShZNb9o8XFW
	oWDiSGdATcgSAFkkTKNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDc7-0007TE-4Z; Thu, 31 Oct 2019 16:47:59 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDb0-0006kJ-OH
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:46:52 +0000
Received: by mail-pl1-x64a.google.com with SMTP id a3so4270485pls.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 09:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=NvkEBCuGDFGmxutij1zSuSKxlsUUBaj5IQr0NLQJ5So=;
 b=Ru92iBuuYlPhHAFVLWeOs87kE0FiX1qHnTaOtpzTb/jKviPaXonwKKd+N66yjkRYuK
 cgnBq46YclvPXSguuBJeqzLri7jCCWWG2Dfk0n6Id4jZM2n7hZ/78QAEvq8GFPDPGfUD
 qNtrv8foscV0AHwaybS2313mz3Cil7NrOo8pDuPY6Jd1tSs6WarJ755+eSf/RomcChV4
 7A1jpdn6Ivzs9aO1uXSVTF6S5nlm17BU8Kojsg1aHJT+c27sDLV3569+F5xcQdMXNe/B
 BAiGEf7hztz5GyYBj6nLqE1P0Jc3Ye8dMxEAQ36afKH6zRhZp6NxcrpWbI9k75gVvReY
 hMpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=NvkEBCuGDFGmxutij1zSuSKxlsUUBaj5IQr0NLQJ5So=;
 b=Wzx8MGS7v11/URHPM1VlIfAtoYxTqalGEyTxr33tWxmUx8nNdg3RL4L91F2ynreg+x
 M7bAE2sNqfa+rh6WvoieYrtU/xNCYfcLIpjlJzR+eFNj6Is/c2inKRW7TBHbJ6swGj1e
 jAfNoVCRwetB8Bb5buLa1OKIck3h6KE/9l4n5s17sYydz2H3Bw7HOLI8ggYmyHBqOyQo
 rW7jHCcWbWh72cGlEUx4f4GSRLdnAxQWtompBd8sIFvN44JfVHvETL4Gss5tz8KouTm7
 HhvrcXGZ7INJ54UMwtVjwPSP3uQW/sTtyw8aIXSt3NUQKJmyWd54LrXC88fARuKAXxrG
 tCTQ==
X-Gm-Message-State: APjAAAVEkxI9YWkowKtMkMIrVs3pVqnV0r2psDISQpPRZQC1iVBZ5XRQ
 tVKFz5vNYK9qcrx17oJ5o7FwV9/NuyyRPeQddLk=
X-Google-Smtp-Source: APXvYqyQVapc0HQb2zNlrO9ACUIg0p0PZIO3eKHtqDUB9iKBoqT2ZxFgyWPN3wIre99JvuCaIlvEX84YwMN3a1ZjF+Y=
X-Received: by 2002:a63:d809:: with SMTP id b9mr7733622pgh.143.1572540408812; 
 Thu, 31 Oct 2019 09:46:48 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:22 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 02/17] arm64/lib: copy_page: avoid x18 register in
 assembler code
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_094650_840953_9F8721FC 
X-CRM114-Status: UNSURE (   9.81  )
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

Register x18 will no longer be used as a caller save register in the
future, so stop using it in the copy_page() code.

Link: https://patchwork.kernel.org/patch/9836869/
Co-developed-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
[ changed the offset and bias to be explicit ]
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
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
