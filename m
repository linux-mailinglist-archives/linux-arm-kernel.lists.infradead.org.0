Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A357D78B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:26:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RO+RtrXEnMGPyx5BtJIr9CLrSnzK8wqFPC3bSNybMi4=; b=E/jVbhzra0zzMA
	63t+ZR/XIgL78ENURZBcR0HLM2hc6AGwfyMT+sUdL6x1cE+Oqhbvu4dRjMu9s0wgCMboIVy3nXJZN
	Q+7Ck46UkYEn/xPBh3bwth3rESccVORzIQNe8MHoF6b08UMwjT4b3syHSPj97ishjZEaAKI7o0DiM
	7pCT/+hcpYBuPqvHz+eTKtuzN6EEEmfcYvC536TnsRyKZOGcQsWbRtB22lyurxlfKNEwO28rhfeaC
	AieQGgNNK0p8WCHUoqdLFydQatUjVPLnC5J/HyCgVRgX0IKNHmHfVVAhucsyeuUqPvPN5zPxStaml
	B0v5hPJe2Yvjg47x28FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6Q5-0002wU-0s; Thu, 01 Aug 2019 08:26:41 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Ke-00038T-3O
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:21:07 +0000
Received: by mail-pl1-x644.google.com with SMTP id m9so31740456pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y5vIaM+vVchIZG6+Gh1WcpqO4yKh8TnPpANQdT1zWCg=;
 b=NpnvqtjK49HYBgbUiDGgi6xSJ03C6UtcvxRKF5TE0WHirWiIbnALLSZJY52O1CHNZK
 FenUuArNYNx5FObhoUmbuVHY9+TQhtb77eXZaTPvmLlDTDZeLOiYBkEwSAjK+oLv7sAo
 9RDwz+ktZskTt9WhFVwRYsPJ4+JwH+AmkH6fTrFVQBH0oJfx9Wtx8PhUuFsqweiS5dqt
 8x7HU+jAlADxbEjOdCPkC1PWXYO1E7Nee4cq2F4h1WH4JTuScbkwZbvCbxMXmRSomJwA
 heyhgkDjkxTvakUp5J31B8/EXj5YPr2HQVcwbMfT9pU3CxpqNiRy+OWbMVRomKzEExiO
 PIyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y5vIaM+vVchIZG6+Gh1WcpqO4yKh8TnPpANQdT1zWCg=;
 b=sCCvMR5Le2PdqqIbUAYCjt/WKa1fzLW3UWoYDk+pSXkiO9cLYyb6K0g3lqc7snfKYi
 YyZT7RKTpZWI/J6eplvsLTj8Za4+BWYeet3ln506v81nuS+dPwsUz5WQFbTuhQDRMCVk
 ECMuuYzjgKWQVZgP5fSsVFtJzW0U2mvb997af2RrIjz/UzQqAibl51FYT/ocmBCQdu0y
 pxCW6t7dw5M3Jy4Sy33rFs/IhmBtFVoAWnJa73nwxhBz0XEmqaTWGj9D924EkWqDduXS
 QKU3jDP+g55isozpqupNqvzzYPyA1g8Z49TqdbTXnWX2aVIDQEbXv1ZIis11yYIxUjaR
 iegQ==
X-Gm-Message-State: APjAAAUUpyoycJljFPc1MjLPd931hoFIA31uednlfvg3dUNJZ61Kaf4P
 WTgfES9AEBwSXYsVV4voJVemYg==
X-Google-Smtp-Source: APXvYqxHzo8Gha+mkvmGOss5j3RTk3imIHXq1nsnN4IBoKCBHaJe829TSCm3FiSqE9ZmAng+hLC2qw==
X-Received: by 2002:a17:902:6b86:: with SMTP id
 p6mr127587221plk.14.1564647663394; 
 Thu, 01 Aug 2019 01:21:03 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id z4sm111700635pfg.166.2019.08.01.01.21.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:21:02 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 34/47] ARM: 8795/1: spectre-v1.1: use put_user()
 for __put_user()
Date: Thu,  1 Aug 2019 13:46:18 +0530
Message-Id: <89ae15bfdcc72b42ebacde01603f09fd5cd880b7.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012104_223168_B11C21FB 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

From: Julien Thierry <julien.thierry@arm.com>

Commit e3aa6243434fd9a82e84bb79ab1abd14f2d9a5a7 upstream.

When Spectre mitigation is required, __put_user() needs to include
check_uaccess. This is already the case for put_user(), so just make
__put_user() an alias of put_user().

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/include/asm/uaccess.h | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/arch/arm/include/asm/uaccess.h b/arch/arm/include/asm/uaccess.h
index 94b1bf53b820..7f96a942d9a0 100644
--- a/arch/arm/include/asm/uaccess.h
+++ b/arch/arm/include/asm/uaccess.h
@@ -407,6 +407,14 @@ do {									\
 	__pu_err;							\
 })
 
+#ifdef CONFIG_CPU_SPECTRE
+/*
+ * When mitigating Spectre variant 1.1, all accessors need to include
+ * verification of the address space.
+ */
+#define __put_user(x, ptr) put_user(x, ptr)
+
+#else
 #define __put_user(x, ptr)						\
 ({									\
 	long __pu_err = 0;						\
@@ -414,12 +422,6 @@ do {									\
 	__pu_err;							\
 })
 
-#define __put_user_error(x, ptr, err)					\
-({									\
-	__put_user_switch((x), (ptr), (err), __put_user_nocheck);	\
-	(void) 0;							\
-})
-
 #define __put_user_nocheck(x, __pu_ptr, __err, __size)			\
 	do {								\
 		unsigned long __pu_addr = (unsigned long)__pu_ptr;	\
@@ -499,6 +501,7 @@ do {									\
 	: "r" (x), "i" (-EFAULT)				\
 	: "cc")
 
+#endif /* !CONFIG_CPU_SPECTRE */
 
 #ifdef CONFIG_MMU
 extern unsigned long __must_check
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
