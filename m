Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C6E1FA34D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 00:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvwMzqOE+UxXHcpOm53jV3rdS0A2xvUbF8YZ2K7+6LE=; b=EQCqrEU4zlR65F
	VPtJ4JI0zUVM1fkjDiXJ6SYKJxsup7pygYh9HnyiJHu1GaiOLchIjmvoMgsKrvnbt4wes28OD24a5
	YrK2/HVMwZUADRoKCrpMVBHe6lK/N9VKIcr3fnCK3c5G3E8lXATGQHb66XuX7OPHd2oXAQmZlU5/k
	nYIpjMIV2aEJMngQ2ahKKxsWTIEwimhYHBAXfsq1ChJyEyneoVzGICmvoArpAoVD1dEyW4OkCGJRF
	3pbpH6OZqDQbr/dvZsBZ7i2Y7fSFykX3UANMLJjJEXtzTlByCo7xE+dOd6y1qNhK4xijSKWYBNy2Q
	Q6O3JTf1pdNiDcIeGI4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkxP3-0008Go-Ve; Mon, 15 Jun 2020 22:16:29 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkxOv-0008FZ-M5
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 22:16:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592259380;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KKXlC2Ik8MurO5EQW9zZhxy63+C0QjUDgELZmh6OLDU=;
 b=XzjbGjYSO2ZZ0YPuDEfe5hlMZ+8jzM0eBMEMih5xZm0rVqn1E31JbYmv/vK8lBQmDzTw0p
 5OHcLdy2pm9NzbqVjT9jy0ILTYVjjsUiMIp1z1CJUGSa7KMuqX30wft1zRdqfSPtWVg/vt
 7AhVK6usG+dHFogTO7MvUzdrT1jZsDc=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-273-SbTEflwCNwqpfdK_E0kEvg-1; Mon, 15 Jun 2020 18:16:19 -0400
X-MC-Unique: SbTEflwCNwqpfdK_E0kEvg-1
Received: by mail-qv1-f69.google.com with SMTP id j4so14112010qvt.20
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 15:16:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KKXlC2Ik8MurO5EQW9zZhxy63+C0QjUDgELZmh6OLDU=;
 b=ZO/yuMu3ud7c7J/cSan5J9Sc64IzE5ZMszzDcD3mraKyxXmUg1uXgvgT71rRGVJ2tu
 MlZPtDVE0a5Uy4Nr3zjKTni68Djt0+KOUdcb1XUK4k+u0HzKLnF9yQ7nY+yupCzb/xyJ
 Haf+ZWx0FiVKpTzOdtpD7RVBsf08YQj3RkgovAszvPntbesx16KDck+Hfj0125Af3NNI
 I8zd+O+vGMUw1Kfg1oNwe/6theK58T3Ucb3DV0BBoLL64eoQkfAij7nLKjnQDI8Yb5MY
 H33RcRsNaMxFllJVmOB817JUHGH/RMivg9nn3TXUNu7+ZFEvUZJrC9wHmrVS/SaJXnS6
 xScA==
X-Gm-Message-State: AOAM531exNm36jRVqHyvoslg5OiBZCoBl9ZySTz0q/cIdrxKH0Zol1XQ
 Flp/1BJtqpTOvmwyRq0x5BruY9Gb1DEqlte+QpT1j9ZaZfpj6YDjnD9iFXXtSKB/ldisCuXM+wS
 RzEKHQb4seDptyBjcvNrE6EY4r0apE7mCrzs=
X-Received: by 2002:a05:6214:17cb:: with SMTP id
 cu11mr26619258qvb.202.1592259378652; 
 Mon, 15 Jun 2020 15:16:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzYdEz/PXgGWV8lG2AkZeCE0DWjNT0NnU9fGbVJx/ytdFI4o+mld4AJShPV7+8taxw+Ukt3hQ==
X-Received: by 2002:a05:6214:17cb:: with SMTP id
 cu11mr26619231qvb.202.1592259378438; 
 Mon, 15 Jun 2020 15:16:18 -0700 (PDT)
Received: from xz-x1.hitronhub.home ([2607:9880:19c0:32::2])
 by smtp.gmail.com with ESMTPSA id w13sm12351509qkb.91.2020.06.15.15.16.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 15:16:17 -0700 (PDT)
From: Peter Xu <peterx@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 05/25] mm/arm: Use mm_fault_accounting()
Date: Mon, 15 Jun 2020 18:15:47 -0400
Message-Id: <20200615221607.7764-6-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200615221607.7764-1-peterx@redhat.com>
References: <20200615221607.7764-1-peterx@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_151621_791707_678D0938 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrea Arcangeli <aarcange@redhat.com>, Will Deacon <will@kernel.org>,
 Russell King <linux@armlinux.org.uk>, peterx@redhat.com,
 linux-arm-kernel@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the new mm_fault_accounting() helper for page fault accounting.

Avoid doing page fault accounting multiple times if the page fault is retried.
Meanwhile, take the page fault as a major fault as long as any of the retried
page fault is a major fault.

CC: Russell King <linux@armlinux.org.uk>
CC: Will Deacon <will@kernel.org>
CC: linux-arm-kernel@lists.infradead.org
Signed-off-by: Peter Xu <peterx@redhat.com>
---
 arch/arm/mm/fault.c | 21 ++++-----------------
 1 file changed, 4 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mm/fault.c b/arch/arm/mm/fault.c
index 2dd5c41cbb8d..92d4436e74da 100644
--- a/arch/arm/mm/fault.c
+++ b/arch/arm/mm/fault.c
@@ -240,7 +240,7 @@ do_page_fault(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
 	struct task_struct *tsk;
 	struct mm_struct *mm;
 	int sig, code;
-	vm_fault_t fault;
+	vm_fault_t fault, major = 0;
 	unsigned int flags = FAULT_FLAG_DEFAULT;
 
 	if (kprobe_page_fault(regs, fsr))
@@ -290,6 +290,7 @@ do_page_fault(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
 	}
 
 	fault = __do_page_fault(mm, addr, fsr, flags, tsk);
+	major |= fault & VM_FAULT_MAJOR;
 
 	/* If we need to retry but a fatal signal is pending, handle the
 	 * signal first. We do not need to release the mmap_sem because
@@ -301,23 +302,7 @@ do_page_fault(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
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
@@ -326,6 +311,8 @@ do_page_fault(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
 
 	up_read(&mm->mmap_sem);
 
+	mm_fault_accounting(tsk, regs, addr, major);
+
 	/*
 	 * Handle the "normal" case first - VM_FAULT_MAJOR
 	 */
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
