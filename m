Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A26CB7A0EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 08:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qz+OFn+fxeTkokdDTbsU6ZP+bX6OZxsP445AxQgCkfk=; b=CveTVHXPX8mAgo
	jMrl38tdBIAU+jcsRh7Uwb4olbXyC1MrkB+u7DkFVmd9cs+TcqZbFUcC+t67/4VSI87KPUrbn2KiX
	FEpotltfxAaKKeFvRF6S2G4cOKNT4T0qn2OXc6BMr/ZEky+woTYLZKg4gi7QvsRr+ev4LRfjW/bAz
	S5t96LVlLJfvffp0IhCiRLsxxBmMiaXDs5pi3LVrnfx/KRCVWYrj73DopDl/adpyXoT7iE2YC+7Dp
	kk9VCwcBYDb4o0LkifXAQ2xZx+trgvmpenKSzZoNYNWp+SGoDuT5F3sm/6FwBN+xE94ODMMzlBGPY
	lyJZXJwR+iqOD5V61nYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsLCb-0007lM-S4; Tue, 30 Jul 2019 06:01:38 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsLCJ-0007hO-6U; Tue, 30 Jul 2019 06:01:20 +0000
X-Originating-IP: 79.86.19.127
Received: from alex.numericable.fr (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 1E7431BF20D;
 Tue, 30 Jul 2019 06:01:12 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v5 09/14] mips: Properly account for stack randomization and
 stack guard gap
Date: Tue, 30 Jul 2019 01:51:08 -0400
Message-Id: <20190730055113.23635-10-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190730055113.23635-1-alex@ghiti.fr>
References: <20190730055113.23635-1-alex@ghiti.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_230119_437509_0CAE874F 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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

This commit takes care of stack randomization and stack guard gap when
computing mmap base address and checks if the task asked for randomization.
This fixes the problem uncovered and not fixed for arm here:
https://lkml.kernel.org/r/20170622200033.25714-1-riel@redhat.com

Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
Acked-by: Kees Cook <keescook@chromium.org>
Acked-by: Paul Burton <paul.burton@mips.com>
Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
---
 arch/mips/mm/mmap.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/mips/mm/mmap.c b/arch/mips/mm/mmap.c
index d79f2b432318..f5c778113384 100644
--- a/arch/mips/mm/mmap.c
+++ b/arch/mips/mm/mmap.c
@@ -21,8 +21,9 @@ unsigned long shm_align_mask = PAGE_SIZE - 1;	/* Sane caches */
 EXPORT_SYMBOL(shm_align_mask);
 
 /* gap between mmap and stack */
-#define MIN_GAP (128*1024*1024UL)
-#define MAX_GAP ((TASK_SIZE)/6*5)
+#define MIN_GAP		(128*1024*1024UL)
+#define MAX_GAP		((TASK_SIZE)/6*5)
+#define STACK_RND_MASK	(0x7ff >> (PAGE_SHIFT - 12))
 
 static int mmap_is_legacy(struct rlimit *rlim_stack)
 {
@@ -38,6 +39,15 @@ static int mmap_is_legacy(struct rlimit *rlim_stack)
 static unsigned long mmap_base(unsigned long rnd, struct rlimit *rlim_stack)
 {
 	unsigned long gap = rlim_stack->rlim_cur;
+	unsigned long pad = stack_guard_gap;
+
+	/* Account for stack randomization if necessary */
+	if (current->flags & PF_RANDOMIZE)
+		pad += (STACK_RND_MASK << PAGE_SHIFT);
+
+	/* Values close to RLIM_INFINITY can overflow. */
+	if (gap + pad > gap)
+		gap += pad;
 
 	if (gap < MIN_GAP)
 		gap = MIN_GAP;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
