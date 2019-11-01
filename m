Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 782E6EBFED
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 09:49:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/teG3jmLW++op32VGsKZ2fQZssbC+aIqlMokkPtBTog=; b=VBTsoqizhDmwS4mYeiwoluk/x+
	/q5U2+wEA8axmM0GQvKhUIKftGzd8Pqb0xfOND5J140/S+SyFHH5t2HwvfUI5LNh+CWZDPJwE/fat
	78sYBp0r1UiaWkGeW7svw2RMTXj4T9/Q4U774aNEVPlJIJl6uK3jmAVBpNurilbMFpmgUOhx43i66
	w9k2/kLVv5rPXEfWuLz/9o/D+NkWjusf9G1qh+8rjzCkRDrdHRlxG7RYC36tQE/srP5SrXEdgUiAV
	Stjo4TLSu5xo6iSjbgUwnZsJZBCa2FOhroEq7TW6ujUBbFIU/MULDST02koAOaBQe4l33+PTA5vG7
	xn8Fbo8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQSc7-0008Ex-LG; Fri, 01 Nov 2019 08:48:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQSUw-0000u7-FY; Fri, 01 Nov 2019 08:41:35 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B233218AC;
 Fri,  1 Nov 2019 08:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572597693;
 bh=ss5iwOCaTTohO1+h+WanXEa9AqPGBFhd7er3FFF4krg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=orY5OEN5FAfTupyz5WbEdGuKXWE+YtMTgoznhE6dxMJ9I3oxKB6BKV5PSMnCOmibY
 zaDmsuejc/p+pzCEKwQcY/Q+Ves7P95hdFa/ZtL1c5XV9lfzaZteNFLmAjYO9f8HNB
 tMm96LCLuV3YeilmDucUKvhXbM7vmk5PdwUZ8ZRE=
From: Mike Rapoport <rppt@kernel.org>
To: linux-mm@kvack.org
Subject: [PATCH v2 11/13] um: remove unused pxx_offset_proc() and addr_pte()
 functions
Date: Fri,  1 Nov 2019 10:39:42 +0200
Message-Id: <1572597584-6390-12-git-send-email-rppt@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572597584-6390-1-git-send-email-rppt@kernel.org>
References: <1572597584-6390-1-git-send-email-rppt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_014134_578391_713EB687 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 sparclinux@vger.kernel.org, Rolf Eike Beer <eike-kernel@sf-tec.de>,
 Vincent Chen <deanbo422@gmail.com>, Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Jeff Dike <jdike@addtoit.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-alpha@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Peter Rosin <peda@axentia.se>,
 Mike Rapoport <rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

The pxx_offset_proc() and addr_pte() functions are never used.
Remove them.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/um/kernel/tlb.c | 29 -----------------------------
 1 file changed, 29 deletions(-)

diff --git a/arch/um/kernel/tlb.c b/arch/um/kernel/tlb.c
index b7eaf65..8425a22 100644
--- a/arch/um/kernel/tlb.c
+++ b/arch/um/kernel/tlb.c
@@ -490,35 +490,6 @@ void flush_tlb_page(struct vm_area_struct *vma, unsigned long address)
 	force_sig(SIGKILL);
 }
 
-pgd_t *pgd_offset_proc(struct mm_struct *mm, unsigned long address)
-{
-	return pgd_offset(mm, address);
-}
-
-pud_t *pud_offset_proc(pgd_t *pgd, unsigned long address)
-{
-	return pud_offset(pgd, address);
-}
-
-pmd_t *pmd_offset_proc(pud_t *pud, unsigned long address)
-{
-	return pmd_offset(pud, address);
-}
-
-pte_t *pte_offset_proc(pmd_t *pmd, unsigned long address)
-{
-	return pte_offset_kernel(pmd, address);
-}
-
-pte_t *addr_pte(struct task_struct *task, unsigned long addr)
-{
-	pgd_t *pgd = pgd_offset(task->mm, addr);
-	pud_t *pud = pud_offset(pgd, addr);
-	pmd_t *pmd = pmd_offset(pud, addr);
-
-	return pte_offset_map(pmd, addr);
-}
-
 void flush_tlb_all(void)
 {
 	/*
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
