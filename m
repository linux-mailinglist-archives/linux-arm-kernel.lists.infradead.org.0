Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CB918205F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 19:06:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bC6Aa3tqYhsqQwzy21wEB3e6dDO5mER4Q48fCcuRCcc=; b=ZAbV+frYqQTFGE
	gf6tPMGlFg9Y9njRfDwbxQErHTw8P6viIRAMrWcGzKTSJrwqO/ghUnK89Tt0/DGNpMKDaZOKiDMGU
	z7ysKSY40yvcQmgrnchzQYaR7xSlnq7GInEq7JS/8Z8cCyexyjbmkX1vSpRiyettSPVAyzgSMv5BZ
	XjulpcYOZshNHnCOh0ZiJuCodNeBHJAkvjL9sQs+QRWe7admd9F3pM+I9z9q9goU5XmNY/EJ1B1Li
	ri35aKGJdDvdEbaDuUWikRnZcLtipEqZwpMCaQsIAK7SB8ian6XpQ7ZVLKN7BZFwk3pdU1Zs2xgun
	KY10PTcGpmhR+1msaV4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC5k9-0005DL-C5; Wed, 11 Mar 2020 18:06:09 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC5iT-0002aX-5p
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 18:04:26 +0000
Received: by mail-pf1-x442.google.com with SMTP id c19so1753663pfo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 11:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=fKXZLI6n3/AnumpioC86wuiyj2J9DLc+W/VvwUAj/TY=;
 b=NuyZoITgQq1QkCFuTDBFYHPoJ5E3mEM60W24VhWOeFt5uXWIL4eIFRMO0HNuugHwuS
 NIGzAvsPuFFe/nsLsQAv7ptVEZFnWNHwN8nduAPoxidMahtNC9MNTD+kY8pTn6AJl6Ed
 sGxY6FbXIr9SWrdF1cBxx/l6mkmrpqmdoeNEyDtp5is8ewTqRYxdPgF8ziPTMRj/otKn
 MJ3svc6WJLl16X2MsudRoy+kM0kdCw6YI3pfBqUZLXxhgAkJh4mi2FzzW18N2Q3FmlVP
 SOU1zE42Z6Zz1eg20qzrlrlh1may7GM6/GGuE+J77vSSo3Y1Jzs8MRTk+GYk7Xmim44g
 Gskw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fKXZLI6n3/AnumpioC86wuiyj2J9DLc+W/VvwUAj/TY=;
 b=LGk7vWnhdCLEnHS/8jLnHEAvE5JksE01v3llDdiyJNnQAqTvQgkHLslImUsV7FsxDi
 VkFN238ZG8WgHWiRShEeLH7his7T7DZLnU3qCqmazIU1aBVJGg2eAcbcID1SPpWaBIHt
 90eesa1nDtUYk1sMMglVQ8oPOMNP61AI2sJ39qrp0ksJza7++zhnWAa65UFqe5L4nqH1
 YBlznyWHbrdwNQZzkTGhCi8CI8TxthaB0/i+m/Q98qNw0eaaPs3ixL6oA96SGbfSEcTD
 32Fb0Rx0WaWDp/yQDPKWrwNbDZLWfQQOSZrx2Aj0ny2mGuP5frET3gzZlTf+OC0umGzi
 6MxA==
X-Gm-Message-State: ANhLgQ11F10EVZ41csi9mqTZO0rzcZ9/zqtnocwekRXjC9ElKS7NNHGL
 Wc22OkWtCbH2c6Y89PUyKV59JiwVerU=
X-Google-Smtp-Source: ADFU+vt4j3Xt2PzLd1LAdj3UyX6Biq+53MGD4NP9QVvfuiFLcxIQtHe+Ly2n4kvFUNJiEtbHA1JvHg==
X-Received: by 2002:a63:8148:: with SMTP id t69mr3892026pgd.187.1583949864103; 
 Wed, 11 Mar 2020 11:04:24 -0700 (PDT)
Received: from localhost.localdomain (97-126-123-70.tukw.qwest.net.
 [97.126.123.70])
 by smtp.gmail.com with ESMTPSA id k9sm6079383pjo.19.2020.03.11.11.04.22
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 11:04:23 -0700 (PDT)
From: Richard Henderson <richard.henderson@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/6] arm64: archrandom: Use asm/ccset.h macros in __arm64_rndr
Date: Wed, 11 Mar 2020 11:04:15 -0700
Message-Id: <20200311180416.6509-6-richard.henderson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311180416.6509-1-richard.henderson@linaro.org>
References: <20200311180416.6509-1-richard.henderson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_110425_256328_7438D03F 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Uses of __arm64_rndr always (indirectly) feed a branch.
This allows the compiler to use flags directly.

Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
---
 arch/arm64/include/asm/archrandom.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/archrandom.h b/arch/arm64/include/asm/archrandom.h
index 3fe02da70004..f65df47283a6 100644
--- a/arch/arm64/include/asm/archrandom.h
+++ b/arch/arm64/include/asm/archrandom.h
@@ -6,6 +6,7 @@
 
 #include <linux/random.h>
 #include <asm/cpufeature.h>
+#include <asm/ccset.h>
 
 static inline bool __arm64_rndr(unsigned long *v)
 {
@@ -17,10 +18,10 @@ static inline bool __arm64_rndr(unsigned long *v)
 	 */
 	asm volatile(
 		__mrs_s("%0", SYS_RNDR_EL0) "\n"
-	"	cset %w1, ne\n"
-	: "=r" (*v), "=r" (ok)
+		CC_SET(ne)
+	: "=r" (*v), CC_OUT(ne) (ok)
 	:
-	: "cc");
+	: CC_CLOBBER);
 
 	return ok;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
