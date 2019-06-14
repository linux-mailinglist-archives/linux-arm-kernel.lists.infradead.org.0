Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1735645292
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:15:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BzPMhrFXGXOlk8TywbHUNZU5N0LGvRG5V1LZIu9o7EM=; b=bW5Veg1Rs0k8AL
	CW02laNlCl9LmJ18xoO042yYR4plBpwGr58eohHjnPojt7DVuQCmIzG2tOahUc+qqLRAFGb0L33tY
	vDgImev8/1zbmww4UId7j9QHUny56CYmnFctGGNVagWuY516v6COs9kP9o8Bt8DTJRDRdH4DqO/+G
	3ugdbhQw/6qLWypbq/ENfF4DK1yjuhmQ9lan7goW49Da7ONS1v6BUeFW4tpMuFghAOLg9y+quZIvm
	I9hSGH4YTUnP8syPQa6buRb5KFZ0uXx4FFTmNYjXzKiqz0AwzcdrXyohWtixCiJQQIqi1e++hNf1Z
	C4fFQK5E2tzl1JvYFiWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcgH-0001q1-5y; Fri, 14 Jun 2019 03:15:09 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcdP-00009h-Ng
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:12:13 +0000
Received: by mail-pf1-x443.google.com with SMTP id 19so497618pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oplH30x1zLW/kw5XTQuFI7s72sVvdi1RahKBb4zAIVI=;
 b=Yzltk8JB8mBXf0jZiiOn54g5/T0KcQ7kKV+UgQ9lpUwSlLs7Pt5kZUz7O8VRM5Gywr
 a6759AUaffVtNH/TQGwSHY5oA17fJKXMnvPoFyntQBTfIscQNfo17nFck1DVJjrDtGmA
 +OsNTrb2LaV2WQoX5sd/qPiJek55dGs814vb4bBwWTlq1ot6VHkqG7m98hfa/cY12zOZ
 NVjM5NrthLLacQzOfmEqJDxiugx32DoJGjZw/qboBQpDb5iGkEpwkxHwzJmyDijrFmnK
 zlGHBFAbNvl6JKVjnyBkeDwcgVbmq34wRQMm7GRnJ59Qelhe/pLC0cpTAsYd2dtksl3m
 bQxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oplH30x1zLW/kw5XTQuFI7s72sVvdi1RahKBb4zAIVI=;
 b=Vvv6pjEb1zBWE8o7fEgUNZ2eZkef/xXilfN2P7FSf3QnKjkLRcmaa8c5l73qBAj7ca
 0AY2cocCzRvM4cdN1bdTYzeNpFkbMBlCVDtEneGzB/2OrzMnylF2S6R0fFPZB/ltuYK3
 6CCKaa7j9cKpLUkvwnsNtYEbCmK7+9MZ8wbBqN4PaehfevJY65EgZerZE/gXC2JO2PNy
 8oSe8un+x9UAboL423Mq1UzLZyIObwXd/0+ZD2cFBsFkmXtDyQ+cU8NPVLwunZnQQVQt
 izGl4zn/S/j9pCCG4nqfmbn63bNrW8q2qAgGffevjxYJXlr/hF9IxRpy/f7RL1/554+n
 bvbg==
X-Gm-Message-State: APjAAAUsfWEUJn8ZB9Jr2P17t7rJulDX3gnCDmc7ip1Ox3FYW+dz+FBB
 /AWEMa0R6E3OjbxpZznbtBYxlHfnOSM=
X-Google-Smtp-Source: APXvYqy5wJDFGT5CTVHTGOqYSsSzofcsN1zQjCYusln8vRIdY/+WOc7URnCgUo7C85NDttUzgH3b+A==
X-Received: by 2002:a63:dc15:: with SMTP id s21mr34323601pgg.215.1560481930079; 
 Thu, 13 Jun 2019 20:12:10 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id y1sm1198391pjw.5.2019.06.13.20.12.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:12:09 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 06/45] arm64: Use pointer masking to limit uaccess
 speculation
Date: Fri, 14 Jun 2019 08:37:49 +0530
Message-Id: <33a351b8683ca17c3d6ed3711d2c6fe2ae1a36f3.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201211_911964_824DAA96 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

From: Robin Murphy <robin.murphy@arm.com>

commit 4d8efc2d5ee4c9ccfeb29ee8afd47a8660d0c0ce upstream.

Similarly to x86, mitigate speculation past an access_ok() check by
masking the pointer against the address limit before use.

Even if we don't expect speculative writes per se, it is plausible that
a CPU may still speculate at least as far as fetching a cache line for
writing, hence we also harden put_user() and clear_user() for peace of
mind.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/uaccess.h | 26 +++++++++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index c625cc5531fc..75363d723262 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -121,6 +121,26 @@ static inline unsigned long __range_ok(unsigned long addr, unsigned long size)
 #define access_ok(type, addr, size)	__range_ok((unsigned long)(addr), size)
 #define user_addr_max			get_fs
 
+/*
+ * Sanitise a uaccess pointer such that it becomes NULL if above the
+ * current addr_limit.
+ */
+#define uaccess_mask_ptr(ptr) (__typeof__(ptr))__uaccess_mask_ptr(ptr)
+static inline void __user *__uaccess_mask_ptr(const void __user *ptr)
+{
+	void __user *safe_ptr;
+
+	asm volatile(
+	"	bics	xzr, %1, %2\n"
+	"	csel	%0, %1, xzr, eq\n"
+	: "=&r" (safe_ptr)
+	: "r" (ptr), "r" (current_thread_info()->addr_limit)
+	: "cc");
+
+	csdb();
+	return safe_ptr;
+}
+
 /*
  * The "__xxx" versions of the user access functions do not verify the address
  * space - it must have been done previously with a separate "access_ok()"
@@ -193,7 +213,7 @@ do {									\
 	__typeof__(*(ptr)) __user *__p = (ptr);				\
 	might_fault();							\
 	access_ok(VERIFY_READ, __p, sizeof(*__p)) ?			\
-		__get_user((x), __p) :					\
+		__p = uaccess_mask_ptr(__p), __get_user((x), __p) :	\
 		((x) = 0, -EFAULT);					\
 })
 
@@ -259,7 +279,7 @@ do {									\
 	__typeof__(*(ptr)) __user *__p = (ptr);				\
 	might_fault();							\
 	access_ok(VERIFY_WRITE, __p, sizeof(*__p)) ?			\
-		__put_user((x), __p) :					\
+		__p = uaccess_mask_ptr(__p), __put_user((x), __p) :	\
 		-EFAULT;						\
 })
 
@@ -297,7 +317,7 @@ static inline unsigned long __must_check copy_in_user(void __user *to, const voi
 static inline unsigned long __must_check clear_user(void __user *to, unsigned long n)
 {
 	if (access_ok(VERIFY_WRITE, to, n))
-		n = __clear_user(to, n);
+		n = __clear_user(__uaccess_mask_ptr(to), n);
 	return n;
 }
 
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
