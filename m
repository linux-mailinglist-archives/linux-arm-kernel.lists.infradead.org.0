Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEEF81A6946
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 17:57:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uNAv5eVPK1M6hGwotemZDr9e3mqDRq5zAj8e4zhbG4g=; b=ssb4L0bGmSrlVz71to3ndb7Xkm
	p0UVI8ciD0RlJFMf8CaMXbY85Aqw7d1tscy4ATU9S+OfJABkxia+kUDNp83BTRititG3uEmYKoQbB
	LgOgjdFzKVVBq4TwraTEK3VZVtR5Nsj3IBiMXkNiWj6vfszhlXU4sSFLWgaKft0FjejibZAoA5rnx
	8/jCA0Jc6BsRVt8HKZ2EXWeXbtU8glN6VaB/ZJNqErlQdJ8ITgjmVBnPNCH2HSVbCR3pFuC5FtSky
	P+I9dhYKiXBBDBKwpXmiszoYmoEKDYOVVENAG93d8S4U5IDrr5SikQYT9e1089tJ6RG/yH47hY+FM
	l0Ay2Lpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO1Sg-0000Fl-Qh; Mon, 13 Apr 2020 15:57:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO1R5-0007Iq-Uq
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 15:55:49 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9A9E620739;
 Mon, 13 Apr 2020 15:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586793346;
 bh=3Fh3BffeAc7NkYh1mfmRJ9kkzBxnlWD78shHS+Df4II=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DHKqIrFSn/z+3bCN0lXSwkvimyV3XbtswX+4+IU1uRvjArc+Aa8JphL0B5GO3vkQP
 BFIIrrqg3p5kdDU6FayyPB2mlYiXbpO1SWuv/ioUeLg6TdGGAsL6iXmNwIDBD6Q0ir
 1QYWRWNGlPLPTMMIb5dlIdq9M67fER5jy3iOSEzk=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v2 7/8] efi/libstub/arm64: switch to ordinary page allocator
 for kernel image
Date: Mon, 13 Apr 2020 17:55:20 +0200
Message-Id: <20200413155521.24698-8-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200413155521.24698-1-ardb@kernel.org>
References: <20200413155521.24698-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_085548_085975_3A093210 
X-CRM114-Status: GOOD (  12.24  )
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

It is no longer necessary to locate the kernel as low as possible in
physical memory, and so we can switch from efi_low_alloc() [which is
a rather nasty concoction on top of GetMemoryMap()] to a new helper
called efi_allocate_pages_aligned(), which simply rounds up the size
to account for the alignment, and frees the misaligned pages again.

So considering that the kernel can live anywhere in the physical
address space, as long as its alignment requirements are met, let's
switch to efi_allocate_pages_aligned() to allocate the pages.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/libstub/arm64-stub.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/efi/libstub/arm64-stub.c b/drivers/firmware/efi/libstub/arm64-stub.c
index 6fc3bd9a56db..99b67e88a33b 100644
--- a/drivers/firmware/efi/libstub/arm64-stub.c
+++ b/drivers/firmware/efi/libstub/arm64-stub.c
@@ -98,8 +98,8 @@ efi_status_t handle_kernel_image(unsigned long *image_addr,
 			return EFI_SUCCESS;
 		}
 
-		status = efi_low_alloc(*reserve_size,
-				       min_kimg_align, reserve_addr);
+		status = efi_allocate_pages_aligned(*reserve_size, reserve_addr,
+						    ULONG_MAX, min_kimg_align);
 
 		if (status != EFI_SUCCESS) {
 			pr_efi_err("Failed to relocate kernel\n");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
