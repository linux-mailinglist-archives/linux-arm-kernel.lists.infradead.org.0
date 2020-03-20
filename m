Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A010F18D7F8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 19:53:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lbaddF6t5hQAtnl94+pncWO9fLyNHWUHCL1BY5GD1ys=; b=C0xunJepTLsXgT
	sf2eO3gaWC/GHf8rSqtA56a8/0kk4nEjrazn4lR3lfyvpbYT54o6OsjvtJJH6prJ7OZIB5rxDnX/8
	pRFInYL5uoWdh8xBG21lzXa+MOXJ8OQerIZkS+Re6dsgwYnCaiOmjYjOFEL1gqSdHdD7oWYkjvD9Q
	S0Z2ren8qm1/LbmFh8mziunNYU6ArLiExssHfUODliyqEm8q4tqhGwjV8t/319id4qzP3lyijX/2/
	8CBd0o+/OhQxMZqSml5T2Haz2IuFxwVcBflDYB3f4OmyXxwcGToggop9avmjpY7PLVZCZvEgP/nOp
	TPAaj1WzoMMD5KdF7zpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFMmC-0008Tn-LB; Fri, 20 Mar 2020 18:53:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFMjm-0005yS-VJ
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 18:51:21 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D950A20784;
 Fri, 20 Mar 2020 18:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584730278;
 bh=IFtlo7QCagdAeBsRlzd9U8i/clQ5FNlL0eN+32gWnjM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qqqxdJiEZj7l0HyKmyIZiKpP/eTEyIGfjEoHd+HMpgA7U92LD549+eAsYArsylbkE
 MhQapKXYPU47wptx3/gNwc6BPwWp37HX+WSVIdE0FJZEJDExEhVCCRYC2tcUKRHVsY
 TpMxG44/YYakscJtQ6k88EtpeAZrpccmelwSZpT8=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jFMK7-00EKAx-1O; Fri, 20 Mar 2020 18:24:47 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 17/23] KVM: arm64: GICv4.1: Let doorbells be auto-enabled
Date: Fri, 20 Mar 2020 18:24:00 +0000
Message-Id: <20200320182406.23465-18-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200320182406.23465-1-maz@kernel.org>
References: <20200320182406.23465-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 tglx@linutronix.de, yuzenghui@huawei.com, eric.auger@redhat.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_115119_555967_8D9A3C68 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As GICv4.1 understands the life cycle of doorbells (instead of
just randomly firing them at the most inconvenient time), just
enable them at irq_request time, and be done with it.

Signed-off-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
Reviewed-by: Eric Auger <eric.auger@redhat.com>
Link: https://lore.kernel.org/r/20200304203330.4967-18-maz@kernel.org
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
