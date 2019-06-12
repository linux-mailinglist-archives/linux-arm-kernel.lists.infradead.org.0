Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A66A42D7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 19:30:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rgr5zm0RmDtSDlvInLoW/841Nqe5rUBzmI9oBzFztV4=; b=rJrT3O3G0ag2nx
	kNzkW9hVhJn7QS40/yPhPYo9WJ/fX+K5B3idnNiE+VEH8OcyfI65p256zdSDD3zhLTMQTXby/eyUb
	GsKfxKJOZctD61xGy///seBQ9ER6rUMDvkHn6mJP9vBvFn46EASo22w8ewKvtUUk+5TH7gujxVm1P
	cZJ3IqrB474aD2ODjhMDQtQ/k/JhqyDIHRwffR6HaS/NrxUwZ7JyhhgkphWemxEcNNTINd302sRKv
	fxsRu9KRPW1ebfm5MczrE49v5TJF8vHyvJKeVkKfufie+2qD89VBYW22v9SKjaHzYqk4Dml1pURR5
	bY1dMLzQYJQOamh/5bRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb74d-0008NT-Ak; Wed, 12 Jun 2019 17:30:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb720-0006Bp-0d
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 17:27:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9ABF8C84;
 Wed, 12 Jun 2019 10:27:27 -0700 (PDT)
Received: from capper-debian.arm.com (unknown [10.37.13.15])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EDF013F246;
 Wed, 12 Jun 2019 10:27:25 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 08/10] arm64: mm: Modify calculation of VMEMMAP_SIZE
Date: Wed, 12 Jun 2019 18:26:56 +0100
Message-Id: <20190612172658.28522-9-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190612172658.28522-1-steve.capper@arm.com>
References: <20190612172658.28522-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_102728_289338_9FDCDA98 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, marc.zyngier@arm.com,
 catalin.marinas@arm.com, bhsharma@redhat.com, will.deacon@arm.com
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
---
 arch/arm64/include/asm/memory.h | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index 1c37b2620bb4..d0fe2fa9169d 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -37,8 +37,15 @@
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
