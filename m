Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED35A5D858
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 01:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TWRc0W2ESkr1v5DXcnS1BPO+PH8u5mO8smeDKr8PJ78=; b=EdhcQEXE4hrpAd
	DZ/H0sGqyXLouCATlS4SLBDbQeK3NKxdI59NlTGWkmxdROQ04x9+Kuv27vaRJzutqA+yxByeauCGc
	U/f5dVER7ark1RN8eDPqe4WSHiwUSnA1YfJcOaFnQbCQFmmmu1ItAcJONbkWsynRIYV007839yp9L
	0ZVK4Qs1KwOBUDvSMfFO+7YT3vjuMCrounOgVpAmT6fVYFyink59NJSB8GaMg2/GADthYLOk5zcfO
	CaYaoHcfHDqfeTS1Mz/twWYgqOdIPSnL5FLLRrMt3o5hGhsAmK+t5ctRMQKeiNjnHP0WY59nlxXXB
	Ow+PkLbqRYxv7N0VnSPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiRxl-000077-SM; Tue, 02 Jul 2019 23:13:25 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiRxX-00006e-NC
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 23:13:13 +0000
Received: by mail-pf1-x44a.google.com with SMTP id 6so214464pfi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 16:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=kOX/b18nZuUFLUmGmTpl546hS1EqehWOvqAy79HryjA=;
 b=PHzIGGfXetYTXGzyTnFKvYWj/S64EJ84TRcojkaEZ3zefgwEC4LsicdhwrkL2ldmKB
 gLAW7FqH4fV0fpD5nRCgP2WElmI4pBZ/bAxq8fzbpmZBPLR1WKxd5oKCsf/crj/4jdmt
 naAfJALZxW8RSMccuFYHpwcKTyChfjibhUexOeeOVyiukx4Qzs0d00o8Po9sq0lQhsZc
 bm/KmFcPSVoxiXPQBDZhlN7bv5zwQM8qNbDTCdGKs3xItoELX3CvzNDL5wVT124uTSa/
 lgeB7jg/Jrdoqhn89hRdD8AY7lVg4ofRKcOwK/vqZ25QdXZj1E42OnQVfw8QJyKJo1bo
 Nv4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=kOX/b18nZuUFLUmGmTpl546hS1EqehWOvqAy79HryjA=;
 b=iQWUA3gN+AR98jjFpHbMXtdRfnA+19j26GY8Xs6MwyGt545MvEesxdMnqXdtXctUdg
 JHUnX7XtKVt3bMNB9m23DMxmE+j9cZbg4O9aGS80Z5LkxN+2/cAAxDAbJyUDQ3QCZE7i
 al53ysIZvutZXHHvltgHlUknLW5+983SgX9BgXSpGOI3BG0ePH5Hd6FlNa9wOw7oclyI
 G6/sno1Olx2ueSlqwmy/Mva+yZ0Hz+s1k8/kkf4qdVcjieYU3Io98WEJfo626FcGuEyr
 g979Fxl7CpH/jlJiER6vqMhdOB2KHNlKEVQVbkqljvgcKOrTIfAH27gFkDcdJUyoqSrZ
 WKCQ==
X-Gm-Message-State: APjAAAUfVqc54jpifV+tQVymQzmsgj8hY0lt18Ua+PShpVgwylj1MCrL
 J5NyUZjntEL5SoPGB5W1+mth4GO11A==
X-Google-Smtp-Source: APXvYqy7Ahm6xsIBAxbvahe7MpZfFhmQrJUfui7MRkmuGNA2r+KtX7OKAP2SMxHgy3LSHG1zLsGv5aFPcA==
X-Received: by 2002:a63:bd0a:: with SMTP id a10mr18703895pgf.55.1562109188555; 
 Tue, 02 Jul 2019 16:13:08 -0700 (PDT)
Date: Tue,  2 Jul 2019 16:13:02 -0700
Message-Id: <20190702231302.60727-1-nhuck@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH] arm64: mm: Fix dead assignment of old_pte
From: Nathan Huckleberry <nhuck@google.com>
To: catalin.marinas@arm.com, will@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_161311_782214_9A6E75F6 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When analyzed with the clang static analyzer the
following warning occurs

line 251, column 2
Value stored to 'old_pte' is never read

This warning is repeated every time pgtable.h is
included by another file and produces ~3500
extra warnings.

Moving old_pte into preprocessor guard.

Cc: clang-built-linux@googlegroups.com
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
---
 arch/arm64/include/asm/pgtable.h | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index fca26759081a..42ca4fc67f27 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -238,8 +238,6 @@ extern void __sync_icache_dcache(pte_t pteval);
 static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
 			      pte_t *ptep, pte_t pte)
 {
-	pte_t old_pte;
-
 	if (pte_present(pte) && pte_user_exec(pte) && !pte_special(pte))
 		__sync_icache_dcache(pte);
 
@@ -248,8 +246,11 @@ static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
 	 * hardware updates of the pte (ptep_set_access_flags safely changes
 	 * valid ptes without going through an invalid entry).
 	 */
+	#if IS_ENABLED(CONFIG_DEBUG_VM)
+	pte_t old_pte;
+
 	old_pte = READ_ONCE(*ptep);
-	if (IS_ENABLED(CONFIG_DEBUG_VM) && pte_valid(old_pte) && pte_valid(pte) &&
+	if (pte_valid(old_pte) && pte_valid(pte) &&
 	   (mm == current->active_mm || atomic_read(&mm->mm_users) > 1)) {
 		VM_WARN_ONCE(!pte_young(pte),
 			     "%s: racy access flag clearing: 0x%016llx -> 0x%016llx",
@@ -258,6 +259,7 @@ static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
 			     "%s: racy dirty state clearing: 0x%016llx -> 0x%016llx",
 			     __func__, pte_val(old_pte), pte_val(pte));
 	}
+	#endif
 
 	set_pte(ptep, pte);
 }
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
