Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3272918205E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 19:06:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWnjR3EExZCIvUA5inOOZGKWyrhr9Gwwj+0Y3J4nitA=; b=ujz9//NP/Ehnxo
	ZBZwVSveaiR+q7Len9JJQ2zydTEUDb9oP22VBhRmZHnZ+ZWRHqa4NpJ56lnm83VZOxfYNpf9Uc3QO
	jAkZpvACWGb+olrsmMK0Wjugabgb8Vj19L8beCbGz4jjjVdqCIsSuxC45+2jLX20lMnMDL1WKqXt+
	9ZQ1gLokN/vpdGIH4UxGRrRWHUEEnXG5Ebw4/LWzcZO0ptjMkJBfeN2EQdLnq5osMo1kS2tKf1Rsy
	Ve7iNR3TnoZGwIs3LmQ6JmHyjaNzp7LThKW46gAELOSf9BoAV/CyL/wgXlVxWHhtA9tBPzcA9Jgd6
	xihpbbLDZ2fwST6iF9TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC5ju-0004wq-FZ; Wed, 11 Mar 2020 18:05:54 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC5iR-0002Yq-Im
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 18:04:25 +0000
Received: by mail-pl1-x641.google.com with SMTP id g12so1458672plo.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 11:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=rRlA/iukqeG70j0phoHwOcUE8Ba0KMBf/TBqK8AS108=;
 b=NOn7OFtfPM6Oo+/Jdq2nycgnWs6OYPGTaSyyan/J/kQV8mIifuZLXbXV1DNPi/4q7T
 xkdCavwV7CvKUQkNE4ywkLN+9AAvrRHEMMenUXzUKO+mEW132b2XOjIVGe5OdZyG1JKl
 2uaDAGrzOi4PH6CxgAxoVzcnySW+cLkvh8p3wWmdt6+/Cxp4QOoR0fsTYIeSg9WYKfr2
 F5nSEurAYgVRs2uQYBhlr0h5KciqSU9ZhQKHwN+18HuaA8xsHPSxPgUTCEiy8jpGea4p
 wEL7eK97PH5o8Y7FxU+IwW3vqoR26vNamv4rsnsIq9MM7v51BBZzWmheIBM25VmWzsCv
 EwTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rRlA/iukqeG70j0phoHwOcUE8Ba0KMBf/TBqK8AS108=;
 b=FXBxO4v2YSqFIMmT4SRddSQ/hPWioaddOvMC4AQC2FGpOEuH7Y43gGsR8p34Nulo40
 6W6/nyHg31B3xsApmAAqAOZYbwhJ3zE324V5oKqRE4T0ZprVyJKx6Ih0w3LiDm4ogYTf
 weUI4n1ayloZU6jhDUkvbRFVt+Lt7V4QSxCemhWY/YW3sibibwnqHe7SSvc+CtWjJlMK
 4Iu/A+eg5yaVhUR6plq5OH/clMJbTe7Z0qkoAM53ZTjxB7hIzZRfb5TtkF1TWEsrQI9u
 odjvKp+4B+lf7G5zvHqcQY6ClBseN0kfCaZzMPF2UKy1872MGYhVIoe7a9XsuRN93BqX
 KaQQ==
X-Gm-Message-State: ANhLgQ0eyOhp+2opheShwk9r5o2j7+izS6OzFr0fJ8CZL3u+d6gq5tqb
 qTys9ajFbdoQ7zTxcuq+QUn0+iRS8PI=
X-Google-Smtp-Source: ADFU+vsg7cjdYkTjf0yRL1KMyasGSTxaZ0yb0otbM4iNRplBhrB/buQQppKO/HyLYan18jdVpQKuNQ==
X-Received: by 2002:a17:902:aa88:: with SMTP id
 d8mr4072384plr.201.1583949862608; 
 Wed, 11 Mar 2020 11:04:22 -0700 (PDT)
Received: from localhost.localdomain (97-126-123-70.tukw.qwest.net.
 [97.126.123.70])
 by smtp.gmail.com with ESMTPSA id k9sm6079383pjo.19.2020.03.11.11.04.21
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 11:04:21 -0700 (PDT)
From: Richard Henderson <richard.henderson@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/6] arm64: uaccess: Use asm/ccset.h macros in __range_ok
Date: Wed, 11 Mar 2020 11:04:14 -0700
Message-Id: <20200311180416.6509-5-richard.henderson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311180416.6509-1-richard.henderson@linaro.org>
References: <20200311180416.6509-1-richard.henderson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_110423_666994_6A3E8B3D 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Uses of __range_ok almost always feed a branch.
This allows the compiler to use flags directly.

Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
---
 arch/arm64/include/asm/uaccess.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index fe3dd70e901e..ca1acd7b95c3 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -22,6 +22,7 @@
 #include <asm/ptrace.h>
 #include <asm/memory.h>
 #include <asm/extable.h>
+#include <asm/ccset.h>
 
 #define get_fs()	(current_thread_info()->addr_limit)
 
@@ -86,10 +87,10 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
 	//    comes from the carry in being clear. Otherwise, we are
 	//    testing X' - C == 0, subject to the previous adjustments.
 	"	sbcs	xzr, %[addr], %[limit]\n"
-	"       cset    %[addr], ls\n"
-	: [addr] "=&r" (ret), [limit] "+r" (limit)
+		CC_SET(ls)
+	: [addr] "=&r" (addr), [limit] "+r" (limit), CC_OUT(ls) (ret)
 	: [size] "Ir" (size), [addr_in] "r" (addr)
-	: "cc");
+	: CC_CLOBBER);
 
 	return ret;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
