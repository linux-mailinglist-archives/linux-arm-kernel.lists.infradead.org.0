Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FAE1F76D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 12:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKYRd30jWb944vpOVZW3MBtF1cERktABOmphrh3z3KY=; b=duHLUprA8sglEb
	ceh5YlL4VfMGcK8ykK3LznyvTaFPTb3oaGalMRpjMjQhZ2NMpw1PngKddXyI0riIZRMQKNEK17Ivp
	j1gQWuPqWkWNS/p9om0eosBMLebLbN4kWaxCWzvVxMb6fH4BdICv98P4Y7NRdFkcS7wXScDX1FuHX
	F6EkHzr+ssil2hlalyFXjvGxeTadxeIJ7OhmJx9+DWUtGOQoggRu5CTjJR2RZ/5ofjdUdcjDUXj+c
	XrhJJo2Xzaghr64vyTo8cYKAW9E6TSJxIuNOO6OdAK4FxdCDyqrYD7JNWNGQJ63ax4qNrKvZviApU
	qrXVIKgCeO7lqMnlZQ8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjh6u-0001es-9N; Fri, 12 Jun 2020 10:40:32 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjh6k-0001dR-TV
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 10:40:24 +0000
Received: by mail-pl1-x641.google.com with SMTP id j4so340376plk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 03:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qCuPhVvyW7/N75yK2omAqCcinhPEGmyITYXGt/JuhIQ=;
 b=cM/sKa2G3Nj+bjaWWtQcwQ8pREadjJMrHIuOx/ZYu7GK5BC+dkQLKkXp2KPzEz2B0A
 6Mb/m6RBUT0vKXzIRuomiAOsaoRaAwAFvf11wTo7BfnbZr6z2LT8ZiFMXGmDGyA+aeZf
 SN0rPfFZJhty24vrEzHfMroqEkLXs/Xvd0uX2VJlbVHbUkDwAcCRuuP6SCaSxQ/tHFLS
 baAbQZVhfyVCqwL6cezdN0Gk45oAiM/jENvdwvy2bQte1AJ5pCskn2YKT8mB6v6HL5Ig
 2Di+6W+jrOEx0RTlOJGJUEJTS3y4V+dOtF1eJryLAy3XKg8nkB5/Je0e5tWsUCVC2seD
 cA9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qCuPhVvyW7/N75yK2omAqCcinhPEGmyITYXGt/JuhIQ=;
 b=VD/y8bx3JMFBRIvslg3gSJm1gM5u20Chiigg2/RgOf5MDjg3loEmfPcPFA4MEfsiga
 97vBEzed4jsANh1dqBjuzp22ikTnRczkEIa518gsnA6IM3UaP5nD9JxIwicTbymegEPa
 uZeDvobH7uv/oQgFJcSWM3sz9z8z3GwUKY+wv0tw24EnyjFHqgDrcclYfYCh2JwYIJa9
 WT5cHfw0UxnTwZm8YK/hWKYOIWbXtB1mcuYVGVxW0b3LuHrW/B1dAWVvkODrZA+jhoh2
 LzIquhIPt1SaTE8We0D4uQft+4K5QAs4V5U3YrqxswbFvHIeudR6GmGfWf/5EVcjVISc
 aT7g==
X-Gm-Message-State: AOAM5300eZkVkbYptPB3LFNGJ45C9oSHpXmoK426OStYGbjAuFBnxY9N
 M5K0XZoXozwiUkTyt1WlmgL9uUQt
X-Google-Smtp-Source: ABdhPJzRmwyTWInw1zzKZqu+hhgKkeyHC77mmA92Za2bRTbYO/l4yQCdJgWPz4sxH8Q6BuKZVtqRKQ==
X-Received: by 2002:a17:90b:4c91:: with SMTP id
 my17mr11309748pjb.81.1591958421822; 
 Fri, 12 Jun 2020 03:40:21 -0700 (PDT)
Received: from localhost ([49.205.222.116])
 by smtp.gmail.com with ESMTPSA id c2sm4636302pgk.77.2020.06.12.03.40.21
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 12 Jun 2020 03:40:21 -0700 (PDT)
Date: Fri, 12 Jun 2020 16:10:19 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 2/3] ARM: uaccess: let UACCESS_GUP_KMAP_MEMCPY enabling
Message-ID: <cdbc3ca8921c88c9e31df0664fe1ea7269e9c59d.1591885760.git.afzal.mohd.ma@gmail.com>
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_034022_964777_68283BA6 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Turn off existing raw_copy_{from,to}_user() using
arm_copy_{from,to}_user() when CONFIG_UACCESS_GUP_KMAP_MEMCPY is
enabled.

Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>
---

Resending to linux-arm-kernel ml(only), as received a mail that it is
waiting for moderator approval, trying the resend by adding 'PATCH' in
subject after 'RFC', in the hope it will hit ml with this manipulation

 arch/arm/include/asm/uaccess.h | 20 ++++++++++++++++++++
 arch/arm/kernel/armksyms.c     |  2 ++
 arch/arm/lib/Makefile          |  7 +++++--
 3 files changed, 27 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/uaccess.h b/arch/arm/include/asm/uaccess.h
index 98c6b91be4a8a..4a16ae52d4978 100644
--- a/arch/arm/include/asm/uaccess.h
+++ b/arch/arm/include/asm/uaccess.h
@@ -512,6 +512,15 @@ do {									\
 extern unsigned long __must_check
 arm_copy_from_user(void *to, const void __user *from, unsigned long n);
 
+#ifdef CONFIG_UACCESS_GUP_KMAP_MEMCPY
+extern unsigned long __must_check
+gup_kmap_copy_from_user(void *to, const void __user *from, unsigned long n);
+static inline __must_check unsigned long
+raw_copy_from_user(void *to, const void __user *from, unsigned long n)
+{
+	return gup_kmap_copy_from_user(to, from, n);
+}
+#else
 static inline unsigned long __must_check
 raw_copy_from_user(void *to, const void __user *from, unsigned long n)
 {
@@ -522,12 +531,22 @@ raw_copy_from_user(void *to, const void __user *from, unsigned long n)
 	uaccess_restore(__ua_flags);
 	return n;
 }
+#endif
 
 extern unsigned long __must_check
 arm_copy_to_user(void __user *to, const void *from, unsigned long n);
 extern unsigned long __must_check
 __copy_to_user_std(void __user *to, const void *from, unsigned long n);
 
+#ifdef CONFIG_UACCESS_GUP_KMAP_MEMCPY
+extern unsigned long __must_check
+gup_kmap_copy_to_user(void __user *to, const void *from, unsigned long n);
+static inline __must_check unsigned long
+raw_copy_to_user(void __user *to, const void *from, unsigned long n)
+{
+	return gup_kmap_copy_to_user(to, from, n);
+}
+#else
 static inline unsigned long __must_check
 raw_copy_to_user(void __user *to, const void *from, unsigned long n)
 {
@@ -541,6 +560,7 @@ raw_copy_to_user(void __user *to, const void *from, unsigned long n)
 	return arm_copy_to_user(to, from, n);
 #endif
 }
+#endif
 
 extern unsigned long __must_check
 arm_clear_user(void __user *addr, unsigned long n);
diff --git a/arch/arm/kernel/armksyms.c b/arch/arm/kernel/armksyms.c
index 98bdea51089d5..8c92fe30d1559 100644
--- a/arch/arm/kernel/armksyms.c
+++ b/arch/arm/kernel/armksyms.c
@@ -96,8 +96,10 @@ EXPORT_SYMBOL(mmiocpy);
 #ifdef CONFIG_MMU
 EXPORT_SYMBOL(copy_page);
 
+#ifndef CONFIG_UACCESS_GUP_KMAP_MEMCPY
 EXPORT_SYMBOL(arm_copy_from_user);
 EXPORT_SYMBOL(arm_copy_to_user);
+#endif
 EXPORT_SYMBOL(arm_clear_user);
 
 EXPORT_SYMBOL(__get_user_1);
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 6d2ba454f25b6..1aeff2cd7b4b3 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -16,8 +16,11 @@ lib-y		:= changebit.o csumipv6.o csumpartial.o               \
 		   io-readsb.o io-writesb.o io-readsl.o io-writesl.o  \
 		   call_with_stack.o bswapsdi2.o
 
-mmu-y		:= clear_user.o copy_page.o getuser.o putuser.o       \
-		   copy_from_user.o copy_to_user.o
+mmu-y		:= clear_user.o copy_page.o getuser.o putuser.o
+
+ifndef CONFIG_UACCESS_GUP_KMAP_MEMCPY
+  mmu-y		+= copy_from_user.o copy_to_user.o
+endif
 
 ifdef CONFIG_CC_IS_CLANG
   lib-y	+= backtrace-clang.o
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
