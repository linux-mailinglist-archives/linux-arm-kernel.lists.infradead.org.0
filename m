Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 974D0201376
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 18:06:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQTX2NGRudjwUYosBkUk0MPrrrZ/tqg3obpU6s5N3DY=; b=cd3sjN/bzYMjbw
	rO83LrwlHCeK4CyQsBNllBQi1hhvte9ZF+Zu9Gs24h5znWv14EH77Z8Q/lDJv5aa/czlKJc2F0sf7
	zwqCudeOd7EEnXIRhfRk3zWsAmsZy5VrVo4hWM3V3IagjADTVTCXLRgH+e0nJNF7vYDbK+7IkKOF/
	1j1HiJvdztgxA4lVliXhtNSnz4dnM3dFuqFbW6pe+sWt0EYQwlD3j7UMNyiQo7PfooaDZQGpxICCs
	1DSILLSHUZRaKIZ2KyrDhUPyTjyW2W7qW1ITbdzLD06RXxz54THGoRthNYsQc+UesQRGnvJqkp3hx
	9qjq3VJIaw4uP52sK7Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmJWk-0007P6-Tv; Fri, 19 Jun 2020 16:06:02 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmJWa-0007NI-Nb
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 16:05:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592582750;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oYNDwtlfjBw7SDjKSzeBn7nLzHhEdZ/Papn4VLBZIoQ=;
 b=DR0iL+qhgQRMGu0+pi9ozkSWA9RZplz2ROxeI66V0quJTSLEH2phNnj0fg4HORCCl/M+DC
 7x/3nUfOfkIqxu42fztqeb2enA/6pJpWx15HpURxHl5bB57qwyNsAQtyJ/tvbdB7DlWKqR
 AiafomENbQfhx5ra2HoJtDI68f0C6LY=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-300-ap83WTudPbW_rmICpMABIg-1; Fri, 19 Jun 2020 12:05:48 -0400
X-MC-Unique: ap83WTudPbW_rmICpMABIg-1
Received: by mail-qv1-f71.google.com with SMTP id p18so7038201qvy.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 09:05:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oYNDwtlfjBw7SDjKSzeBn7nLzHhEdZ/Papn4VLBZIoQ=;
 b=HDSr/jNTMJPwtYXvrHZCxW4EzBV9bC73Eu7tSnUEFSLpibMueZhsVb99Mj90zaDy45
 TpHC05sOcHrwt6atTT18N3fxc6bB9lDBDQUpCJSmqd/eDB5lw5BlHZ6DpieaIOQMlsV5
 6dEjhkNqb1XuoymULvJDWPXs7n34NRTuk2nlAvfG0SqZBp5CRmVN2yTnu9j2zouYDrhw
 kZ0CT06EBhuHvAelIeYw4AVA/rN4abOSscgfbSfqFJIO6otVuLQvzbRabaQo45u+UO9F
 YmkYd1SJQVBvimgKjo9bwr9piA4bPlyTxygTRziQCGQ+iicjCKSslNeElXLb0gpchLcu
 m89Q==
X-Gm-Message-State: AOAM533fo9HsEOmOKzv6F5Lpf41oMugaDi+RIzgPE7PEURA08BHHQ72E
 uSZ0SGki5dmRsUT1KbF3HutyePBHR2OwsplXWj73c64LXkRTE6ikSZR40/EWrfd8lFSWqMSkzWb
 7xAFNDvZyMCW5zshbGwW26ukEGOV8GSeVKSk=
X-Received: by 2002:aed:21c8:: with SMTP id m8mr4187969qtc.224.1592582747638; 
 Fri, 19 Jun 2020 09:05:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxzQfwrOgEHeZ4fmlf+FrgeIhkxqk3pvz1Rd9/fj39BAorh/CRlZ+KkHZPVWnZcxaKSEJpm8Q==
X-Received: by 2002:aed:21c8:: with SMTP id m8mr4187936qtc.224.1592582747304; 
 Fri, 19 Jun 2020 09:05:47 -0700 (PDT)
Received: from xz-x1.redhat.com ([2607:9880:19c0:32::2])
 by smtp.gmail.com with ESMTPSA id g11sm6412604qkk.123.2020.06.19.09.05.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 09:05:46 -0700 (PDT)
From: Peter Xu <peterx@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-mm@kvack.org
Subject: [PATCH 04/26] mm/arm: Use general page fault accounting
Date: Fri, 19 Jun 2020 12:05:16 -0400
Message-Id: <20200619160538.8641-5-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200619160538.8641-1-peterx@redhat.com>
References: <20200619160538.8641-1-peterx@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_090552_840470_0E20EAFA 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.139.110.61 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Michael Ellerman <mpe@ellerman.id.au>, Russell King <linux@armlinux.org.uk>,
 peterx@redhat.com, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the general page fault accounting by passing regs into handle_mm_fault().
It naturally solve the issue of multiple page fault accounting when page fault
retry happened.  To do this, we need to pass the pt_regs pointer into
__do_page_fault().

Fix PERF_COUNT_SW_PAGE_FAULTS perf event manually for page fault retries, by
moving it before taking mmap_sem.

CC: Russell King <linux@armlinux.org.uk>
CC: Will Deacon <will@kernel.org>
CC: linux-arm-kernel@lists.infradead.org
Signed-off-by: Peter Xu <peterx@redhat.com>
---
 arch/arm/mm/fault.c | 25 ++++++-------------------
 1 file changed, 6 insertions(+), 19 deletions(-)

diff --git a/arch/arm/mm/fault.c b/arch/arm/mm/fault.c
index 0d6be0f4f27c..8530befee012 100644
--- a/arch/arm/mm/fault.c
+++ b/arch/arm/mm/fault.c
@@ -201,7 +201,8 @@ static inline bool access_error(unsigned int fsr, struct vm_area_struct *vma)
 
 static vm_fault_t __kprobes
 __do_page_fault(struct mm_struct *mm, unsigned long addr, unsigned int fsr,
-		unsigned int flags, struct task_struct *tsk)
+		unsigned int flags, struct task_struct *tsk,
+		struct pt_regs *regs)
 {
 	struct vm_area_struct *vma;
 	vm_fault_t fault;
@@ -223,7 +224,7 @@ __do_page_fault(struct mm_struct *mm, unsigned long addr, unsigned int fsr,
 		goto out;
 	}
 
-	return handle_mm_fault(vma, addr & PAGE_MASK, flags, NULL);
+	return handle_mm_fault(vma, addr & PAGE_MASK, flags, regs);
 
 check_stack:
 	/* Don't allow expansion below FIRST_USER_ADDRESS */
@@ -265,6 +266,8 @@ do_page_fault(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
 	if ((fsr & FSR_WRITE) && !(fsr & FSR_CM))
 		flags |= FAULT_FLAG_WRITE;
 
+	perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, addr);
+
 	/*
 	 * As per x86, we may deadlock here.  However, since the kernel only
 	 * validly references user space from well defined areas of the code,
@@ -289,7 +292,7 @@ do_page_fault(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
 #endif
 	}
 
-	fault = __do_page_fault(mm, addr, fsr, flags, tsk);
+	fault = __do_page_fault(mm, addr, fsr, flags, tsk, regs);
 
 	/* If we need to retry but a fatal signal is pending, handle the
 	 * signal first. We do not need to release the mmap_sem because
@@ -301,23 +304,7 @@ do_page_fault(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
 		return 0;
 	}
 
-	/*
-	 * Major/minor page fault accounting is only done on the
-	 * initial attempt. If we go through a retry, it is extremely
-	 * likely that the page will be found in page cache at that point.
-	 */
-
-	perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, addr);
 	if (!(fault & VM_FAULT_ERROR) && flags & FAULT_FLAG_ALLOW_RETRY) {
-		if (fault & VM_FAULT_MAJOR) {
-			tsk->maj_flt++;
-			perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MAJ, 1,
-					regs, addr);
-		} else {
-			tsk->min_flt++;
-			perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MIN, 1,
-					regs, addr);
-		}
 		if (fault & VM_FAULT_RETRY) {
 			flags |= FAULT_FLAG_TRIED;
 			goto retry;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
