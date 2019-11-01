Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D74ECB3A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 23:15:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/us5YYoN6NcpVPm//s9pMAcFkF2nW12G8DHM3ancRg=; b=izRT1yN0ELOLk6
	lSuWJ9bEIQceoor2H3AIfElfhKkAaDik07F6GjVv1+rR8QKdDutiOff8AKkow9spcYLeX4SfR2woP
	rVuXK+oFHtJVeLF1nqMx1oI/ZVQ7ziNb/su1Pr7oZMV7E/SE2m1iUTSf9DlKeW+KzgvTkpQ3yRQrK
	/WVjnf15AiBBio8RTouYbsgKBgjqsoce4WDopyR0xM/1kJ8LRhJViDtWQdQjwiL1pYwIxhC6GRd+U
	BJFycJbpOcFWIWZabketUBrX1Jei4nelDAJ7u1vCKDXsvqsASuLxYl51PDvwvdgSYiJkU97EG1RR7
	PGaWTrTwjHWauApmj1Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQfCe-0003gW-Iv; Fri, 01 Nov 2019 22:15:32 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQf9h-00088I-3N
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 22:12:31 +0000
Received: by mail-pg1-x549.google.com with SMTP id v10so8033328pge.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 15:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=xr3X122JfUZTOJ9HNPiJpW+Iyor6r4hGY/b4sjNxJZA=;
 b=iJRBiSEsCdhJICeToYTjV6/+ZJ3W2xifgYKJfjcL131hC2BB0cUCRbkywESPVzBlrI
 8VlR5cC+N7pMsU5+x22Aw5ne1YAMEzfVAV/3q/b7V7ZoG9tAVIz0AEgVSuh4hW3Zbj6L
 8aT4Az4vTNPYUadKRN4vE4k+cTQ9+QjgE+sNFrGD+oYFu80MiqRx6LYVU3nA2t8rpdAu
 rt0Xtr9hynaTlZ4tY88Emujp4zPpcari/k/MzTq60ei+HHRB6JOsgOHkUmAALjYf3xWu
 4VQzOKmPKCT2h1o9LllZnsSb98KxsZJ03JbNAV7PqwK8Ovk06fBR7TYZNq1DCfB0qZBz
 hFDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=xr3X122JfUZTOJ9HNPiJpW+Iyor6r4hGY/b4sjNxJZA=;
 b=gseJjPYiTcS4QszwAoPX9zE3+DImGLgPswc7LZdCIilLfctV+6OVuRk3j98F+7eysj
 fDlJj1zMBgCR56FHkgt6GOx63fs5Rs6CszLiJNWdnfnllZ0E7G4to1ihbDihnufSL89m
 Uj9htpTh2lHFsc1NKpAhR2n2jn/ZM6edfz9hw7VhzdTZOUn30BEU+Qlf9rwTw1dqciLf
 pnWJltjREEw/1spd0Sxjdtv+5jYT2lh8yztHDCEg6ZiBk5srv4S5N/bOYGa50m5oj767
 gncz3xxG1AYA/9NFjOzS5+b02NgaTPDgaQwPh3yy+J+nYwhxrCp2ldIPza0rGPsm/AAc
 hfFg==
X-Gm-Message-State: APjAAAVMoXLmdp1zW7BH9ZfQ5AQ0kQjkLe+gPNSax89vBaW52Ii97yBO
 9vWzIbkhAxNPpQSqKrHBWa1I5D4lH8VYiACq3t4=
X-Google-Smtp-Source: APXvYqyCFSFt+5MiVYAedclgUa3YVl6NHt+7PUMsEM4gdNt4exvKeZ9B7bS1m6sTTxVqCs+LwHo1QQUcaSTSyZAlU8w=
X-Received: by 2002:a65:47cd:: with SMTP id f13mr15511166pgs.356.1572646346250; 
 Fri, 01 Nov 2019 15:12:26 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:45 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 12/17] arm64: reserve x18 from general allocation with SCS
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_151229_281038_DCBB7DDD 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
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
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
