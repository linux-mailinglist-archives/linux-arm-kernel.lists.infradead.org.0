Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB80919A5B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 08:57:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Qc+9M5afFiq4Eioc+XPV56IoV58XXWPfvi2mvcnyn0s=; b=V5X
	a9fE1PN53wQpyQPkZbWscxRDHY9Mp3gRen0qs1uEMwsQnk9dUpWKKfgthJ8fXSrPi8DRSCnCZYG7E
	Z7e6jJsPVqG8kZUqhKA0zuLAgWVFHz8rT7j0W1ITYmplocKjXlF6/uUNShFCu/cPewUJQxqf0ZVBO
	Ne8UXaKDDWP4s2OmjPkjwGoua046SZO+r22nlJQ1LQmNSzM6NVeAjoxZGbiNBz/ha+zGqL34GmYK6
	7CN5JszrU68wk0nKweIpwyVGhh1AiXmG5NiZ26H9CMK7EsNiLqsUnQnTgKD4/bFiGuxMt0EZg6KPA
	F4dOdCGV47tw0Z06pkhNsy4JT9IXERw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJXJB-0007UW-8V; Wed, 01 Apr 2020 06:57:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJXJ2-0007UC-Qx
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 06:56:58 +0000
Received: from cam-smtp0.cambridge.arm.com (fw-tnat.cambridge.arm.com
 [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 54E2D206F6;
 Wed,  1 Apr 2020 06:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585724215;
 bh=CZbxvJyiVhKcQRNbjNgFwexA6EyXuI2oSzY7v+IGUAg=;
 h=From:To:Cc:Subject:Date:From;
 b=PQ7J3wd34oSrEPZctQP//N8g7iqsV+15Nro0OO7A0z1b6nlyv/Mc6E7979TMRruJK
 TFi+JLOxasxR54hUOo07v/ajUV2nbDEa3PDhbH2wn8+JVp+FrYbQAElorAbjwfaAis
 NXGRKcPKwEPI7UJ3ceKofqRss4FE2+FOjuXqYHQI=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: bring Image header in line with latest Arm brand
 guidelines
Date: Wed,  1 Apr 2020 08:56:36 +0200
Message-Id: <20200401065636.1751-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_235656_932160_8B790223 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: catalin.marinas@arm.com, will@kernel.org, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Arm brand guidelines are pretty clear when it comes to the way
the brand name 'arm' should be displayed: it should be all lowercase,
and there should be sufficient whitespace around it on all sides.

Let's use the reserved space we have available in the Image header to
bring it in compliance with this.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm64/include/asm/image.h | 2 +-
 arch/arm64/kernel/head.S       | 7 +++----
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/image.h b/arch/arm64/include/asm/image.h
index c2b13213c720..a52e6eca8118 100644
--- a/arch/arm64/include/asm/image.h
+++ b/arch/arm64/include/asm/image.h
@@ -3,7 +3,7 @@
 #ifndef __ASM_IMAGE_H
 #define __ASM_IMAGE_H
 
-#define ARM64_IMAGE_MAGIC	"ARM\x64"
+#define ARM64_IMAGE_MAGIC	"arm\x64"
 
 #define ARM64_IMAGE_FLAG_BE_SHIFT		0
 #define ARM64_IMAGE_FLAG_PAGE_SIZE_SHIFT	(ARM64_IMAGE_FLAG_BE_SHIFT + 1)
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 57a91032b4c2..e70d3f96dfe4 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -78,10 +78,9 @@ _head:
 	le64sym	_kernel_offset_le		// Image load offset from start of RAM, little-endian
 	le64sym	_kernel_size_le			// Effective size of kernel image, little-endian
 	le64sym	_kernel_flags_le		// Informative flags, little-endian
-	.quad	0				// reserved
-	.quad	0				// reserved
-	.quad	0				// reserved
-	.ascii	ARM64_IMAGE_MAGIC		// Magic number
+	.ascii		 "         "
+	.ascii	"   " ARM64_IMAGE_MAGIC "   "	// Magic number
+	.ascii		 "         "
 #ifdef CONFIG_EFI
 	.long	pe_header - _head		// Offset to the PE header.
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
