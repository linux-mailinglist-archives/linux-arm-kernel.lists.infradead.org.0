Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D52179A37
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 21:38:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQz/gt5LWshfGYfjFl0Uvnr9lpCelwUpzrC8pULj2C4=; b=qDPrb6u8KEL/v3
	299X6H4rwshL1BBwO0g2cpwLmnWSMyzgM/hwH/RcM6yfri0F9hqcbtytaePAb3Y77eMqzGP66CVOA
	AuYFUQv+w8umOiLZ4uRTXHRhzYEbJFvFqV1M2pU4l/0uDKRaHQw6CYIlTQh0m81vzSIcUqhQHs+7s
	CWieM6m8mtu/coxp1zgJWP/99sGiv0QOPmsvE+15UuMNWqKe3hRKuKhFNYSfe1k+Q3VBwX/hPnrRW
	bt+IYYbC0Jn1se25U9mlEMWN6v3B5saRT1Rq4YVSctLj+0x3wRFigrFLAUYKFUc9gGK/xl8J0+N7F
	emxQZBiCIWjNlfrm3FWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9amr-0005uS-N2; Wed, 04 Mar 2020 20:38:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9akq-0004S2-13
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 20:36:33 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5B17021556;
 Wed,  4 Mar 2020 20:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583354191;
 bh=JnkgxepdjxdrRmFpIc3nf6/D+CDNPr99CWMmiM/NM2c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qHH0IQBP0hVolOeTPmygrs6BbiPkawX8dLsTJzRLj0xYSAFy5CGcI3bVMTwIpv0G/
 zZTj1U+FszlxewNlndoz1y066JYeFa43hdP9TWLGq690P8DZ7GgLBhgwb7zHareg9p
 InFKI3fxiGckjbQmcebII+SFr+82z1G7YY+7mEsQ=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j9ajD-00A59R-Nh; Wed, 04 Mar 2020 20:34:51 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 17/23] KVM: arm64: GICv4.1: Let doorbells be auto-enabled
Date: Wed,  4 Mar 2020 20:33:24 +0000
Message-Id: <20200304203330.4967-18-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200304203330.4967-1-maz@kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 rrichter@marvell.com, tglx@linutronix.de, yuzenghui@huawei.com,
 eric.auger@redhat.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_123632_259623_A129C1C2 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As GICv4.1 understands the life cycle of doorbells (instead of
just randomly firing them at the most inconvenient time), just
enable them at irq_request time, and be done with it.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/vgic/vgic-v4.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/virt/kvm/arm/vgic/vgic-v4.c b/virt/kvm/arm/vgic/vgic-v4.c
index 1eb0f8c76219..c2fcde104ea2 100644
--- a/virt/kvm/arm/vgic/vgic-v4.c
+++ b/virt/kvm/arm/vgic/vgic-v4.c
@@ -141,6 +141,7 @@ int vgic_v4_init(struct kvm *kvm)
 
 	kvm_for_each_vcpu(i, vcpu, kvm) {
 		int irq = dist->its_vm.vpes[i]->irq;
+		unsigned long irq_flags = DB_IRQ_FLAGS;
 
 		/*
 		 * Don't automatically enable the doorbell, as we're
@@ -148,8 +149,14 @@ int vgic_v4_init(struct kvm *kvm)
 		 * blocked. Also disable the lazy disabling, as the
 		 * doorbell could kick us out of the guest too
 		 * early...
+		 *
+		 * On GICv4.1, the doorbell is managed in HW and must
+		 * be left enabled.
 		 */
-		irq_set_status_flags(irq, DB_IRQ_FLAGS);
+		if (kvm_vgic_global_state.has_gicv4_1)
+			irq_flags &= ~IRQ_NOAUTOEN;
+		irq_set_status_flags(irq, irq_flags);
+
 		ret = request_irq(irq, vgic_v4_doorbell_handler,
 				  0, "vcpu", vcpu);
 		if (ret) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
