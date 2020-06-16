Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE4D1FACD6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 11:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sl7RzRrdro3lgbFQ56WCyUPDZ7KTf1IN2BTgdS9Ry0k=; b=nJVbADy35fvzHz
	i68ryC0C8oQaN5STg8gEkBsri3Ivo7ZhcRP4kCXKfQJjdmTwdmvKNNrmbEW/Fvi4psxWq5zq2XmWx
	aGN9lJLwgpHPC1soouuPTt9OQWzuBWaFqOkP34T3DA7nig3n4AzXCb171teOupcmyHCh3Q5fqOvHL
	3jA5zZ6V1juA/xZ32Q6kcBEcPFP5DBz/KkWWWoWyVyL8uhlh3bnBN8ge/rw9SdHjsRD2cp9jze7Hl
	UOnPphT/SXuaMRnSBBTMpa6N7dtv8ro51nm+krS3CWkcox3z2ogwW9bdXA+xxHJyS58+D28deLHwK
	ixDYw9pqgng8k3vscBDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl83Q-0003gI-0w; Tue, 16 Jun 2020 09:38:52 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl810-0001m5-Pt
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 09:36:29 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 968F783B892EBF894D59;
 Tue, 16 Jun 2020 17:36:13 +0800 (CST)
Received: from DESKTOP-5IS4806.china.huawei.com (10.173.221.230) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.487.0; Tue, 16 Jun 2020 17:36:03 +0800
From: Keqian Zhu <zhukeqian1@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>
Subject: [PATCH 00/12] KVM: arm64: Support stage2 hardware DBM
Date: Tue, 16 Jun 2020 17:35:41 +0800
Message-ID: <20200616093553.27512-1-zhukeqian1@huawei.com>
X-Mailer: git-send-email 2.8.4.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.221.230]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_023623_060872_EE5C498C 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Sean Christopherson <sean.j.christopherson@intel.com>, liangpeng10@huawei.com,
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

Some key points:

1. Only support hardware updates of dirty status for PTEs. PMDs and PUDs
   are not involved for now.

2. About *performance*: In RFC patch, I have mentioned that for every 64GB
   memory, KVM consumes about 40ms to scan all PTEs to collect dirty log.
   
   Initially, I plan to solve this problem using parallel CPUs. However
   I faced two problems.

   The first is bottleneck of memory bandwith. Single thread will occupy
   bandwidth about 500GB/s, we can support about 4 parallel threads at
   most, so the ideal speedup ratio is low.

   The second is huge impact on other CPUs. To scan PTs quickly, I use
   smp_call_function_many, which is based on IPI, to dispatch workload
   on other CPUs. Though it can complete work in time, the interrupt is
   disabled during scaning PTs, which has huge impact on other CPUs.

   Now, I make hardware dirty log can be dynamic enabled and disabled.
   Userspace can enable it before VM migration and disable it when
   remaining dirty pages is little. Thus VM downtime is not affected. 


3. About correctness: Only add DBM bit when PTE is already writable, so
   we still have readonly PTE and some mechanisms which rely on readonly
   PTs are not broken.

4. About PTs modification races: There are two kinds of PTs modification.
   
   The first is adding or clearing specific bit, such as AF or RW. All
   these operations have been converted to be atomic, avoid covering
   dirty status set by hardware.
   
   The second is replacement, such as PTEs unmapping or changement. All
   these operations will invoke kvm_set_pte finally. kvm_set_pte have
   been converted to be atomic and we save the dirty status to underlying
   bitmap if dirty status is coverred.


Keqian Zhu (12):
  KVM: arm64: Add some basic functions to support hw DBM
  KVM: arm64: Modify stage2 young mechanism to support hw DBM
  KVM: arm64: Report hardware dirty status of stage2 PTE if coverred
  KVM: arm64: Support clear DBM bit for PTEs
  KVM: arm64: Add KVM_CAP_ARM_HW_DIRTY_LOG capability
  KVM: arm64: Set DBM bit of PTEs during write protecting
  KVM: arm64: Scan PTEs to sync dirty log
  KVM: Omit dirty log sync in log clear if initially all set
  KVM: arm64: Steply write protect page table by mask bit
  KVM: arm64: Save stage2 PTE dirty status if it is coverred
  KVM: arm64: Support disable hw dirty log after enable
  KVM: arm64: Enable stage2 hardware DBM

 arch/arm64/include/asm/kvm_host.h |  11 +
 arch/arm64/include/asm/kvm_mmu.h  |  56 +++-
 arch/arm64/include/asm/sysreg.h   |   2 +
 arch/arm64/kvm/arm.c              |  22 +-
 arch/arm64/kvm/mmu.c              | 411 ++++++++++++++++++++++++++++--
 arch/arm64/kvm/reset.c            |  14 +-
 include/uapi/linux/kvm.h          |   1 +
 tools/include/uapi/linux/kvm.h    |   1 +
 virt/kvm/kvm_main.c               |   7 +-
 9 files changed, 499 insertions(+), 26 deletions(-)

-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
