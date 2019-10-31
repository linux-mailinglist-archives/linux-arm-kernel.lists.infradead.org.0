Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CA9EB565
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:52:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tf+G9K/bVmix+9AW6oszASmpKV+CZ2r69yPqolg1rBc=; b=EYr0cYC5E2IYBu
	VkevPLr5v49avPYHBCaH10Pnxvu7YdY76Kt4pUbi/dpEiuFFL/p7DEszqfZ31xTo9TQsyNADvBGb8
	qLZUTPQk19GQkILxbqYRqi9bhJuMrzGN5wPjSKfJ8Nq3qORCr9EIKT3rKVb3V0WxEyFCcshIjc7E7
	kAKDmpugSBbM4g+PfxDL34M4yV8xS6ZP90g8QzVHxh+atya824ZlKdxhT8yZ0f0U5MtNYZ4X8eDg9
	jZrrd32yagf07odtqM8xit8jbMDvc4qtBg6TlCdMlzdRyy1bE01TVk9GGBaBsYwaWnoUr8NTzCDaW
	S3aaNvJXR6PvMNo1wBlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDga-0003BA-34; Thu, 31 Oct 2019 16:52:36 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDbY-0007EP-Ks
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:47:34 +0000
Received: by mail-pg1-x54a.google.com with SMTP id t28so4778590pgl.21
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 09:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=hi8Cu8vAZVRE/aapAAyha6S0ojR+GJofj/wY0IAnOZ0=;
 b=P67vDmmf7l8iN6O8NA0rTRghuQ+TRNhS1arwHEnYxr1ViR1HY50ozBsDIgmKlmnXOV
 md0XEh+hEaxcVLZPP1QTlLYLvdf0FZ5h5YQ+hUhhwDYcR//ZTfxu2AYXNsiA1wS45nTi
 SVUQGq6SEiGtWg0iKnZxq+hsmFHJd94RUh0NNXXCkm0GrJaiN4pxdntxDEe2SE7qvN8R
 1E85Ba2ueIH7RNmmMjNsZslAzajrycwYYcrlzySe7vhPJyXlXhUCKyZb31QYebgcsA/j
 hbzgteQSWbLyHD9/3p76Xl00fiAX0l+Zr68AJyUeyf5tCJXRfOLQIH0Q1QaNskmKKaMW
 A+Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=hi8Cu8vAZVRE/aapAAyha6S0ojR+GJofj/wY0IAnOZ0=;
 b=awwIJnIumRZYIpUWE4mzolcStt4K1aA3h+cnltcEIVbLNa3n9mSY0UCxCRWO+4HrcO
 YAA5iKXi6gx72tv1hs1k9UrzBiuAx9MkZpEvTuVxkboWcfUJUsBiNVx8PobLliEsqq6G
 izgg9uUJpM+hINR8Gr7cHT1NYR2cem5tTpLOyJPEu31AvE6/rklwsWCaGyXjpUQkKWnh
 OD+XUK/ZCtA/zYJ9x6IMI6yOGwXOH4+08ZG4tp2D5W9mVv2lxsOCtEwqMfJIN6uNmfW3
 3TY7t4fcmT5McmEMjjhg07UAXdUpJJ9d+FzrF6OVFPg55GHbKOn5PgbThI6bHZz5uzBo
 Q6IA==
X-Gm-Message-State: APjAAAWMczQp7jWBdSG3BHl8tUq0GX3bO/ihtEpUgUeIue7e0WsswxPK
 0TiWWCmgmS513G1LeukOCtoGonZ7XQIlllLIO88=
X-Google-Smtp-Source: APXvYqz6YRDXL8kUecfGxnqeQq30ocBHNq/zxXBU9i1Pelv7UcRC8hJJlGnCkmCBQjmZ8Y0bj93wNqvrOEFGlVoQDyk=
X-Received: by 2002:a63:134a:: with SMTP id 10mr7622711pgt.441.1572540443216; 
 Thu, 31 Oct 2019 09:47:23 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:35 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 15/17] arm64: vdso: disable Shadow Call Stack
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_094732_791961_A0288497 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
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
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
