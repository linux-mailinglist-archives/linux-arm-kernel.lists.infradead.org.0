Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4026418430C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:00:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AcjCYkkFHNjFL6TPZSo53TUvdbvB9MQQEYVIx06luZE=; b=dzTv0LS1zp48z6
	A0NA43/NERtmXx90z4MsgCL3MC+kdoRg1iv6CjX60mrIlGyfPtnhXGqJYkDVsNY84Kp2355ErFpXp
	3IlVql4cZrzb7nEpkccNF7e+oAhMG7ZVcCdjGpsYZaKE7WyoTOLDBTM3ssO70c9D55582MLIEhWY8
	0pgR0xECBZR3s297FF4Ec2IrNM177JO1yTdkzlX7WHAWTxTHyTMAEuiMAAMtvKREVCkPg/nBcjTcw
	tc0UktBpdTK3zMur1ucB7INRpOkBhuwlWwoXWuAyihNcjX2YngvzzHBMvvVV+OpO88DIest60UtUO
	eMK30bRK79LXb4ababDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgBW-0006aB-Uc; Fri, 13 Mar 2020 09:00:50 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgBH-0006Oz-FX
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 09:00:38 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 628A81046C273E8B1C8A;
 Fri, 13 Mar 2020 17:00:23 +0800 (CST)
Received: from huawei.com (10.175.105.18) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.487.0; Fri, 13 Mar 2020
 17:00:19 +0800
From: linmiaohe <linmiaohe@huawei.com>
To: <maz@kernel.org>
Subject: [PATCH RESEND] KVM: arm: fix missing free_percpu_irq in
 kvm_timer_hyp_init()
Date: Fri, 13 Mar 2020 17:03:09 +0800
Message-ID: <1584090189-20301-1-git-send-email-linmiaohe@huawei.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.175.105.18]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_020037_362203_0A06271F 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Miaohe Lin <linmiaohe@huawei.com>

When host_ptimer_irq request irq resource failed, we forget to release the
host_vtimer_irq resource already requested. Fix this missing irq release
and other similar scenario.

Fixes: 9e01dc76be6a ("KVM: arm/arm64: arch_timer: Assign the phys timer on VHE systems")
Signed-off-by: Miaohe Lin <linmiaohe@huawei.com>
---
 virt/kvm/arm/arch_timer.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/virt/kvm/arm/arch_timer.c b/virt/kvm/arm/arch_timer.c
index e2bb5bd60227..fe958255ae2b 100644
--- a/virt/kvm/arm/arch_timer.c
+++ b/virt/kvm/arm/arch_timer.c
@@ -935,7 +935,7 @@ int kvm_timer_hyp_init(bool has_gic)
 					    kvm_get_running_vcpus());
 		if (err) {
 			kvm_err("kvm_arch_timer: error setting vcpu affinity\n");
-			goto out_free_irq;
+			goto out_free_vtime_irq;
 		}
 
 		static_branch_enable(&has_gic_active_state);
@@ -960,7 +960,7 @@ int kvm_timer_hyp_init(bool has_gic)
 		if (err) {
 			kvm_err("kvm_arch_timer: can't request ptimer interrupt %d (%d)\n",
 				host_ptimer_irq, err);
-			return err;
+			goto out_free_vtime_irq;
 		}
 
 		if (has_gic) {
@@ -968,7 +968,7 @@ int kvm_timer_hyp_init(bool has_gic)
 						    kvm_get_running_vcpus());
 			if (err) {
 				kvm_err("kvm_arch_timer: error setting vcpu affinity\n");
-				goto out_free_irq;
+				goto out_free_ptime_irq;
 			}
 		}
 
@@ -977,14 +977,17 @@ int kvm_timer_hyp_init(bool has_gic)
 		kvm_err("kvm_arch_timer: invalid physical timer IRQ: %d\n",
 			info->physical_irq);
 		err = -ENODEV;
-		goto out_free_irq;
+		goto out_free_vtime_irq;
 	}
 
 	cpuhp_setup_state(CPUHP_AP_KVM_ARM_TIMER_STARTING,
 			  "kvm/arm/timer:starting", kvm_timer_starting_cpu,
 			  kvm_timer_dying_cpu);
 	return 0;
-out_free_irq:
+
+out_free_ptime_irq:
+	free_percpu_irq(host_ptimer_irq, kvm_get_running_vcpus());
+out_free_vtime_irq:
 	free_percpu_irq(host_vtimer_irq, kvm_get_running_vcpus());
 	return err;
 }
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
