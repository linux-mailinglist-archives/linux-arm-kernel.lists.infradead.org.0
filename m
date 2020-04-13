Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB161A6940
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 17:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=v0fd7N1bL0q9lso2DxlGvk5dIFbDawD63jrTaQneOo4=; b=FoojJVfgT29FYVb0AWn8/k7Zaf
	b4yvpjrQA5mXNoTq5xJ6DBGcEjLF/Qg8vYFZ/yWzj21aGKVhvyCJ7So2DJIH52Ch9y2RswOQ5t/3B
	ylZTxQ4NQKysD44dtD0u67IIlJ2kFhZmaNHMEErjYFBc9HcFt8KAiVmkSqgApFTYdOsM2oqdJX+9G
	ZVmhuS5ZvJxi2GUCNBLsQ42EEzWH342kwxZFQIEe61U06TSTmPcLwj9rlUyhaK4929MCj2CbjlCHY
	gqPrW2UDE0R4VBPear3x6hISd+TtscECjEV+qPHSvTUq2+4fqK80Ffxe4Urk6BUBr+J8Px04DGo6E
	es7jQMvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO1RJ-0007Bj-Bv; Mon, 13 Apr 2020 15:56:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO1Qp-000729-U9
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 15:55:33 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5B76C20739;
 Mon, 13 Apr 2020 15:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586793331;
 bh=BUDRicBn8f0ZY8ppIfG0csRmOCIXJIw2tlzx7xNVDnw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Fw+jw5m5kVq0nwtcd5wSaX+y+J63IlU5bU5zu0fCjN72+FoqAi62rLYWY6i2erMJ/
 gzbO5OSTQhM8UNd/4dvKXB8P6L1HFYMJApMuIOu0AGPgznh/zGy8nrLPWkpgMnO44S
 3dZmdxXw4dpTgnaUIdaUJMshUNGnuHYA7LTMRyps=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v2 1/8] efi/libstub/random: align allocate size to
 EFI_ALLOC_ALIGN
Date: Mon, 13 Apr 2020 17:55:14 +0200
Message-Id: <20200413155521.24698-2-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200413155521.24698-1-ardb@kernel.org>
References: <20200413155521.24698-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_085531_991749_9199AB0B 
X-CRM114-Status: GOOD (  12.25  )
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

The EFI stub uses a per-architecture #define for the minimum base
and size alignment of page allocations, which is set to 4 KB for
all architecures except arm64, which uses 64 KB, to ensure that
allocations can always be (un)mapped efficiently, regardless of
the page size used by the kernel proper, which could be a kexec'ee

The API wrappers around page based allocations assume that this
alignment is always taken into account, and so efi_free() will
also round up its size argument to EFI_ALLOC_ALIGN.

Currently, efi_random_alloc() does not honour this alignment for
the allocated size, and so freeing such an allocation may result
in unrelated memory to be freed, potentially leading to issues
after boot. So let's round up size in efi_random_alloc() as well.

Fixes: 2ddbfc81eac84a29 ("efi: stub: add implementation of efi_random_alloc()")
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/libstub/randomalloc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/efi/libstub/randomalloc.c b/drivers/firmware/efi/libstub/randomalloc.c
index 4578f59e160c..6200dfa650f5 100644
--- a/drivers/firmware/efi/libstub/randomalloc.c
+++ b/drivers/firmware/efi/libstub/randomalloc.c
@@ -74,6 +74,8 @@ efi_status_t efi_random_alloc(unsigned long size,
 	if (align < EFI_ALLOC_ALIGN)
 		align = EFI_ALLOC_ALIGN;
 
+	size = round_up(size, EFI_ALLOC_ALIGN);
+
 	/* count the suitable slots in each memory map entry */
 	for (map_offset = 0; map_offset < map_size; map_offset += desc_size) {
 		efi_memory_desc_t *md = (void *)memory_map + map_offset;
@@ -109,7 +111,7 @@ efi_status_t efi_random_alloc(unsigned long size,
 		}
 
 		target = round_up(md->phys_addr, align) + target_slot * align;
-		pages = round_up(size, EFI_PAGE_SIZE) / EFI_PAGE_SIZE;
+		pages = size / EFI_PAGE_SIZE;
 
 		status = efi_bs_call(allocate_pages, EFI_ALLOCATE_ADDRESS,
 				     EFI_LOADER_DATA, pages, &target);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
