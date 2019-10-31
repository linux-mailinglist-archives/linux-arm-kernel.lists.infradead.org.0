Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A781EB560
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:52:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rSq1Wn/y0yNzKuZFpSTgtk8QeQpxKvGypegv+0TRVK8=; b=ImbvfO1qtdEAJt
	ahd5yVvk+0IYXSrWagKKRmJclJo0n941/Gi7XelHxiIhj8Sg0O/6o1KuTsemfDkHCU0WqyvCG6sKc
	dyyoLNFHbB+LZRQQd6HavNDeW3zWl48xb6oAYs1B4ogkuRggDxYMP2+LOaEm9t/pKD/hsNAYdslrj
	i30YuXkNqgNJhvnzwxLpSOd2WIBGvvyUQmEs8dmFwIdeojBvPwqOgpQGqOipsuQSqpxxPHxjqsXVx
	iROI3erYIiBiAPCG6bqYVQQxJ++lQApMPWjS9Chi3J8H/7deK/V/KKIGsCoHGje0mMZdshrk/ZVkC
	8qKKLRnCMKDIKRFv6VRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDfy-0002lH-9q; Thu, 31 Oct 2019 16:51:58 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDbR-0007BZ-6t
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:47:18 +0000
Received: by mail-pf1-x44a.google.com with SMTP id v11so4980141pfm.23
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 09:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=P4MEC/JNWY+R+03CT6BMcXkN4eq/H40mvA6s8gty/0o=;
 b=FyBd2DZREBGldSQmdAl4ctWmHh0W3zmoUaOrqpBjG9EgJjGFba3+Gk8Ux29MjmAeBe
 sicne4I37jGUHXgzNedjLIMvsWVJI0ltGloZSO14XUHh9UTS3ARo7k97sP37e/Sb7gOS
 DkHrE6/vOZ1GtiQPangd/sumad9YQICceEEnhyVa//W66pwrVwkXh36b+vmOtbBKreKQ
 Cj7tQe1j/bGJXIWzMcMzK/I2qD4i61lE8pjYfsfIy6BaWm8QzTnAU3MchHhGnejhk8Hg
 PI+E7X6+lVUF1d6bWAow+VePWBv3sp0SROOStKCkYLe92oec5OgOSb4SSowmvPYz6/dp
 uItw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=P4MEC/JNWY+R+03CT6BMcXkN4eq/H40mvA6s8gty/0o=;
 b=R+noPOcuKC57/4dIJp0OegUeyFU+/nr/0KngKiGV13KYBicqGjCJdUFSdi5p/62ptR
 00Lys4Kcu/WiXtdW7KsPKSQRESlFJgaKJ4pKLjLJwR9bFM3Q3RpvJ9xA3ia5zEGDgLk1
 wpzHw7DUvBgejW/N0HF0MOkRP/z3Ef2FxU3I3v7MdCb9yuQacYoHLoc2fQ4gYfKvndtt
 ptf0+mIFdvn+gM94WsseKG1D8nqScuuCqThVkcWzL4igUyiL0LnwY820q4Xdukodr+Rr
 ER1n4beV/5Yy6MevXtj/PSRXXU0cWmkUJgjTlf18yDNtyAfV1aewMg8VNVXVEzzWMTbe
 y8KQ==
X-Gm-Message-State: APjAAAWDdYJujEkk2gkkH3Lnj52miBp1+1u93pwe/kfLPxuSVl+2NLYi
 G2X0h36dpTLL+8j9K9CQ0bucrO8+fLMvPNrrTiI=
X-Google-Smtp-Source: APXvYqyE0l4dMPPmCmPFvy8Hsugb5xtiMU18+Uv3gR8RxmoCWwbgYDkks7ERiHhw5CjwrT6msMO6tlilVlKLUvoeCVQ=
X-Received: by 2002:a63:6cf:: with SMTP id 198mr7655687pgg.259.1572540435556; 
 Thu, 31 Oct 2019 09:47:15 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:32 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 12/17] arm64: reserve x18 from general allocation with SCS
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_094717_266472_9C86EB70 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
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

Reserve the x18 register from general allocation when SCS is enabled,
because the compiler uses the register to store the current task's
shadow stack pointer. Note that all external kernel modules must also be
compiled with -ffixed-x18 if the kernel has SCS enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 2c0238ce0551..ef76101201b2 100644
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
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
