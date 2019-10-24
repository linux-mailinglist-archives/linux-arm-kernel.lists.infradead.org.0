Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE32E3FC0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 00:55:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rSq1Wn/y0yNzKuZFpSTgtk8QeQpxKvGypegv+0TRVK8=; b=f5M41OD8Bpt4i0
	ih4nuyj892Dgzt7VvySogFo7IGZfC9h4Fk9e0Z/hc19vbFy1Br7Uup5oT11MW7fnsnavuG+3ZBNhJ
	xjBtNLWSTmuLcOjFkIpjHTkTkb3pGhtbSIrqFVf70QTsDs85K5XFlhGfymUKhGN2R39eJzePedBot
	BgHooPq9vtxhKgY6MGI/q2sxI60SAdaUq1YWhTk9DTBjeaf5NxBeYYxYve4zm/o9WxUJMQYlycXJ3
	2EVNglHlvq1kRdBrQmQCI/1GQ5osBMiDVp22Q5+Pk6gcB5R+zRfaYEg1frzEmhbAUiF/AkFbRWqRu
	ltq4YBgiqG6MpVWEZuGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNm0s-0006EE-Rw; Thu, 24 Oct 2019 22:55:26 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNlxs-0002ja-Qz
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 22:52:22 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id p66so469489yba.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 15:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=P4MEC/JNWY+R+03CT6BMcXkN4eq/H40mvA6s8gty/0o=;
 b=LgK71Giry5j2UUrcqZm8M1t7G3cAfX70fiBl3GzVzX02VQgK8Xy/2JaMhQllH7/ZPL
 nbGIhdXyHvO6fXRGrMomvZJWhyGPRIV+y5d/BACVs3jLEuafWJis56Ilg2TYMyAOMkM5
 SfUjIveEskgTQm3JvXHTwS4MAd3espod1yTXwztKlrb0HBnCQxMl0mltDYsrGzXFlpAt
 6tZqhZ8nWrGVt0cWZi2CF1EWQFTr31Hkxzp7LT+IslJa1Cl5Oy3SBFezMzAOQVF4maYG
 e9EgGYHPCM5PcJ0/rpT9DVxNu/NMQhoXs2qqn/CdhLriWJXwzW/tS3v6g8YNS9Gn2Pkb
 dSag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=P4MEC/JNWY+R+03CT6BMcXkN4eq/H40mvA6s8gty/0o=;
 b=AsAwum1CAj17uhwJvZm5LH1ODV8fD39xpcs9n1a4V/bYmpTVpijkItK7VqvqmZb+0u
 WA73UoHLKe3+bDE819bzVhbrSc/+uWmd+4SCdTM9T7Rg5Uv9BJbUn2tZYdb6tPvtPuBZ
 BdOaP0QZiggq/iVowwYn0zU5N3tzHpEmx6O9JFhNu+axiz8Q/00KhNCoz6PPJV6uLezW
 MFEPF2iGZFPYCcQV5EKmNyh9cx5j3EN2gZC2rx36vNeo/yL26joBl7ppV5vRWvVhlFTb
 SA1082KSvalmSlJZkSETVM2WC7JVLU4zIBa9dvAwUPCit/rW3U4imW9xW7/vvSH9DpHT
 //zQ==
X-Gm-Message-State: APjAAAUIZZTLtB0QQa/yoU2VFx8r5K1Chx0+6PWPVEwhLkg1GhxxFMYc
 EFbIOyIPyCHnBsPXB3yrG2EtsCsPOhCXfija5IQ=
X-Google-Smtp-Source: APXvYqxj5BIdKecvMwrjzhKVp3MzlCFpXSuWCACeGyF0YdtpM7lXtWd326/xzWB6Xxpi8A45K4ijH/MY+l7rtLgFqfA=
X-Received: by 2002:a25:2a46:: with SMTP id q67mr381984ybq.123.1571957539222; 
 Thu, 24 Oct 2019 15:52:19 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:26 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 11/17] arm64: reserve x18 from general allocation with SCS
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_155220_887815_F5CE23B6 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
