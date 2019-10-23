Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9BCE162F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 11:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=59nBMihcH11WwRlEf6gNZ2gNMQJeJUl8J1TvlAE+iuE=; b=qO6oMHDhe7EqUumsg9fchhqRu3
	g+r90na8YlDjR45BN9Q3nfV/FOID+BW9X6SYAUnNYTHoiqf5INCwfA5xO4K437DOh1WN9AJMwrCSx
	4f61F+KzYB8V2CTvomIL6+IzklZYKo2pGwD+L4uPP+9ExskPhlvIJTC9x0OifvC+42Ig1dyhAUZgo
	3h6/V/t6Ek9ijw272ktADiD1lSiV0wii2NxFEhfTzd2UdXrYR+7N7LrzspUd1eizwUHmvnXQqxdlu
	Tig0XDZmnccZfH4ws9Bs0Xa8QKQ10RBI12F4wsKO+gxaHa6VBj25crmcP2dIsM+9vx+P+2VdLxxdA
	TH3jAqIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iND0t-00037V-Oa; Wed, 23 Oct 2019 09:33:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNCxm-0008LT-Dz; Wed, 23 Oct 2019 09:29:57 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B86821928;
 Wed, 23 Oct 2019 09:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571822993;
 bh=qDjKGJyQVo3F8Wi8mGENmG0Ak/6nIdbJH/SzAL2uh50=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cJLALp3jHDWYPQYu5RNU2aNgFd/gF5L/ONiQy+6dAvXjk1VzY/AKeGBr+b7t3hbg1
 f+7JHJyN8P55oNhRCa8UC5a11wEcweViRUuBC0L27yV3vgl6eMEw0bgYeT3glihTSL
 9b7YsbwYZ1sBSB4kkbJ1hDIoMcvdxRYLEw1m11NE=
From: Mike Rapoport <rppt@kernel.org>
To: linux-mm@kvack.org
Subject: [PATCH 04/12] m68k: nommu: use pgtable-nopud instead of 4level-fixup
Date: Wed, 23 Oct 2019 12:28:53 +0300
Message-Id: <1571822941-29776-5-git-send-email-rppt@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571822941-29776-1-git-send-email-rppt@kernel.org>
References: <1571822941-29776-1-git-send-email-rppt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_022954_534897_FE45A006 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 sparclinux@vger.kernel.org, Vincent Chen <deanbo422@gmail.com>,
 Greg Ungerer <gerg@linux-m68k.org>,
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
 linux-alpha@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

The generic nommu implementation of page table manipulation takes care of
folding of the upper levels and does not require fixups.

Simply replace of include/asm-generic/4level-fixup.h with
include/asm-generic/pgtable-nopud.h.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/m68k/include/asm/pgtable_no.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/m68k/include/asm/pgtable_no.h b/arch/m68k/include/asm/pgtable_no.h
index c18165b..ccc4568 100644
--- a/arch/m68k/include/asm/pgtable_no.h
+++ b/arch/m68k/include/asm/pgtable_no.h
@@ -2,7 +2,7 @@
 #ifndef _M68KNOMMU_PGTABLE_H
 #define _M68KNOMMU_PGTABLE_H
 
-#include <asm-generic/4level-fixup.h>
+#include <asm-generic/pgtable-nopud.h>
 
 /*
  * (C) Copyright 2000-2002, Greg Ungerer <gerg@snapgear.com>
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
