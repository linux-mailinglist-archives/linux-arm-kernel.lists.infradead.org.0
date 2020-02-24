Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED99F16A5F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 13:18:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S1lvj0NjkfuJolh5i+VTaGzQ7UOxNUi87f7ojw2K1mQ=; b=FhAUED03n90mtHhiSSQ6VWTYlS
	atbpcbLG+Cmkle5Sr9izD7EC/WbKtJhyn5QAfkAg0hxp7AOT6yDpnxj/9aJ/xc1T2ZLw9lISgJH8z
	Xy241IL746mCjIzSHjPoC+AZCwpKXeFBK08tk+3W/ZkbiKTPh9DUTUerBaZOvbmePoNgey/C6gZ+G
	rJEMwiOBA4G+TOw5TvFB+11AEstVZIWRD99hYdsUUWfOq4kbn5aMGSTgepi1EDipdFEkgpAnBbc0p
	3f6+S9S8fLZvv/OVsIDbGp+05l0R5Xr5nMvwKHGpQ6EzNGYHwVv/ppH0ZvsikKc6J++Iy0UXI2386
	cSUfISuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ChC-000054-DL; Mon, 24 Feb 2020 12:18:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6CgG-0007gC-Ky
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 12:17:49 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8C61820732;
 Mon, 24 Feb 2020 12:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582546668;
 bh=mztqZtSqiSBQKD7LlQORhwESyj6VWRq2ScqN29qp6k0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1TYTzMfjGaCDZKZcz0C6j6rLcKWqm4oEZMkn+agbSrnV3AEghJGBM3+UZaHMIiNgI
 s2Uyk7b7tGsB6uIsSM0EPIe8vWB80itfUvZHfbUGXO25498IlWSgEYJ+wGNRS4Mayf
 WsIhLyS08ppNfDcJNPh8uyG9P+Rw+nc2SjvGu72M=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v3 4/5] ARM: decompressor: prepare cache_clean_flush for doing
 by-VA maintenance
Date: Mon, 24 Feb 2020 13:17:32 +0100
Message-Id: <20200224121733.2202-5-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200224121733.2202-1-ardb@kernel.org>
References: <20200224121733.2202-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_041748_723270_E3902F44 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nicolas Pitre <nico@fluxnic.net>, Tony Lindgren <tony@atomide.com>,
 Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
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
 arch/arm/boot/compressed/head.S | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 674e55400cfd..12d631503bfa 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -533,12 +533,19 @@ dtb_check_done:
 		add	sp, sp, r6
 #endif
 
+		adr	r0, restart
+		ldr	r1, .Lclean_size
+		add	r0, r0, r6
+		add	r1, r1, r0
 		bl	cache_clean_flush
 
 		badr	r0, restart
 		add	r0, r0, r6
 		mov	pc, r0
 
+		.align	2
+.Lclean_size:	.long	_edata - restart
+
 wont_overwrite:
 /*
  * If delta is zero, we are running at the address we were linked at.
@@ -629,6 +636,11 @@ not_relocated:	mov	r0, #0
 		add	r2, sp, #0x10000	@ 64k max
 		mov	r3, r7
 		bl	decompress_kernel
+
+		get_inflated_image_size r1, r2, r3
+
+		mov	r0, r4			@ start of inflated image
+		add	r1, r1, r0		@ end of inflated image
 		bl	cache_clean_flush
 		bl	cache_off
 
@@ -1182,6 +1194,9 @@ __armv7_mmu_cache_off:
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
