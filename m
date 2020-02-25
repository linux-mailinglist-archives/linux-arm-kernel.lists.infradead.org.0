Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C3C16ECDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:41:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w0lyhXywkHjh6aqcailStNp6gpENbC+yN6amjPRYoz8=; b=QIPOoxe+HVZcQ+
	YSfm8gkzEVH4mkvvu0SdORJV6vCvu0JrihyDE1khcwPa2qTjKiAwZnk9PDVh9RqZERK9Pp8gizEsV
	pgwMAQBdmjiX9SDvfLOqK1ghAa/yvLmT7649y2kvWNAl5qyiWZIJ1TAoGahTgz6onLo/U9UWxLtXP
	QEX3tSxvaHlcgwVJNSQaeWVfxZQ8aNLxRmeZaT9VWAfw6eQKTL6jrsUKABduVrP4QtWx83TEKXgFd
	FuzYrDeky+sIdkTLjRkIaweM/b807pEs2R3B+TYwHcxS+CXdywZeq0lC9i0tQyvlDULYMbxgDiupU
	mOqufJdA0uSVgjET5qtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6eDG-0003qu-5b; Tue, 25 Feb 2020 17:41:42 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6eBj-0001W1-0a
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:40:09 +0000
Received: by mail-pf1-x44a.google.com with SMTP id e62so9725444pfh.14
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 09:40:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=jVKqEF9zEsFZTQz5E/s7PAlXyZsbPgu1MND2Fom4HAc=;
 b=V+O8aB/kkUO8xqMJE51PIQtZsppsJth+56C9mzqs3rHEUWYqsaBskb5C8HPCIPzcS0
 KLPMyT4P8jAjhfw3HtS6Zd2Bb5U4/swuVVbMREAIk3jxj7rYDCvJV69tJYOtu8AUZqQf
 z2JnJ+dqNTgOx86Zx5X0AKcPG1QBderHLqB7MhI+u/50ASt0GTaqJITfIYTKWJX1nDlb
 MH5KYE7gNzyqd1gGbRsR7gUtF6BdQMWSviF1MHJ423kF5K89MmBFjiBcyN5dmGhPgq/S
 lhVwlyp4UFisGTJT9QGrdtvE2NZMU8DEbTuhfkbOuZMSqCeD2QDwyktTVpa+TfqPqQwZ
 EwDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=jVKqEF9zEsFZTQz5E/s7PAlXyZsbPgu1MND2Fom4HAc=;
 b=JY9T+NMkcy1fKFksOC3pIm8DlgLHPV/WFOveq8XbiX1CieyNaMCADB2lwdElPQQm2G
 9Oz0eL2g0S040jfH3v9E6d7/9XunzA4XrRwxe5VjHDoZTcolOGSM9EHnbkFm7yM9ldDQ
 zwHtiplXxx8ksRfwB4pknQVRVkLtouqyl9AcL5eqUwZPLod0fsbiX3pYjcoj/rg0qt4F
 OemG8+iQaitTceO7nwmYzpgKGg2xr4g+paXl19WPKQHK1VRo2TUOKK2wEtiC5A7HRLtR
 l4D90SPSdT7davBPtoEw6JRiHBINGLTj/EdZUbU2/JMOxPwg0Dl8LirEbGxiGHWRCIry
 0H8g==
X-Gm-Message-State: APjAAAVIZezhePsFxOTWacY30B8Uq5jSoCoeGaCSCtbJ6fTiuPW2mDSF
 jeNiKZsvqXKzY4aC72wmSrCEoW9SW037dFUbTV8=
X-Google-Smtp-Source: APXvYqx9O9w9/ihBrjsk0SyFNaEZNd7Lr04/IUqXXK96nskmhLx3/ywlCS6EAR4FJpxoJjOrSsMx/Wn5T6BL4+LTzRE=
X-Received: by 2002:a63:e04a:: with SMTP id n10mr57879618pgj.341.1582652401052; 
 Tue, 25 Feb 2020 09:40:01 -0800 (PST)
Date: Tue, 25 Feb 2020 09:39:26 -0800
In-Reply-To: <20200225173933.74818-1-samitolvanen@google.com>
Message-Id: <20200225173933.74818-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200225173933.74818-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v9 05/12] arm64: reserve x18 from general allocation with SCS
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_094007_783422_4EE514CA 
X-CRM114-Status: UNSURE (   9.08  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index dca1a97751ab..ab26b448faa9 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -65,6 +65,10 @@ stack_protector_prepare: prepare0
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
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
