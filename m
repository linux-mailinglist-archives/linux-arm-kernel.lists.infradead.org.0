Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 791F71C10B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 12:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RE1dUNXXPTwdIK69gk06Lu8hwBdBr98aB+DiXmjEZsg=; b=SE2vpAQ7ZuDoUV
	nHdeE6iX9npVjFde/pD9IqUsepmd/GhpByaU4yGoCXPk+gSVN3Wji8rzjq9kkri/osBAbAnprbUNd
	8ENQnJmuvt7z8NriXi0HJ4ESiAILKhbyiObvGzoqsjprkd6cnHwVcEom2A+DIMtPrXtkfabSTaVgd
	q6vfkTwixwfa1qvP2ecQJQ9Qyde3aLHuptsaTBdQeTX2K/i/4Mmjf5cFN/AzNIg2lA8aPiGajIqQg
	A2E1BSwmzixyZ24QZP5L9CtBysIN3eod3TTKxyk8j9IFxTN4i2tNip2s2rm9wBblay6Qq92fhanhT
	kEzWE3va7q5lTgQm1Rpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUSfO-0004yS-Jv; Fri, 01 May 2020 10:13:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUSeV-0004Ih-Aj
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 10:12:16 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DCE572184D;
 Fri,  1 May 2020 10:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588327935;
 bh=DXoc8fkRuhN56RJPXouMh3r3Jq2M8pkSWeb8MvQZd7o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HM6DlHJaYydMaes0Hrr8/v55H2t1DVSXT9z0wfNLQtf4mqHdHUf8mmmpDXhom50Xu
 RQ+2hC4dz9WnUn/2D87w/guPS13/cpoyNbldtZ8TY4W3bS79uz/rphJeV6XyU6Ze1o
 iu1JsUFV40zkXk7ysD4XQwj6KOOCQSqT46PkokC4=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jUSeT-008J3K-Ae; Fri, 01 May 2020 11:12:13 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 3/4] KVM: arm64: vgic-v4: Initialize GICv4.1 even in the
 absence of a virtual ITS
Date: Fri,  1 May 2020 11:12:03 +0100
Message-Id: <20200501101204.364798-4-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200501101204.364798-1-maz@kernel.org>
References: <20200501101204.364798-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, drjones@redhat.com, maskray@google.com,
 mark.rutland@arm.com, ndesaulniers@google.com, will@kernel.org,
 yuzenghui@huawei.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_031215_402706_F9CA418D 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Fangrui Song <maskray@google.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Zenghui Yu <yuzenghui@huawei.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KVM now expects to be able to use HW-accelerated delivery of vSGIs
as soon as the guest has enabled thm. Unfortunately, we only
initialize the GICv4 context if we have a virtual ITS exposed to
the guest.

Fix it by always initializing the GICv4.1 context if it is
available on the host.

Fixes: 2291ff2f2a56 ("KVM: arm64: GICv4.1: Plumb SGI implementation selection in the distributor")
Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/vgic/vgic-init.c    | 9 ++++++++-
 virt/kvm/arm/vgic/vgic-mmio-v3.c | 3 ++-
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/virt/kvm/arm/vgic/vgic-init.c b/virt/kvm/arm/vgic/vgic-init.c
index 30dbec9fe0b4..32e32d67a127 100644
--- a/virt/kvm/arm/vgic/vgic-init.c
+++ b/virt/kvm/arm/vgic/vgic-init.c
@@ -294,8 +294,15 @@ int vgic_init(struct kvm *kvm)
 		}
 	}
 
-	if (vgic_has_its(kvm)) {
+	if (vgic_has_its(kvm))
 		vgic_lpi_translation_cache_init(kvm);
+
+	/*
+	 * If we have GICv4.1 enabled, unconditionnaly request enable the
+	 * v4 support so that we get HW-accelerated vSGIs. Otherwise, only
+	 * enable it if we present a virtual ITS to the guest.
+	 */
+	if (vgic_supports_direct_msis(kvm)) {
 		ret = vgic_v4_init(kvm);
 		if (ret)
 			goto out;
diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c b/virt/kvm/arm/vgic/vgic-mmio-v3.c
index 416613f2400c..89a14ec8b33b 100644
--- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
+++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
@@ -50,7 +50,8 @@ bool vgic_has_its(struct kvm *kvm)
 
 bool vgic_supports_direct_msis(struct kvm *kvm)
 {
-	return kvm_vgic_global_state.has_gicv4 && vgic_has_its(kvm);
+	return (kvm_vgic_global_state.has_gicv4_1 ||
+		(kvm_vgic_global_state.has_gicv4 && vgic_has_its(kvm)));
 }
 
 /*
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
