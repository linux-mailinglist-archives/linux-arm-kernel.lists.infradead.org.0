Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6781DEC46E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 15:13:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=noKaBm4cp0UtJiykwZ+L+rHXIk2fvoYk4S5NkVNxAHg=; b=aCpTwl8cClUlQH
	C+xl/2TZfoBs1XKgSrViSCHl8EnoSDARwzCH1hb4KRQ1vplq0tmOkRZpuE7Z30OeANZpiokAoibzI
	BPDlaFY2aUDjmcpuBFWHsGYjXOsFf7Gb1sZtPplRgy12E7dBLE0TvXuhhaAJuA8QP03AqMsYYbPQi
	VANicjKXTGemfRV87l0S0SX1bSFKIxfs3rv3FGvUidvb0a5nD/w5U7l/YoYcSHcxbIXjy17mzlTpC
	DdHDzn+b4R+MPWioMAywVEDsD6vTwzf7+4OUEkfdvH9a6+ZCn4sq8gq4gP/u194eHH2C4ua59etb7
	VT0vsX1X9U6f499SVTYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQXgR-0003TP-KD; Fri, 01 Nov 2019 14:13:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQXdI-0000dZ-P1
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 14:10:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 49F66337;
 Fri,  1 Nov 2019 07:10:32 -0700 (PDT)
Received: from e112269-lin.cambridge.arm.com (e112269-lin.cambridge.arm.com
 [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 98E773F718;
 Fri,  1 Nov 2019 07:10:29 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: Andrew Morton <akpm@linux-foundation.org>,
	linux-mm@kvack.org
Subject: [PATCH v15 13/23] mm: pagewalk: Add test_p?d callbacks
Date: Fri,  1 Nov 2019 14:09:32 +0000
Message-Id: <20191101140942.51554-14-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191101140942.51554-1-steven.price@arm.com>
References: <20191101140942.51554-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_071032_903241_92A7867D 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, x86@kernel.org,
 Zong Li <zong.li@sifive.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org, "Liang,
 Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It is useful to be able to skip parts of the page table tree even when
walking without VMAs. Add test_p?d callbacks similar to test_walk but
which are called just before a table at that level is walked. If the
callback returns non-zero then the entire table is skipped.

Tested-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Steven Price <steven.price@arm.com>
---
 include/linux/pagewalk.h | 11 +++++++++++
 mm/pagewalk.c            | 24 ++++++++++++++++++++++++
 2 files changed, 35 insertions(+)

diff --git a/include/linux/pagewalk.h b/include/linux/pagewalk.h
index ed2bb399fac2..fe61448c5900 100644
--- a/include/linux/pagewalk.h
+++ b/include/linux/pagewalk.h
@@ -24,6 +24,11 @@ struct mm_walk;
  *			"do page table walk over the current vma", returning
  *			a negative value means "abort current page table walk
  *			right now" and returning 1 means "skip the current vma"
+ * @test_pmd:		similar to test_walk(), but called for every pmd.
+ * @test_pud:		similar to test_walk(), but called for every pud.
+ * @test_p4d:		similar to test_walk(), but called for every p4d.
+ *			Returning 0 means walk this part of the page tables,
+ *			returning 1 means to skip this range.
  *
  * p?d_entry callbacks are called even if those levels are folded on a
  * particular architecture/configuration.
@@ -46,6 +51,12 @@ struct mm_walk_ops {
 			     struct mm_walk *walk);
 	int (*test_walk)(unsigned long addr, unsigned long next,
 			struct mm_walk *walk);
+	int (*test_pmd)(unsigned long addr, unsigned long next,
+			pmd_t *pmd_start, struct mm_walk *walk);
+	int (*test_pud)(unsigned long addr, unsigned long next,
+			pud_t *pud_start, struct mm_walk *walk);
+	int (*test_p4d)(unsigned long addr, unsigned long next,
+			p4d_t *p4d_start, struct mm_walk *walk);
 };
 
 /**
diff --git a/mm/pagewalk.c b/mm/pagewalk.c
index 626e7fdb0508..4616281f5b69 100644
--- a/mm/pagewalk.c
+++ b/mm/pagewalk.c
@@ -34,6 +34,14 @@ static int walk_pmd_range(pud_t *pud, unsigned long addr, unsigned long end,
 	const struct mm_walk_ops *ops = walk->ops;
 	int err = 0;
 
+	if (ops->test_pmd) {
+		err = ops->test_pmd(addr, end, pmd_offset(pud, 0UL), walk);
+		if (err < 0)
+			return err;
+		if (err > 0)
+			return 0;
+	}
+
 	pmd = pmd_offset(pud, addr);
 	do {
 again:
@@ -85,6 +93,14 @@ static int walk_pud_range(p4d_t *p4d, unsigned long addr, unsigned long end,
 	const struct mm_walk_ops *ops = walk->ops;
 	int err = 0;
 
+	if (ops->test_pud) {
+		err = ops->test_pud(addr, end, pud_offset(p4d, 0UL), walk);
+		if (err < 0)
+			return err;
+		if (err > 0)
+			return 0;
+	}
+
 	pud = pud_offset(p4d, addr);
 	do {
  again:
@@ -128,6 +144,14 @@ static int walk_p4d_range(pgd_t *pgd, unsigned long addr, unsigned long end,
 	const struct mm_walk_ops *ops = walk->ops;
 	int err = 0;
 
+	if (ops->test_p4d) {
+		err = ops->test_p4d(addr, end, p4d_offset(pgd, 0UL), walk);
+		if (err < 0)
+			return err;
+		if (err > 0)
+			return 0;
+	}
+
 	p4d = p4d_offset(pgd, addr);
 	do {
 		next = p4d_addr_end(addr, end);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
