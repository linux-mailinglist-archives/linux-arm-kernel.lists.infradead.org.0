Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3614DDDE09
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 12:13:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZqOUoUMjXlafonlGgLwyki9RKJidYUl66ljGyqpJ7b4=; b=uw3szPhb4JL/uu
	tr5EsUMUCvaz1ZjtQ8MU0gNrxV1YDX63xCb99DF+ye7AeQ4sTl+Pda+80cSsKJm6Izcs3pwYf1uz9
	J7yBFezpAPY1wpXnv5ahI+2reuzSyKAJG1JeA+h3fzDbs9wpS0vZaMf4peya3TV/H1VWNi7uJFRz5
	0pW8m2slp3B5nnJ6Ol9j+weTkmzZ9e6a+f5BJ5Vn7fRdP0paBI2Lc9MhCJvzLXTixekeP2GUGVZ+y
	jpHcapqe6CptP0QREQTekbxiIB/LOGxRUZ/ZVvHzgf+UPGBn51Ad+euuwENvTppRFeAj7c/s2gItr
	6rbvVanyhRkw9Z6JG5Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM8C1-0004gz-AZ; Sun, 20 Oct 2019 10:12:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM8Bb-0004Ld-SE
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 10:11:45 +0000
Received: from big-swifty.lan (78.163-31-62.static.virginmediabusiness.co.uk
 [62.31.163.78])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 59CEF222BD;
 Sun, 20 Oct 2019 10:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571566303;
 bh=Syg7JpTSjO3UDfWlqULqNwmrn1vfNkZUjqNdeFNbT8c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=t1nAb5ChLYmSWCc2pr0VVskYWZu2pdancAXCgfmvHAw4nfVbhLMAr9pfMBkL/+JGx
 E16M4+CSRQxIwt5DQaAjg137rwxJ9kz1n3foB8ty/1U0BHwkDJ+qbvUHOzdDkPExBV
 q7bB3qIjiwhVHYEdJgaiz4Qr/I3Lo64SZZo/o6ak=
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 3/4] KVM: arm64: pmu: Set the CHAINED attribute before
 creating the in-kernel event
Date: Sun, 20 Oct 2019 11:11:28 +0100
Message-Id: <20191020101129.2612-4-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191020101129.2612-1-maz@kernel.org>
References: <20191020101129.2612-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_031143_934468_75D97B5A 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Andrew Murray <andrew.murray@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current convention for KVM to request a chained event from the
host PMU is to set bit[0] in attr.config1 (PERF_ATTR_CFG1_KVM_PMU_CHAINED).

But as it turns out, this bit gets set *after* we create the kernel
event that backs our virtual counter, meaning that we never get
a 64bit counter.

Moving the setting to an earlier point solves the problem.

Fixes: 80f393a23be6 ("KVM: arm/arm64: Support chained PMU counters")
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/pmu.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
index c30c3a74fc7f..f291d4ac3519 100644
--- a/virt/kvm/arm/pmu.c
+++ b/virt/kvm/arm/pmu.c
@@ -569,12 +569,12 @@ static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
 		 * high counter.
 		 */
 		attr.sample_period = (-counter) & GENMASK(63, 0);
+		if (kvm_pmu_counter_is_enabled(vcpu, pmc->idx + 1))
+			attr.config1 |= PERF_ATTR_CFG1_KVM_PMU_CHAINED;
+
 		event = perf_event_create_kernel_counter(&attr, -1, current,
 							 kvm_pmu_perf_overflow,
 							 pmc + 1);
-
-		if (kvm_pmu_counter_is_enabled(vcpu, pmc->idx + 1))
-			attr.config1 |= PERF_ATTR_CFG1_KVM_PMU_CHAINED;
 	} else {
 		/* The initial sample period (overflow count) of an event. */
 		if (kvm_pmu_idx_is_64bit(vcpu, pmc->idx))
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
