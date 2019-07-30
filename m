Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F1C7A101
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 08:04:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NLtomv0C8lNKt+gq2Ulnya/HgHAQfBFbKTAZ+54qy9c=; b=bZvt05s16aFNRr
	+ulTSe113XA3Ta549B3Oqf3sltb8pAQ40qsxnGEJcfdyIrgclN+vTFLyterxzn4iGD8BmWRtsqwTA
	ghqtbtkXNwA/17cbnpENAbvrPJua5Nx61cdrFGvX9k+INhrX9p3H96T0glprE5v0cSlkN+6dUx808
	pogLoDXQoJXVKPkHzixxxz/1edqA+zl8EpLv8DVKd4UppR1Vs9GR2mRyfYDVxW1JSRCRbFE5Z8z/8
	O5MSo6XNMf5UNGS680XvRV6JWwqtWbWGem2FbNciHMAjXHZ7v4aumuf1jwL1N4ILHp+uUlVNg5bnY
	7AL2R02jVstNsYJf8WXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsLFk-0000Ht-AU; Tue, 30 Jul 2019 06:04:52 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsLFX-0000Gr-0q; Tue, 30 Jul 2019 06:04:40 +0000
X-Originating-IP: 79.86.19.127
Received: from alex.numericable.fr (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 94A64E0005;
 Tue, 30 Jul 2019 06:04:26 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v5 12/14] mips: Replace arch specific way to determine 32bit
 task with generic version
Date: Tue, 30 Jul 2019 01:51:11 -0400
Message-Id: <20190730055113.23635-13-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190730055113.23635-1-alex@ghiti.fr>
References: <20190730055113.23635-1-alex@ghiti.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_230439_217579_40019776 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Alexandre Ghiti <alex@ghiti.fr>, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Ralf Baechle <ralf@linux-mips.org>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Luis Chamberlain <mcgrof@kernel.org>, Paul Burton <paul.burton@mips.com>,
 James Hogan <jhogan@kernel.org>, linux-fsdevel@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mips uses TASK_IS_32BIT_ADDR to determine if a task is 32bit, but
this define is mips specific and other arches do not have it: instead,
use !IS_ENABLED(CONFIG_64BIT) || is_compat_task() condition.

Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
Acked-by: Paul Burton <paul.burton@mips.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
---
 arch/mips/mm/mmap.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/mips/mm/mmap.c b/arch/mips/mm/mmap.c
index ff6ab87e9c56..d5106c26ac6a 100644
--- a/arch/mips/mm/mmap.c
+++ b/arch/mips/mm/mmap.c
@@ -17,6 +17,7 @@
 #include <linux/sched/signal.h>
 #include <linux/sched/mm.h>
 #include <linux/sizes.h>
+#include <linux/compat.h>
 
 unsigned long shm_align_mask = PAGE_SIZE - 1;	/* Sane caches */
 EXPORT_SYMBOL(shm_align_mask);
@@ -191,7 +192,7 @@ static inline unsigned long brk_rnd(void)
 
 	rnd = rnd << PAGE_SHIFT;
 	/* 32MB for 32bit, 1GB for 64bit */
-	if (TASK_IS_32BIT_ADDR)
+	if (!IS_ENABLED(CONFIG_64BIT) || is_compat_task())
 		rnd = rnd & (SZ_32M - 1);
 	else
 		rnd = rnd & (SZ_1G - 1);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
