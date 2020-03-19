Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 701D418BF43
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 19:20:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TqYvmXQuvUZidH4mqCqXBnn76dneyLWIrHTb1H3eFrM=; b=seglTGHDIDi5nQ
	OoOo70lLv2euFvtWkGkDJLyzCJVhTlexjJsxdzsPND6AUJ6tzNbn3I5pZk7Vz7vlOErTvjgFWBYb3
	LE8fMIG6RRgXITH6a6/SazKqY4aXr4tAVRUca+iizEZjdD1P6Hkh53P9jnpvaYFBowhOCbFJjTdBs
	T8kzpTH3DtU06KBfkZuFEGgxUUeE/oK14UFRwS4Oa1n8Cln0pFxZduBsHYEXnV7yOMz3ekkU8EYzx
	htaWpV0ih/f9XbsWximQSqn7ff3P4LvGDrtH2XBbKjNQTQtMhSHyjGdFxBMfQ+6RwAZX02vvypiYN
	sRHmOiDetu1iPFp2YpnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEzmE-0006sw-G1; Thu, 19 Mar 2020 18:20:18 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEzm1-0006It-5V
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 18:20:06 +0000
Received: by mail-pf1-x44a.google.com with SMTP id o5so2423214pfp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 11:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=5P5en98KHUaK2c9M1pt238mEzcEaVTQjW087IgSolEA=;
 b=gZEbou2CFuaRnaBVs6VGbGvdKyHSc6hsxdOHqe41Rv9utlPQNEjMrL6T6vvkHx37Cu
 /vHX5EuZNvKik3a3u20F2MrAuKaFQ7nxZTmc/1pMUDms/2LcMvNAulNc9MqMQ1h3jfEH
 UZV6MxnTTmdOPAuoyoLtVG6Re13YairDdP2toVomRVYRKKbVCGNyIO1X7B/V/6Kfh8/5
 kgtOtfjp6DYF3GzXFXAMY6+rJ9myyxOSSfr1ogAJ6n3Fmahpl1DYb3UEkKhBE8z/jyVq
 ZEJBZX9KLq5slu9ikq2GFdltBeFk2GOnEa92fAimmySPEkyjAbw+0n9YEIhYxutbpTEY
 0DLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=5P5en98KHUaK2c9M1pt238mEzcEaVTQjW087IgSolEA=;
 b=qU5G/aw0W7qXqbT4BFi9W5qj83ab8iC0kg3w3LC130zg/+yNhDim1aQP28DRfrorNs
 kbQh0L7v1Es+66NXXeGjMFVdB+l/a7dFpwhZ5LimBkrpTz4LqEDEKTjIxgguUvy5Zezt
 4lkyabqB1bS9AwpnNp9fpognKN5foJi9i0DRS88OGhhdMwd/fYQ1VEtjioSseG1+7x2i
 o+2BpuCLovmq4N9c9ewuxti1SF5OFqKnNv2DagbGLan/G17SzstOVELPU6o5AH6st3XX
 XUu1ZB8S962D5i8+mluFxasnrnn24+UuCmgjRNpiXPJ66l3PcA8xugG1qb6u0c58MOoc
 4uGQ==
X-Gm-Message-State: ANhLgQ272N/E+VzujgblAPbOP3vCONtU27DWO9f/+g8YRq2D6jPb54Lp
 cN7lAiONqjzfZiR8lFFnyZ2GUEA0Dt0az24FwKQ=
X-Google-Smtp-Source: ADFU+vuZ2bD3gmRBQWRDXcfM3W9Vv2K6blc9+iR8Eairy2ZQkUXysQBJOhnJDtDqunIO1wLRZLRmERhHq+7ZLmHVD/o=
X-Received: by 2002:a17:90a:af81:: with SMTP id
 w1mr5234832pjq.14.1584642003433; 
 Thu, 19 Mar 2020 11:20:03 -0700 (PDT)
Date: Thu, 19 Mar 2020 11:19:51 -0700
In-Reply-To: <1584090304-18043-17-git-send-email-amit.kachhap@arm.com>
Message-Id: <20200319181951.102662-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <1584090304-18043-17-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH] arm64: Kconfig: verify binutils support for ARM64_PTR_AUTH
From: Nick Desaulniers <ndesaulniers@google.com>
To: catalin.marinas@arm.com, will@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_112005_250239_6C523CD4 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, keescook@chromium.org, suzuki.poulose@arm.com,
 Nick Desaulniers <ndesaulniers@google.com>, kristina.martsenko@arm.com,
 ardb@kernel.org, yamada.masahiro@socionext.com, broonie@kernel.org,
 james.morse@arm.com, clang-built-linux@googlegroups.com,
 ramana.radhakrishnan@arm.com, amit.kachhap@arm.com, vincenzo.frascino@arm.com,
 Dave.Martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clang relies on GNU as from binutils to assemble the Linux kernel,
currently. A recent patch to enable the armv8.3-a extension for pointer
authentication checked for compiler support of the relevant flags.
Everything works with binutils 2.34+, but for older versions we observe
assembler errors:

/tmp/vgettimeofday-36a54b.s: Assembler messages:
/tmp/vgettimeofday-36a54b.s:40: Error: unknown pseudo-op: `.cfi_negate_ra_state'

When compiling with Clang, require the assembler to support
.cfi_negate_ra_state directives, in order to support CONFIG_ARM64_PTR_AUTH.

Link: https://github.com/ClangBuiltLinux/linux/issues/938
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Tested with binutils 2.33.1 and ToT. Boot tested in QEMU.
I added this requirement only for Clang.

GCC maybe doesn't produce these assembler directives, or looks like GCC
8.2 produces .cfi_window_save (https://godbolt.org/z/awZWZ5, godbolt
doesn't have a newer aarch64-linux-gnu-gcc...) instead of
.cfi_negate_ra_state. Maybe ARM can sort out the inconsistency between
compilers?

If we plan to add .cfi_negate_ra_state to out of
line assembly, we may want to make AS_HAS_CFI_NEGATE_RA_STATE a hard
requirement, regardless of compiler.

Also, rather than CC_IS_GCC, we could do !CC_IS_CLANG || ...


 arch/arm64/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index b889d7956abf..1ee1d8fab218 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1506,6 +1506,7 @@ config ARM64_PTR_AUTH
 	default y
 	depends on !KVM || ARM64_VHE
 	depends on (CC_HAS_SIGN_RETURN_ADDRESS || CC_HAS_BRANCH_PROT_PAC_RET) && AS_HAS_PAC
+	depends on CC_IS_GCC || (CC_IS_CLANG && AS_HAS_CFI_NEGATE_RA_STATE)
 	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
 	help
 	  Pointer authentication (part of the ARMv8.3 Extensions) provides
@@ -1550,6 +1551,9 @@ config CC_HAS_SIGN_RETURN_ADDRESS
 config AS_HAS_PAC
 	def_bool $(as-option,-Wa$(comma)-march=armv8.3-a)
 
+config AS_HAS_CFI_NEGATE_RA_STATE
+	def_bool $(as-instr,.cfi_startproc\n.cfi_negate_ra_state\n.cfi_endproc\n)
+
 endmenu
 
 menu "ARMv8.4 architectural features"
-- 
2.25.1.696.g5e7596f4ac-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
