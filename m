Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 670C01FF5E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 16:56:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zDnwQ0eIZ85rImHEkeY791mkk7DzR3wocQO31dTrGko=; b=cbyc+THDFafC5T
	hMwzoGBa/2C1bvWT537LWrZbbD6wGPVugFLLsL+vZSXTwx6o+O36i/lVBtE9XMt0OVesEMZCxuzMV
	6DeIVU63esguMKwS2LswqMf/OILrtRpdJnMjwbBTh+bHpG7RwSMLwM41OXpltRE6+vxtLYVJJENcQ
	bedDf8IYVp+E0FKOJtI+YfzTZEzYrhBnW6JuSOrpbJGohtNvpuXK6gKF7e6ue+KYSFJl+ho4YvhJI
	TG8Z0mYrI3o8FfTnSq95RNLEoyhr6wHABS2aEBa3K41OzGwuMMobZ+v7slGCyimy3NW0V/tNeTMjV
	xej6axnU8ihc0HET1nJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlvxZ-0007Da-5w; Thu, 18 Jun 2020 14:56:09 +0000
Received: from mail-yb1-xb49.google.com ([2607:f8b0:4864:20::b49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlvwj-000672-Up
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 14:55:34 +0000
Received: by mail-yb1-xb49.google.com with SMTP id e20so6507165ybc.23
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 07:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=mTJ6ETQwB1lLVRosmS0y7a7EanDndVChEfr6e5Rhchg=;
 b=vP83emPFERAOQgdBZHBdixim4C15UHn+xjTvXF6cE0yEO7ssCniSnH7XXgzMHBCpW4
 g0lz/Z4CNQcIptv7WtaOXRs8v1EZf58eXeJX2gEJbnjJh2xM7x9GwNXQtI6MPG2jTpPU
 2GVHD5XkLzqg+WaMGbbWMOfhbk/8PBOi0JaCNpROakh2jdeCrbDNxsmDMbgfjEX8RFDN
 bvd9goA/XaQ1IAHZ1mwJUBzAQkLNTzyFgvSWJRF0NEONNqZw/xYErMPkWTYHBfmISAmS
 rZhaBrwLghTePLrHe/xEoArbOZJ9LO6PzjTMy/JFGotvbqEy2RK3pQub1FHZ2RvR6DgV
 370g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=mTJ6ETQwB1lLVRosmS0y7a7EanDndVChEfr6e5Rhchg=;
 b=LqF2G1AejyyCO/H735KGYQ//eJqR6cqiT/ciFX7P6t0pa0hQaXIwjEPrZ9rRksBi4j
 ZHCuenpNGTxhUsAukjTJsclZ/iNVbYujXQyxP65x7BBQaecO7Q9K2NcUrQuWIPphxpA5
 6dGkP+HYw4nSu66yfPmJlhBbrIqq3b/1gTOIL+7jqgDN9O8/ImMS5jyEpLMwpPic+xqa
 3ous7iYx4lMAPuRF50zocVmgRFJTzc1qCEaQnIylFzSstO+/lclvACx0Cxg0Wy4p8aCZ
 VxOs59/h/Fcsc/5xI6Q7XBTU1PYeHFuFtpVQhRl+8EUho1wfk8E3JYz9RskkEz2cT+40
 XxuA==
X-Gm-Message-State: AOAM5313gt3W8aMe3jHqGMDKMeMrmjIneYQvXNQE+RsfmevUHjMfwfSs
 v1PfH/jm1xd4kpMpiW8J3YGYxBhtqIQyiI7wQn+SuWjOHidViODRkGxmp0rQmUwLsgpMc+1QDas
 5wMJuy6BesohZ3AYKb473s3E8fGcQ7rNpaY8INxTXQ/C5GCBlgswFH9i9fjUw4d/gRdfDyE0LJh
 LjGceu
X-Google-Smtp-Source: ABdhPJx4lqV94Ep1g+OmSuzBwO2hNYTeYEZICN9uwTAD6pd/VBafy/gkEQDuP7haIfqQ3ArCCJSmKEJQ71Q=
X-Received: by 2002:a25:d354:: with SMTP id e81mr7696641ybf.398.1592492114729; 
 Thu, 18 Jun 2020 07:55:14 -0700 (PDT)
Date: Thu, 18 Jun 2020 15:55:11 +0100
Message-Id: <20200618145511.69203-1-ascull@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.290.gba653c62da-goog
Subject: [PATCH] smccc: Make constants available to assembly
From: Andrew Scull <ascull@google.com>
To: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_075518_175107_F714C6AA 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b49 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, kernel-team@android.com,
 Andrew Scull <ascull@google.com>, sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move constants out of the C-only section of the header next to the other
constants that are available to assembly.

Signed-off-by: Andrew Scull <ascull@google.com>
---
 include/linux/arm-smccc.h | 44 +++++++++++++++++++--------------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 56d6a5c6e353..efcbde731f03 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -81,6 +81,28 @@
 			   ARM_SMCCC_SMC_32,				\
 			   0, 0x7fff)
 
+/* Paravirtualised time calls (defined by ARM DEN0057A) */
+#define ARM_SMCCC_HV_PV_TIME_FEATURES				\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
+			   ARM_SMCCC_SMC_64,			\
+			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
+			   0x20)
+
+#define ARM_SMCCC_HV_PV_TIME_ST					\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
+			   ARM_SMCCC_SMC_64,			\
+			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
+			   0x21)
+
+/*
+ * Return codes defined in ARM DEN 0070A
+ * ARM DEN 0070A is now merged/consolidated into ARM DEN 0028 C
+ */
+#define SMCCC_RET_SUCCESS			0
+#define SMCCC_RET_NOT_SUPPORTED			-1
+#define SMCCC_RET_NOT_REQUIRED			-2
+#define SMCCC_RET_INVALID_PARAMETER		-3
+
 #ifndef __ASSEMBLY__
 
 #include <linux/linkage.h>
@@ -331,15 +353,6 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
  */
 #define arm_smccc_1_1_hvc(...)	__arm_smccc_1_1(SMCCC_HVC_INST, __VA_ARGS__)
 
-/*
- * Return codes defined in ARM DEN 0070A
- * ARM DEN 0070A is now merged/consolidated into ARM DEN 0028 C
- */
-#define SMCCC_RET_SUCCESS			0
-#define SMCCC_RET_NOT_SUPPORTED			-1
-#define SMCCC_RET_NOT_REQUIRED			-2
-#define SMCCC_RET_INVALID_PARAMETER		-3
-
 /*
  * Like arm_smccc_1_1* but always returns SMCCC_RET_NOT_SUPPORTED.
  * Used when the SMCCC conduit is not defined. The empty asm statement
@@ -385,18 +398,5 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
 		method;							\
 	})
 
-/* Paravirtualised time calls (defined by ARM DEN0057A) */
-#define ARM_SMCCC_HV_PV_TIME_FEATURES				\
-	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
-			   ARM_SMCCC_SMC_64,			\
-			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
-			   0x20)
-
-#define ARM_SMCCC_HV_PV_TIME_ST					\
-	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
-			   ARM_SMCCC_SMC_64,			\
-			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
-			   0x21)
-
 #endif /*__ASSEMBLY__*/
 #endif /*__LINUX_ARM_SMCCC_H*/
-- 
2.27.0.290.gba653c62da-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
