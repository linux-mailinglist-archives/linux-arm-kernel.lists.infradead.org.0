Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C981B855E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 11:45:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pwHvhfONRbT1watm6YMJhndZdcTiGw1jiIrVlGRGhhg=; b=srWpwtPNdVkSnQ
	To37fhLjGe77bFY8ivgmCmfFLw4nGYqKUalOO1AYNaf3TyO9XxkXIyrp8iBcVRMwk5QIIAOpWnR1O
	acsU9E60C0JhDNBnsfczdiitVZPPaxqxZd2675dLJzfjfvg7YxRaEFa8PwAtFGIKDFlk8wl4abe2L
	ecnzjY+cU4r+NMCgRJ1okQjTEY/AYloobMQ6UZ+lMHNFIprCuw7DujQzaVbI/dkMi960n10d18ma1
	zbGbc5mh5EML0gWu2vCM7OrTc9NxKNOmWSaWV1/QjIqC6HNd5ga5V6Kb+OcMtiEkEIbsL6txBDN+n
	pV6z3f+kX6dXHp4aIbQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSHN3-00043i-Im; Sat, 25 Apr 2020 09:45:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSHMk-00042u-CK
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 09:44:55 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EFF832064C;
 Sat, 25 Apr 2020 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587807894;
 bh=hbcviEx626chZm3MDI73tTRFC1Bak0yE4bT+LlrKlz8=;
 h=From:To:Cc:Subject:Date:From;
 b=f1zbBBC9R3jLlcrk8D+MtVDc/EpaeLHY61g/LIf0YQmldc02dH17V87ccKJQhqXZ4
 SJF/NsTajZ+xmjI8CHw9bHInwhuObC6SDfV+JpT2aBEoJpxQ8YMK2UkwHxNRtJaZnR
 FDyi2WUg89eS13Wlf4YniGNCqfk45wpDlHtrQh84=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jSHMi-006HBD-Ce; Sat, 25 Apr 2020 10:44:52 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu
Subject: [PATCH] KVM: arm64: vgic-v4: Initialize GICv4.1 even in the absence
 of a virtual ITS
Date: Sat, 25 Apr 2020 10:44:26 +0100
Message-Id: <20200425094426.162962-1-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, yuzenghui@huawei.com,
 eric.auger@redhat.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_024454_729978_9EC01434 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Zenghui Yu <yuzenghui@huawei.com>, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
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
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/vgic/vgic-init.c    | 9 ++++++++-
 virt/kvm/arm/vgic/vgic-mmio-v3.c | 3 ++-
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/virt/kvm/arm/vgic/vgic-init.c b/virt/kvm/arm/vgic/vgic-init.c
index a963b9d766b73..8e6f350c3bcd1 100644
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
index e72dcc4542475..26b11dcd45524 100644
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
