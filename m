Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E2DF3415
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 17:04:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PoAnrEwSAtFpuZIKAdQhcZYyVShC+Hc3xepaIGuUs0o=; b=Blwo1XPpE2JiWN
	LnlgcBZyELx3Skze9OB+ff84z4PJUR+zV0aOedUKDUSx9XIQFnCYz5mYK4mIcj8OJvVjXwsLDmMBp
	q+Cd2mnmVikmi8mIZsP4dB0S7yjdoFPqabYnhZYDKGt1VJZC7SfzM8NcD6JvXrYpF5nwCZeypXO32
	5a7xPgNB8VrtJf9yXKAKfFq3danCwoVNbGokmO5bhihXU8p0RWvfEO3uN1d+1f39DU9pMtVW/SEph
	MmfW/TulWoeUT2rj3t7/lZF3+4TvLaTR0FMzJMCKIN70fyse/1TVBGLIWfgTBuwbrsfF3us2ck9oY
	VcvUOb8J9i+ouUkm74iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSkH2-0005jr-S7; Thu, 07 Nov 2019 16:04:40 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSkGo-0005iC-BJ
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 16:04:27 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iSkGk-0008Bm-6O; Thu, 07 Nov 2019 17:04:22 +0100
From: Marc Zyngier <maz@kernel.org>
To: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] KVM: arm64: Reduce occurence of GICv4 doorbells on
 non-oversubscribed systems
Date: Thu,  7 Nov 2019 16:04:10 +0000
Message-Id: <20191107160412.30301-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_080426_537984_4B937219 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As I was cleaning up some of the GICv4 code to make way for GICv4.1 it
occured to me that we could drastically reduce the impact of the GICv4
doorbells on systems that are not oversubscribed (each vcpu "owns" a
physical CPU).

The technique borrows its logic from the way we disable WFE trapping
when a vcpu is the only process on the CPU run-queue. If this vcpu is
the target of VLPIs, it is then beneficial not to trap blocking WFIs
and to leave the vcpu waiting for interrupts in guest state.

All we need to do here is to track whether VLPIs are associated to a
vcpu (which is easily done by using a counter that we update on MAPI,
DISCARD and MOVI).

It has been *very lightly* tested on a D05, and behaved pretty well in
my limited test cases (I get almost no doorbell at all in the non
oversubscribed case, and the usual hailstorm as soon as there is
oversubscription). I'd welcome some testing on more current HW.

Marc Zyngier (2):
  KVM: vgic-v4: Track the number of VLPIs per vcpu
  KVM: arm64: Opportunistically turn off WFI trapping when using direct
    LPI injection

 arch/arm/include/asm/kvm_emulate.h   | 4 ++--
 arch/arm64/include/asm/kvm_emulate.h | 9 +++++++--
 include/linux/irqchip/arm-gic-v4.h   | 2 ++
 virt/kvm/arm/arm.c                   | 4 ++--
 virt/kvm/arm/vgic/vgic-init.c        | 1 +
 virt/kvm/arm/vgic/vgic-its.c         | 3 +++
 virt/kvm/arm/vgic/vgic-v4.c          | 2 ++
 7 files changed, 19 insertions(+), 6 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
