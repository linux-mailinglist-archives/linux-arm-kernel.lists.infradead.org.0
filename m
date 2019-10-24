Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA42E3FC4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 00:56:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tf+G9K/bVmix+9AW6oszASmpKV+CZ2r69yPqolg1rBc=; b=PVegiuiTwVKiAL
	iVj1Nu04E7jDhkfi6iNk/JG+2n+JQv8uisKq1n1NWBy2Qod8yfHieAgYVrRyUvXE7bYAXPGd/aAJG
	1rWcasddck1hLIvuPuYIUmjVt+2qoI8XKrnSJLp5BlvSO9CeYLQaL68ZYsxrWmL/lQ731pm8YIs9E
	9dJVBIWMbz++OopNsRKw236DxAcowllIcGUhUy234J6XgG/ZnkNBHetUxv3BH1XyeTgNwzrlC2NLz
	rXodfqNBkFOaPh1zzlK/4mXmxrB4bAxGEJYPhG0hb3TLBslFORhgR/RW4ZOtPfV6hsRA9XBOZDpBJ
	pzblyLD8oiM9Nb5SZCJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNm1l-0007FC-RC; Thu, 24 Oct 2019 22:56:21 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNly4-0002uM-6j
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 22:52:33 +0000
Received: by mail-pf1-x449.google.com with SMTP id h2so317496pfr.20
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 15:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=hi8Cu8vAZVRE/aapAAyha6S0ojR+GJofj/wY0IAnOZ0=;
 b=TyshMG/WpQRZO3yfd1Jd7A98WjzJgZlz5cgBusE72nESHGI4zkJTacl+id0OgkmE7h
 AxB+37xlQQGbvIrPLJi6GGLKffKR50gyLvpF58DcjcVhAty/qStODXS2I8KW40lpQKKM
 9wmdN/xJ2SVmeGa9TxRYExC5/DHlRCQ172Z/37iBv0lPikJlYqyLfQHNi9002+g83EcF
 QnIjvisbAv9L9w1EDMmGJaW060fxbyUE3ijTJ/94kINWjZTBB+Ox25zv9w+isMZbiwl1
 KW/zlOW4yuPxJVvvypFUcVHmJ7bcxVD/QaQo/xACVHNXgM04mDK3oI8qkDfcIz4+KeCX
 PBJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=hi8Cu8vAZVRE/aapAAyha6S0ojR+GJofj/wY0IAnOZ0=;
 b=i25qK/U8ac6rCYqXHb77+eRYfkcJpep9Bj0H6jj6xHFyY/kmwQZrxhL9Evx9YNEfG/
 pI+xh1LxqH6SthNCaXhcAJqB0z1dRCQAlv2cKs8jwLoU56EI8rmaVkZLUERl3JBm2kq5
 OHXnTXvJIw9FYGV3BBumzLog65TebIc4mB0r4xDlqkN4wBCCGPT/NcY3G+swis/VRb53
 pdVK4nK5uks9PPOWlOolQPPK9r9wvWRjk0PU7QQEijtKQ0fmICS49r3N3p2IWhTBSXba
 8vXbKTQDqS0pSzqlulcbxj1nl/oT7901KZdBjxvFyZYRJu4RJUD8sO4Aq9XAoTkng8Z8
 nD5g==
X-Gm-Message-State: APjAAAUiV+9kKzLvt20UlPNm3POuTBo/I3wZVA25CUn24thmdY6vGMmX
 mel4SQAZ9kduxTm35AnG6pd7JHJI9KZ7FLPwgvM=
X-Google-Smtp-Source: APXvYqzPFNEl9K3cGuhwxqWJUP7eMbcPYG43NyYUFqf8p2L94x9ufyqifykLbDRReVEDkpgIxS1uIAG4CEwVu64w5Yg=
X-Received: by 2002:a63:e156:: with SMTP id h22mr510399pgk.266.1571957549407; 
 Thu, 24 Oct 2019 15:52:29 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:29 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 14/17] arm64: vdso: disable Shadow Call Stack
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_155232_295810_A18DC2B1 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
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
