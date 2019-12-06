Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D5211591A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 23:15:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FNQo+Ywt1gB0N4v7qs6JqSVo5vusOD77GNlCpdRVtnE=; b=Oe4k3bSP2ABCUS
	2sqmd7lPPq+RRj+4vSzLJx5Ewcb+RRVGjraSLWAa9aTpMVVrZoU45hhpKYZV6rYioDWqGYJQhMQnF
	NcAcI/K0gA8jqlfJkYCLGndVrojJlHUICt3m4vs62oOTDACn3ooBfNDpMlOEhQDU3kgcn35YBPeEa
	es9PSLyleBQndzmvIq/Cnr0Ei01ss4t3aOTvB5RVQqu8yAC7C3pxEnOFXa8CNFdVvFSlLEwFPv2CM
	DHkhY4oIeMP0ByLSDKdmuEd0gp0aSTrn2cLBf+cxCGcN9qUPvEL2DckIatuFyB0Vqui0hO+luGGyG
	RPd0RYlKWDcvVAtPZeWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idLsD-0006yy-4o; Fri, 06 Dec 2019 22:14:53 +0000
Received: from mail-pj1-x104a.google.com ([2607:f8b0:4864:20::104a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idLrO-0006Q0-P2
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 22:14:05 +0000
Received: by mail-pj1-x104a.google.com with SMTP id a31so4341531pje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 14:14:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=8cEo3bnB2JOErtud3GvPd9W0QqVJKhLYL3PxcgBL0pc=;
 b=CPqQmv4WqCQBFArArM8RhJECBGvYc1DYgdPm0u6MVe0Oqz9fNy0AzMgv/8cEGG/BAU
 aAtkoPugaKUj5l+B6gmWuX+5yxOs+N3ZWs/7Q39Wy7REQEzECblVDxd+is2N3naPmb+Z
 AqE5JEDUA8ZArMaJifiVfToRBNBcxgJbfiPhEMzN4QT7addM2NEiDmiH+MHpEUOrpMuY
 5mCBPj6zphQUPpZkvQxiKNqQZVXSG5ZKCqPY/yDTZAouky3k/+Eg/at4qlCky/F1/OE5
 FKwHQSFj6kwEepxRANrOWOQ7iDHcCUd0e0fNHAJuNQWb5uPQ20sY1xVXRPXlBPWsO0w5
 mmMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=8cEo3bnB2JOErtud3GvPd9W0QqVJKhLYL3PxcgBL0pc=;
 b=YwplWgRjaPY+TqGAUIOebDvqIUndA+VMd5D1vm8Hew+0hYeQ/eVrCdDVpAnKwA2mjl
 s22bNi2Npl5L1iLGxtsNEPpk02ubX6uYjG1K5y03mKupNcFItDBjeDKI9eyeBrogZvJG
 3BE/46jei9/U5dr9f1xQmTzmtgiCFAek4uAMEN4hNXIW5GjAzQyLAszBjT4CK31fPAr0
 DXlbFblc8rJMFt1XRLcUfCie1zahQsLcmNyDf1SynJcxnLN1xTQmRoxrqpHe9yqYXo9/
 bwgZU82n7I3O4Gtv5L95y4KpfMf7Kr09O4A1CNc+Yk3EBp1ID0UtoO0fPigI2Crf16Rp
 eqGg==
X-Gm-Message-State: APjAAAWE3bGTmUwbunOZ5SvmzbSQCzWY1h9S34lQ7h8dwaPyzzqpZLTd
 prByWcClrrGi9JaeWb/12/jaFqqG2G9NzAbsBhs=
X-Google-Smtp-Source: APXvYqyRfdS5aqE39eaRAOxLgcN4AWsr5dwZL7gm38UAYSLZ0IPRBNt46Y6TodltgXxQPThKbmHblBbcL2qiJvc2D0M=
X-Received: by 2002:a63:184d:: with SMTP id 13mr6053846pgy.132.1575670440912; 
 Fri, 06 Dec 2019 14:14:00 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:38 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 02/15] arm64/lib: copy_page: avoid x18 register in
 assembler code
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_141402_834154_BE1C57F9 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Marc Zyngier <maz@kernel.org>,
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
2.24.0.393.g34dc348eaf-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
