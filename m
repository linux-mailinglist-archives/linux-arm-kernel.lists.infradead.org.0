Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D7F6BC34
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 14:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RWB+LbUHI6E8xVMMc+hOnOEFs/Prsu4gf9fHKBpqxw8=; b=R1d7XqVLA3tbJO
	JkLcYptHUfCMpZnQv2tXChnlE1k4LfoOiKDX58OkIX4K59efNPFo44VWtzUpqizoIgV76GtRgdwV4
	V8NjSkAz9ioRffyTRLYIWle/odYlROlr7EigWvgFmqmioNe+LZNTnSGDCtXzJkv4VkaBEBuCIPnGG
	uEy/yiBIl/BO/00qNclQxeEN+2j7+ojBqOfYixG8iAxm1R2Hgz2iQ1n67UQy3TnxaQSTNzdK6TJQB
	ldKSbALj5dnp8LuYH4P65DyTUBLetLGnz3xkuccNc+5tKDILMi4JTV9AxCxSQeH8rX2CgRb5ysY1J
	tlARQp/pGZSY8hVGgopA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnixV-0007Au-KR; Wed, 17 Jul 2019 12:22:57 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnixN-00079l-Sm
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 12:22:51 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C6F9858E1C3A77E076A8;
 Wed, 17 Jul 2019 20:22:38 +0800 (CST)
Received: from HGHY2Y004646261.china.huawei.com (10.184.12.158) by
 DGGEMS406-HUB.china.huawei.com (10.3.19.206) with Microsoft SMTP Server id
 14.3.439.0; Wed, 17 Jul 2019 20:22:31 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <maz@kernel.org>, <kvmarm@lists.cs.columbia.edu>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] KVM: arm/arm64: Assign pmc->idx before kvm_pmu_stop_counter()
Date: Wed, 17 Jul 2019 12:20:19 +0000
Message-ID: <1563366019-31200-1-git-send-email-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_052250_113791_9DC36708 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: suzuki.poulose@arm.com, marc.zyngier@arm.com, julien.thierry@arm.com,
 linux-kernel@vger.kernel.org, james.morse@arm.com, andrew.murray@arm.com,
 Zenghui Yu <yuzenghui@huawei.com>, wanghaibin.wang@huawei.com,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We use "pmc->idx" and the "chained" bitmap to determine if the pmc is
chained, in kvm_pmu_pmc_is_chained().  But idx might be uninitialized
(and random) when we doing this decision, through a KVM_ARM_VCPU_INIT
ioctl -> kvm_pmu_vcpu_reset(). And the test_bit() against this random
idx will potentially hit a KASAN BUG [1].

Fix it by moving the assignment of idx before kvm_pmu_stop_counter().

[1] https://www.spinics.net/lists/kvm-arm/msg36700.html

Fixes: 80f393a23be6 ("KVM: arm/arm64: Support chained PMU counters")
Suggested-by: Andrew Murray <andrew.murray@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 virt/kvm/arm/pmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
index 3dd8238..521bfdd 100644
--- a/virt/kvm/arm/pmu.c
+++ b/virt/kvm/arm/pmu.c
@@ -225,8 +225,8 @@ void kvm_pmu_vcpu_reset(struct kvm_vcpu *vcpu)
 	struct kvm_pmu *pmu = &vcpu->arch.pmu;
 
 	for (i = 0; i < ARMV8_PMU_MAX_COUNTERS; i++) {
-		kvm_pmu_stop_counter(vcpu, &pmu->pmc[i]);
 		pmu->pmc[i].idx = i;
+		kvm_pmu_stop_counter(vcpu, &pmu->pmc[i]);
 	}
 
 	bitmap_zero(vcpu->arch.pmu.chained, ARMV8_PMU_MAX_COUNTER_PAIRS);
-- 
1.8.3.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
