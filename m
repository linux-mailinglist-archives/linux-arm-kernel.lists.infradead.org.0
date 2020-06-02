Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D0B1EBD77
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 15:59:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rE3xZIwaDORdN9p1xiRJE2WH7HjfVNIHlJrHemjJgL0=; b=YAhUkhRY19ZvT1
	eCotFvEXkS2gFtFz2R7I/QwoWz+Hoxrn0UV0CBiDBYLEtDtYnP9hdxNz1FskCL6vI6yPEbVjrWmSL
	SQr2S/jhKbKqZ0kqZcDX2FbO3OfwWAVpjODfg6n56+y0AcRNc3mPYfd46q9IIkiQazd6dbmIMk1iE
	LrGiGZmduSMfWpV95LKWITGiO5gwargJFpkMUYXfRnAzKHM/NHmTkCaHm+wl/5B9zXz7gcFjdzjLB
	ICcWG0FxaS5ne4KtpPTEuQUKiEeA4hxCN9Bj8TKnaV6xplqNNryt7zL55yd/5Ey9RhDzxWCjmRU68
	fFziG0glFAqAiB10/Ovg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg7SH-00005s-UJ; Tue, 02 Jun 2020 13:59:49 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg7Rn-00080d-73
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 13:59:21 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id C2DC2D8BB11A073C63A0;
 Tue,  2 Jun 2020 21:59:15 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.487.0; Tue, 2 Jun 2020 21:59:05 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <catalin.marinas@arm.com>, <peterz@infradead.org>, <mark.rutland@arm.com>, 
 <will@kernel.org>, <aneesh.kumar@linux.ibm.com>,
 <akpm@linux-foundation.org>, 
 <npiggin@gmail.com>, <arnd@arndb.de>, <rostedt@goodmis.org>,
 <maz@kernel.org>, <suzuki.poulose@arm.com>, <tglx@linutronix.de>,
 <yuzhao@google.com>, <Dave.Martin@arm.com>, <steven.price@arm.com>,
 <broonie@kernel.org>, <guohanjun@huawei.com>
Subject: [PATCH v4 6/6] arm64: tlb: Set the TTL field in flush_*_tlb_range
Date: Tue, 2 Jun 2020 21:58:36 +0800
Message-ID: <20200602135836.1620-7-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
In-Reply-To: <20200602135836.1620-1-yezhenyu2@huawei.com>
References: <20200602135836.1620-1-yezhenyu2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_065919_420832_889975A9 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

This patch implement flush_{pmd|pud}_tlb_range() in arm64 by
calling __flush_tlb_range() with the corresponding stride and
tlb_level values.

Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
---
 arch/arm64/include/asm/pgtable.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 538c85e62f86..bc59814eda64 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -40,6 +40,16 @@ extern void __pmd_error(const char *file, int line, unsigned long val);
 extern void __pud_error(const char *file, int line, unsigned long val);
 extern void __pgd_error(const char *file, int line, unsigned long val);
 
+#ifdef CONFIG_TRANSPARENT_HUGEPAGE
+#define __HAVE_ARCH_FLUSH_PMD_TLB_RANGE
+
+/* Set stride and tlb_level in flush_*_tlb_range */
+#define flush_pmd_tlb_range(vma, addr, end)	\
+	__flush_tlb_range(vma, addr, end, PMD_SIZE, false, 2)
+#define flush_pud_tlb_range(vma, addr, end)	\
+	__flush_tlb_range(vma, addr, end, PUD_SIZE, false, 1)
+#endif /* CONFIG_TRANSPARENT_HUGEPAGE */
+
 /*
  * ZERO_PAGE is a global shared page that is always zero: used
  * for zero-mapped memory areas etc..
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
