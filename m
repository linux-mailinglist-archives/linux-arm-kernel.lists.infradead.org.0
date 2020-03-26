Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C31EF1944DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 18:01:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GIdpbq3J/pv6MLGhgZqDDT/POBlF8fv2+2p8X7JUiYw=; b=UKoaBeo/QOVb7UdNY/+53B2Acu
	qcgeDtrjqw8jwTiHsJ5rgtyoSVDvE/vJX1SDJvbzmxV1vTHnoQF1FW81IroO7BktIMxJRepVFOwai
	b0Lyz14qz8Wa7AzPHeZbltSX7s7onRFuSB74MSqziFwqP47ANBilvT492PUyZLRqpiVpRo4SF8m/I
	aQAc8VZi6oGLqcOvF8BeLOMKxdbFY6y+L1SRhow9IogpyZ6t69q3QpMvRX+nESWMilNTjrOOauyJx
	wU89Us49I/FUgGvakX5TRUuJY3CrsRwYBT4Dm3u0/AaH5MCFOlWRcvvOVybBMlVGonqZmzbu6urDg
	IDd+ziLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHVsn-0005ss-6C; Thu, 26 Mar 2020 17:01:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHVrK-00049M-26
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 16:59:59 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71EC820775;
 Thu, 26 Mar 2020 16:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585241997;
 bh=WqWf8eNck8zzklsL8CT7yC/cR29ZkC/4yp+5+cuQni8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=z0JnADcL7reZbpz2hS+behuXijTSO5D3D6TN1XmyNf2f8lE/s4Ts8WVIsGRuOhfpq
 14b3oQo3fo+Wzr+Ie1w2FNxfrODOwCMqikbRV8BevLNapovPLZU6giqlJS37FXYl8D
 W/fKY9ZhTiIBEitSv8SenlLeNGZi87vpRfCPeSv8=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] efi/arm64: increase the PE/COFF alignment so the kernel
 can run in place
Date: Thu, 26 Mar 2020 17:59:05 +0100
Message-Id: <20200326165905.2240-3-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326165905.2240-1-ardb@kernel.org>
References: <20200326165905.2240-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_095958_144502_8C34F69B 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
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

Update the PE/COFF metadata so that the UEFI image loader will load the
kernel image at an offset that allows it to execute in place.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm64/kernel/efi-header.S | 2 +-
 arch/arm64/kernel/image-vars.h | 7 +++++++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/efi-header.S b/arch/arm64/kernel/efi-header.S
index 914999ccaf8a..f9ee1c2a5fd6 100644
--- a/arch/arm64/kernel/efi-header.S
+++ b/arch/arm64/kernel/efi-header.S
@@ -32,7 +32,7 @@ optional_header:
 
 extra_header_fields:
 	.quad	0					// ImageBase
-	.long	SZ_4K					// SectionAlignment
+	.long	PECOFF_SECTION_ALIGNMENT		// SectionAlignment
 	.long	PECOFF_FILE_ALIGNMENT			// FileAlignment
 	.short	0					// MajorOperatingSystemVersion
 	.short	0					// MinorOperatingSystemVersion
diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
index be0a63ffed23..7a7fa3ba7b2f 100644
--- a/arch/arm64/kernel/image-vars.h
+++ b/arch/arm64/kernel/image-vars.h
@@ -15,6 +15,13 @@
 __efistub_kernel_size		= _edata - _text;
 __efistub_primary_entry_offset	= primary_entry - _text;
 
+#ifndef CONFIG_RELOCATABLE
+PECOFF_SECTION_ALIGNMENT = SZ_4K;
+#elif THREAD_ALIGN > SEGMENT_ALIGN
+PECOFF_SECTION_ALIGNMENT = THREAD_ALIGN;
+#else
+PECOFF_SECTION_ALIGNMENT = SEGMENT_ALIGN;
+#endif
 
 /*
  * The EFI stub has its own symbol namespace prefixed by __efistub_, to
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
