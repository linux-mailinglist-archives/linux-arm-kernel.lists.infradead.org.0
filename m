Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EBC201377
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 18:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d4B+V/YfzljDEDRqxCY6NmXMloN+yJGJPh8GfGWXh5c=; b=XFpfjkgRgnKt4k
	MPhHKM2MfV/T2MoxIS0Bj0GPllAUSVvcAVR1TMVEcOAKoKo6Zw7xwoWqNETXlEHcOZbuq7wRJaEq8
	izG7w1su8fgKf1GTeaTT+YeM0eig3twdqR2feZaXYwiZP03zP+Nqv1wiQen7eG5TuWafiK1BEN8It
	wV3F5tVQIcmopp0s0rIBPlqSb2YZsifpHkNl0DzC3RlDeNptPqua49nRxxXXECTLqbEUoMmz4eXi9
	8RFSGwXG9nsRRFuOvRqTaqDVSlqvNNz8mErVFwlEqB+JqNBtrw8kGp2nxI5N/+fYvVhblDkC8/jdY
	r4mO+59t9q8Bp3SNgrGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmJWx-0007VY-RM; Fri, 19 Jun 2020 16:06:15 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmJWb-0007Ne-8V
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 16:05:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592582751;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=u3Vh1HVYE5zmkqw2sOdn8zxGKpBRt5nL/FWkJRhYB9o=;
 b=auMWhZingg4YPFTzlRTHzAqgM/tTO/vVAvPMfR78pFFYmpZfGUzft9naFadvwgPundLeRn
 yrK+R7X/yHT/nM6958aSM9QiGzlaLlp1X6r2vg01dK6QRhSfDNtPvKuIN428GwQuE7QFmB
 adpyYE1zcCWmX/rgIzJUUoz3p6m/w0s=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-441-__cMNmxPOh-ASaI9IyTGfQ-1; Fri, 19 Jun 2020 12:05:50 -0400
X-MC-Unique: __cMNmxPOh-ASaI9IyTGfQ-1
Received: by mail-qv1-f69.google.com with SMTP id ca16so1070207qvb.17
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 09:05:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u3Vh1HVYE5zmkqw2sOdn8zxGKpBRt5nL/FWkJRhYB9o=;
 b=Q59KOja48Vih1n+Q8VPmvyH4HSWGz0evi0XEZXMqlVI99r6Wo85KgrjrmPkWfoBFMz
 YmOrIH9zCZOsg0tqE6Kpwh1Kr2SWyEAlFOJvALTiKF9pBO0gG8UYnL5X7hvoPu4gMuui
 v++7hCenxOPc8e1kBgIuzceX/FPHvSQyUcO49LQ+P0DDd06laA7pIwyG8fq9cG2p9pFU
 umaROQGi6mywB/Ol5oLNVhJ/k42d118IHN+4ReyYcjO0AHASC6aKKVMid+16WkoeknsT
 xvsN+An3B8phnszzgsWfSYsvKRtrQI/md609Wtforcn3eGUjGIzinlSB8lDXnPHetp/k
 JKWw==
X-Gm-Message-State: AOAM530pnhyIUnfjTdjQVgsbK/MEeC87z97dLdDaSaIE0CSD7YcyeudE
 mQXQ7hI6ikjEl/kQiAhwsvQ0e1ihuoPBA3Y3yTTzheW9zWlmpXYGtfZD+i8wTjZmC3/UA9UKHTJ
 TSQZhkwiK7APzh0u8LLcc680WCirQK88UqHo=
X-Received: by 2002:ae9:e841:: with SMTP id a62mr4262424qkg.497.1592582749502; 
 Fri, 19 Jun 2020 09:05:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJySpRUMhXyNfEl10XktKVgqTs3uRy85zxUDqvWPGZZNqeyiCaJtUfJ8ugLHtIHHC9pHiVb8gQ==
X-Received: by 2002:ae9:e841:: with SMTP id a62mr4262393qkg.497.1592582749242; 
 Fri, 19 Jun 2020 09:05:49 -0700 (PDT)
Received: from xz-x1.redhat.com ([2607:9880:19c0:32::2])
 by smtp.gmail.com with ESMTPSA id g11sm6412604qkk.123.2020.06.19.09.05.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 09:05:48 -0700 (PDT)
From: Peter Xu <peterx@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-mm@kvack.org
Subject: [PATCH 05/26] mm/arm64: Use general page fault accounting
Date: Fri, 19 Jun 2020 12:05:17 -0400
Message-Id: <20200619160538.8641-6-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200619160538.8641-1-peterx@redhat.com>
References: <20200619160538.8641-1-peterx@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_090553_375010_2FC94924 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrea Arcangeli <aarcange@redhat.com>,
 Michael Ellerman <mpe@ellerman.id.au>, peterx@redhat.com,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the general page fault accounting by passing regs into handle_mm_fault().
It naturally solve the issue of multiple page fault accounting when page fault
retry happened.  To do this, we pass pt_regs pointer into __do_page_fault().

CC: Catalin Marinas <catalin.marinas@arm.com>
CC: Will Deacon <will@kernel.org>
CC: linux-arm-kernel@lists.infradead.org
Signed-off-by: Peter Xu <peterx@redhat.com>
---
 arch/arm64/mm/fault.c | 29 ++++++-----------------------
 1 file changed, 6 insertions(+), 23 deletions(-)

diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 5f6607b951b8..09b206521559 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -398,7 +398,8 @@ static void do_bad_area(unsigned long addr, unsigned int esr, struct pt_regs *re
 #define VM_FAULT_BADACCESS	0x020000
 
 static vm_fault_t __do_page_fault(struct mm_struct *mm, unsigned long addr,
-			   unsigned int mm_flags, unsigned long vm_flags)
+				  unsigned int mm_flags, unsigned long vm_flags,
+				  struct pt_regs *regs)
 {
 	struct vm_area_struct *vma = find_vma(mm, addr);
 
@@ -422,7 +423,7 @@ static vm_fault_t __do_page_fault(struct mm_struct *mm, unsigned long addr,
 	 */
 	if (!(vma->vm_flags & vm_flags))
 		return VM_FAULT_BADACCESS;
-	return handle_mm_fault(vma, addr & PAGE_MASK, mm_flags, NULL);
+	return handle_mm_fault(vma, addr & PAGE_MASK, mm_flags, regs);
 }
 
 static bool is_el0_instruction_abort(unsigned int esr)
@@ -444,7 +445,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 {
 	const struct fault_info *inf;
 	struct mm_struct *mm = current->mm;
-	vm_fault_t fault, major = 0;
+	vm_fault_t fault;
 	unsigned long vm_flags = VM_ACCESS_FLAGS;
 	unsigned int mm_flags = FAULT_FLAG_DEFAULT;
 
@@ -510,8 +511,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 #endif
 	}
 
-	fault = __do_page_fault(mm, addr, mm_flags, vm_flags);
-	major |= fault & VM_FAULT_MAJOR;
+	fault = __do_page_fault(mm, addr, mm_flags, vm_flags, regs);
 
 	/* Quick path to respond to signals */
 	if (fault_signal_pending(fault, regs)) {
@@ -532,25 +532,8 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 	 * Handle the "normal" (no error) case first.
 	 */
 	if (likely(!(fault & (VM_FAULT_ERROR | VM_FAULT_BADMAP |
-			      VM_FAULT_BADACCESS)))) {
-		/*
-		 * Major/minor page fault accounting is only done
-		 * once. If we go through a retry, it is extremely
-		 * likely that the page will be found in page cache at
-		 * that point.
-		 */
-		if (major) {
-			current->maj_flt++;
-			perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MAJ, 1, regs,
-				      addr);
-		} else {
-			current->min_flt++;
-			perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MIN, 1, regs,
-				      addr);
-		}
-
+			      VM_FAULT_BADACCESS))))
 		return 0;
-	}
 
 	/*
 	 * If we are in kernel mode at this point, we have no context to
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
