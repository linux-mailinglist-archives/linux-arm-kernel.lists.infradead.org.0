Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A582170512
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 17:59:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2V4CvvJejL060S3gtYuo5xuyRIj4oBHoKUalDPlM0L8=; b=f0vyehwVUdhwm62PPOiAecSZnj
	y2QbET8XIruaRw2N3ZcZ6e/y0bbSlUrsM0fm+ZuM5bHiZAqv3kmy0BAQ3KDzei2etvW9X6sz/8hNw
	5u+QdlGKiu228S3viE8CQL8u7Uakh71ROmbnY0mpYtByu/tD5n8qIsNn9UCnSzr1b8O3HXRFAHsCg
	gVOQNEkc0c5i3g4z/wBD+PIj83iOiw1vpH4TmhrHi0l8+gwzpNFRr6lw/Rz8O6yf+LKQeYNpPD0Vu
	SJrGTnAqeL/26jwhtXKW3qriEpxCzh50X40WkDBKbRp24BB2qtU02Aw6BFtAPHmVlJmmH4e0ciJZn
	fFWwHflQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j701y-00041R-GP; Wed, 26 Feb 2020 16:59:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j700S-0002uu-6H
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 16:57:57 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E80DC2467F;
 Wed, 26 Feb 2020 16:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582736275;
 bh=89tEKgcq3StZjhEAnbU++RDMy8AFndP8uxFqNWHt5X4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bgmh0qMnA51Zzm+zpT9nCz+yBbR9wbPuwTLxUMGnRnKqNh9q/vWw1G5gyNknwMrSB
 j9vjnl5Ex9sog639i5zpC1JCHxGJyKywRaIM1wLrRMrZvLHyzGzbBRJ9X7hNmn9ock
 JIMRHxcaE2f2dqMPDSl1bir07RYrW963Sx7QlV6Y=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 4/5] ARM: decompressor: prepare cache_clean_flush for doing
 by-VA maintenance
Date: Wed, 26 Feb 2020 17:57:37 +0100
Message-Id: <20200226165738.11201-5-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226165738.11201-1-ardb@kernel.org>
References: <20200226165738.11201-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_085756_291331_4FCC7D27 
X-CRM114-Status: GOOD (  10.94  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi@vger.kernel.org, Nicolas Pitre <nico@fluxnic.net>,
 Tony Lindgren <tony@atomide.com>, Marc Zyngier <maz@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation for turning the decompressor's cache clean/flush
operations into proper by-VA maintenance for v7 cores, pass the
start and end addresses of the regions that need cache maintenance
into cache_clean_flush in registers r0 and r1.

Currently, all implementations of cache_clean_flush ignore these
values, so no functional change is expected as a result of this
patch.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/boot/compressed/head.S | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index d45952aae2b5..f90034151aef 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -528,6 +528,8 @@ dtb_check_done:
 		/* Preserve offset to relocated code. */
 		sub	r6, r9, r6
 
+		mov	r0, r9			@ start of relocated zImage
+		add	r1, sp, r6		@ end of relocated zImage
 #ifndef CONFIG_ZBOOT_ROM
 		/* cache_clean_flush may use the stack, so relocate it */
 		add	sp, sp, r6
@@ -629,6 +631,11 @@ not_relocated:	mov	r0, #0
 		add	r2, sp, #0x10000	@ 64k max
 		mov	r3, r7
 		bl	decompress_kernel
+
+		get_inflated_image_size	r1, r2, r3
+
+		mov	r0, r4			@ start of inflated image
+		add	r1, r1, r0		@ end of inflated image
 		bl	cache_clean_flush
 		bl	cache_off
 
@@ -1182,6 +1189,9 @@ __armv7_mmu_cache_off:
 /*
  * Clean and flush the cache to maintain consistency.
  *
+ * On entry,
+ *  r0 = start address
+ *  r1 = end address (exclusive)
  * On exit,
  *  r1, r2, r3, r9, r10, r11, r12 corrupted
  * This routine must preserve:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
