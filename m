Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCA61944DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 18:01:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h0co268DQdDsFIpkHG0hlwzQMNMCkE0qS/pEaHpK32U=; b=Lt/RTO5f32YBWnjfuIKP4Sz2DA
	1yUjNwgz93yzZ3B4ciEQNJTD49MueTqwh79hSRqjfT5bRb8exdWcureaRCrWHGtGjUV/QdXWLRrro
	P09bYKP9g3hwQLSVerCF1W6Uyjrdc+fKavSNviG2HWVcNI1OAH+QI45dVkCdBuHSKcNzaQhaVtMiC
	wWy1JEjjZKfbceo1UZhawRz2FoCMsU06yn1jLxY+P3vP/pT9JUV0QKh9JKLNrvE2mAbUpYX5ug5IM
	JqwZ6o38XEQDMVqYlppXUii7rmcbgJDudZNs7/zXyMSIJxcs5efO1bV5J+EckMpWL8wf75buR06L1
	2izPNXxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHVsP-0005bw-91; Thu, 26 Mar 2020 17:01:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHVrI-00048q-Cb
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 16:59:57 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C249A2076A;
 Thu, 26 Mar 2020 16:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585241996;
 bh=WOxWjfDmGgg1+ZblWxXKQ7OejY4FNXMxB6c3NNDo23Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=a5yS6UI+qIXaocfR3tO4kOzpDdfzRknly4fV8lN/Y+PTW38wpngB7+Kd9aHPD6wNf
 zpF/TOJg8TJ+YEla3iNTKBnNBcoPVTdzIDMrpikCjVr43EkanYnwZv+9HdSQPySgxF
 QtlG8IXCFTTfpDnQ48/jz68+2S8GYYvxaPl0dkHk=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] efi/libstub/arm64: avoid copying the kernel unnecessarily
Date: Thu, 26 Mar 2020 17:59:04 +0100
Message-Id: <20200326165905.2240-2-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326165905.2240-1-ardb@kernel.org>
References: <20200326165905.2240-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_095956_452451_CC8E1831 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-efi@vger.kernel.org,
 will@kernel.org, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If the UEFI firmware has loaded the kernel at the right alignment, and
we are running a relocatable kernel, there is no point in copying the
kernel to a different place in memory, and instead, we can just run it
in place.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/libstub/arm64-stub.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/firmware/efi/libstub/arm64-stub.c b/drivers/firmware/efi/libstub/arm64-stub.c
index 9254cd8ab2d3..d263f504dcf0 100644
--- a/drivers/firmware/efi/libstub/arm64-stub.c
+++ b/drivers/firmware/efi/libstub/arm64-stub.c
@@ -104,6 +104,15 @@ efi_status_t handle_kernel_image(unsigned long *image_addr,
 					  (u32)phys_seed);
 
 		*image_addr = *reserve_addr + offset;
+	} else if (IS_ENABLED(CONFIG_RELOCATABLE) &&
+		   IS_ALIGNED((u64)_text - TEXT_OFFSET, EFI_KIMG_ALIGN)) {
+		/*
+		 * If we are relocatable and were loaded at a suitable offset,
+		 * there is no need to do anything and we can just execute in
+		 * place.
+		 */
+		*image_addr = (u64)_text;
+		return EFI_SUCCESS;
 	} else {
 		/*
 		 * Else, try a straight allocation at the preferred offset.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
