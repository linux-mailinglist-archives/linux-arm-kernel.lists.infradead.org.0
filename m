Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7700045295
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:16:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5SKqHnYh++enVkO0Jo1GiR2XPmXkqSMc1OOSta9dWJU=; b=iNrfQcYtBjBUyD
	sjwy/A1Vb5es06GKnmjUuSWK6hIv45l2HU5D/ZrH6JjJqotkXlIjCv3ZZGMLGki2mYeKjEeTSO9q0
	wUvuYrSphtyHwqEVYPI4cea+200KY0TkEcTttxNkk3XwfhudJngDirFZERQINaQQ6bk2DdksFJBku
	qcPlTEQMnpdajLOoRcsZ0cxXjBUmw8L52aUiwMT34NGTFvVIdXCNF71Oi1mAgc2sUACzyhL3CqgXU
	b676AYITBlevYkm7qj+iRA4WR/GOGecm5g2H/o7NCYLXzYHcvrc7XPws6iE7hPpg/WATwS7cH9gC6
	ikJBNku3t+60TthyCr4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbchC-00046b-7Y; Fri, 14 Jun 2019 03:16:06 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcdX-0000FI-I7
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:12:22 +0000
Received: by mail-pl1-x642.google.com with SMTP id bh12so377361plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Lt3w372XAiP2T5A3AE8p2nBAFVuCKsgxbI6J0UJSdP8=;
 b=ARF6EuIOrYoCPrmP9r2NO8meY7IeSPACptb2qiSC3sZkkfZa+YnowaYv5BXUGvg14G
 C6EkcuPeGocTfXv3Ut4XUoAz74Qf4c/opqiS12y2PM49RuCirdTuRfuexd7PCUPelcWM
 seJw+buAjTHBvaLeXrb//UjwS3FIMYl+J0ppj3mNRrBFUjiV76zkc/cIeqUYJrMLNiQK
 Y+o4x5bUuJEAKR+I26nOky6nQqJVT7l01L7J+YkEL/W+Nn8ihvvgxos25+rssBLI28Qz
 pGM5oTBZTZ7Amfmd7RlRVOjJZNYjzjF09r/6nTXVZKIOiFQM2FgaLmhhA/lsVMGV+uFf
 3vEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Lt3w372XAiP2T5A3AE8p2nBAFVuCKsgxbI6J0UJSdP8=;
 b=bqmZnYcyD6Py8Af5z29hs2bJkcNrbYHQ0ndTt4fXntmpM8JMZ5Yy1fiPzagffrqeHb
 ktJgEDoKtON3E0tldDaDvoVUEHH3OUo9bja905767wHrjGEIffLEFZf0OPyG3iAE99tg
 vdmJkLMDbWi5PZUKbE6jIs2xi3+d4VTZhHOhwuLZPpHBXOFHLNNNAkb6Q+lJ4lzzLKY6
 02tlrs7rDG+TdqD7HFt37YkM4ft7KZT+qc9soLgF327q9EiB/pKWr2xw3LcNaMg6MiKN
 l0Sg9LE8rXa61eelqolFKAvnCAAfVxTpRTtqZiqoU+z13+pF+ODZsJCFuaE88ZaX0tih
 0QZw==
X-Gm-Message-State: APjAAAXNHk+b0xhWuFJ4670qacsQSqImiuXYojjFa7oc+l9Qc1yUCXnV
 RAmW2eCEGK879+wBWeEZuuKbaExi1tw=
X-Google-Smtp-Source: APXvYqzAxt+yHjCPKcMN7grBUo0yD6uicPzJ1mS+f3xeNkDpNWjg+eJV9ltR8uRyWXwrp+/RwXgwIA==
X-Received: by 2002:a17:902:121:: with SMTP id
 30mr86998560plb.314.1560481937851; 
 Thu, 13 Jun 2019 20:12:17 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id k20sm1051646pgh.31.2019.06.13.20.12.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:12:17 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 09/45] arm64: uaccess: Don't bother eliding access_ok
 checks in __{get, put}_user
Date: Fri, 14 Jun 2019 08:37:52 +0530
Message-Id: <fa281cb205c71d33bc2d9f971717d4073409f43e.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201219_799245_9CF5A3FC 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

commit 84624087dd7e3b482b7b11c170ebc1f329b3a218 upstream.

access_ok isn't an expensive operation once the addr_limit for the current
thread has been loaded into the cache. Given that the initial access_ok
check preceding a sequence of __{get,put}_user operations will take
the brunt of the miss, we can make the __* variants identical to the
full-fat versions, which brings with it the benefits of address masking.

The likely cost in these sequences will be from toggling PAN/UAO, which
we can address later by implementing the *_unsafe versions.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: Fixed conflicts around {__get_user|__put_user}_unaligned macros ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/uaccess.h | 62 ++++++++++++++++++--------------
 1 file changed, 36 insertions(+), 26 deletions(-)

diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index fc11c50af558..a34324436ce1 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -200,30 +200,35 @@ do {									\
 			CONFIG_ARM64_PAN));				\
 } while (0)
 
-#define __get_user(x, ptr)						\
+#define __get_user_check(x, ptr, err)					\
 ({									\
-	int __gu_err = 0;						\
-	__get_user_err((x), (ptr), __gu_err);				\
-	__gu_err;							\
+	__typeof__(*(ptr)) __user *__p = (ptr);				\
+	might_fault();							\
+	if (access_ok(VERIFY_READ, __p, sizeof(*__p))) {		\
+		__p = uaccess_mask_ptr(__p);				\
+		__get_user_err((x), __p, (err));			\
+	} else {							\
+		(x) = 0; (err) = -EFAULT;				\
+	}								\
 })
 
 #define __get_user_error(x, ptr, err)					\
 ({									\
-	__get_user_err((x), (ptr), (err));				\
+	__get_user_check((x), (ptr), (err));				\
 	(void)0;							\
 })
 
-#define __get_user_unaligned __get_user
-
-#define get_user(x, ptr)						\
+#define __get_user(x, ptr)						\
 ({									\
-	__typeof__(*(ptr)) __user *__p = (ptr);				\
-	might_fault();							\
-	access_ok(VERIFY_READ, __p, sizeof(*__p)) ?			\
-		__p = uaccess_mask_ptr(__p), __get_user((x), __p) :	\
-		((x) = 0, -EFAULT);					\
+	int __gu_err = 0;						\
+	__get_user_check((x), (ptr), __gu_err);				\
+	__gu_err;							\
 })
 
+#define __get_user_unaligned __get_user
+
+#define get_user	__get_user
+
 #define __put_user_asm(instr, reg, x, addr, err)			\
 	asm volatile(							\
 	"1:	" instr "	" reg "1, [%2]\n"			\
@@ -266,30 +271,35 @@ do {									\
 			CONFIG_ARM64_PAN));				\
 } while (0)
 
-#define __put_user(x, ptr)						\
+#define __put_user_check(x, ptr, err)					\
 ({									\
-	int __pu_err = 0;						\
-	__put_user_err((x), (ptr), __pu_err);				\
-	__pu_err;							\
+	__typeof__(*(ptr)) __user *__p = (ptr);				\
+	might_fault();							\
+	if (access_ok(VERIFY_WRITE, __p, sizeof(*__p))) {		\
+		__p = uaccess_mask_ptr(__p);				\
+		__put_user_err((x), __p, (err));			\
+	} else	{							\
+		(err) = -EFAULT;					\
+	}								\
 })
 
 #define __put_user_error(x, ptr, err)					\
 ({									\
-	__put_user_err((x), (ptr), (err));				\
+	__put_user_check((x), (ptr), (err));				\
 	(void)0;							\
 })
 
-#define __put_user_unaligned __put_user
-
-#define put_user(x, ptr)						\
+#define __put_user(x, ptr)						\
 ({									\
-	__typeof__(*(ptr)) __user *__p = (ptr);				\
-	might_fault();							\
-	access_ok(VERIFY_WRITE, __p, sizeof(*__p)) ?			\
-		__p = uaccess_mask_ptr(__p), __put_user((x), __p) :	\
-		-EFAULT;						\
+	int __pu_err = 0;						\
+	__put_user_check((x), (ptr), __pu_err);				\
+	__pu_err;							\
 })
 
+#define __put_user_unaligned __put_user
+
+#define put_user	__put_user
+
 extern unsigned long __must_check __copy_from_user(void *to, const void __user *from, unsigned long n);
 extern unsigned long __must_check __copy_to_user(void __user *to, const void *from, unsigned long n);
 extern unsigned long __must_check __copy_in_user(void __user *to, const void __user *from, unsigned long n);
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
