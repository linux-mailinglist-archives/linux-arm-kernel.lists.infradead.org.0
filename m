Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2D52A109
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 00:12:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJIaAaLfxONdxn1KlKWmLHMQ3fpAIT7utgprf0q+/NI=; b=Aijbvkpw6KL8ag
	5YplPIm6DRuQEPX9xqcDKwaG/qNR20Udz6zJpXL2ceT3ZqYvLYtrmCmg1FGaJ+qij41EzhmJGpBZg
	JiqJ6ck/Vno9elmuEwmoHUJai7CH1WtDLlSbmJSSiY5jj7KfpdMI4Wu1ioki7anUi0KaIXh/QOQ4K
	fgo4vPo1tinO83F7Tlxsb3WxlRyykHUhfNKCXie7N2Tw34akBfuYdYAJSpVrNz5owEYboZxzq6EfA
	5HXbK111aQ6XAU28g2WY5p0tjhEFGeB3nA1Pv7alasyPObCXbjiiGE13jUByrYewBDg2OQ8gASObR
	gRwwfRcIuXWz6KZ96Z5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUIPv-0002fX-KZ; Fri, 24 May 2019 22:11:59 +0000
Received: from mail-ua1-x949.google.com ([2607:f8b0:4864:20::949])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUIPS-0002HR-TX
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 22:11:33 +0000
Received: by mail-ua1-x949.google.com with SMTP id j14so2595170ual.22
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 15:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=v92h8itBUYfDlklDlHFCcJBl3/YhqLnEEC7wTIuTHIM=;
 b=CUsAhV5X7IG2TWg3my4XjAd8N+cugOoAK2eNkVT5xhIUmLHS0BGK+qa4DRM4Z22cLx
 tIKhnYDefXMooVOqGJ9AXeNU1h5v1ryC8qLaZnMLaza9RURY7h11L2mzTjYrLav40CKr
 PoYW9InXbd01jGqMhxFZDs1kzy5+0ZInB9sshvcc6ohLa6l9WU7EO5bpDmDfw2+eQguf
 XOSuj2JDaQrbY1F01G9b2NXP/AxJEF8DKwMlFxfeaLRFwiwgelynwdfg5FT9Dxd1GOri
 M9J2A8C/rEIBYKbDjFaBoUiuUY8RBlwTEYHAGjXyKbUWW73gq8uHo2DgxuaVEySRD4il
 dt2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=v92h8itBUYfDlklDlHFCcJBl3/YhqLnEEC7wTIuTHIM=;
 b=WCWC3x55lhuI4GW2q5FCdjFFk2LbfCPfeQEIesAdlnJ1yAEnzqHyPBsmJaaWvCD/mL
 Cf+SQBiJA1bT8W5Wo3Ifqu357XP6NgJfC5YZETd5C/Pww0BzL10C9a2NcfLXioPjUNz8
 oQV5al5kFxKW7LKYlqn8NWIft3L8bLWg6YKY+wnAuXi/JCp8hVA90QUsOJB481c3+/pL
 fYirfD8EP3LB9unBTUMO+1XNATQfs3hseQBUupu/IyIlAAhXZhaV146xQWqqgZQEYxCT
 rPD0SBkVbycM2yLwEfqQOswfAPuNHVy5EQOE6Qj/eDpCSLOwf5t6dKnEuOYObp2ZwpSf
 bErw==
X-Gm-Message-State: APjAAAW8EnC8U8XkIQmOhwtaWMFng5sHGcIL7FLis3H7+poui3ZGcc1j
 RRF9aCTq5sYGihiNjziX6WOqSMQAL0u/X7hRd2I=
X-Google-Smtp-Source: APXvYqyEasMSInV7lTRAqxTR3tlK+X6lvMZOcDgfdEHMr3xXlhBiE/O5JogcdnzzcRFyPYoTDe25RsVg0qI/jFZJc7U=
X-Received: by 2002:a1f:3143:: with SMTP id x64mr8099236vkx.32.1558735887958; 
 Fri, 24 May 2019 15:11:27 -0700 (PDT)
Date: Fri, 24 May 2019 15:11:17 -0700
In-Reply-To: <20190524221118.177548-1-samitolvanen@google.com>
Message-Id: <20190524221118.177548-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20190524221118.177548-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
Subject: [PATCH v3 2/3] arm64: use the correct function type in SYSCALL_DEFINE0
From: Sami Tolvanen <samitolvanen@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_151131_127376_6B771373 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:949 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Sami Tolvanen <samitolvanen@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Although a syscall defined using SYSCALL_DEFINE0 doesn't accept
parameters, use the correct function type to avoid indirect call
type mismatches with Control-Flow Integrity checking.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/include/asm/syscall_wrapper.h | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/include/asm/syscall_wrapper.h b/arch/arm64/include/asm/syscall_wrapper.h
index a4477e515b798..507d0ee6bc690 100644
--- a/arch/arm64/include/asm/syscall_wrapper.h
+++ b/arch/arm64/include/asm/syscall_wrapper.h
@@ -30,10 +30,10 @@
 	}										\
 	static inline long __do_compat_sys##name(__MAP(x,__SC_DECL,__VA_ARGS__))
 
-#define COMPAT_SYSCALL_DEFINE0(sname)					\
-	asmlinkage long __arm64_compat_sys_##sname(void);		\
-	ALLOW_ERROR_INJECTION(__arm64_compat_sys_##sname, ERRNO);	\
-	asmlinkage long __arm64_compat_sys_##sname(void)
+#define COMPAT_SYSCALL_DEFINE0(sname)							\
+	asmlinkage long __arm64_compat_sys_##sname(const struct pt_regs *__unused);	\
+	ALLOW_ERROR_INJECTION(__arm64_compat_sys_##sname, ERRNO);			\
+	asmlinkage long __arm64_compat_sys_##sname(const struct pt_regs *__unused)
 
 #define COND_SYSCALL_COMPAT(name) \
 	cond_syscall(__arm64_compat_sys_##name);
@@ -62,11 +62,11 @@
 	static inline long __do_sys##name(__MAP(x,__SC_DECL,__VA_ARGS__))
 
 #ifndef SYSCALL_DEFINE0
-#define SYSCALL_DEFINE0(sname)					\
-	SYSCALL_METADATA(_##sname, 0);				\
-	asmlinkage long __arm64_sys_##sname(void);		\
-	ALLOW_ERROR_INJECTION(__arm64_sys_##sname, ERRNO);	\
-	asmlinkage long __arm64_sys_##sname(void)
+#define SYSCALL_DEFINE0(sname)							\
+	SYSCALL_METADATA(_##sname, 0);						\
+	asmlinkage long __arm64_sys_##sname(const struct pt_regs *__unused);	\
+	ALLOW_ERROR_INJECTION(__arm64_sys_##sname, ERRNO);			\
+	asmlinkage long __arm64_sys_##sname(const struct pt_regs *__unused)
 #endif
 
 #ifndef COND_SYSCALL
-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
