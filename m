Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A14771A6941
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 17:56:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cI6Jaq1YqnMS5M6cX31tCpDkLVT4HFdNXRpwQRNwdWo=; b=kap0DYQK0pWGqUMb8hfQE9HKaP
	/Qn65xwDa3YMzKF/KV2wfWTRa00IhVZJvdNCWPY2d/NtojdJ4hZRNEfLBwXhsAJtdLWFxu098IJ+e
	123xM+v3NpQQOTAoxTrUD0k+Ohjmvf8OrNe6jaQpxj+NWqmBGBr3Yo0SioXPIdIo60HO98LjxCiz+
	6+MTXD1xNWCz17fVUyO5fV+umJFvYAn2nXatwQ+YOXLQSq6MXAIj+xOlJ+iA9l9bXHJBC9Nw7bfsR
	rlRftivEUWy3084W3PLdHDqlDWsx08OSC7TPc3cqwB7GWBXXugqsaAZU2HqomwMdQiAy8LVi/BvZx
	Xnuus6ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO1RV-0007UK-2y; Mon, 13 Apr 2020 15:56:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO1Qs-00076J-SO
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 15:55:36 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 10DE12073E;
 Mon, 13 Apr 2020 15:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586793334;
 bh=u/xP6CoK1MUmVKKpWlYTdz2lShxhmNKAh4XSY+FwLjI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XmVGSp6K0VdVrP8HgOexa5iwmmQ7IZXGt680OIuFlIlps3CN2EErfqgDuArDyLSQ0
 /rk+ZqvnWOJPZnSX68Dw5Qci19oft/3skEE3O+fPakg4/23QR2K1I7nz51gIXzpXE6
 tVSs+YfGNgOtENgwLEZkMypZX33UI4gYotTbOS70=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v2 2/8] efi/libstub/random: increase random alloc granularity
Date: Mon, 13 Apr 2020 17:55:15 +0200
Message-Id: <20200413155521.24698-3-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200413155521.24698-1-ardb@kernel.org>
References: <20200413155521.24698-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_085534_964941_541BA270 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, nivedita@alum.mit.edu,
 Jonathan.Cameron@huawei.com, will@kernel.org, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The implementation of efi_random_alloc() arbitrarily truncates the
provided random seed to 16 bits, which limits the granularity of the
randomly chosen allocation offset in memory. This is currently only
an issue if the size of physical memory exceeds 128 GB, but going
forward, we will reduce the allocation alignment to 64 KB, and this
means we need to increase the granularity to ensure that the random
memory allocations are distributed evenly.

We will need to switch to 64-bit arithmetic for the multiplication,
but this does not result in 64-bit integer intrinsic calls on ARM or
on i386.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/libstub/randomalloc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/efi/libstub/randomalloc.c b/drivers/firmware/efi/libstub/randomalloc.c
index 6200dfa650f5..a408df474d83 100644
--- a/drivers/firmware/efi/libstub/randomalloc.c
+++ b/drivers/firmware/efi/libstub/randomalloc.c
@@ -87,7 +87,7 @@ efi_status_t efi_random_alloc(unsigned long size,
 	}
 
 	/* find a random number between 0 and total_slots */
-	target_slot = (total_slots * (u16)random_seed) >> 16;
+	target_slot = (total_slots * (u64)(random_seed & U32_MAX)) >> 32;
 
 	/*
 	 * target_slot is now a value in the range [0, total_slots), and so
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
