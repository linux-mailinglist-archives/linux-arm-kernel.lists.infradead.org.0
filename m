Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F90C13687F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 08:48:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qocvv/qZ8LRD158lS8FshRyO6FObeDoamkKxv0vR3u4=; b=L8ZKRZ0UTFDnRD
	u/hX3MTuaYlNJbTntqSwQOGQc/bPIVeu7vJ0tLSgZsa3JEZU6JsptyXFtFZcK2q4FH1o/SckKSZ/9
	UVyCsdRYTA16wC4zzlmj6p+1oFGDbuZYrXIK3CviOb1G9dPNSgWQwHlZvnw7+LNOKSi8vPhKnwIC4
	5DSAtRYNas5a/z/ujQaD0hd0P18TCZ2Cgtk3++73Mndh3GVUBinvVu0glnnKC6JAHeCwAz0aXQIRU
	OkgzbTIXV1c6fQwXEHXsnS/OgAdmSi5SvvX0QK0W/4uAxoie+RKQhU/Gi0NngUM8jFnaI7vH31IxZ
	xKr9z5QZ+IBdZEzOLMIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipp1g-0003AT-3H; Fri, 10 Jan 2020 07:48:12 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipp1Z-00034H-Cm
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 07:48:07 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 40D871CBDB19189F9994;
 Fri, 10 Jan 2020 15:47:52 +0800 (CST)
Received: from [127.0.0.1] (10.173.221.31) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Fri, 10 Jan 2020
 15:47:43 +0800
To: <catalin.marinas@arm.com>, <will@kernel.org>, <anshuman.khandual@arm.com>, 
 <akpm@linux-foundation.org>, <willy@infradead.org>, <yeyunfeng@huawei.com>,
 <ard.biesheuvel@arm.com>, <tglx@linutronix.de>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
From: yeyunfeng <yeyunfeng@huawei.com>
Subject: [PATCH] arm64: mm: support setting page attributes for debug situation
Message-ID: <5a3ab728-b895-0930-9540-5e9c586e8858@huawei.com>
Date: Fri, 10 Jan 2020 15:47:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.173.221.31]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_234805_598709_435DA17C 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: hushiyuan@huawei.com, linfeilong@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When rodata_full is set or pagealloc debug is enabled, block mappings or
contiguou hints are no longer used for linear address area. Therefore,
support setting page attributes in this case is useful for debugging
memory corruption problems.

Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
---
 arch/arm64/mm/pageattr.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/mm/pageattr.c b/arch/arm64/mm/pageattr.c
index 9ce7bd9d4d9c..823143534a93 100644
--- a/arch/arm64/mm/pageattr.c
+++ b/arch/arm64/mm/pageattr.c
@@ -65,6 +65,9 @@ static int change_memory_common(unsigned long addr, int numpages,
 		WARN_ON_ONCE(1);
 	}

+	if (!numpages)
+		return 0;
+
 	/*
 	 * Kernel VA mappings are always live, and splitting live section
 	 * mappings into page mappings may cause TLB conflicts. This means
@@ -81,11 +84,18 @@ static int change_memory_common(unsigned long addr, int numpages,
 	area = find_vm_area((void *)addr);
 	if (!area ||
 	    end > (unsigned long)area->addr + area->size ||
-	    !(area->flags & VM_ALLOC))
+	    !(area->flags & VM_ALLOC)) {
+
+		/*
+		 * When rodata_full is set, or pagealloc debug is enabled,
+		 * the linear address is mapped with NO_BLOCK_MAPPINGS or
+		 * NO_CONT_MAPPINGS flags, so splitting is never needed.
+		 */
+		if (rodata_full || debug_pagealloc_enabled())
+			return __change_memory_common(start, size, set_mask,
+							clear_mask);
 		return -EINVAL;
-
-	if (!numpages)
-		return 0;
+	}

 	/*
 	 * If we are manipulating read-only permissions, apply the same
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
