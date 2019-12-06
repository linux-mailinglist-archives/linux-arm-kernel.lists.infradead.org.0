Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 644A311593F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 23:16:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lzIhMhN2GCtjubTeRPm5K32XhaWccRIL5vRv7gcoqTs=; b=B02CBA+eN+XQJv
	qf0zA0AEVazaqBNqLlb+JkypQUZMFLldM6nqHAWYrUbEL0PE6RMtN+ZVgxRZywBMkH3Gu1L8YWasm
	hj2McwGryX4Hy4d6kULrtxo9xvLNNFN+TuIbofWS2/s6xbml7M6+Q2R0k+asU85rwkmZwpLKOreyR
	jCfFhgADmD+sBPhCqvlr32EIGQW3f1JTkgWyNCf//0xipF+roy9JJzW6FDI+x9xi6S9mQ4yHMBDad
	JWKVzqOujzr0z2enI4KITJL18Rf6kIJ3mr1WXDYWBEQhzSvK8BsPiOX17LDgjUTdm1LpDT0R0eGYt
	unUChJkU4b2BwTR6osOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idLu4-0001Wo-TS; Fri, 06 Dec 2019 22:16:48 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idLrf-0006iw-Sd
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 22:14:21 +0000
Received: by mail-pl1-x64a.google.com with SMTP id b8so4258722plz.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 14:14:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=4aDgrw7n3sKpB8rlb4e1FXGpnlGkWbIPMM9nhNp+jXs=;
 b=au1NZhTF4wAsexOlDW3QvGUTHHibdiuoOGtKnmjfRLZ0pPJFJKE+opISQXIrUR97ye
 Jne0qPeQQiFimsKZER4HaK21Z32PFAMdXThycc6amcnFXyiRGqcBd7hzGtaSxtjLovKA
 MtCxYRCUfBUiozbQAY8WWFFWshKqoTOktvqXvtAigS6VHdCV5+fVo6wqlgPIj5sUrPy7
 nyM+Yj6Rc076XJ7CjGnjpbrP4L2nSj+srGB86VsKIU0Wi383uYJUprK31BiItYr5v/o2
 Pxb9DYcCbj3fcvL19VOlmfxX8nuMHZ73nI0/DFRRg8SJ94YuyFgsEVGXyEeevmK3xEjY
 Wuvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=4aDgrw7n3sKpB8rlb4e1FXGpnlGkWbIPMM9nhNp+jXs=;
 b=d0xZUW4vi8+XtqHmMT8qQ5MDq0wEuP69EU42pk0KYnge6MU7XjfwMntlpAjW4+MEH4
 SbmXHXBaCWH+Rywz4NIT7zBvM6uFcp+vLFtvBdJysVBrIStwW6VEuK/iZHcnffGYfE0u
 V8ZWz/8vw2RXCAZzsS1dhJvxZhinR4xUMIgTlmWS//q0e5GIQnxcUv5INBl4t8o8IKpB
 zfhqcJHz/PxHuVCL7vsOUOeOK/6v7/dh1iec41OWKk1krSlpaKxENJhIAPL3ev7JsQYh
 GqWFEP+vFaAlNVH85LyGivbQvdWJQ4dMezmsf3bcHWbacLFVgy/vIVxfP99Fc7elOZy3
 s3gg==
X-Gm-Message-State: APjAAAWkVLW1wEOhvN/FGpeet1dXKGg8zbtZ3dQvvbShwSRZHE0bI4VU
 0imHFcTBM4THs/IXpjL5D39Tbuaczx9yYyZOD3U=
X-Google-Smtp-Source: APXvYqwRlAi+m5KSot17CZFEPydPDuL4iAvmhFlppFfNB1e6R6A3XWaehHnjib1r5pVc/bUaEbkOTOtXqUzvI+1YHGE=
X-Received: by 2002:a65:518b:: with SMTP id h11mr5968857pgq.133.1575670459027; 
 Fri, 06 Dec 2019 14:14:19 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:45 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 09/15] arm64: reserve x18 from general allocation with SCS
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_141419_948674_335CF66C 
X-CRM114-Status: UNSURE (   8.29  )
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

Reserve the x18 register from general allocation when SCS is enabled,
because the compiler uses the register to store the current task's
shadow stack pointer. Note that all external kernel modules must also be
compiled with -ffixed-x18 if the kernel has SCS enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 1fbe24d4fdb6..e69736fc1106 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -72,6 +72,10 @@ stack_protector_prepare: prepare0
 					include/generated/asm-offsets.h))
 endif
 
+ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
+KBUILD_CFLAGS	+= -ffixed-x18
+endif
+
 ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
 KBUILD_CPPFLAGS	+= -mbig-endian
 CHECKFLAGS	+= -D__AARCH64EB__
-- 
2.24.0.393.g34dc348eaf-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
