Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E00EA8FBE2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 09:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5nh5eiMPOY4eG0i7+K5HzDF9bQNykK4mfUfc7K5NcQ=; b=hfCB3djXJA0tZf
	qERwbSBEZ1FTbe9RiPlV4N2Z3U3z8xaCUmelECBWZeFR3gkdbk/+2R78oNQK6xQ2UIWuNKDrXFGfZ
	Ai2q6q5Tj05FgUR6IMUzm9V3ByN0ZQqdwIaYPAvWzmzUnhK+ApSM2bBqD0+SXyuBeWoy9uqPzYKIz
	NLBuAgM+mMZxb1tgv9Bt6isd6gjOErkKrwIj2FhsG/F/plE2xC5P1KSg9v4tEghgOAyI3U1hE1DLi
	g6m2cCjdaXDF+8mYahR4nrIH4B3ogyGhKdpQQPpwoAiSEPsqGaAU0q9yE17i3SDP9tLL+g6davG4g
	T9wX4S20UVSHX5u9YkNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyWRl-0007Ei-Lf; Fri, 16 Aug 2019 07:14:50 +0000
Received: from 089144199030.atnat0008.highway.a1.net ([89.144.199.30]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hyWRY-0007Ea-2x; Fri, 16 Aug 2019 07:14:36 +0000
From: Christoph Hellwig <hch@lst.de>
To: iommu@lists.linux-foundation.org
Subject: [PATCH 2/6] unicore32: remove the unused pgprot_dmacoherent define
Date: Fri, 16 Aug 2019 09:07:50 +0200
Message-Id: <20190816070754.15653-3-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190816070754.15653-1-hch@lst.de>
References: <20190816070754.15653-1-hch@lst.de>
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

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/unicore32/include/asm/pgtable.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/unicore32/include/asm/pgtable.h b/arch/unicore32/include/asm/pgtable.h
index 9492aa304f03..126e961a8cb0 100644
--- a/arch/unicore32/include/asm/pgtable.h
+++ b/arch/unicore32/include/asm/pgtable.h
@@ -198,8 +198,6 @@ static inline pte_t pte_mkspecial(pte_t pte) { return pte; }
 	__pgprot(pgprot_val(prot) & ~PTE_CACHEABLE)
 #define pgprot_writecombine(prot)	\
 	__pgprot(pgprot_val(prot) & ~PTE_CACHEABLE)
-#define pgprot_dmacoherent(prot)	\
-	__pgprot(pgprot_val(prot) & ~PTE_CACHEABLE)
 
 #define pmd_none(pmd)		(!pmd_val(pmd))
 #define pmd_present(pmd)	(pmd_val(pmd) & PMD_PRESENT)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
