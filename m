Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE504CD16C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 12:47:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1oqcG61ZlWzwbHlc72NnF/oBCvqth4JUgndFzst3NLg=; b=JR2ipiF/7GjDyE
	K8iMW/CX+YxQA7O0cb8O6JUQ88y9piMU/37FD85NKaZ9DaFID1x2KFgbPGik4/lxgatd3OIZaYR3J
	XAQ+idXaeKd4JlarDbjgdgnI9zJIwgA3s7Vi/c0nD0jP4+HvLJrlWsZh0tXed8iKNY7fh2XHRM8y0
	PWieBBMR9WlgOGJf1fUgL8LQLNM8ShLFqTRe3qdBhVrTsjKTBQPku3UMZ0wy6RL1C3BSQS5VTwUEc
	DRwY56NhkO7UQ6wBkEp0nZK9eoryVH0wKdy24RKdjvzuA4zZV0byJFJQI3iAP7OhpXAici4TrtvuP
	RE6tpbSruTSpjZc1uoJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH44q-00068J-An; Sun, 06 Oct 2019 10:47:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH44E-0005ga-8R
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 10:47:11 +0000
Received: from localhost.localdomain (82-132-217-85.dab.02.net [82.132.217.85])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE3C32084D;
 Sun,  6 Oct 2019 10:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570358829;
 bh=Kbjk8U9KY83YtrC+Vj1iMZXkRW6yshTSizjEOBVjj3c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mez2mYzED96KqrhBz67wivD2jw1wIwdikf3GrsDkzHasjg5QTgXSnijiFwjnfUbJy
 q13TxPAqD2mC4KN2lk89SDpLrAzbDj7P7FgMLg58iOXMyDyMTEIVHiS5U0hEnPsyow
 r6xpj6r4VNBE1Bvan82NC5l+sIsAwQ9Ok7USMXS0=
From: maz@kernel.org
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 3/3] KVM: arm64: pmu: Reset sample period on overflow handling
Date: Sun,  6 Oct 2019 11:46:36 +0100
Message-Id: <20191006104636.11194-4-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191006104636.11194-1-maz@kernel.org>
References: <20191006104636.11194-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_034710_339785_6BCF400F 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 James Morse <james.morse@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <maz@kernel.org>

The PMU emulation code uses the perf event sample period to trigger
the overflow detection. This works fine  for the *first* overflow
handling, but results in a huge number of interrupts on the host,
unrelated to the number of interrupts handled in the guest (a x20
factor is pretty common for the cycle counter). On a slow system
(such as a SW model), this can result in the guest only making
forward progress at a glacial pace.

It turns out that the clue is in the name. The sample period is
exactly that: a period. And once the an overflow has occured,
the following period should be the full width of the associated
counter, instead of whatever the guest had initially programed.

Reset the sample period to the architected value in the overflow
handler, which now results in a number of host interrupts that is
much closer to the number of interrupts in the guest.

Fixes: b02386eb7dac ("arm64: KVM: Add PMU overflow interrupt routing")
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/pmu.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
index c30c3a74fc7f..3ca4761fc0f5 100644
--- a/virt/kvm/arm/pmu.c
+++ b/virt/kvm/arm/pmu.c
@@ -444,6 +444,18 @@ static void kvm_pmu_perf_overflow(struct perf_event *perf_event,
 	struct kvm_pmc *pmc = perf_event->overflow_handler_context;
 	struct kvm_vcpu *vcpu = kvm_pmc_to_vcpu(pmc);
 	int idx = pmc->idx;
+	u64 val, period;
+
+	/* Start by resetting the sample period to the architectural limit */
+	val = kvm_pmu_get_pair_counter_value(vcpu, pmc);
+
+	if (kvm_pmu_idx_is_64bit(vcpu, pmc->idx))
+		period = (-val) & GENMASK(63, 0);
+	else
+		period = (-val) & GENMASK(31, 0);
+
+	pmc->perf_event->attr.sample_period = period;
+	pmc->perf_event->hw.sample_period = period;
 
 	__vcpu_sys_reg(vcpu, PMOVSSET_EL0) |= BIT(idx);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
