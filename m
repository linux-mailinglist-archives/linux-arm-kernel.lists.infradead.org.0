Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 766E3EB532
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:47:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfok+/ro/RkUoBTNCfHUindYuYROMFjYDMOJ824Mq6o=; b=aPOUnNnEt8nK0K
	zZE8pIZAKUJ5uCxwmriCxNfqn8WCuOBncUFDVPkN8JRnaj1woRHbSVo1pO95gvKv7DxGjQjCP7AjM
	uMRNMy+UxgoBlpuIEp6QWRpDUntmOrptma6GuNQkQCSZbs4i6TyrUMxSyFihjNbj1zQfplSBx3XnH
	ObvNMNOoUDLp56pINutu8pH5EQ3fSN/qsXpakQDdEy9Z5rXjt4bnZiWnAa/mr+qiLueMLlzRUyPlP
	cTa9582plbWqjqMtQMsqb6Nb3//DkBL029vtY4z9eOMnQtI9IYnowpFEWwQkP6chxksTfAeU89l7J
	Vjsy+brJPsdW11ALpDjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDbr-00071q-BW; Thu, 31 Oct 2019 16:47:43 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDax-0006iW-If
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:46:48 +0000
Received: by mail-pg1-x54a.google.com with SMTP id v10so4790447pge.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 09:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=m8czdyKZmnHleycOU1GN1JDqnDhqDwUuQ2BzB2+NnLE=;
 b=kscd/Ryyvnax6ORha3g+9N2ycFdZdVKcUL7nn52FBqZCdom/ukOvZNiLYcIVHGWjJI
 RL+cSRsSc0KMkWX7Hpm6WW5mwmzyULTl69SeLKpONSPknn5ZqEZWkbRqognGlyERPXLo
 SV9nRf3GJ7wBfRyfYIInjM+YQGy1pLtrwhArDoKPFew1LEH2KfjE14WBRpDYQ6T6vBcN
 bTuA6HnIE/mjRqWbsSXxpwwDhLN9CG23XGon/2Fh6QYLxfPuum6XKBQrb0xQTBoamtRg
 GqrJFN7dDnqowhR+BaVm165Nc4KqgxxBwyK/OZ+cl3NUbIFIXQthBUWLYI6b8XUFTWxv
 fUxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=m8czdyKZmnHleycOU1GN1JDqnDhqDwUuQ2BzB2+NnLE=;
 b=pSlPakjxOxtQtG9RnYy1FkWTwzkrgDkC58AVbFR+p3+G1QA+TPbWxkS29AP6yZ7/9j
 J8nFrbcawL+x/CZEDUw3OEedNkiQ/jj+OH+dtn6Q7hxLFwrxmLZJ6/Webd1pt6vdP6Yx
 V8i3m6faO7zVyPIIFROhThok59mRrt8UMG+Ey7UkNNScymKA9OxX+PWT1cKhBMKWLOsl
 bmkTZ4EESISmogRDSQqhHkUdexbFSblTV0241V1tvvyqUjvEAyT1Jys/1D1+ZjSJkigl
 YpjMpXX/NeeF8r0rFnrwDRF0KnuYAplDnzo+wWO8ksINTQXohlXIghpi3BhDVh0jQF2m
 hhRQ==
X-Gm-Message-State: APjAAAXudOepBvRHnPcAhohLnlN41q+9YHmQmkeRb68/ufiG370pcH70
 AGo9EhTF6hdmS58gWptDq0M44jLOS7Xef2LI0Ww=
X-Google-Smtp-Source: APXvYqw9xt1orWeLvt0VfIxUZia5BAPhrbdVX/DF2ex1nZVelw9EIIUv1zSfOLTzEnTa2y67e76C/YQPYBoxghEHbPw=
X-Received: by 2002:a63:4b54:: with SMTP id k20mr7973543pgl.70.1572540406049; 
 Thu, 31 Oct 2019 09:46:46 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:21 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 01/17] arm64: mm: avoid x18 in
 idmap_kpti_install_ng_mappings
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_094647_615704_C4BAB54B 
X-CRM114-Status: GOOD (  10.65  )
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

idmap_kpti_install_ng_mappings uses x18 as a temporary register, which
will result in a conflict when x18 is reserved. Use x16 and x17 instead
where needed.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/mm/proc.S | 63 ++++++++++++++++++++++----------------------
 1 file changed, 32 insertions(+), 31 deletions(-)

diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index a1e0592d1fbc..fdabf40a83c8 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -250,15 +250,15 @@ ENTRY(idmap_kpti_install_ng_mappings)
 	/* We're the boot CPU. Wait for the others to catch up */
 	sevl
 1:	wfe
-	ldaxr	w18, [flag_ptr]
-	eor	w18, w18, num_cpus
-	cbnz	w18, 1b
+	ldaxr	w17, [flag_ptr]
+	eor	w17, w17, num_cpus
+	cbnz	w17, 1b
 
 	/* We need to walk swapper, so turn off the MMU. */
 	pre_disable_mmu_workaround
-	mrs	x18, sctlr_el1
-	bic	x18, x18, #SCTLR_ELx_M
-	msr	sctlr_el1, x18
+	mrs	x17, sctlr_el1
+	bic	x17, x17, #SCTLR_ELx_M
+	msr	sctlr_el1, x17
 	isb
 
 	/* Everybody is enjoying the idmap, so we can rewrite swapper. */
@@ -281,9 +281,9 @@ skip_pgd:
 	isb
 
 	/* We're done: fire up the MMU again */
-	mrs	x18, sctlr_el1
-	orr	x18, x18, #SCTLR_ELx_M
-	msr	sctlr_el1, x18
+	mrs	x17, sctlr_el1
+	orr	x17, x17, #SCTLR_ELx_M
+	msr	sctlr_el1, x17
 	isb
 
 	/*
@@ -353,46 +353,47 @@ skip_pte:
 	b.ne	do_pte
 	b	next_pmd
 
+	.unreq	cpu
+	.unreq	num_cpus
+	.unreq	swapper_pa
+	.unreq	cur_pgdp
+	.unreq	end_pgdp
+	.unreq	pgd
+	.unreq	cur_pudp
+	.unreq	end_pudp
+	.unreq	pud
+	.unreq	cur_pmdp
+	.unreq	end_pmdp
+	.unreq	pmd
+	.unreq	cur_ptep
+	.unreq	end_ptep
+	.unreq	pte
+
 	/* Secondary CPUs end up here */
 __idmap_kpti_secondary:
 	/* Uninstall swapper before surgery begins */
-	__idmap_cpu_set_reserved_ttbr1 x18, x17
+	__idmap_cpu_set_reserved_ttbr1 x16, x17
 
 	/* Increment the flag to let the boot CPU we're ready */
-1:	ldxr	w18, [flag_ptr]
-	add	w18, w18, #1
-	stxr	w17, w18, [flag_ptr]
+1:	ldxr	w16, [flag_ptr]
+	add	w16, w16, #1
+	stxr	w17, w16, [flag_ptr]
 	cbnz	w17, 1b
 
 	/* Wait for the boot CPU to finish messing around with swapper */
 	sevl
 1:	wfe
-	ldxr	w18, [flag_ptr]
-	cbnz	w18, 1b
+	ldxr	w16, [flag_ptr]
+	cbnz	w16, 1b
 
 	/* All done, act like nothing happened */
-	offset_ttbr1 swapper_ttb, x18
+	offset_ttbr1 swapper_ttb, x16
 	msr	ttbr1_el1, swapper_ttb
 	isb
 	ret
 
-	.unreq	cpu
-	.unreq	num_cpus
-	.unreq	swapper_pa
 	.unreq	swapper_ttb
 	.unreq	flag_ptr
-	.unreq	cur_pgdp
-	.unreq	end_pgdp
-	.unreq	pgd
-	.unreq	cur_pudp
-	.unreq	end_pudp
-	.unreq	pud
-	.unreq	cur_pmdp
-	.unreq	end_pmdp
-	.unreq	pmd
-	.unreq	cur_ptep
-	.unreq	end_ptep
-	.unreq	pte
 ENDPROC(idmap_kpti_install_ng_mappings)
 	.popsection
 #endif
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
