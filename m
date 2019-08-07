Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CD885072
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 17:58:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qeco/Yyv/W1tFudghuo4N63LCKmsQYLKExE3alQRbVk=; b=rVRS/6I0YmSedy
	K2g+sESPGlkeuSR/W/DqTEIJvLWkDZgV4Z3GniC/Pxu3hZlg3S5ZIfHUXk4oxkbnkYjfOY2Kx0dmv
	EOFT3YG8ZtreFSfvyq0aHbIHUzrK66PElqp1W+29aAoytJlv8JA3kl4PRZYLQuElpx6LXJOmuwfmI
	tWKQ9zjXVaX8JP62b6qo6HwSATybR5iq+som/CwGU5Kp2poEGCzY9V6IpEuTUlRfu3jljpvbBkb52
	ROO78F7CplYZSkpNU7JNzwqJRKI/yBblkVSZMtlK2IraP6jM/WW/LcqT7U0/6iu6fp9BzQHZQzz1p
	JRCRw+cT3APFHaV/QnBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOKd-00007l-WA; Wed, 07 Aug 2019 15:58:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOIA-0006Wv-KO
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 15:56:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 503E3344;
 Wed,  7 Aug 2019 08:55:58 -0700 (PDT)
Received: from capper-ampere.manchester.arm.com
 (capper-ampere.manchester.arm.com [10.32.98.74])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 232FC3F706;
 Wed,  7 Aug 2019 08:55:57 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V5 09/12] arm64: mm: Modify calculation of VMEMMAP_SIZE
Date: Wed,  7 Aug 2019 16:55:21 +0100
Message-Id: <20190807155524.5112-10-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190807155524.5112-1-steve.capper@arm.com>
References: <20190807155524.5112-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_085558_960871_22DF5538 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, catalin.marinas@arm.com,
 bhsharma@redhat.com, Steve Capper <steve.capper@arm.com>, maz@kernel.org,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In a later patch we will need to have a slightly larger VMEMMAP region
to accommodate boot time selection between 48/52-bit kernel VAs.

This patch modifies the formula for computing VMEMMAP_SIZE to depend
explicitly on the PAGE_OFFSET and start of kernel addressable memory.
(This allows for a slightly larger direct linear map in future).

Signed-off-by: Steve Capper <steve.capper@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/include/asm/memory.h | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index 91ba2cef095a..2d5c57d13572 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -26,8 +26,15 @@
 /*
  * VMEMMAP_SIZE - allows the whole linear region to be covered by
  *                a struct page array
+ *
+ * If we are configured with a 52-bit kernel VA then our VMEMMAP_SIZE
+ * neads to cover the memory region from the beginning of the 52-bit
+ * PAGE_OFFSET all the way to VA_START for 48-bit. This allows us to
+ * keep a constant PAGE_OFFSET and "fallback" to using the higher end
+ * of the VMEMMAP where 52-bit support is not available in hardware.
  */
-#define VMEMMAP_SIZE (UL(1) << (VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT))
+#define VMEMMAP_SIZE ((_VA_START(VA_BITS_MIN) - PAGE_OFFSET) \
+			>> (PAGE_SHIFT - STRUCT_PAGE_MAX_SHIFT))
 
 /*
  * PAGE_OFFSET - the virtual address of the start of the linear map (top
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
