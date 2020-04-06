Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2652719FA91
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 18:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=81cgdBL5XNhBvb7GwEG+U6k7/zJM3M0X5L/y4yYWpAw=; b=bXaV9yBD1TL2dt
	f1RIQi178e5TFBUNA81PILvbErlBzgHlYF31WiK3z50UtV5TFdHUiPJRkmIG9lAAC1sb4SNS9Not0
	l6lC43pkVfXJserrRPlHad5XTynIbXi9tzjTiRCO3b7ovag5yxaeHQY8xR8QFdMAc1CccFGwFLb5x
	kQp2Qiw+4aNR9S1bwir7yw7TQ55WnRr1lf4BfEByo5PWcD1MpZ2wmZAV4WhfzeO16r0tLvxmmF1un
	Ki9PnazcTrO8HrNZWThpr2/KAh1kJDccriN7DLrgMl6A0FJCvSHw68CXuCGjicqXRV/V3Xpdgzhp8
	/FoukChW0wHT3AArC/Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLUqr-0005pr-No; Mon, 06 Apr 2020 16:43:57 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLUow-0004GE-4M
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 16:42:02 +0000
Received: by mail-pg1-x54a.google.com with SMTP id m185so62312pga.19
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 09:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=4apKHH+0KXGOaGE6jTeN52LWOcENawq8hrV28HQBrcA=;
 b=H7r9/K1Pb2jZ/QTf4eps8FXgNOwBjIplJ83GvJcB7p53k1kwhM1xPQxZLkgvAaK02n
 beraESPrDeb3MtB6jvklmi+/vUcZS4mHBB1OCRD//Yx8vijzVcAIERr2dp1g0QDMqGEH
 /HT1yD1mZDPSkJulcCDMMrG5W512OIw+DI+B5TIlQrfESZv1YUtu4bFOI7koPSLqre4V
 1GvXHs5lxJf7sNgG/FH6hL3WB2A8MbOLzhIcXcIuTXJy/+sRweQg+5SqJEi4k7ntmLnb
 VpUd6/DJobY+aRGS+iUjHZ3if6GvDWbplbrX5is0cinNOSMDE2y/gYC1eTqNbsHLdzRj
 P8oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=4apKHH+0KXGOaGE6jTeN52LWOcENawq8hrV28HQBrcA=;
 b=BCy/qKvqxRkqp3FNyorWwcwtz9HIM06d5rij1sxBRh4Bnbf+SFPpPfJXDLvwEcs/g8
 TMbfSQFrraLC8+w46AS/BDvtV32T78O4WUZag86/Y3bFkbbld+MdoeI4vFjsdJNPJlNU
 5YoIe2lA34FI8Jay9T+R7twljUEsmrVASftqg2mv3ouRoXhoiEx0EeCsXsBpQgmKMJcX
 ydG+dw8umULQQDAdTRk3vKoUTjW3MR3csSwe6Gr+tUYj/BSX1ZUjCZpoRQyNrt1a38yI
 9UPE+nZP6Toq1uwxLkjF4EaKlCPmuNtWoJkEyuYOXqS21BJp9Aki10FzZ3O8d5RlP2T3
 CojA==
X-Gm-Message-State: AGi0Pua4cmuCgJjeTXuBKiYrJ4cDthIfDEen5vRoMPv9DEVHaZ5hUKFW
 S+bE5NHUPwnu0EljQKZAQ8ov01iv679y+Fmd5AQ=
X-Google-Smtp-Source: APiQypK5eLQJG4otrid1fZuEbwfLIfGLtaeCQl5ykKUwyTbJ+T2+3uqzOPYi+Sh8FFR75wCHX7LWfP4FZsjp9J54Zb4=
X-Received: by 2002:a63:9043:: with SMTP id a64mr22525247pge.308.1586191316557; 
 Mon, 06 Apr 2020 09:41:56 -0700 (PDT)
Date: Mon,  6 Apr 2020 09:41:17 -0700
In-Reply-To: <20200406164121.154322-1-samitolvanen@google.com>
Message-Id: <20200406164121.154322-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200406164121.154322-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v10 08/12] arm64: vdso: disable Shadow Call Stack
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_094158_219120_29AC692E 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

Shadow stacks are only available in the kernel, so disable SCS
instrumentation for the vDSO.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will@kernel.org>
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
2.26.0.292.g33ef6b2f38-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
