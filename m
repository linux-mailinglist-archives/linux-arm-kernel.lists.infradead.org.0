Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CC6180E3F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 03:57:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+t60BHyaAWJOzqemEYL43hcCVD5cROFWPz123BXWoos=; b=RYo+uhjQqbJxB9
	jgWyZ+8II/bx+lFzMQpFGARQaKz5ALUo1T9TP3Mh0NzfFyeOc5Hv7Ro+3DpS/que819siqgw0tDg7
	dvHN/992/Wg8ma7exdCJZlbV/Stv4TzE3bpSAprbnKPtzPiO//3g+bK2bEtao4Gd0BS765GqkKdm3
	k1WPn5RLzzWkStiPg9rdbtNrMl4VvmRRCpdh+aKzuPhXj5LnU3ArZJ0YJ1VnPNSVmru6p3PPHdEu5
	HUR3Ew35Gs4HCCyovr6g5R1nTbzYvqvSgcmS2ukKCdshWPLdsVqJ8WS7tNP/u61+6/KKDAMVol6Fc
	93tQ1sjMq2+VNPGT365Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBrYi-0003xn-1v; Wed, 11 Mar 2020 02:57:24 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBrXy-0003Vg-1M
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 02:56:39 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D688528DB561F007B992;
 Wed, 11 Mar 2020 10:56:23 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.487.0; Wed, 11 Mar 2020 10:56:14 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <mark.rutland@arm.com>, <catalin.marinas@arm.com>, <will@kernel.org>,
 <aneesh.kumar@linux.ibm.com>, <maz@kernel.org>, <steven.price@arm.com>,
 <broonie@kernel.org>, <guohanjun@huawei.com>
Subject: [RFC PATCH v1 0/3] arm64: tlb: add support for TTL field
Date: Wed, 11 Mar 2020 10:53:06 +0800
Message-ID: <20200311025309.1743-1-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_195638_280257_F89EDA60 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, yezhenyu2@huawei.com,
 linux-kernel@vger.kernel.org, xiexiangyou@huawei.com, linux-mm@kvack.org,
 arm@kernel.org, prime.zeng@hisilicon.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARMv8.4-TTL provides the TTL field in tlbi instruction to indicate
the level of translation table walk holding the leaf entry for the
address that is being invalidated. Hardware can use this information
to determine if there was a risk of splintering.

This set of patches adds TTL field to __TLBI_ADDR, and uses
Architecture-specific MM context to pass the TTL value to tlb interface.

The default value of TTL is 0, which will not have any impact on the
TLB maintenance instructions. The last patch trys to use TTL field in
some obviously tlb-flush interface.

Zhenyu Ye (3):
  arm64: tlb: add TTL field to __TLBI_ADDR
  arm64: tlb: use mm_struct.context.flags to indicate TTL
  arm64: tlb: add support for TTL in some functions

 arch/arm64/include/asm/cpucaps.h  |  3 ++-
 arch/arm64/include/asm/mmu.h      | 11 ++++++++++
 arch/arm64/include/asm/sysreg.h   |  4 ++++
 arch/arm64/include/asm/tlb.h      |  3 +++
 arch/arm64/include/asm/tlbflush.h | 35 +++++++++++++++++++++++--------
 arch/arm64/kernel/cpufeature.c    | 10 +++++++++
 arch/arm64/kernel/sys_compat.c    |  2 +-
 arch/arm64/mm/hugetlbpage.c       |  2 ++
 8 files changed, 59 insertions(+), 11 deletions(-)

-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
