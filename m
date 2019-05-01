Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F2610DB6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qgFVR92I+z7uIqcfaXfipV+fz7Ztgp+uIJct7+sqD3I=; b=FJ1GouRV31aP2o
	K7ZGUfeWIpZQE3Qy3TAYkpTkXX5Ug4R8h7ge8Y0KMQ4UjjwoTyU8ZgwgN3xV6gsEXgd5aCRY5sCGG
	PTWCVgT5w/23SCHlreioaTvBIC72AR8oaTJDIv3niaRDKYNEX72XJinSokOQtPGWiR9oZ5Z06nTbV
	UwyxaLLuS1MOsF0MIDN/LKJ7+6k36NsrAZtGWDFHV7kOVX7F7oyyDo4l1C7/hbXIPeDF6x5StF5up
	yspVK4jwvSlx5ujrC5nvHTHLlZvr1867YKR/SZJusaWHkABBJlFabpJ3zd63RwaY+dV4vfJe6AHzp
	dbsl3UqLocuk0r9GpVCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvU8-0003aa-01; Wed, 01 May 2019 20:05:44 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvTa-0003CI-0b
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 20:05:11 +0000
Received: by mail-pf1-x449.google.com with SMTP id a141so9928945pfa.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 13:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=MlQndH9JHFu7S8ddgNAyiZUD6B/g+xVzIb+RnIGAaWs=;
 b=fnHCAaSHp7jm7BX0qFctNdwaGrY7oLfabmSkvoB4dtQBJxSdCKtEx2jxC7FIC3GCxO
 YlgBkWApyHsNLL6q2+7r2CJg2KnpX2OwDbqGgxNeA53OCgvKuTcxuVB48/S3RpXYbdDY
 xQI022cfV27rAtSh9fzNB5ly9uYCGubQ/ylCHl9zpyxnc+YN2gOllzLs4Xjgd9TiL++l
 kMDg+NtQ5Q8uH53COQDUocIYQW0e30MTDPCh60KDEcJ33zjTNRHn9njPDqkCGujG/mVs
 xQ7iK4l6ssYko9wzto0NLq97Khegf/K37bxoKrlRFtekyZwm6Khlvp/QHuQOSfA9pGKn
 uedg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=MlQndH9JHFu7S8ddgNAyiZUD6B/g+xVzIb+RnIGAaWs=;
 b=jmu+W1oM2ZC9ntMuO/izq8QlX8MOozhSNPSmkRXwgtiev/EDXYi1dVqo/IvixMT50L
 PRqcn/ZTJxjz+JANUNc4gS3oPbG6WEdeLwg97Of9ei5Y/bHiAOjNrLCe86YO2zBEp7dJ
 Brxj/UYfTGBCvnrH8gaVY4iSYQuC9T3k8ejGTsVHe32oCXOmk91Ph6xvXlGVOBMFfO2s
 P3u0xVhZCww3PYpScR6/5lkkY1gkYDQrg01soXJD0DwZ6aqpIZ7kXz45RhN3eht3lhYK
 JpolKD8nkftdMKTPYAEHuqUG+VJ8ESxs8KJay6rvDfz9DmgeGh6xJ94xAHL9RPMLdBzg
 lUWQ==
X-Gm-Message-State: APjAAAWeaz0CpMzafGruspIAg+e5lfY6m33pSKuNsWwjwyWzg5o50uwx
 aFneERWymYwkcgwmVwk1TDxmH+acefd44eiwRgU=
X-Google-Smtp-Source: APXvYqwBclqb9p4MTO0VP/jDbcmcoD0wl/ivARDRHYgzxLNfoOJhYoTrwu/lUR7tBPdfO3m6nARfIKPs1tbACW0AiWU=
X-Received: by 2002:a63:da51:: with SMTP id l17mr34321605pgj.115.1556741107820; 
 Wed, 01 May 2019 13:05:07 -0700 (PDT)
Date: Wed,  1 May 2019 13:04:51 -0700
In-Reply-To: <20190501200451.255615-1-samitolvanen@google.com>
Message-Id: <20190501200451.255615-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20190501200451.255615-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH 2/2] arm64: use the correct function type in SYSCALL_DEFINE0
From: Sami Tolvanen <samitolvanen@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_130510_091948_B5246609 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
