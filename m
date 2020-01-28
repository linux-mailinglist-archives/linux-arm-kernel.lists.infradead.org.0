Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D028A14C05A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 19:51:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+kfRBBZYO6vw7B3CSDCPsf2DCI4Lc8+XJUJ7fEmgCA=; b=joOH6WDlfC5Cv6
	rJr/CrphqSPMKqycYNWOjFx9IztiJC6chEIGE1AdWcOrDmpOhd+NDYG77BJY0Saj3lP0d59TJb8TX
	348BmrP8T0B4jpnodoo6evYVu0ppY8J0qunlrHbtk924e3oxZUVETxqrDlT5IkaQBnUTYO8iE2jOS
	7KLsilVzMdRfhSVEUlPYpQ85pN9m8WXGte6FLWSb9CY23qo3rvfu/t3Jbr5AYLEJEzZMb7yZB8Hkk
	Ir+f2GRNCe8AW0xtsLziR+mWIBWZ3wfrvZmgRUOuS23ybjF+vRroHJNl3nDjEvkfiEOEK2PGP5mvy
	FFMNhW5LjO5G4sQtNGZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwVxj-0001r4-O6; Tue, 28 Jan 2020 18:51:47 +0000
Received: from mail-pj1-x1049.google.com ([2607:f8b0:4864:20::1049])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwVvt-0007ny-NO
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 18:49:55 +0000
Received: by mail-pj1-x1049.google.com with SMTP id ds13so2034671pjb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 10:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=3z69QiWDrqEiuvPmX+boefS4xCQlVDQqcKUHkZHcYiM=;
 b=WKzYD9qRh241gJR37Gn3slI0Ze0ENEB50B561Azo46OjWSNnKsQSwTha+IR8iUN7A8
 bIL8fU7f6KviuaQftzEamZyVxAqUTnnHC6uedeJC4aQF/6TkFDuvF+sEqqFHwmjqQfoI
 TymdgIColOq7seg3DKZbAHmhw5jAFVHT2lWBR1O1QVgR4imxTSma7d51+vNTPwsWA4fb
 YlEIvbI2hzVY5IAfh+gyqKxuXZ3bTx983VQ7LbP5xF7SPACPNJAhj8V6Bq3bI9I3rHA0
 G+wMuqmht03rH27g5NqQOLr3hTXl+79EaIr4HNKT04efHrIRskPatCwoVaiqyFAzs5sr
 3rFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=3z69QiWDrqEiuvPmX+boefS4xCQlVDQqcKUHkZHcYiM=;
 b=HXs1Ak09QfhpCJ5nGkPmHPyvbBdO+vep55WYAjiWunAnUdz+4Y/t1ufzmMxpn839SH
 AIkAzsIBwias8EogwuPXm14FMx8K4o2yMOqJiOrk+ZQ+Z2KPKkgDRg9YD6iOoVXFavW3
 BuqE/6vFnTHdyClVApVi0Zd6AvhgoxCgyITCvy0ShjS9CRJHyEbpHLIDkrHmxf/UiKwr
 68kZaOF8nmkb/71oc5IqUGSiC4khxSYFgEV14CLBLp362oC+58OAj/zL4cYwpaNuwArM
 UWTc0LH8VwQO2di96udcccsAnzQTN3d2ZVzHoywnJRXYKY9q4YMNGmHV1wYOCSVWkcG3
 5aOw==
X-Gm-Message-State: APjAAAWz7Q5SgcwC2ljmBWsNMqiMV7ist0P5u6ajcHjzjECRzjahxEzQ
 NNIsa4zuUAd0qN6+T0Iy0NSwV5V2bY3tXW20NP0=
X-Google-Smtp-Source: APXvYqyCCLKh4s0TkRqrwhynUzYu2+5v/oLjs7TG9/zRyQpl2gfMCAhVzqKgups6XR11XC6BZHds7SoxOgaSqO5NAfY=
X-Received: by 2002:a65:64c6:: with SMTP id t6mr25413296pgv.392.1580237391528; 
 Tue, 28 Jan 2020 10:49:51 -0800 (PST)
Date: Tue, 28 Jan 2020 10:49:28 -0800
In-Reply-To: <20200128184934.77625-1-samitolvanen@google.com>
Message-Id: <20200128184934.77625-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v7 05/11] arm64: reserve x18 from general allocation with SCS
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
 james.morse@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_104953_796417_39003EB9 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
