Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5767115944
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 23:17:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6DCTwwOIkgvBEiYaioxrNDEtDaUpWzV/pZVN5LGIS6U=; b=ab8FeuQLBHRCdS
	1RyJV5FK7ejKcDaVVyuU1ePPIP+DpPgTZdjpqJIvfeXcPPqfNOWGoJUOH63jnrgWgx2eO9zbMO1W2
	uOGCx1JsGPgVnggkXKQN964OLUVxyHN22LewfFATN3LU/B0t+ueVK8KaHLnv7Ll1VGl9RYf/75TbU
	rrxGTRtSb0DyHd19XFOlJQ7y+yKDnRMIbdHlrz/gxJwJGnNoz3RUic1wsAh859Iam6ml/W/ve2Fnr
	iLtnVGbJCbe7fh55JziHgXfg75cB0G32p0Jzi9gGz1Da+tkgav3yg2IgLX5ugW3T12XdXfPBQDmE2
	Jbw2nKqeurKlnSQv9fNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idLuh-0002Eo-3p; Fri, 06 Dec 2019 22:17:27 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idLro-0006pH-7A
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 22:14:31 +0000
Received: by mail-pg1-x549.google.com with SMTP id r2so4554089pgl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 14:14:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Ve3ap/e8LZQd2dbv+oe7rMBjURea5FcvbovcdBkDba8=;
 b=r3PF25I8b9gh7TGG4nyyWOG/IBeyi5leohyetpHGT7HVJVhKrS0Kq4x36qkr37xPQZ
 H4HOZxl0BVJe13eGlGPV1yZKSRRS5AmoOeRlUDllq58XEGXxaFeTrlkb9BrV5kcixQbm
 XbGbrkKiH70yhU3gMykfI079m4y0ZDpdOP7kIIKS/yBz18w4YMZf4Pr4H9aBR21ygtcB
 kY14G1EByPoZ/HSscjak3f91JNKl95S2IyZpSGv5MX3WaPMUnLjTgAsAI0PC749M53m0
 8RfjY0MYNA3UUEnoDTDY3HwUrUHVLuT76W4oleiH3t8Kx7xMLKek/nE2jk+/o2pgp2U5
 oBkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Ve3ap/e8LZQd2dbv+oe7rMBjURea5FcvbovcdBkDba8=;
 b=W4Frx/Z7GtS6kctYZVqGgdgCu9+uReXxEqewY+XY+HxTsswTDKXIiLd5c17WNWOmvz
 uMqHHVuDyewJTHj3ZnDoAJpVCv2iA10E0AJSMxudzn10mcBpUkRL82GL4AibuJ/mjlWy
 vHdIb7dPprXrl+ifRuYwMyd1tfGN3zT55vLXiw98qs2HPCPOmp6+YfH32papmc/25p+L
 CzTcIWvu8IIWRbIXTHaH61Hw0xw5wJHdha3+D2hQgJdZgxWRyohiyX7tnwQ1UxfsEMFG
 /mDck8b8HuftqkyjmXJbYGVPsre0t4QGoeFB32ueDNsIxiF/MNJXd1j1uocc0OrIlcG3
 KqLw==
X-Gm-Message-State: APjAAAVXzAMEAKUiroZ8SuC25OtM2gTLDCFSgaS+Et32rYEs+qW9ij7/
 /Dk0LI2VQUiLZst3kU73eEbqF8x5EdRgfqc4G1I=
X-Google-Smtp-Source: APXvYqwk2eRK+EeshXSfp5tSqqdwzFGqYQg2Gt1CoIRgkLdeR9mCxHtnbRaIQkXosCwRykWO94sSQGC7aLJzBhMw49s=
X-Received: by 2002:a63:220b:: with SMTP id i11mr6011463pgi.50.1575670466460; 
 Fri, 06 Dec 2019 14:14:26 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:48 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 12/15] arm64: vdso: disable Shadow Call Stack
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_141428_296610_135F3150 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
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

Shadow stacks are only available in the kernel, so disable SCS
instrumentation for the vDSO.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
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
2.24.0.393.g34dc348eaf-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
