Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3963DF0AC4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 01:00:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EDLkDIRY8EbcoQ0omMi5wbuWxlquPR1aWUydVyB+3bo=; b=bNnxr86weo4O4d
	mvzlm8PAsCmbmz59Ez/81fYbH0doRpTT1HqBZwdHoAeyvuJQ4LoFce80G9BpwIe5xjhhhFZzJnNDY
	de+2Nrc09h8Sryxap12UDHzM44GM/Ta9NtFfP1YdLfnhjfkm/tb24gSUOWyP2ECmdfl4pcEOZcqti
	ChgepIZKY/fUo4T7o0/Xg0deV16dkBKObmo2JvKvFpsHsIdYyH5vCzPWdoGh5/Kvy3ZhKec8XsiX8
	Rg1ffF4WKUNc7tWPTQ+yLsj/xXNPiIVYakDfRZBHCIXFq8VmBYElOpTj/lD9iNiEod1dVtiZeWtdO
	DEdOG0bKyJPl7puxY7CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS8jl-0002T1-Ki; Tue, 05 Nov 2019 23:59:49 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS8gs-0008AG-D5
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 23:56:51 +0000
Received: by mail-qt1-x84a.google.com with SMTP id u26so24266823qtq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 15:56:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=oB4lIvjzdBiHgRAUphuiQVPgI+jp2K5bMoUCGUiH4hk=;
 b=QfiPTkylKak2JP/fA92kLS2kHYHGvI0ROKKMGBuahal4YLtzvGBJN27XjNyiQH8HG6
 yGlyTyrU/unO2GWm0Nv4aMpTNLKbJN+tCvpwionJjZcpDaxtYqxpVnIYWW0enJwD9cGu
 H3LPc6bHWpLSwRsuEbG1JVtUql2ni5CS0AKG2Gtvj/sOGcnFyVzwIGABxUDq4hnShW0d
 YrnkM62CleNkLuir4Rfyub+T9Qd7Ss628T/1ROy/StYjkO1JBGOTm6WgyQ7LRFXQEEsm
 JL468RJSiozD/j2M3Vi+OnMGSwmwEQH4MedG0ZFkg+53Rwgl2MeC2pLijfEUHj7jkGJ/
 9N/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=oB4lIvjzdBiHgRAUphuiQVPgI+jp2K5bMoUCGUiH4hk=;
 b=koNCViWKPfRdWZJ1RLbdxj42rNtUSG9oP0CC0AgJ9u6i1cbUM6yJgu+0ZTaynXyFc2
 3B919XE/jKlgHnSE6efSX5JO+InV+293VfBAMMg7vD4wWg58SN0IX8k/M3bBwvfOCB9x
 EVtgfKIO2Zl6VIel1DBbDxl0/3witJM9UQEgygz69wWWFlF12jhWNzNRjP0rUiX8I36w
 rz6J0PhdXiksqfQQUym8CPPOixmwwtvtvyHsFazq/WXjEduGOjhV+hBe4yKr2nSBDvhW
 lfg0U17P09EogJECAg82JdJDrWQS+ceuI2foIl73DNez6Ela0mAy5bL0S31552TZWwsD
 pdWA==
X-Gm-Message-State: APjAAAXaSPHVHCSvyP6MX/8J9UleEa98XCZ8d6CH4A2SrtVl1tH/NVMx
 VyprIUQ2W54WEYw+QAU9AqYUl/7Z4YIH8jpf+78=
X-Google-Smtp-Source: APXvYqzD4X/kPtbk+w3gExO5Bezjz7X/3F/Tl84XtD5Pt1TYYSMyOibW/2GJGTtsQO1axnooT5H2E3H7HeWsFEsu76A=
X-Received: by 2002:ac8:4543:: with SMTP id z3mr20376230qtn.41.1572998208364; 
 Tue, 05 Nov 2019 15:56:48 -0800 (PST)
Date: Tue,  5 Nov 2019 15:56:06 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 12/14] arm64: vdso: disable Shadow Call Stack
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_155650_468379_D57F9F10 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Shadow stacks are only available in the kernel, so disable SCS
instrumentation for the vDSO.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index dd2514bb1511..a87a4f11724e 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -25,7 +25,7 @@ ccflags-y += -DDISABLE_BRANCH_PROFILING
 
 VDSO_LDFLAGS := -Bsymbolic
 
-CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
+CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS)
 KBUILD_CFLAGS			+= $(DISABLE_LTO)
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
