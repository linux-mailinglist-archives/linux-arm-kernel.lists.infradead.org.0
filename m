Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3593A5D87A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 01:45:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFl+w93cqNbOKGLp7AaBQ0JYLCtIrpe6tG3eG0UUrpM=; b=X6FIQl2x5zIshZ
	i62IeZe+owN0hVCF61Y5wbAv7uHsjvoucklSgpjhMJkCmMs5e4qVZeBQsonlj1Fr1uGegsmLjm62Z
	6q52qhkBoZ0pB2MNQ5jvEMhr+H8NAPh0sBYLQ73xcmH2SFGqXcm7wqAUSQ2N6Zw62uzH4oUbyLJgV
	GbjUaePnOohTm6IM7pJV+tAGu68E9gaVR8QI5lDeYKRbp278O4raG6fLRrP8FJsIoFqLgVOLCm5iC
	fK61pPRcgDCkY82rjZfTqNG67G9l8z4neBBXF0bWXMitfjcon+2qBo5DZq+QaH2yZBrLVTJK6cnO0
	eEdrDXEdJzyI8iaFDHTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiSSq-0004PT-7A; Tue, 02 Jul 2019 23:45:32 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiSSa-0004LH-7c
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 23:45:17 +0000
Received: by mail-pl1-x64a.google.com with SMTP id o6so249338plk.23
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 16:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=R48TQi9q1FK2+H6bY660z2znRHgaYhNpT8f8fUMByQw=;
 b=mBLQgYkxMEYzGqUznWDGxambBtuhZyiOOJORpyP891jPKRAhRjUBbORNd+4DveyMeD
 rGZ3DeH9paDarY7J+YcNLIlYdogJBVNEJKYgDw+S6n1p9yHE06ZYNNVgi++pBAmRFG/v
 rjO2ylNX11c0/iLdV/4/sLLWlx34EOzgETHmr/fYlkrJmVTXymJmHBBZhFl2QT6PpdCU
 IFOReC8/kxoOUztR6XJtbeONmYjlCu8W0aKlHJKEpIfHJv0Tux8zLMjt2JtmJAp35Mlb
 d1cbsotsN2YitgBnWkr+C909Etlm7N0KjWV5gNA1tpvHAhnYmcinusuyfNvhKkIgrINt
 FOkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=R48TQi9q1FK2+H6bY660z2znRHgaYhNpT8f8fUMByQw=;
 b=k1CISbdVf2pdOKZsQMw8I3bV8qVJYMPydJeC+aOKQRCNgEipnrFeiR0HlvXUMBhAbk
 O1WbpK84Q1kw/kfazh3162KWgSPttX6WHgZKiEwuL3Wws9uGcD1xHpCzvwi3kaeImNO1
 FsMHvwzXIOprPTijNAO1H5KnEPLmJ/QiRepYzXOELLsUDhPjWCrHDmLxC82JWA8wCcJf
 YVGQ0pBgSoDGBYnNhc55z/iyMqmoIlLpZAFoB9bw5NB36sYktD4jfGyTrrBgqBqks3HP
 eDCZPHW7a9uaDjh1fT3cLedtxyzJs1v8J+73IfBafN/7L7Hn7z3uTImkEDSHVTVaRcQe
 o8yA==
X-Gm-Message-State: APjAAAXMv9BkDTt1AYIe8mXr4ak5CXkD2C3raoskWZcFDp7MehgkGTjL
 sp8LrUtG+J5tHDk/A9AlzfyP0+hBEQ==
X-Google-Smtp-Source: APXvYqxlTTxA9kVd7nmSx/MlM/hqPfeDUWd1gdGvu4tmxQfmIm2aDz4ezGffhECd1ECKMzycYcMzcnsBww==
X-Received: by 2002:a63:6c04:: with SMTP id h4mr2529866pgc.94.1562111113724;
 Tue, 02 Jul 2019 16:45:13 -0700 (PDT)
Date: Tue,  2 Jul 2019 16:41:35 -0700
In-Reply-To: <CAJkfWY4yvVVmJoQ0WwyoFBkWYsUJnnQPNU+-g23-m-L3ETe_hQ@mail.gmail.com>
Message-Id: <20190702234135.78780-1-nhuck@google.com>
Mime-Version: 1.0
References: <CAJkfWY4yvVVmJoQ0WwyoFBkWYsUJnnQPNU+-g23-m-L3ETe_hQ@mail.gmail.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v2] arm64: mm: Fix dead assignment of old_pte
From: Nathan Huckleberry <nhuck@google.com>
To: catalin.marinas@arm.com, will@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_164516_343987_DB5AE323 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
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
Changes from v1 -> v2
* Added scope to avoid [-Wdeclaration-after-statement]
 arch/arm64/include/asm/pgtable.h | 27 ++++++++++++++++-----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index fca26759081a..12b7f08db40d 100644
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
 
@@ -248,16 +246,23 @@ static inline void set_pte_at(struct mm_struct *mm, unsigned long addr,
 	 * hardware updates of the pte (ptep_set_access_flags safely changes
 	 * valid ptes without going through an invalid entry).
 	 */
-	old_pte = READ_ONCE(*ptep);
-	if (IS_ENABLED(CONFIG_DEBUG_VM) && pte_valid(old_pte) && pte_valid(pte) &&
-	   (mm == current->active_mm || atomic_read(&mm->mm_users) > 1)) {
-		VM_WARN_ONCE(!pte_young(pte),
-			     "%s: racy access flag clearing: 0x%016llx -> 0x%016llx",
-			     __func__, pte_val(old_pte), pte_val(pte));
-		VM_WARN_ONCE(pte_write(old_pte) && !pte_dirty(pte),
-			     "%s: racy dirty state clearing: 0x%016llx -> 0x%016llx",
-			     __func__, pte_val(old_pte), pte_val(pte));
+	#if IS_ENABLED(CONFIG_DEBUG_VM)
+	{
+		pte_t old_pte;
+
+		old_pte = READ_ONCE(*ptep);
+		if (pte_valid(old_pte) && pte_valid(pte) &&
+		  (mm == current->active_mm ||
+		   atomic_read(&mm->mm_users) > 1)) {
+			VM_WARN_ONCE(!pte_young(pte),
+				     "%s: racy access flag clearing: 0x%016llx -> 0x%016llx",
+				     __func__, pte_val(old_pte), pte_val(pte));
+			VM_WARN_ONCE(pte_write(old_pte) && !pte_dirty(pte),
+				     "%s: racy dirty state clearing: 0x%016llx -> 0x%016llx",
+				     __func__, pte_val(old_pte), pte_val(pte));
+		}
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
