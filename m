Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D3D1A7EB4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:47:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Xups1VW6xYnv7NYV16Syi4JF4gpHZzY/PKXrghCqyQI=; b=dmi
	ZXptjtSI1JKSxmOfiLHVj7BYvvCgOKq7iTKrI8CejNOV6TIBtNmlhraOJvqN8LQRKFFcACE2TfxkX
	qWryCDIUDgCgdlDJ53zNtbm+KVT46RQ1RabXJCcXlCoyC9/MBXRLplVzQ/+qBTWW0ABzEAyhPGrgg
	xP0KrvoKTdjJtUdj81tBmOUYKvgSWITE/miTYHcm5eYsSnebxDd0aeJENz6UFMIXBXsEX+8KpYCPc
	bpL71/Qwq6VAcBZ2M7ttwuRIVAEdfHGo21VJa+MTBpzzUudYUBUUccN/3BIiokVTuS4epEbkO1YRV
	lZVICDMAsWvYGPa8BkTDnKlloD+TDRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLuS-0000R2-Qa; Tue, 14 Apr 2020 13:47:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLuL-0000QH-Rw
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:47:23 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B198320578;
 Tue, 14 Apr 2020 13:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586872040;
 bh=yboJX8cNIUIDCwskHFAQG62ElLFM5Xgs0WSj1o0o1ZY=;
 h=From:To:Cc:Subject:Date:From;
 b=QSTk/MrvrMitQrxOCI+WV8cEikS6PwAPyuBwFDvEtQSxqguoMNPIa+G1XMIeMzb0U
 8ZBMNoIUmPSBNAf/7cSU0+NcRRxkJaTKQS+cfjr3OftCzXZbA6ycEhvRJuRUjl6/HC
 PohUm2xBi6wjO0PRbHk5LKcXRloilCLFR6VMlz6c=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: drop duplicate definitions of ID_AA64MMFR0_TGRAN
 constants
Date: Tue, 14 Apr 2020 15:47:06 +0200
Message-Id: <20200414134706.8435-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_064722_190894_A3B72725 
X-CRM114-Status: UNSURE (   7.19  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, will@kernel.org, Ard Biesheuvel <ardb@kernel.org>,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A bunch of ID_AA64MMFR0_TGRAN_* constant definitions appear twice
in arch/arm64/include/asm/sysreg.h, so drop the duplicates.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm64/include/asm/sysreg.h | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index ebc622432831..b7e62b4f73af 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -783,18 +783,6 @@
 #define MVFR1_FPDNAN_SHIFT		4
 #define MVFR1_FPFTZ_SHIFT		0
 
-
-#define ID_AA64MMFR0_TGRAN4_SHIFT	28
-#define ID_AA64MMFR0_TGRAN64_SHIFT	24
-#define ID_AA64MMFR0_TGRAN16_SHIFT	20
-
-#define ID_AA64MMFR0_TGRAN4_NI		0xf
-#define ID_AA64MMFR0_TGRAN4_SUPPORTED	0x0
-#define ID_AA64MMFR0_TGRAN64_NI		0xf
-#define ID_AA64MMFR0_TGRAN64_SUPPORTED	0x0
-#define ID_AA64MMFR0_TGRAN16_NI		0x0
-#define ID_AA64MMFR0_TGRAN16_SUPPORTED	0x1
-
 #if defined(CONFIG_ARM64_4K_PAGES)
 #define ID_AA64MMFR0_TGRAN_SHIFT	ID_AA64MMFR0_TGRAN4_SHIFT
 #define ID_AA64MMFR0_TGRAN_SUPPORTED	ID_AA64MMFR0_TGRAN4_SUPPORTED
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
