Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FD61BE9C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:21:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMoXrH+DxS91uLP+9TRWAaQ2hcsgWgKFXLsgvr8jPCg=; b=T1/v7/DmfgRfvv
	xZ8AbJC9H3vh8wgKiVISimBAU3k0UozO4bwUu8U0AubMC3TG9ICOFr0j4+nEAVVZq/RN+S1N3WWlh
	J2NcQdfOeY1+XFsxXroFGsSntMTU0NCCPUyDzt762b+yPA87oWKEAOsXSxkfTsl4mhxKOYCNl7sNj
	/WweRzglmo11fLyQ/18fzPXLjrFJbpzSHixHyKV4r9oV+4lkt12DetTg3qAtPpe8Ot68A3JckKnZS
	fRXMsauNpkTvIqe55dyxQ4hnp4B8d1we9Y4kc6gBrlkbWqAp/s2AcL5l/R914NPUwGdUSW699L4/b
	xmXwmmFEao8zm8BpJS8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTu8u-0000j0-B5; Wed, 29 Apr 2020 21:21:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTu7c-00065a-1i
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:20:01 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC63C2076B;
 Wed, 29 Apr 2020 21:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588195199;
 bh=1ClEF24KkovzjqfQabT0MQwh0TRA0Cbu70zzC6fhiNc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ypk9jUcXTsM3HHxWtGTDh7cKKVcc4XPzeucqzgXX+N6MggU98L32dDwIUjs6Nd9GF
 0FH4gAg5RmIensKJ+YamEIQAam70AqTkoFL04EQ348WSqkZRv6mqzimgLx4bBiBfXi
 IuTP7hTGCjOwvVlsCztc73niIy0qctn3yhUHBhJM=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v2 02/10] arm64: asm: Override SYM_FUNC_START when building
 the kernel with BTI
Date: Wed, 29 Apr 2020 22:16:33 +0100
Message-Id: <20200429211641.9279-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429211641.9279-1-broonie@kernel.org>
References: <20200429211641.9279-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_142000_138359_5F7BE02C 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Brown <broonie@kernel.org>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the kernel is built for BTI override SYM_FUNC_START and related macros
to add a BTI landing pad to the start of all global functions, ensuring that
they are BTI safe. The ; at the end of the BTI_C macro is for the benefit of
the macro-generated functions in xen-hypercall.S.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/include/asm/linkage.h | 46 ++++++++++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm64/include/asm/linkage.h b/arch/arm64/include/asm/linkage.h
index ebee3113a62f..d8d5b0f77216 100644
--- a/arch/arm64/include/asm/linkage.h
+++ b/arch/arm64/include/asm/linkage.h
@@ -4,6 +4,52 @@
 #define __ALIGN		.align 2
 #define __ALIGN_STR	".align 2"
 
+#ifdef CONFIG_ARM64_BTI_KERNEL
+
+/*
+ * Since current versions of gas reject the BTI instruction unless we
+ * set the architecture version to v8.5 we use the hint instruction
+ * instead.
+ */
+#define BTI_C hint 34 ;
+#define BTI_J hint 36 ;
+
+/*
+ * When using in-kernel BTI we need to ensure that assembly functions
+ * have suitable annotations.  Override SYM_FUNC_START to insert a BTI
+ * landing pad at the start of everything.
+ */
+#define SYM_FUNC_START(name)				\
+	SYM_START(name, SYM_L_GLOBAL, SYM_A_ALIGN)	\
+	BTI_C
+
+#define SYM_FUNC_START_NOALIGN(name)			\
+	SYM_START(name, SYM_L_GLOBAL, SYM_A_NONE)	\
+	BTI_C
+
+#define SYM_FUNC_START_LOCAL(name)			\
+	SYM_START(name, SYM_L_LOCAL, SYM_A_ALIGN)	\
+	BTI_C
+
+#define SYM_FUNC_START_LOCAL_NOALIGN(name)		\
+	SYM_START(name, SYM_L_LOCAL, SYM_A_NONE)	\
+	BTI_C
+
+#define SYM_FUNC_START_WEAK(name)			\
+	SYM_START(name, SYM_L_WEAK, SYM_A_ALIGN)	\
+	BTI_C
+
+#define SYM_FUNC_START_WEAK_NOALIGN(name)		\
+	SYM_START(name, SYM_L_WEAK, SYM_A_NONE)		\
+	BTI_C
+
+#define SYM_INNER_LABEL(name, linkage)			\
+	.type name SYM_T_NONE ASM_NL			\
+	SYM_ENTRY(name, linkage, SYM_A_NONE)		\
+	BTI_J
+
+#endif
+
 /*
  * Annotate a function as position independent, i.e., safe to be called before
  * the kernel virtual mapping is activated.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
