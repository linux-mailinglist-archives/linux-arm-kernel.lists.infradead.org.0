Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E95ADA78
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 15:52:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/X/Own4FhfcJsenfrTWiBFEE0/YEzKHvx9vWSyIc3II=; b=pO0FIPbZZFz+fz
	9ubvOugj2MlcwANFvShTu+zh61M7HsCz9h9fOmnW04i4c8JJ41cZgtxrODGFtbw07/V9toJ6Y1tiZ
	bmPxnRjsfEQil5ubuLapbwexLEi4jM6oL30uqHQfij7XmUoZyf0RY4Rj2QYd/LILms1m036D0rmBC
	FyE7/B71u+mJykb+Mucbr9lv2EF43i2XxaGvq8TcBr0sA4PP51fTPXguAGOspZ2ZY/iKvsHcG1XgE
	O+sQp9IEULxzsR+BYtQhwv/6fnhb/gcFV0jIAuDvO0kbgK9q/DsDGqinMHFxzC/dhro9Y9cQf7SA9
	3SNT2JTNjoBh4L9EFU8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7K60-0006cu-UA; Mon, 09 Sep 2019 13:52:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7K2m-0002jT-Ix
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 13:49:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 30E621B8E;
 Mon,  9 Sep 2019 06:49:24 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 126283F59C;
 Mon,  9 Sep 2019 06:49:21 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 13/17] KVM: Call kvm_arch_vcpu_blocking early into the
 blocking sequence
Date: Mon,  9 Sep 2019 14:48:03 +0100
Message-Id: <20190909134807.27978-14-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190909134807.27978-1-maz@kernel.org>
References: <20190909134807.27978-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_064924_692979_9E9DFDC1 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Andre Przywara <andre.przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When a vpcu is about to block by calling kvm_vcpu_block, we call
back into the arch code to allow any form of synchronization that
may be required at this point (SVN stops the AVIC, ARM synchronises
the VMCR and enables GICv4 doorbells). But this synchronization
comes in quite late, as we've potentially waited for halt_poll_ns
to expire.

Instead, let's move kvm_arch_vcpu_blocking() to the beginning of
kvm_vcpu_block(), which on ARM has several benefits:

- VMCR gets synchronised early, meaning that any interrupt delivered
  during the polling window will be evaluated with the correct guest
  PMR
- GICv4 doorbells are enabled, which means that any guest interrupt
  directly injected during that window will be immediately recognised

Tang Nianyao ran some tests on a GICv4 machine to evaluate such
change, and reported up to a 10% improvement for netperf:

<quote>
	netperf result:
	D06 as server, intel 8180 server as client
	with change:
	package 512 bytes - 5500 Mbits/s
	package 64 bytes - 760 Mbits/s
	without change:
	package 512 bytes - 5000 Mbits/s
	package 64 bytes - 710 Mbits/s
</quote>

Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/kvm_main.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index c6a91b044d8d..e6de3159e682 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -2321,6 +2321,8 @@ void kvm_vcpu_block(struct kvm_vcpu *vcpu)
 	bool waited = false;
 	u64 block_ns;
 
+	kvm_arch_vcpu_blocking(vcpu);
+
 	start = cur = ktime_get();
 	if (vcpu->halt_poll_ns && !kvm_arch_no_poll(vcpu)) {
 		ktime_t stop = ktime_add_ns(ktime_get(), vcpu->halt_poll_ns);
@@ -2341,8 +2343,6 @@ void kvm_vcpu_block(struct kvm_vcpu *vcpu)
 		} while (single_task_running() && ktime_before(cur, stop));
 	}
 
-	kvm_arch_vcpu_blocking(vcpu);
-
 	for (;;) {
 		prepare_to_swait_exclusive(&vcpu->wq, &wait, TASK_INTERRUPTIBLE);
 
@@ -2355,9 +2355,8 @@ void kvm_vcpu_block(struct kvm_vcpu *vcpu)
 
 	finish_swait(&vcpu->wq, &wait);
 	cur = ktime_get();
-
-	kvm_arch_vcpu_unblocking(vcpu);
 out:
+	kvm_arch_vcpu_unblocking(vcpu);
 	block_ns = ktime_to_ns(cur) - ktime_to_ns(start);
 
 	if (!vcpu_valid_wakeup(vcpu))
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
