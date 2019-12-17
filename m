Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 898CB12289B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 11:24:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KVfQVsVIg26CM1SNrWsZvCp4f+ZYbZGt4Sc+vG9IgT4=; b=oDt0fUQ5qIhwLA
	RExtoFE5ByC6/HOwQbfQXnqNbCE1iRwfytgFN88ji8N6hD5Vr+Hwl+XNxgrQ9vaeEhWW0aWi3islQ
	jMd/vPzST4eslnjfL3PmNa30Hiij11shkhRzeExFmz1pqaqL+8q50jlfiVC68ompZWw4qxKY1/5Jk
	o3li6Cq7bsRxLQcB+kWxEd5OOJ2WdD4JqZmjHjKMDseX1SzF2WSN07NclxyLBC5jFUY/13YggVr7E
	0hDLLlSV4hNJm1iGcIsFoK26hUXsrnlUMMjF5XEFwdzeHROoXcL8/2SiJeilEv5x2K9qtNhw8ZRpc
	r72+dih/nf8r13QG28vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihA18-0007Sb-PE; Tue, 17 Dec 2019 10:23:50 +0000
Received: from smtp1.axis.com ([195.60.68.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihA10-0007R6-DI
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 10:23:44 +0000
IronPort-SDR: olos7RgV0aFCzW+bUUn0tK2MWoDKJsoEdL/t1GiX/kM71PMjnlnsXWjAXZLSiau3qWEvI4Lj6R
 X2sjFQfSJfg8bkB/gNmbizfkYrWeHroDKeisiU+YEaMgQtBCGRIQYWUsiIC1vUQLY1UdEugjVq
 +j9l43yK0Mhl1nCj2FTAkMKmTusAvdn527/q7slSaR5Ni2ENYzBzwT5zI8RKHGXrO+f15WL2Zc
 Ur3GXjJcV/AQXpxozLus0K7XfQL9Mg6BRBoa5mtbBlMW+hBGI4RcGn6jl2nEDzrTmSQJgZChsM
 Q9E=
X-IronPort-AV: E=Sophos;i="5.69,325,1571695200"; 
   d="scan'208";a="3670839"
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
From: Vincent Whitchurch <vincent.whitchurch@axis.com>
To: akpm@linux-foundation.org
Subject: [PATCH] asm/sections: Check for overflow in memory_contains()
Date: Tue, 17 Dec 2019 11:22:38 +0100
Message-Id: <20191217102238.14792-1-vincent.whitchurch@axis.com>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_022342_779948_E1C2ECFD 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [195.60.68.17 listed in list.dnswl.org]
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
Cc: Vincent Whitchurch <rabinv@axis.com>, treding@nvidia.com,
 linux-arm-kernel@lists.infradead.org, arnd@arndb.de,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARM uses memory_contains() from its stacktrace code via this function:

 static inline bool in_entry_text(unsigned long addr)
 {
 	return memory_contains(__entry_text_start, __entry_text_end,
 			       (void *)addr, 1);
 }

addr is taken from the stack and can be a completely invalid.  If addr
is 0xffffffff, there is an overflow in the pointer arithmetic in
memory_contains() and in_entry_text() incorrectly returns true.

Fix this by adding an overflow check.  The check is done on unsigned
longs to avoid undefined behaviour.

Signed-off-by: Vincent Whitchurch <vincent.whitchurch@axis.com>
---
 include/asm-generic/sections.h | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
index d1779d442aa5..e6e1b381c5df 100644
--- a/include/asm-generic/sections.h
+++ b/include/asm-generic/sections.h
@@ -105,7 +105,15 @@ static inline int arch_is_kernel_initmem_freed(unsigned long addr)
 static inline bool memory_contains(void *begin, void *end, void *virt,
 				   size_t size)
 {
-	return virt >= begin && virt + size <= end;
+	unsigned long membegin = (unsigned long)begin;
+	unsigned long memend = (unsigned long)end;
+	unsigned long objbegin = (unsigned long)virt;
+	unsigned long objend = objbegin + size;
+
+	if (objend < objbegin)
+		return false;
+
+	return objbegin >= membegin && objend <= memend;
 }
 
 /**
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
