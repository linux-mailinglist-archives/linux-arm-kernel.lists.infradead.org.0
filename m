Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C53B01734EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 11:04:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HRhNXcO3UEP2uh4l77mXI5QLCIo5uoOkn07/mDG+Gi0=; b=G/DOBmbA4D97TSVTTwcYck9Dny
	aisSRvqdU5ffpZNgaDCcBkinC4OMKQTHKQO7rykzuRu5GhPuxwD5PskPXTc3OML4o1+q2ERnY4m3o
	QtUPkuUVfqsuRYOHYaLPHHAJnvAORYBj+lMKapJCRmZkoadEGqoUK7NHNPFmjCXxhtC/eBOsE7lan
	9xZzulKLjeFrAtzw6oUSegpuzszLj4gTm6Q21dxjEs4va3JWKU9OPAdE4floMxSA5rNGHzA34Mqkf
	xB2wkDLntzPUmWYsMvspD0Lk0MmeCzXfteGedGFfr9IVYqeP1I5nIR9ZzS2LjEkULspIYrVa0O5vy
	KQPQfeEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7cV0-0003f1-8K; Fri, 28 Feb 2020 10:04:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7cTu-0002vt-Iv
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 10:02:56 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78C25246A2;
 Fri, 28 Feb 2020 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582884174;
 bh=yTXR/aWTRf31QuLVSWpsZDTg2cGIQ6ZDOSL3SMzock8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JxrXxSwmLwjs7T9fSyDBoq8W1cL31VwgG6bCXGzCpIhOVmw+ORk+P212pWj65MckC
 xJ+2+xmjeixtH/l417o9UJRKlyHtOuEdxwWT0wAuWJ24F+F/yfjJGis0sBbQSLfkiN
 8Me8pAD/KSiF6SSeVijW3H3ItpjAosrmTEj0UtzQ=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH efi-next 3/3] efi: mark all EFI runtime services as
 unsupported on non-EFI boot
Date: Fri, 28 Feb 2020 11:02:44 +0100
Message-Id: <20200228100244.10979-4-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200228100244.10979-1-ardb@kernel.org>
References: <20200228100244.10979-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_020254_660036_41DDAFB3 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Recent changes to the way we deal with EFI runtime services that
are marked as unsupported by the firmware resulted in a regression
for non-EFI boot. The problem is that all EFI runtime services are
marked as available by default, and any non-NULL checks on the EFI
service function pointers (which will be non-NULL even for runtime
services that are unsupported on an EFI boot) were replaced with
checks against the mask stored in efi.runtime_supported_mask.

When doing a non-EFI boot, this check against the mask will return
a false positive, given the fact that all runtime services are
marked as enabled by default. Since we dropped the non-NULL check
of the runtime service function pointer in favor of the mask check,
we will now unconditionally dereference the function pointer, even
if it is NULL, and go boom.

So let's ensure that the mask reflects reality on a non-EFI boot,
which is that all EFI runtime services are unsupported.

Reported-by: David Hildenbrand <david@redhat.com>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/efi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
index 41269a95ff85..d1746a579c99 100644
--- a/drivers/firmware/efi/efi.c
+++ b/drivers/firmware/efi/efi.c
@@ -300,12 +300,12 @@ static int __init efisubsys_init(void)
 {
 	int error;
 
-	if (!efi_enabled(EFI_BOOT))
-		return 0;
-
 	if (!efi_enabled(EFI_RUNTIME_SERVICES))
 		efi.runtime_supported_mask = 0;
 
+	if (!efi_enabled(EFI_BOOT))
+		return 0;
+
 	if (efi.runtime_supported_mask) {
 		/*
 		 * Since we process only one efi_runtime_service() at a time, an
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
