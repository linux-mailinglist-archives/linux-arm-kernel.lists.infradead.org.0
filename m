Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0AC9D079
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 15:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tkwhm80a3/neSBQ2GJ+/lwswxnCDouiMzs8YQxL4HA=; b=eB/eqvc9w1qfd3
	WBNriOVlFtFS8ASdzalDNbWCyTGvhpWv5NiKrBK0FQU8tSUguD/ywvd/pQFHLKmLG7Gp7Y3hkHzSA
	vXvdk1Iu0IO1oF4q6zzUHG4W3X8HEqgMMVLsZ0rbbVSzoFq+gHOXv6Tc6oCj3MvFbZq2SJz5sh0Ql
	1fUuSDdS2bOCrY8CH6ampgULNegA2Shkl/XXXU8+QXaOsQjrDxZpB8TXbhspfStBYqqlUAqOjlQyr
	9BmNaqiuyQYqDx1Q1TkMSf3rz1P91ivTWMlR8CAHwaTJWITUz8uaeNg5oVLUrAF0DYhAc+sLDymZ7
	zkW+A2istbLiS5Xi4ZsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2F1S-0008NX-2Q; Mon, 26 Aug 2019 13:27:02 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i2F0U-0007uY-Cm; Mon, 26 Aug 2019 13:26:02 +0000
From: Christoph Hellwig <hch@lst.de>
To: iommu@lists.linux-foundation.org
Subject: [PATCH 2/6] arm-nommu: remove the unused pgprot_dmacoherent define
Date: Mon, 26 Aug 2019 15:25:49 +0200
Message-Id: <20190826132553.4116-3-hch@lst.de>
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

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/include/asm/pgtable-nommu.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/include/asm/pgtable-nommu.h b/arch/arm/include/asm/pgtable-nommu.h
index 0b1f6799a32e..d0de24f06724 100644
--- a/arch/arm/include/asm/pgtable-nommu.h
+++ b/arch/arm/include/asm/pgtable-nommu.h
@@ -62,7 +62,6 @@ typedef pte_t *pte_addr_t;
  */
 #define pgprot_noncached(prot)	(prot)
 #define pgprot_writecombine(prot) (prot)
-#define pgprot_dmacoherent(prot) (prot)
 #define pgprot_device(prot)	(prot)
 
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
