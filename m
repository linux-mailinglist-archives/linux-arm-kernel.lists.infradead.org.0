Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0003114623F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 08:05:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oULrUXdgxTWzIQWMydBDzSJ425NSpckrLhlpO/PFkHs=; b=sks3aBD1FtZJmy
	yiNmcX2WcSLG0J9UaUldxgScb6YRSO2fgwhOjYekbt95S4IIwskCk8g+EGXayo+2nHzIVqEkEZw9a
	otAIFV1ptQLODAwyJDQc2SxVVGejsJMfC4PLTN3j6vJYbkKHrMmyikDrn5jyHRAcoeMRmyZ5Yh2/e
	vWdJ3r378qKzvcrwtL0uPDtpOUoZCDLLug+BAYAkuR6+19wXDkglE7MhNiezL/vvtZ7XNhBNe74LM
	Adj2lYhfRLkiBG5T/GUbRVx2mT037LhnxIJvgDRpmM4ga41ZncYg4t4r1c0U0wn32VuSqnpHk1ujA
	6gGsqVP1bg5GPjM/jivA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuWYW-0000RJ-Bm; Thu, 23 Jan 2020 07:05:32 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuWYL-0000Np-VM
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 07:05:23 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 4FCF3AEBE20CF7D75747;
 Thu, 23 Jan 2020 15:05:10 +0800 (CST)
Received: from huawei.com (10.175.102.38) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Thu, 23 Jan 2020
 15:05:01 +0800
From: Xuefeng Wang <wxf.wang@hisilicon.com>
To: <catalin.marinas@arm.com>, <will@kernel.org>, <mark.rutland@arm.com>,
 <arnd@arndb.de>, <akpm@linux-foundation.org>
Subject: [PATCH 0/2] mm/thp: rework the pmd protect changing flow
Date: Thu, 23 Jan 2020 15:55:11 +0800
Message-ID: <20200123075514.15142-1-wxf.wang@hisilicon.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.102.38]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_230522_187429_04E1B049 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arch@vger.kernel.org, Xuefeng Wang <wxf.wang@hisilicon.com>,
 chenzhou10@huawei.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On KunPeng920 board. When changing permission of a large range region,
pmdp_invalidate() takes about 65% in profile (with hugepages) in JIT tool.
Kernel will flush tlb twice: first flush happens in pmdp_invalidate, second
flush happens at the end of change_protect_range(). The first pmdp_invalidate
is not necessary if the hardware support atomic pmdp changing. The atomic
changing pimd to zero can prevent the hardware from update asynchronous.
So reconstruct it and remove the first pmdp_invalidate. And the second tlb
flush can make sure the new tlb entry valid.

This patch series add a pmdp_modify_prot transaction abstraction firstly.
Then add pmdp_modify_prot_start() in arm64, which uses pmdp_huge_get_and_clear()
to atomically fetch the pmd and zero the entry.

After rework, the mprotect can get 3~13 times performace gain in range
64M to 512M on KunPeng920:

4K granule/THP on
memory size(M)	64	128	256	320	448	512
pre-patch	0.77	1.40	2.64	3.23	4.49	5.10
post-patch	0.20	0.23	0.28	0.31	0.37	0.39

Changes:
v2:
 - fix set_pmd_at compile problems

Xuefeng Wang (2):
  mm: add helpers pmdp_modify_prot_start/commit
  arm64: mm: rework the pmd protect changing flow

 arch/arm64/include/asm/pgtable.h | 14 +++++++++++++
 include/asm-generic/pgtable.h    | 35 ++++++++++++++++++++++++++++++++
 mm/huge_memory.c                 | 19 ++++++++---------
 3 files changed, 57 insertions(+), 11 deletions(-)

--
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
