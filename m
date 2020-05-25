Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FD61E0CE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 13:26:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hj6IaJn6DUhpum+0XMkA9ad7NpVpKADEzX9Ta1ymY8g=; b=MIh6MBbvn5TsWv
	FdENs5O2m5OSl8mCWdCqhkgAUpWW1lN6BRJl2CD03haMtaqnu1qek0c8eWpTBK3dyUish0K/kkRkg
	Y9lkVZ2ESn8OAWIgDkoGfM1Wx4yZUlJLS6XpqTTVkaUCtJXKXAe/55wxzNmHfdvzhv8gX/4WLjkwG
	eOi2rS3mOZ4rhPaRp+9To0jh01YzmKNgZ5JQPos2cgy4wiCURrBrqjzpBQ3u+FHUMMS5r1a6KQ8DK
	0FvLXkUv1DKls1uLjksLIGzvUspUTBZOyo6lHGhtViU91J5lidWDi3g6M5HOJzE9fPT7RNDUnj5mE
	gGDRsb2tjcCrcnkZtsrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBFt-0007QR-9z; Mon, 25 May 2020 11:26:53 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBEN-0005gc-MS
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 11:25:23 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 5A106A0EB3F34B6CB6FB;
 Mon, 25 May 2020 19:25:04 +0800 (CST)
Received: from DESKTOP-5IS4806.china.huawei.com (10.173.221.230) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.487.0; Mon, 25 May 2020 19:24:54 +0800
From: Keqian Zhu <zhukeqian1@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>
Subject: [RFC PATCH 0/7] kvm: arm64: Support stage2 hardware DBM
Date: Mon, 25 May 2020 19:23:59 +0800
Message-ID: <20200525112406.28224-1-zhukeqian1@huawei.com>
X-Mailer: git-send-email 2.8.4.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.221.230]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_042519_937379_363CE83E 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Suzuki K
 Poulose <suzuki.poulose@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Keqian Zhu <zhukeqian1@huawei.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Alexios Zavras <alexios.zavras@intel.com>, zhengxiang9@huawei.com,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Marc Zyngier <maz@kernel.org>, wanghaibin.wang@huawei.com, Thomas
 Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series add support for stage2 hardware DBM, and it is only
used for dirty log for now.

It works well under some migration test cases, including VM with 4K
pages or 2M THP. I checked the SHA256 hash digest of all memory and
they keep same for source VM and destination VM, which means no dirty
pages is missed under hardware DBM.

However, there are some known issues not solved.

1. Some mechanisms that rely on "write permission fault" become invalid,
   such as kvm_set_pfn_dirty and "mmap page sharing".

   kvm_set_pfn_dirty is called in user_mem_abort when guest issues write
   fault. This guarantees physical page will not be dropped directly when
   host kernel recycle memory. After using hardware dirty management, we
   have no chance to call kvm_set_pfn_dirty.

   For "mmap page sharing" mechanism, host kernel will allocate a new
   physical page when guest writes a page that is shared with other page
   table entries. After using hardware dirty management, we have no chance
   to do this too.

   I need to do some survey on how stage1 hardware DBM solve these problems.
   It helps if anyone can figure it out.

2. Page Table Modification Races: Though I have found and solved some data
   races when kernel changes page table entries, I still doubt that there
   are data races I am not aware of. It's great if anyone can figure them out.

3. Performance: Under Kunpeng 920 platform, for every 64GB memory, KVM
   consumes about 40ms to traverse all PTEs to collect dirty log. It will
   cause unbearable downtime for migration if memory size is too big. I will
   try to solve this problem in Patch v1.

Keqian Zhu (7):
  KVM: arm64: Add some basic functions for hw DBM
  KVM: arm64: Set DBM bit of PTEs if hw DBM enabled
  KVM: arm64: Traverse page table entries when sync dirty log
  KVM: arm64: Steply write protect page table by mask bit
  kvm: arm64: Modify stage2 young mechanism to support hw DBM
  kvm: arm64: Save stage2 PTE dirty info if it is coverred
  KVM: arm64: Enable stage2 hardware DBM

 arch/arm64/include/asm/kvm_host.h     |   1 +
 arch/arm64/include/asm/kvm_mmu.h      |  44 +++++-
 arch/arm64/include/asm/pgtable-prot.h |   1 +
 arch/arm64/include/asm/sysreg.h       |   2 +
 arch/arm64/kvm/reset.c                |   9 +-
 virt/kvm/arm/arm.c                    |   6 +-
 virt/kvm/arm/mmu.c                    | 202 ++++++++++++++++++++++++--
 7 files changed, 246 insertions(+), 19 deletions(-)

-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
