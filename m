Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B08DA752E7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 17:37:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OTsColehrSmSBaRS9+kOsoxDxqfpKVkalgGkdrdoG4s=; b=jkmNfGV/9I7LQK
	WUuXxW56ThcnX2BBhjYtXQVUVpSO1NS5u/UAar/dewo2oQO5XYlOthScSRe58pWNrwUBWAxsJS585
	jWs+fgm5L0IqyaVLV6U4f8g1fiOCODW234/nyhvcGVNfN44oV4b2YAk4Ss3p0R7IuPk3zWfZN/Aim
	BqOLh8QuVaiYa54XoFEBZVC1dx7Cz2C1WrfJTgPHD8E9B7POCS3NS7h91ivEFlhyQ23Na3B+2qqwj
	fZ52tA1HEwgdEZ70MdzN5cNZ3sVLaLw5+F8V7jRQ5BfQxYIidyaizY/NomzhBLiQ2m5QA03buRbgN
	pXZ7+1zhxHbBxz8ECfQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqfoa-0005if-Ro; Thu, 25 Jul 2019 15:37:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfnF-0004nC-Dx
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 15:36:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2EA0E1597;
 Thu, 25 Jul 2019 08:36:33 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7E7C13F71A;
 Thu, 25 Jul 2019 08:36:31 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v3 04/10] KVM: arm/arm64: vgic-its: Invalidate MSI-LPI
 translation cache on specific commands
Date: Thu, 25 Jul 2019 16:35:37 +0100
Message-Id: <20190725153543.24386-5-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725153543.24386-1-maz@kernel.org>
References: <20190725153543.24386-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_083633_515056_9FAE13A6 
X-CRM114-Status: GOOD (  10.44  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Andre Przywara <Andre.Przywara@arm.com>,
 "Raslan, KarimAllah" <karahmed@amazon.de>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>, "Saidi,
 Ali" <alisaidi@amazon.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

The LPI translation cache needs to be discarded when an ITS command
may affect the translation of an LPI (DISCARD, MAPC and MAPD with V=0)
or the routing of an LPI to a redistributor with disabled LPIs (MOVI,
MOVALL).

We decide to perform a full invalidation of the cache, irrespective
of the LPI that is affected. Commands are supposed to be rare enough
that it doesn't matter.

Reviewed-by: Eric Auger <eric.auger@redhat.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 virt/kvm/arm/vgic/vgic-its.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
index cc6b5e49a312..09a179820816 100644
--- a/virt/kvm/arm/vgic/vgic-its.c
+++ b/virt/kvm/arm/vgic/vgic-its.c
@@ -722,6 +722,8 @@ static int vgic_its_cmd_handle_discard(struct kvm *kvm, struct vgic_its *its,
 		 * don't bother here since we clear the ITTE anyway and the
 		 * pending state is a property of the ITTE struct.
 		 */
+		vgic_its_invalidate_cache(kvm);
+
 		its_free_ite(kvm, ite);
 		return 0;
 	}
@@ -757,6 +759,8 @@ static int vgic_its_cmd_handle_movi(struct kvm *kvm, struct vgic_its *its,
 	ite->collection = collection;
 	vcpu = kvm_get_vcpu(kvm, collection->target_addr);
 
+	vgic_its_invalidate_cache(kvm);
+
 	return update_affinity(ite->irq, vcpu);
 }
 
@@ -985,6 +989,8 @@ static void vgic_its_free_device(struct kvm *kvm, struct its_device *device)
 	list_for_each_entry_safe(ite, temp, &device->itt_head, ite_list)
 		its_free_ite(kvm, ite);
 
+	vgic_its_invalidate_cache(kvm);
+
 	list_del(&device->dev_list);
 	kfree(device);
 }
@@ -1090,6 +1096,7 @@ static int vgic_its_cmd_handle_mapc(struct kvm *kvm, struct vgic_its *its,
 
 	if (!valid) {
 		vgic_its_free_collection(its, coll_id);
+		vgic_its_invalidate_cache(kvm);
 	} else {
 		collection = find_collection(its, coll_id);
 
@@ -1238,6 +1245,8 @@ static int vgic_its_cmd_handle_movall(struct kvm *kvm, struct vgic_its *its,
 		vgic_put_irq(kvm, irq);
 	}
 
+	vgic_its_invalidate_cache(kvm);
+
 	kfree(intids);
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
