Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6CF9D088
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 15:28:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zjwq3T+WA5GFlPjtEDEl3Iq8UiTO/9MSk80p/vB43zY=; b=XtMZaK2n9XEJ1Q
	xXrFnTi5T0ypvfjIt5OaJPI82xPFXrRd4otQGjr/z4QV2bwBm3TRuc+DMVimDEkzuK6pQddjZ+Tgu
	B2O/ALTVT+5WVQRlMhdr59rulB7S0AfnFKMTf38EUS+faM5WxOh4WU4bddYjpUUflsrJEKiapHFdj
	sPADxVvPHR5FdcYWYiB5fSEn3EG26C2SHHIINbd8U2N5ppLGx3sAgLTzULv9TDqCj/k2wl04UaU2e
	PR4DDDlRvKn19MxqgvwaLFsk05gL1+Nng5eNM4GwKWCnlalUe2kQQ83uQjVY18YWO5NVu8OlK7krA
	h3Ul35HJuk81Vm6+Wktg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2F2p-0000t8-8s; Mon, 26 Aug 2019 13:28:27 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i2F0h-0007zP-RH; Mon, 26 Aug 2019 13:26:16 +0000
From: Christoph Hellwig <hch@lst.de>
To: iommu@lists.linux-foundation.org
Subject: [PATCH 6/6] MIPS: document mixing "slightly different CCAs"
Date: Mon, 26 Aug 2019 15:25:53 +0200
Message-Id: <20190826132553.4116-7-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190826132553.4116-1-hch@lst.de>
References: <20190826132553.4116-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: Shawn Anastasio <shawn@anastas.io>, Will Deacon <will@kernel.org>,
 linux-m68k@lists.linux-m68k.org, Guan Xuetao <gxt@pku.edu.cn>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-mips@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Based on an email from Paul Burton, quoting section 4.8 "Cacheability and
Coherency Attributes and Access Types" of "MIPS Architecture Volume 1:
Introduction to the MIPS32 Architecture" (MD00080, revision 6.01).

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/mips/Kconfig | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index fc88f68ea1ee..aff1cadeea43 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -1119,6 +1119,13 @@ config DMA_PERDEV_COHERENT
 
 config DMA_NONCOHERENT
 	bool
+	#
+	# MIPS allows mixing "slightly different" Cacheability and Coherency
+	# Attribute bits.  It is believed that the uncached access through
+	# KSEG1 and the implementation specific "uncached accelerated" used
+	# by pgprot_writcombine can be mixed, and the latter sometimes provides
+	# significant advantages.
+	#
 	select ARCH_HAS_DMA_WRITE_COMBINE
 	select ARCH_HAS_SYNC_DMA_FOR_DEVICE
 	select ARCH_HAS_UNCACHED_SEGMENT
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
