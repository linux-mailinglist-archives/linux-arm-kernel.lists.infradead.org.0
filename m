Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9E510C2BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 04:10:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wFvVUjYxbcW4ODRqUHQr6gUrrT2U93qMgTxyQS1t/Tw=; b=X68mT1fbX2jRf7
	avmI+jEQgKGYUkd+Zl2RDcGOv5MvYnnBsq0m42EZnaZWxdFtfAGObS5CbVX8sP5ZZEwjjJOCZPHnH
	as1l8fGaSVrarePhFTupARGIQH18y62mwDpQISQWVguR6980iFXlEvBFzK/KJBrhlMvN6emuvp8R9
	dZIthQHxqHANXei73sGh8yrmmPoUmD43YOFcWnFOdBqTfJxp0bXVoQTn2NofnA6rA3o1WfCCMpA6a
	izphlaP2Du+Nz0+1FLo4Q6h7Qxq624jSaUOoeoobELax8oauHY/DZPp7qITkdOldIpS4lXFUnUPI6
	nj07nq7Lb7XlKFqhXx/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaABu-0002ZM-HF; Thu, 28 Nov 2019 03:10:02 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaABg-0002Y7-Ol
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 03:09:50 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 856BAF4DD1C48B2C5754;
 Thu, 28 Nov 2019 11:09:46 +0800 (CST)
Received: from huawei.com (10.175.105.18) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Thu, 28 Nov 2019
 11:09:39 +0800
From: linmiaohe <linmiaohe@huawei.com>
To: <maz@kernel.org>, <pbonzini@redhat.com>, <rkrcmar@redhat.com>,
 <james.morse@arm.com>, <julien.thierry.kdev@gmail.com>,
 <suzuki.poulose@arm.com>, <christoffer.dall@arm.com>,
 <catalin.marinas@arm.com>, <eric.auger@redhat.com>,
 <gregkh@linuxfoundation.org>, <will@kernel.org>, <andre.przywara@arm.com>,
 <tglx@linutronix.de>
Subject: [PATCH] KVM: arm64: get rid of var ret and out jump label in
 kvm_arch_vcpu_ioctl_set_guest_debug()
Date: Thu, 28 Nov 2019 11:09:42 +0800
Message-ID: <1574910582-14405-1-git-send-email-linmiaohe@huawei.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.175.105.18]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_190948_971428_37344F1F 
X-CRM114-Status: GOOD (  10.42  )
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
Cc: linmiaohe@huawei.com, kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Miaohe Lin <linmiaohe@huawei.com>

The var ret and out jump label is not really needed. Clean them
up.
Signed-off-by: Miaohe Lin <linmiaohe@huawei.com>
---
 arch/arm64/kvm/guest.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index 2fff06114a8f..3b836c91609e 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -834,14 +834,10 @@ int kvm_arch_vcpu_ioctl_translate(struct kvm_vcpu *vcpu,
 int kvm_arch_vcpu_ioctl_set_guest_debug(struct kvm_vcpu *vcpu,
 					struct kvm_guest_debug *dbg)
 {
-	int ret = 0;
-
 	trace_kvm_set_guest_debug(vcpu, dbg->control);
 
-	if (dbg->control & ~KVM_GUESTDBG_VALID_MASK) {
-		ret = -EINVAL;
-		goto out;
-	}
+	if (dbg->control & ~KVM_GUESTDBG_VALID_MASK)
+		return -EINVAL;
 
 	if (dbg->control & KVM_GUESTDBG_ENABLE) {
 		vcpu->guest_debug = dbg->control;
@@ -856,8 +852,7 @@ int kvm_arch_vcpu_ioctl_set_guest_debug(struct kvm_vcpu *vcpu,
 		vcpu->guest_debug = 0;
 	}
 
-out:
-	return ret;
+	return 0;
 }
 
 int kvm_arm_vcpu_arch_set_attr(struct kvm_vcpu *vcpu,
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
