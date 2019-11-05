Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6212CF0AC0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 00:58:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/us5YYoN6NcpVPm//s9pMAcFkF2nW12G8DHM3ancRg=; b=dNI2JhXT5a6nZH
	MoQbzZqbg3CvWQ6k8DPntSxt59roNv+lA3T4sFTkyDZlUqtD5vZomjzEb/68CMDlS0PDgi0XDb79F
	2x22POLH9Nc1DfhZeKyjZK53O5VMKzoXT/lskYVGPlF+DulCVFK7RXlk0VbPSBYerDZ5SwuaA/Yg4
	CPYKs9G9AG+Pp329qtsxF5TqLwcLKRG6saFKDZXdTK8NG+oHCquEgLRxvFixzQXlQxPSFo5p/suHa
	yZN2vkWV3q+Eol+AYvbVSft8/IzN37j5BzLLErIWydAgmE0y8Stik1Ev05hJ0eTSZUczIvGZTRsB+
	wC96S7uqy+jwJ+E27DYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS8it-0001fK-Tr; Tue, 05 Nov 2019 23:58:55 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS8gk-00083D-M2
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 23:56:45 +0000
Received: by mail-pl1-x649.google.com with SMTP id g7so13900906plo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 15:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=xr3X122JfUZTOJ9HNPiJpW+Iyor6r4hGY/b4sjNxJZA=;
 b=WX/V/VTfUhYNVK63Q6o2nwuNZuF84nG4taeFhEo17XXi/wiIq5TBNma6L2QWkkxymH
 DvQMMy0aOWkuLzcjaD/VZ7I9iJTaYKRhuhci0d1Uv1dvow1PsPAbfcG7lofjVT32BZTo
 XfopDA2vhLhs1jhnHF0BtxTMW++6XgIwcQqObAyguiG5eCzS2AdaeI/mW/++SFMdkYFO
 0sFgOE5K8+grQi8hixiOmdeRZME3HY40NRXpHJTOGJP9Yp/g21dwfZOSqMKsicYNTg7M
 PQxjmxBUU54ovXgSaLB6R/0V/BtxcVf6/NuKLrw9AecxZk0Kx+tl9gJtoHFRyt1RFLTp
 RO5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=xr3X122JfUZTOJ9HNPiJpW+Iyor6r4hGY/b4sjNxJZA=;
 b=Tafu4VqkSqHbxGqNm0ex1t+zpggdjGVen9nQ7wdgT8+eKhI84zIg8+TqLIu54XMunT
 9iGs9B+QQw9rsFcrh6MR4EOrN4GI9fydQdYzKiNa0NHWwSUhOotv0lP1FA07KD6MmR6m
 5F5nQE+0EOLKm0ENHiq5ocCQSThPHHyBqNYmhBir9pAYhk1savSz6EythFO83KLLKt85
 jha5ksKLq2/hZnh8DUxyCsMwLg1C89IAykYttX2bIXEvtvIZdbIi4Kugy1Uh86EOeTj1
 gUx6NKUYCf3BRErXmybq6cDsXucwhdmTL9AmDC46iGrZU9yMGnirytiCjGL5uJX827eq
 FbaA==
X-Gm-Message-State: APjAAAX8AMr7RSQJgNC+Aid1rgF21uMvrxeuTdeJ1PPrfC8PU7UVQEhU
 O9PtWi3ACa0B0EQu14+cnZjLi8ifb/WyydKd1aA=
X-Google-Smtp-Source: APXvYqzws/iChASYEHCRVYS8P2kdCocZTmxir9yLCAbfQ2Y76yiotnVRg74apgBfcVGe/Rb1kCjSoUo8I9YbTGAoXKw=
X-Received: by 2002:a65:5683:: with SMTP id v3mr19280245pgs.190.1572998200132; 
 Tue, 05 Nov 2019 15:56:40 -0800 (PST)
Date: Tue,  5 Nov 2019 15:56:03 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 09/14] arm64: reserve x18 from general allocation with SCS
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_155642_787331_2D6BB887 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
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
