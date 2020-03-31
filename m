Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C85D0199A67
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:54:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJe/eHZ9NF3Pb3gt+g+gusQsh/WYEGoV+M97s8tF8cw=; b=ujahx+bUujf/Qn
	VZwrnj/rDdbjfc7Om+Pwxs0EWBI7uY0yyIfJENYydbqfSJm6NOOGYHORAQMgPmmlKdK97vowe8tYR
	fuKS8py0QIbA/uB0hsL8COkeigmSTJNEpKiTzLR+L+jfQFwz+8ejDWnYFutdqbSZ4lUxsIACKYlBf
	qleJN6uRMCZSfv9H+V1gqGgv5/XbDdtvi0WkC4BihSWMQ5mdZkaJKcus//jFVrhBNEI6br2Nfo5mm
	xwQMglV4kse7GupRjihxMgp9Kw2vtLJNhMr9zJyPlAAZwauV8cc4bhOmDCOkjB17i7c0B+hwpXHFy
	uaAnFYshxnoFxuk4u8Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJDK-0004Lo-TU; Tue, 31 Mar 2020 15:54:06 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJBH-0002rX-Vt
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 15:51:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=tYUAvyG1KDfaP8Y3b/UCelYAb+I1kj64/DZc34qvMIs=; b=fjytugPKm9Fdo6aRQ2gLP9POpZ
 3ysyk5zjw6Cq0HRqED8oEdyxXrenb3JDgcF3XmX5A1RLK8+IgELYqApJ6bIDSojOUioby75WErgFl
 C4SGT+xrpkgBdMG5GERJDtiGRtZ/GLJZg/XmXUfoZdmG5MDAiLxJsxtK9qjOOoarpaWyYQBBckr2E
 xkX2ek21oEhR/cIxYh0eZBgK4JleOti2FayWSfrGnsS3sOFwjG0wMfond2qdCTRzG4oCFWCDXJgsz
 5sc8P02DKgrNg7IY2IX+Ikty65F4MgAAkOcABzyVfvVNGXzmRdj+xT3TW7zvRou8u1tAKwRDiO9J0
 qwA+b0EQ==;
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJHuA-0003YN-LV
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 14:30:21 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3B71A5E6E126FB785D07;
 Tue, 31 Mar 2020 22:29:58 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Tue, 31 Mar 2020 22:29:47 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <peterz@infradead.org>, <mark.rutland@arm.com>, <will@kernel.org>,
 <catalin.marinas@arm.com>, <aneesh.kumar@linux.ibm.com>,
 <akpm@linux-foundation.org>, <npiggin@gmail.com>, <arnd@arndb.de>,
 <rostedt@goodmis.org>, <maz@kernel.org>, <suzuki.poulose@arm.com>,
 <tglx@linutronix.de>, <yuzhao@google.com>, <Dave.Martin@arm.com>,
 <steven.price@arm.com>, <broonie@kernel.org>, <guohanjun@huawei.com>,
 <corbet@lwn.net>, <vgupta@synopsys.com>, <tony.luck@intel.com>
Subject: [RFC PATCH v5 2/8] arm64: Add level-hinted TLB invalidation helper
Date: Tue, 31 Mar 2020 22:29:21 +0800
Message-ID: <20200331142927.1237-3-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
In-Reply-To: <20200331142927.1237-1-yezhenyu2@huawei.com>
References: <20200331142927.1237-1-yezhenyu2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_153015_113605_82C1A0AD 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.2 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-4.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, yezhenyu2@huawei.com,
 linux-kernel@vger.kernel.org, xiexiangyou@huawei.com,
 zhangshaokun@hisilicon.com, linux-mm@kvack.org, arm@kernel.org,
 prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <maz@kernel.org>

Add a level-hinted TLB invalidation helper that only gets used if
ARMv8.4-TTL gets detected.

Signed-off-by: Marc Zyngier <maz@kernel.org>
Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
---
 arch/arm64/include/asm/tlbflush.h | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
index bc3949064725..5f9f189bc6d2 100644
--- a/arch/arm64/include/asm/tlbflush.h
+++ b/arch/arm64/include/asm/tlbflush.h
@@ -10,6 +10,7 @@
 
 #ifndef __ASSEMBLY__
 
+#include <linux/bitfield.h>
 #include <linux/mm_types.h>
 #include <linux/sched.h>
 #include <asm/cputype.h>
@@ -59,6 +60,35 @@
 		__ta;						\
 	})
 
+#define TLBI_TTL_MASK	GENMASK_ULL(47, 44)
+
+#define __tlbi_level(op, addr, level)					\
+	do {								\
+		u64 arg = addr;						\
+									\
+		if (cpus_have_const_cap(ARM64_HAS_ARMv8_4_TTL) &&	\
+		    level) {						\
+			u64 ttl = level;				\
+									\
+			switch (PAGE_SIZE) {				\
+			case SZ_4K:					\
+				ttl |= 1 << 2;				\
+				break;					\
+			case SZ_16K:					\
+				ttl |= 2 << 2;				\
+				break;					\
+			case SZ_64K:					\
+				ttl |= 3 << 2;				\
+				break;					\
+			}						\
+									\
+			arg &= ~TLBI_TTL_MASK;				\
+			arg |= FIELD_PREP(TLBI_TTL_MASK, ttl);		\
+		}							\
+									\
+		__tlbi(op,  arg);					\
+	} while (0)
+
 /*
  *	TLB Invalidation
  *	================
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
