Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE171A9B8D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:58:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qRuoIPjQvGE9M/ewfRdEqyuU3lrnqszcOI2KF6BMQ2M=; b=j3PdD9o83F/dWU
	ooqp4jKRsW/e9bHc4XxRMPsNSkYsqxuGzK6SwvNUpNG5CB61ywtb8uWqq+aHYBsE0HI0KTclgmnyU
	7/SR2i6h+TYqSHWMgjYObjK46TtA4MgGcf890d4ELRsw0HOh6AFwsahPDPA2A0xV8JiH6Bvi+p0Hs
	xTqmUYNpjXlvCWicITYayk4b0joD+Zd4x5LWcygd+zK+fuMyfXAlCAdtm8xX/0ZsLE1ETsYfHrlrD
	OFjQ0wmVoDumK6aN+AWiO1QvJR1IWJ+ISPUA84KnGg9JR0Cs39qwAIbKeKNJRLIHAxy7MbYGWjNu/
	+1HHBDd0Q3fLB3SAZUmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfkN-0002Vb-3x; Wed, 15 Apr 2020 10:58:23 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfkE-0002VC-QS
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:58:16 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 6A0BE3045232E8082CF7;
 Wed, 15 Apr 2020 18:58:06 +0800 (CST)
Received: from DESKTOP-8RFUVS3.china.huawei.com (10.173.222.27) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.487.0; Wed, 15 Apr 2020 18:58:00 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <kvmarm@lists.cs.columbia.edu>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] KVM: arm64: Drop PTE_S2_MEMATTR_MASK
Date: Wed, 15 Apr 2020 18:57:46 +0800
Message-ID: <20200415105746.314-1-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_035815_016899_216D3605 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Zenghui Yu <yuzenghui@huawei.com>, maz@kernel.org, will@kernel.org,
 wanghaibin.wang@huawei.com, catalin.marinas@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The only user of PTE_S2_MEMATTR_MASK macro had been removed since
commit a501e32430d4 ("arm64: Clean up the default pgprot setting").
It has been about six years and no one has used it again.

Let's drop it.

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 arch/arm64/include/asm/pgtable-hwdef.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
index 6bf5e650da78..99315bdca0e6 100644
--- a/arch/arm64/include/asm/pgtable-hwdef.h
+++ b/arch/arm64/include/asm/pgtable-hwdef.h
@@ -190,7 +190,6 @@
  * Memory Attribute override for Stage-2 (MemAttr[3:0])
  */
 #define PTE_S2_MEMATTR(t)	(_AT(pteval_t, (t)) << 2)
-#define PTE_S2_MEMATTR_MASK	(_AT(pteval_t, 0xf) << 2)
 
 /*
  * EL2/HYP PTE/PMD definitions
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
