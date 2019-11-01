Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 735BBECAFC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 23:12:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u0sYw9VkBZ219IQwYUBUpm4475fuaSSl1zM4nVBroXM=; b=bQly73Dv9Fckg+
	PWPsADeBWHJSwKIk4eOCMuJVRVwQVykpdO0LMQcUmrGgrNlkXKZZJXd7CL8AL5L0AtgZm1f9YLy3q
	ZiaGT/BRs3A4Q6AhMPXTiNBCuOmVcxSb0FQ234TTJhjTadj8ZVN+n4FocrTR/ecBRaQUHKGLiDL9s
	995eRwWe1qiAcogCVm25kE2kzbYWnbTF0Ju8sZhE8szKPh8WOhICzQwmMMPVkts/f2aALY43xRaJu
	mP2xhNuQFSXElMjQDbgeVfU0LKkvVckAhA5VnX4W/pCQEfflSyqaXVXxIYDBShJ9GLYMSKg/DyZcw
	GKULQhe6i81EjTx+dCGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQf9K-0007fA-OO; Fri, 01 Nov 2019 22:12:06 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQf9D-0007dn-3d
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 22:12:00 +0000
Received: by mail-pl1-x649.google.com with SMTP id u9so1472057plq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 15:11:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=g+FZBFl4/jtEHUrecvJjSJDyfo/JMaY/R05FvQww7Ew=;
 b=H/ovEUCUoKIya9z0Y7W61l4KBSDBXc8TsOG7hs/OHvt0y9UAR+pD4g9nrrXBU0wrQq
 V3Xv8T9+jQ0lOgGsjG3GZJPhp4lbn2XfTTMZHHRaekqYKuH/T4m9iLr9VI7TsiDUvt4b
 sDDmHgKXeSxdhxsfj4H9HDNQw/ZR4RnEHqpPLuKyQIVjBOuJmpWE7s70NonvITbd0/PO
 MppftbHIINpO8szfUH+nJLRx0qdne3AgLd2YbZDV4fUfMivPV9oSUatIlASqWKzwXntJ
 HeG1Ulhlt49Dmw0e+yx1QfE3/39NeumvMU64mQDoyIjIx+F8pyhPORKjx+0AdnDSYiwm
 aHCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=g+FZBFl4/jtEHUrecvJjSJDyfo/JMaY/R05FvQww7Ew=;
 b=OZxJAdVm1/kCOyqjOqe2AULm4My9qR+Dad+5qOwdFjzPGuNW63xUl6Bx4ZohPxAZ3M
 6njbLUcp4irZM2+bpWwghZ61ACdS4Iu1FWP4rSoiVeIUmrhwUn0AZdoF9Xn28jsbmPSP
 iEb9/rCMTUGvhQFE0QBTTeVfDxZ9BDHgpcRVbqjW8i4WpdqzHQ9qKuyNct99pgxtZSGF
 dMr18VggHmNE9/PuD905mb7bAonX/RCH14VCxeSX1XyoUmR3mUezDNnlT4YYcpoaGtRg
 uzjmOIRrB1TVZK5zyiANoTolXytXLSjO9wdXgKrBwJRQ+q7K+VE4lw6Kf5hkpVojB670
 hpJA==
X-Gm-Message-State: APjAAAUks6fpwg3vdWBd9tW8qE3/5u3qEJL8vyxNWYwZLthy9SABM70a
 7AIMjWlAgaWAGQC3JhG40IiHQ7P96jdr4Mxi0/E=
X-Google-Smtp-Source: APXvYqwWJizqznswz2NLt2QFw2UmOTSRfvX8QdaNGFlpQWjP8Kjaeosw9eI19g7pulu6RKNVswWCRLsv6MO42umNMPw=
X-Received: by 2002:a63:6744:: with SMTP id b65mr15837971pgc.13.1572646317280; 
 Fri, 01 Nov 2019 15:11:57 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:34 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 01/17] arm64: mm: avoid x18 in
 idmap_kpti_install_ng_mappings
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_151159_146465_5361F4FC 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
