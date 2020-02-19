Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CBB163833
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 01:10:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w0lyhXywkHjh6aqcailStNp6gpENbC+yN6amjPRYoz8=; b=Tve/ygqqfnFYkT
	w0quQDoy0ADcWA9GzmnAoATiZI+ibi+qtugt7k+aqfV1+rY5Pw8EvbeGEUy8OcajsQ+QBf8EQ0TaO
	DhI6BrnMoVb2WOiQ429wywencsnMQ7oR74Eywb3CAg4mt4WUF62KA+2WZ0ykUkB1cDGDBeGSzrb//
	bTEaAGn1s+HDFj3LKituwRKdyWsH4URLwzhIJSaJePv77yKXHhGYw8fTolck+5GHYZj46HYukyCxB
	Mp7UhgoQwIoHfLvHA6UryQ9lUNZWTCOwmJkpXIhavATB4W3eVMN0oBO1IdkktEEsgS+UdXRXLWCRy
	mYUS1f3ogni9Z2Gityjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4CwS-0000p2-0p; Wed, 19 Feb 2020 00:10:16 +0000
Received: from mail-yb1-xb49.google.com ([2607:f8b0:4864:20::b49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Cv2-00089F-5i
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 00:08:50 +0000
Received: by mail-yb1-xb49.google.com with SMTP id u9so18835248ybk.18
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 16:08:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=jVKqEF9zEsFZTQz5E/s7PAlXyZsbPgu1MND2Fom4HAc=;
 b=YBtomVXuPE9YKWIcFgIRjcpY7OwDiCsLehztaXeVLAlEBdRDN03lZks7iNSYV/g7SR
 YxwyOOS2qE1ncX0EtkhevaGgA4eK4/d1kVR8Hg7OyAFSsLcG+8dnY5snFDfpsTQCIxxk
 Y1QycxeImvPDBmdy/cdMsuRQ2xS8Byv29lIb2/F1iUiQ5v3EISXk2V2SZMi7+fb/+sgz
 yIlIllB9gAQECO2n6q3OXLzyGO6GXq0pDWI7W3azU/OOkDwoEA2BZeS9Am6cgqPFhcwW
 o5TiUUKtIpgyX4x2xGMPYUpfPZtDjUB8KEwnztoM4IaZg/X+0h3EF1cv4rd2sQGo8WFP
 UaHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=jVKqEF9zEsFZTQz5E/s7PAlXyZsbPgu1MND2Fom4HAc=;
 b=gB0TxbNkQlnI3gwy6YCk9ISMW2MlZns/3FMJaRaydrID5NY1cERkSsHz0j/cSFqU0G
 9vzQMG63ojhUkR7Rt9OT8p6VefHwp1C0Sd2OvMGZkXK0zNZ3kZiIJrNIDObssaJjcOmv
 sXI/23M96olLTych7sJVtktX40v7FpdcMPI/9IzuGzry1BsBDumqsOb9z5SQ2arxl/RJ
 PBXsMK+LNkmMiiBWvCQQw4lOhSSjP+d6Kj/ei78LqDXs8TkquOgcIqJpSAjVvG31CIib
 fvKCxFvWtrbgHV8C4UUC8DjdRQac5h2VjadML0s8yWznqjjpxSV3FYcNdJijB+Pn5Ikg
 HSYA==
X-Gm-Message-State: APjAAAXfqGMrue+5GZjtji+Q56034+QXfcv8tPXQj7xagdm665lvof1e
 bQEAyAoDUOd+GSD9Apx9GM/mRGewlPg+ZCsNWs4=
X-Google-Smtp-Source: APXvYqwoqUB80JmAoZThMz7yQ2pLfU65+z1jN6RLHc1bXGITJSutpnUGpHwwmYx4HZQIhCgNm8jd0wWugPtH2DIPEJs=
X-Received: by 2002:a81:57ce:: with SMTP id
 l197mr19086954ywb.235.1582070924606; 
 Tue, 18 Feb 2020 16:08:44 -0800 (PST)
Date: Tue, 18 Feb 2020 16:08:10 -0800
In-Reply-To: <20200219000817.195049-1-samitolvanen@google.com>
Message-Id: <20200219000817.195049-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v8 05/12] arm64: reserve x18 from general allocation with SCS
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
 james.morse@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_160848_472729_EFA557BD 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b49 listed in]
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
