Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E9C7D77A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HzqiVL4grOwwPyNB3bjAXfOWwrZmXBmdWHtJRPYISFM=; b=uKNuY/bNNY3K4h
	YGrb39xR5YDx/kR2czQJ+1w4n3VN0axfLMEGxTZJL7RoE6mYeiFTpZ2gL1pWDJGo9FgiYozXFnvM/
	fALXoWXzhDRzMph83SWX4HuEbWZmgl0+5AYz+N/YpXkbdl79XdZafB0xg6/bbl4KRwhK3Eo3vxAEq
	8g+LIRQceI08oBG3kE8wTV5F5l7mRUWN22zTYCVniOuGp0hkE1sSv8+kM3J3S+0+od/jr+m0O15AU
	8sgnY10EeQTdyrjg9X2f/T2/ITY7deFEngFenwXxf2aWISm1UhTfbE9GcOHDvAz1reNNl1LrcsB0k
	Gq28PcV/zVX04EeqRAwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6O9-0007nU-CL; Thu, 01 Aug 2019 08:24:41 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6KH-0002cX-Br
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:43 +0000
Received: by mail-pl1-x641.google.com with SMTP id k8so31880290plt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fgFpO2t01PxhbBlSjah6QrAfkGefLJP0TJCP7weC9qM=;
 b=byvD1gfBsJYYwf5gTuTCDAMb2Ei2f+ddF+FWpNZAOA2FK8nZ3lY/xQ3L6+pqLTCQWx
 S419flQUmSiXQRBMEvOXH7UV/bgf26Xjr0Bt+Am7fJ2KQSVDpuC503n96UEm94uFhX5O
 w9XiAi3qq8Get9zzs1H4q/KVzXYGYhWxOZUJtDPKKBoCMRYrKGT6sVqC8rJX2m6SGbCw
 HJN0yK5KZua6FArn2rWUtxg2hKobGdHn/QAUGFWTZcAThBEitj76Ohj1/xZX1NGznLVu
 bQeaVIEiM0eIDVmu+2/51NGFyncA1KEPNvWvA8OCSS4LQiFKYDINluM5u+BuLJanTATJ
 Pezw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fgFpO2t01PxhbBlSjah6QrAfkGefLJP0TJCP7weC9qM=;
 b=WvLaFVpHRm1cmT0ujByaZVT8CNLloSwfeCfgXl2aQPnrwhIgyxFzkOf/1seexZe7A8
 wRPU2JwqSO8sHsc4TqkpFgdF5UZmsW2H14MgzY9hhm78s/Gk+f4eOtd0EyOGF5632mBE
 M3H8rMucrWJfaI2oz+uem9E2La3Ouaj5KCUmwu5gBzkPOJsj5au9/ipd1yM+ZxWUcRHa
 QYV6kXv43uGkuviyl7SwKoIvHjv8F466fRruZErZqpZ/EXHjxR5YB8+hpksvY42rG/Ha
 WeHTnI38tFyEGF6Y6mxXSQ1cZI6rB13qsRwvq9kEOrofVmidd3tsppuZtXqJtZu6jvFH
 ulhw==
X-Gm-Message-State: APjAAAWI1xnlSfTk3Bt6fl+ean5D/vYhoOh0oWbnSSq1yKUGdd9nrI/j
 +LdntW/a2zjNJt+317qv1Ttfdw==
X-Google-Smtp-Source: APXvYqx0aQyv9uox76KcN8c63PWcRqTbkztruBFEgMQ41KRiCS37kpJSbzgLdlWeCGAHkE+43u5UdQ==
X-Received: by 2002:a17:902:a9ca:: with SMTP id
 b10mr49835975plr.69.1564647640760; 
 Thu, 01 Aug 2019 01:20:40 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id v12sm3709247pjk.13.2019.08.01.01.20.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:40 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 25/47] ARM: use __inttype() in get_user()
Date: Thu,  1 Aug 2019 13:46:09 +0530
Message-Id: <ee0c1251878b2ebd4da4bead196caa950274e98c.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012041_429034_58C25516 
X-CRM114-Status: GOOD (  12.99  )
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

Commit d09fbb327d670737ab40fd8bbb0765ae06b8b739 upstream.

Borrow the x86 implementation of __inttype() to use in get_user() to
select an integer type suitable to temporarily hold the result value.
This is necessary to avoid propagating the volatile nature of the
result argument, which can cause the following warning:

lib/iov_iter.c:413:5: warning: optimization may eliminate reads and/or writes to register variables [-Wvolatile-register-var]

Acked-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/include/asm/uaccess.h | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/uaccess.h b/arch/arm/include/asm/uaccess.h
index cd8b589111ba..968b50063431 100644
--- a/arch/arm/include/asm/uaccess.h
+++ b/arch/arm/include/asm/uaccess.h
@@ -122,6 +122,13 @@ static inline void set_fs(mm_segment_t fs)
 		: "cc"); \
 	flag; })
 
+/*
+ * This is a type: either unsigned long, if the argument fits into
+ * that type, or otherwise unsigned long long.
+ */
+#define __inttype(x) \
+	__typeof__(__builtin_choose_expr(sizeof(x) > sizeof(0UL), 0ULL, 0UL))
+
 /*
  * Single-value transfer routines.  They automatically use the right
  * size if we just have the right pointer type.  Note that the functions
@@ -191,7 +198,7 @@ extern int __get_user_64t_4(void *);
 	({								\
 		unsigned long __limit = current_thread_info()->addr_limit - 1; \
 		register const typeof(*(p)) __user *__p asm("r0") = (p);\
-		register typeof(x) __r2 asm("r2");			\
+		register __inttype(x) __r2 asm("r2");			\
 		register unsigned long __l asm("r1") = __limit;		\
 		register int __e asm("r0");				\
 		unsigned int __ua_flags = uaccess_save_and_enable();	\
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
