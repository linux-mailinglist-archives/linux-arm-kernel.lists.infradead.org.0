Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4022F19D2EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IbakwztlzJ3eVe8mENpOdLBA6b7Dr2x1PWRzJpp1lwM=; b=NbIkrOuV30pmQ8
	qXOm5cUqH50DQvFxRQDxQ+icBVJJlCasMnZdPoUv4roDqCSNWcnIDJTHu4csLWGOrvX/Fs9SLb4tc
	yviWV+7Uuw8v5bHDeMsNCcBpHee7Eg5NR+/yVd4phJ2vvsgI3u9O3dstOPUVfpfVwt0KPFSoPYNQd
	N41btW9jXhu5cX3o6fhA6bR4tuM8Sr4w11y68nep694mJATKm0dJkUb4wFdWZuMF8kcX/xJU6ldGD
	7chpeifmrDoEn8KhmQqsCJvA5tgtiN+9DL0JblRFQoPZEBFh1ft26f55D8X8OxyNYriEhu53QxMxS
	jsmJMv0BucZ2Ozit4bKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKICh-0004cy-OE; Fri, 03 Apr 2020 09:01:31 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKICN-0004Rw-8w
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 09:01:13 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3FEEA593A8533F9AB649;
 Fri,  3 Apr 2020 17:01:07 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.487.0; Fri, 3 Apr 2020 17:00:59 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <peterz@infradead.org>, <mark.rutland@arm.com>, <will@kernel.org>,
 <catalin.marinas@arm.com>, <aneesh.kumar@linux.ibm.com>,
 <akpm@linux-foundation.org>, <npiggin@gmail.com>, <arnd@arndb.de>,
 <rostedt@goodmis.org>, <maz@kernel.org>, <suzuki.poulose@arm.com>,
 <tglx@linutronix.de>, <yuzhao@google.com>, <Dave.Martin@arm.com>,
 <steven.price@arm.com>, <broonie@kernel.org>, <guohanjun@huawei.com>
Subject: [PATCH v1 0/6] arm64: tlb: add support for TTL feature
Date: Fri, 3 Apr 2020 17:00:42 +0800
Message-ID: <20200403090048.938-1-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_020111_942037_503E55B8 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, xiexiangyou@huawei.com,
 zhangshaokun@hisilicon.com, linux-mm@kvack.org, arm@kernel.org,
 prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to reduce the cost of TLB invalidation, the ARMv8.4 TTL
feature allows TLBs to be issued with a level allowing for quicker
invalidation.  This series provide support for this feature.

Patch 1 and Patch 2 was provided by Marc on his NV series[1] patches,
which detect the TTL feature and add __tlbi_level interface.  Patch 3
added __tlbi_user_level interface.  Patch 4 was provided by Peter and
added some mmu_gather APIs.  Patch 5 provided flush_*_tlb_range wrappers
so we can do the tlb invalidation according to the information in
struct mmu_gather.  Finally, we supported TTL feature in ARM64 by using
tlb->cleared_* in struct mmu_gather.

See patches for details, Thanks.

Marc Zyngier (2):
  arm64: Detect the ARMv8.4 TTL feature
  arm64: Add level-hinted TLB invalidation helper

Peter Zijlstra (Intel) (1):
  tlb: mmu_gather: add tlb_set_*_range APIs

Zhenyu Ye (3):
  arm64: Add tlbi_user_level TLB invalidation helper
  mm: tlb: Provide flush_*_tlb_range wrappers
  arm64: tlb: Set the TTL field in flush_tlb_range

 arch/arm64/include/asm/cpucaps.h  |  3 +-
 arch/arm64/include/asm/sysreg.h   |  1 +
 arch/arm64/include/asm/tlb.h      | 26 ++++++++++++++-
 arch/arm64/include/asm/tlbflush.h | 53 ++++++++++++++++++++++++-----
 arch/arm64/kernel/cpufeature.c    | 11 +++++++
 include/asm-generic/pgtable.h     | 12 +++++--
 include/asm-generic/tlb.h         | 55 ++++++++++++++++++++++---------
 mm/pgtable-generic.c              | 50 ++++++++++++++++++++++++++++
 8 files changed, 184 insertions(+), 27 deletions(-)

-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
