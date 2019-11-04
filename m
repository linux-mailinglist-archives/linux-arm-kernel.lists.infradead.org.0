Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B69ED9A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 08:00:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z3yzLwHN/SbkwjnCzd93iRjzJw788l8okZESUAtcoo8=; b=IICp8hCJYDZtZVFZe6GTxwyo0E
	tMwM/+mBLwvobvCQQzEadKJW2vcmAQ/p6W7F53x5aPf5+K5qMiG8f6pwTq8nx4O1IzDDTRzbLZGjk
	HlN1CWwwRJK2BjYfzy4jQHaUY6TU0bvsakUdRCtlrzB+Ps6eqYxNnyVu7Hj9iF5mbiH89fUsfaGRV
	WJ2CB1WMd704MTsSDazs3+42ip75wQhI2Wpf7BS0hHwBE18FndgYG9DUNh036h3JgwZbIQc3hpsIp
	0MfgcTMjDXrMX7W7AzXnyvcNfHSp4SomXGxd6R9zPEVAKkEIh5tZo9kKlqtniN6lU0JiWfj4pvFbQ
	IC/mSefA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRWLm-0001R5-7J; Mon, 04 Nov 2019 07:00:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRWJi-00072R-Ge; Mon, 04 Nov 2019 06:58:24 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7CCBF222D0;
 Mon,  4 Nov 2019 06:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572850701;
 bh=wZAI463nkQMXnr0r7OISHGkceNVdyUrXS15CSDJgufE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DViHYAbmdpArKspfM3vjvyH8X0SkW6KJPN2/BSBl/ew10EGts3JPu99zCfHfWxb7w
 Q1nMLIq5oEav5sHSrZs1RnD3fWVekKlU4S2S3oIKORqxeKlzPCj8Q5MDQgJJcRMJOp
 W6xUf3W++MlzqTwprj47yMIPZwlMZmBcz7gCpf+M=
From: Mike Rapoport <rppt@kernel.org>
To: linux-mm@kvack.org
Subject: [PATCH v3 11/13] um: remove unused pxx_offset_proc() and addr_pte()
 functions
Date: Mon,  4 Nov 2019 08:56:25 +0200
Message-Id: <1572850587-20314-12-git-send-email-rppt@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572850587-20314-1-git-send-email-rppt@kernel.org>
References: <1572850587-20314-1-git-send-email-rppt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_225822_614827_7B0F5C33 
X-CRM114-Status: UNSURE (   9.16  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Acked-by: Richard Weinberger <richard@nod.at>
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
