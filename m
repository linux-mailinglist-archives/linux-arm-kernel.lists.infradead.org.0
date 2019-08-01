Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F437D77B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:24:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qH8THBL+9QTlla6ROXa5PvqGEYd7Nyz+glrTDx6XX2A=; b=Hg8N0w2QYb/UbD
	X3X56mcxp/xHMwJJPjmOFDMTPfAz/QUBOfE4EcTfuqkkRYqTHPzd8ydGhos37MhMS7I5kmNkZgGa3
	NoxtGaZC/z3rBDJRkD66dD6CD3UYI3lJt57nRdnb/b/OeXbUl7VFxM2/8uSQTVGbdD1FT3S2yQoRj
	ON2MeRRk8BZDWQdgAw5buEmQFefTPOy0PsfrydqpQNRLMde+OqoM/9Q17bCD2GIeS246zGtIaao3d
	tfBJFull6/ypRb44aGGUrEFxA1ggIwR+LPxb2E2FHkpgfsvHsPlxsZTv4eI5IVntQb6T7FITUVOjG
	Q2gEdUnX9QDQgxynpLgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6OI-00082H-Mo; Thu, 01 Aug 2019 08:24:50 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6KK-0002fD-89
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:45 +0000
Received: by mail-pl1-x641.google.com with SMTP id b7so31902365pls.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=38pdn6yMPIMVV02QHWSD6x84Nqpn4d6LkQlpQyJb38o=;
 b=hpj8rFpqrv5qQhzotiE9gMdgzeeBBY56JsYcX7mov2k4sLQED6mYGWck9/YlmIsNte
 CvgNOeTzEU/dOYJodtSCB/QqdhAWuKaWfHbSDifhT7uswu3+TXhLyYcJMnYSklDo2R65
 naU69OUI9lfGVslVSxJiiwfCNGn62aCu3lwlJIh7Tf55NYlFiUfpB+YQzce5TrXsjSLr
 q74/ypxEdtW3UDTY+0ssOk3V4RqaK1kmHYGv+j9E0+masU4wpX5nCLSroLSz1wwvgmZt
 PJaWq6BASd5p7zAoOmB4CddaIgIFG2/7658BQH6TXT/Y8J+l1bk9aXHhozn7zAhQmTsX
 swMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=38pdn6yMPIMVV02QHWSD6x84Nqpn4d6LkQlpQyJb38o=;
 b=GX7HZtBx8hBGW8CKjwT/5898iNJmAaXmHx2Mz9BsHyLAY7UudJ6zqF4zpXWs2pGVk2
 ZCMD03apG2L9cdFTjfjlvk0PI5hPm6yC03hVDDGWjRurbGReycILeN24SjYIYqBlNjVX
 S2z3nuAc+sTmAOJtla5kAdgM64h9Udq+FaN8U1vpArsz+iRA5RtCJ3ZHq0AqE/8c3v+z
 4wL+oxXbbT+3AdSGBLrvWDVKhUl91b0aXFga7SxdStZnj2fuOQ+AWsVtfyHIkJJP/6pg
 +QQQ572QLw9mQFbslbWB4dHA19juy4l0uwwtLfV1obzjTlsdFay54EAZYGnZFY7J+ZxD
 rZ5w==
X-Gm-Message-State: APjAAAWTrdGC9pEqYS/wKM2QgYB9TD+NI6T1fpggIpNy9d4annqftuFv
 yERcN213I7TFkDdfphdrJzqJxA==
X-Google-Smtp-Source: APXvYqzFqEhG8iSDqc8c1Fwl0FFlxIe0jTCk/Jowo/7z3bJOap5hms2k/E0l9VfM/kV7WHN07BlFyg==
X-Received: by 2002:a17:902:2a69:: with SMTP id
 i96mr123097817plb.108.1564647643267; 
 Thu, 01 Aug 2019 01:20:43 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id t7sm67895102pfh.101.2019.08.01.01.20.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:42 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 26/47] ARM: spectre-v1: use get_user() for
 __get_user()
Date: Thu,  1 Aug 2019 13:46:10 +0530
Message-Id: <092598d625ced1af31bac019a567319e189cb1ea.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012044_339707_DEB840E7 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit b1cd0a14806321721aae45f5446ed83a3647c914 upstream.

Fixing __get_user() for spectre variant 1 is not sane: we would have to
add address space bounds checking in order to validate that the location
should be accessed, and then zero the address if found to be invalid.

Since __get_user() is supposed to avoid the bounds check, and this is
exactly what get_user() does, there's no point having two different
implementations that are doing the same thing.  So, when the Spectre
workarounds are required, make __get_user() an alias of get_user().

Acked-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/include/asm/uaccess.h | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/arch/arm/include/asm/uaccess.h b/arch/arm/include/asm/uaccess.h
index 968b50063431..ecd159b45f12 100644
--- a/arch/arm/include/asm/uaccess.h
+++ b/arch/arm/include/asm/uaccess.h
@@ -314,6 +314,15 @@ static inline void set_fs(mm_segment_t fs)
 #define user_addr_max() \
 	(segment_eq(get_fs(), KERNEL_DS) ? ~0UL : get_fs())
 
+#ifdef CONFIG_CPU_SPECTRE
+/*
+ * When mitigating Spectre variant 1, it is not worth fixing the non-
+ * verifying accessors, because we need to add verification of the
+ * address space there.  Force these to use the standard get_user()
+ * version instead.
+ */
+#define __get_user(x, ptr) get_user(x, ptr)
+#else
 /*
  * The "__xxx" versions of the user access functions do not verify the
  * address space - it must have been done previously with a separate
@@ -330,12 +339,6 @@ static inline void set_fs(mm_segment_t fs)
 	__gu_err;							\
 })
 
-#define __get_user_error(x, ptr, err)					\
-({									\
-	__get_user_err((x), (ptr), err);				\
-	(void) 0;							\
-})
-
 #define __get_user_err(x, ptr, err)					\
 do {									\
 	unsigned long __gu_addr = (unsigned long)(ptr);			\
@@ -395,6 +398,7 @@ do {									\
 
 #define __get_user_asm_word(x, addr, err)			\
 	__get_user_asm(x, addr, err, ldr)
+#endif
 
 #define __put_user(x, ptr)						\
 ({									\
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
