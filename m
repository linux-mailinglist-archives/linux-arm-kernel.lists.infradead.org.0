Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EEA163838
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 01:11:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6hJpJ1wdBM+CrQsU9NgxMVbyk8CAf3SiHv6iQBsO7s=; b=XaTsxgDLA876aZ
	6P8SaycrLBE8JDakBAlk+FjdXoA+acXLQvwUy9+LYukmOobErCEyC7ymD+j5bA/d3Ek4MjaEngPOe
	xP4x+cCb79tFcN9+MNKjVb9gnAoKouUjNX/memLRy2XFMGK5vhWAqHoPk0dFdECZgVoGQCIHZ1IWR
	XNsrq7UGh5spD6Bw526EsWb0DJLZOLRpIK9hkZETP3g3lVvm3H84p0i5+rk6TSz/7n2vvnk3mxc+4
	iA57jBJ1nI2XKYhED+Dsv7Kve65Wa/x/X+mo4qsYlSiq9t5OcC2lr1jmf4vyC2Hiurd/8NoQ3DqFM
	vLrJ5TORrlhzUEDa6rPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Cx2-0002hI-NZ; Wed, 19 Feb 2020 00:10:52 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Cv9-0008Fk-1c
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 00:08:56 +0000
Received: by mail-pf1-x449.google.com with SMTP id z26so14295904pfr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 16:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=W8ajq15Euo0CBn6HLEY8Ur3IDCmQBKzronvmXuYJ1Wc=;
 b=MLtcH1ZlIr7PYSYq8+bwS883i63QukomQpLx88iQ8Ty8/42rPP+4KZrwuMCM79Mm8y
 817RusRnQwu/CyF2v0uzoIwvRmOV4u/0FxSEzxKKHWOhb6hWWE/OAneX5bwh66Ly2qtm
 YznnnRzzbN7twHBbdmKiyRvpdhaN1RrK5afuCzULkJ+VvgLPqyD5AlIoiRGARJ6zxb27
 757p2uJ/BnnFVqtnpquh5ngNiJbA6U8ZEhhZeoEzcGA9JIw8t6XH0UWo5IOKMfaQpaYt
 /Cavrovjgq0ziUxvV0b5eM9sr9i7Vkis+NVpWAq01JCZHkKt55tZ+v/e09v1BsMjdgCt
 L+KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=W8ajq15Euo0CBn6HLEY8Ur3IDCmQBKzronvmXuYJ1Wc=;
 b=kpyDqocSKrI6FTchBOzQ426AMxqNrxpP8jPdyuk+rZfio08E+A5y/Vi8sk/TCGZpOA
 hkaQHCc980TrjU8cZSp2/gStG7qOxeulo5MymFrhWdR/12+3uNAC/ZAktpQZcV95xCAm
 iprOHgFRR1FesjmuudkPk4IUuPmtzgzsdEQTrhaoJCsQsW7IpdpjczSWyP5GgjcmrdA5
 5i0/j3A+dZzSaH1JTExTWB2JsoHBudbE0xlYNsgD5ksWOpG7ys/eZOU1aD64S6ZlClxF
 qjzWQytyrZS6hDMcfg7kruNGtL0NtFt+GaKnTzUkHkBA/HsFrfAJYBoZ9uGrbrYBzJ09
 doGA==
X-Gm-Message-State: APjAAAVUNbjRb0tWEcjpizXnwEg3TY85bGZg6ibs/OF30h9vnBhYzGsP
 Rimfzzfze1Jk+XIMyypQ0eMhIOxZ7V3VxDCsUyo=
X-Google-Smtp-Source: APXvYqxpK1u5TV7lBQJWCp5pVL1urj5uZ/qQ47DJf+mApduaTIPmMgvlpsKCisN08m+BtnDwSnTiPrPaReEndts1HUA=
X-Received: by 2002:a63:d042:: with SMTP id s2mr25008924pgi.66.1582070933662; 
 Tue, 18 Feb 2020 16:08:53 -0800 (PST)
Date: Tue, 18 Feb 2020 16:08:13 -0800
In-Reply-To: <20200219000817.195049-1-samitolvanen@google.com>
Message-Id: <20200219000817.195049-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v8 08/12] arm64: vdso: disable Shadow Call Stack
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
 james.morse@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_160855_244628_346D0A4A 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
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
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
