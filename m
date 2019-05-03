Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5D6133EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 21:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mw5WNzEzxqcVbLdFq92bVGk6KADxGHcue1dcqlqxVGc=; b=CAO2TgsL6+/Wf0
	b5TqLbXcJsArJMFDy5BKoq7aTa9hNgIW5PG7QUnUj8MN9/oVaqpWuYCgJ8MQTWxqjhuKlDPNNiBLF
	UDSKmxqcMLvL8ooDAYuEUTkiygjBMPg+i2zDwd97WSS0HTWF/NrvSMx+v27m7dunwR0Tpb7DGK8mU
	/iiXIBGeiQMdmgYiUftfWyD1sG/bxHfnurYy4fcaKeS7b+rMBOZmP46kPCQ2CDPaOGv8FV7Rc4eH4
	5AEnYdfpNFpBXdSq/V0C2JTOfrxgX1U6Gh3RKo8O4jMSafN43t96NL734p+jdsGK2LXr+iSel8eB/
	+XLeZTUUM+kaxc7HdtEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMdcA-0006yY-QK; Fri, 03 May 2019 19:12:58 +0000
Received: from mail-vs1-xe4a.google.com ([2607:f8b0:4864:20::e4a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMdbn-0006cZ-KA
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 19:12:39 +0000
Received: by mail-vs1-xe4a.google.com with SMTP id e205so1590437vsc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 12:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=S1+7ldXbccx9VifBluJ2Hbus2PesdEq2ZegC+sTBE7I=;
 b=ffAhhKt9cAcHPTUZ2tGJclczIAUDihldPCkQoKdXxgGR3UrE3LICYC4UXQba7TvGmc
 kmcZnhB3oy14O3HORskZBIv11NSBkpe5sUztovk0ndFNBFIA+2oHDJ+S4IH7+avmk14t
 xLhkhmDCaBfu9ah8m6ILALz1hLD5VAmiwBneGEte606zKOp45YQ1zdcJfXQiQh0WGeLA
 SAqPxauT9XhooiLT6yN123ZoZ3icJ4J8e/Dolhkbjg13Kk0Ac7oFDHDGyfnNaaItM2Vw
 TOz+KcMX7/EJOIPPLg9BbEnlKO1DnTt8gN2xofCiCtAK3+S3Yn5enAQhZ/vhPa6STwAN
 SJ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=S1+7ldXbccx9VifBluJ2Hbus2PesdEq2ZegC+sTBE7I=;
 b=l16H+7B5D9FxouYWVQdsLN1Y5NSpZ7SGbif1SilRFFToRpxITx6gKuOxBT0jRsAHQG
 X5eP4rp8MTek569jFrFUDq4+t1lG7ErORLONBd8D0opJVJFCSagSRjD02uDig5WToVQC
 I5UK4vMicWUFjF0UxxOFK81r7mDPjhhyR4ojHJg+i+nzCM2JZDkEFaB40cgu8u13dBVx
 TA4pWGtiPz8zHU06tdfuvoezVm5BqosFDhB9pV0zfaslmYmpWr1TPVARgki7XUM+XjYW
 d1BAR/omWCnNWhYsg3Eu9oVD3ZKDDUJeFOrJWBNGpybJGh38WTml/TGnzh/jIqL3XgaJ
 PNxA==
X-Gm-Message-State: APjAAAWWHk/hYwm756+nAjlniOkgY4yn5Wuw16TPr/HYv6kWQpmhtP7W
 l1mmy62e8q8aWyYZSTHp+bv9VDaLEqYay9hDjbc=
X-Google-Smtp-Source: APXvYqzHAR9S75uPGiVNfRF9u6bkFml00Eh2GFxe+AnwR7DC7UoFMW+sJcWWbXuIZA58HIVw2OK0c5VUpq1QVJoWnqk=
X-Received: by 2002:a1f:96d3:: with SMTP id y202mr2514681vkd.6.1556910753220; 
 Fri, 03 May 2019 12:12:33 -0700 (PDT)
Date: Fri,  3 May 2019 12:12:24 -0700
In-Reply-To: <20190503191225.6684-1-samitolvanen@google.com>
Message-Id: <20190503191225.6684-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20190503191225.6684-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v2 2/3] arm64: use the correct function type in SYSCALL_DEFINE0
From: Sami Tolvanen <samitolvanen@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_121236_142557_41DC58C3 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e4a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
