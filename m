Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A647DCAAF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:15:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jT2/2WSb3U7Gfo6QnvZYcMfQoJz2WKBG4hQNu/4Xh7o=; b=ChmER3Z6fcpp/0
	4FaVDwCKHH3pvXClaKVGBIDOQamVyk7noYUp0FmJb8VSM8+8GwrQx8/6CfR/LMKnf2kXzKy8b5+8U
	UbWXlXzx6yugBFpotrHXLaMXinkCryleWZFdue1p8NOo+w6KOT9R87W1FfB2bfx8IZv+ItcRtLWyA
	tcaCEJaNF/PFYPNoxqsAK0PzYetBqcg95N3Y4ttjjX7YJxlRRc4OVOhK8L9FOdk8Ge3SPz4S9KfB2
	EeCoBXg8kQEwPMxchKtukFQ1zpvpPpeYrwT6puTXY5uCAeG/7J5Y9mQsUawpd2UQDkUQIAI1+MUAN
	4CWPCGw91pOXaRZrK/3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUuK-0005Mb-Hq; Fri, 18 Oct 2019 16:15:16 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUqY-0001zt-FP
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:11:24 +0000
Received: by mail-pf1-x449.google.com with SMTP id x10so4958641pfr.20
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=K1ZhNofnBR/XSzepuNm2GXj6CjTITzvlb/GIVw7T7D4=;
 b=sClupJ7s2vyir/7TQw4u1wskJ40f2afok9L62g3bdETWOSrvPIoJbt2TUVhCDZl2Ll
 jSD1Pe1pU7jtmC4+A/khfQCqIGy7o+x3Glnf1WXjzHqx9iAelj7PV0FH9T6XgXbpgXPr
 QmyFwYa7yB+qCqYypJwWf511MkYFKNAU+aHSUjTgdgKc/LGoN7I1EdcPjslTcJn6Nsnh
 zpS9sYd2YqSiWR32qZg1jO6XyvMv14Qmysa4U0MKWEQOtGZOZsv14zS5QNAzrCYTZwhv
 xDZy49ncrITpJUlYkIIuqsGVZMQ4LMcDek2uuDnjzpOLCvDTsilhXvrJN1MvHxPElje/
 wDsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=K1ZhNofnBR/XSzepuNm2GXj6CjTITzvlb/GIVw7T7D4=;
 b=E7l2qSS3fqFMgd9A9uya4RzlIkytiRX7EZ3VPdjig5zbds6QFB+8681JBIweXuBKS7
 JXtdP96/elWR/S4oPwJdmU9R8oeOjbYDQD2Vgw1bbKSymM7JIpaIdPoWCkK1Vi9lFFby
 tugYw/eXZV0McBvurlSZie5FAeOurfX+yxJZrpV/0hrHQBNGe3BWZhyBdyBXCjE85sud
 2ezowe0l8Pswn53HA34xTmsafdGcGXxBSNpa67rb/ZT6iGh4LKs0XGzs6gPiksQCoX9A
 nZ1XPAbM3/8cznG+W11XEVugVdLrYy6TI5hz3+NQKB6BFGMNsUFEVFbl5yMeIvxYhFgk
 7u2Q==
X-Gm-Message-State: APjAAAUvF2KBGDx3GUGu552REbyDa9TlpLrjckp9FtcmC+UVenblYgfw
 I9IR+cpTUVCG+7nqB6hrngelT9p+t7h7u2Y4lbs=
X-Google-Smtp-Source: APXvYqxQZgJ8+dUeSHjL/X4r9AY12JB0O/dDMacaQgZEGqyCDds26CgWDH7ZPg+xHY8lSTXkA3/VdzbOvvEqn3IOjDM=
X-Received: by 2002:a63:eb52:: with SMTP id b18mr10634742pgk.205.1571415080458; 
 Fri, 18 Oct 2019 09:11:20 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:27 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 12/18] arm64: reserve x18 only with Shadow Call Stack
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_091122_560548_DFDFA589 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Only reserve x18 with CONFIG_SHADOW_CALL_STACK. Note that all external
kernel modules must also have x18 reserved if the kernel uses SCS.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Makefile | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 1c7b276bc7c5..ef76101201b2 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -55,7 +55,7 @@ endif
 
 KBUILD_CFLAGS	+= -mgeneral-regs-only $(lseinstr) $(brokengasinst)	\
 		   $(compat_vdso) $(cc_has_k_constraint)
-KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables -ffixed-x18
+KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
 KBUILD_CFLAGS	+= $(call cc-disable-warning, psabi)
 KBUILD_AFLAGS	+= $(lseinstr) $(brokengasinst) $(compat_vdso)
 
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
2.23.0.866.gb869b98d4c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
