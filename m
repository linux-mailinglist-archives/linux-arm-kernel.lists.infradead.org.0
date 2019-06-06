Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5682037A4E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:56:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ShXZalk8q/H4xRg0kjkFvrAWT3rOJqwou8doEKt4HKw=; b=i+JbBdYKwcfTEX
	xhVaZtPwvJvH6Ey9XL+Hd9xZagkAcNua7MfMYF7O7wx0OrdnrwkAHglSZP5fPc/cAfvRpR+PF0A9M
	sRyfYAE1mTaSEvCsjh1x4qJjnDdMYPhRlQEOnlNIRnDby1NIkiMqoypfJ8o+6icwwkEEQ19zsgFgK
	30TLujdrpwBSqX2aKQSj8eyyMpcCWAYO96d2zC0IC1ZX38SG/CIxgmGHyhW6Ht/xWDvifiFEBRb0V
	W/Crmi3toshufB9mk9EqtCBFZhJ3KSoddRtxoeTtTYg9rVDXwiNNT0WoRIl9GVHrlWmJvvEA0ikR1
	Up+c++9vX3KMHVtRJ6Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvgH-0006ry-Ps; Thu, 06 Jun 2019 16:56:01 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvfV-0005w6-Hr
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:55:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6ABCB15BF;
 Thu,  6 Jun 2019 09:55:13 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9DE243F690;
 Thu,  6 Jun 2019 09:55:11 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 4/8] KVM: arm/arm64: vgic-its: Add kvm parameter to
 vgic_its_free_collection
Date: Thu,  6 Jun 2019 17:54:51 +0100
Message-Id: <20190606165455.162478-5-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190606165455.162478-1-marc.zyngier@arm.com>
References: <20190606165455.162478-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_095513_949345_7336391C 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, "Raslan,
 KarimAllah" <karahmed@amazon.de>, Julien Thierry <julien.thierry@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As we are going to perform some VM-wide operations when freeing
a collection, add the kvm pointer to vgic_its_free_collection.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 virt/kvm/arm/vgic/vgic-its.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
index bc370b6c5afa..f637edd77e1f 100644
--- a/virt/kvm/arm/vgic/vgic-its.c
+++ b/virt/kvm/arm/vgic/vgic-its.c
@@ -885,7 +885,8 @@ static int vgic_its_alloc_collection(struct vgic_its *its,
 	return 0;
 }
 
-static void vgic_its_free_collection(struct vgic_its *its, u32 coll_id)
+static void vgic_its_free_collection(struct kvm *kvm,
+				     struct vgic_its *its, u32 coll_id)
 {
 	struct its_collection *collection;
 	struct its_device *device;
@@ -974,7 +975,7 @@ static int vgic_its_cmd_handle_mapi(struct kvm *kvm, struct vgic_its *its,
 	ite = vgic_its_alloc_ite(device, collection, event_id);
 	if (IS_ERR(ite)) {
 		if (new_coll)
-			vgic_its_free_collection(its, coll_id);
+			vgic_its_free_collection(kvm, its, coll_id);
 		return PTR_ERR(ite);
 	}
 
@@ -984,7 +985,7 @@ static int vgic_its_cmd_handle_mapi(struct kvm *kvm, struct vgic_its *its,
 	irq = vgic_add_lpi(kvm, lpi_nr, vcpu);
 	if (IS_ERR(irq)) {
 		if (new_coll)
-			vgic_its_free_collection(its, coll_id);
+			vgic_its_free_collection(kvm, its, coll_id);
 		its_free_ite(kvm, ite);
 		return PTR_ERR(irq);
 	}
@@ -1025,7 +1026,7 @@ static void vgic_its_free_collection_list(struct kvm *kvm, struct vgic_its *its)
 	struct its_collection *cur, *temp;
 
 	list_for_each_entry_safe(cur, temp, &its->collection_list, coll_list)
-		vgic_its_free_collection(its, cur->collection_id);
+		vgic_its_free_collection(kvm, its, cur->collection_id);
 }
 
 /* Must be called with its_lock mutex held */
@@ -1110,7 +1111,7 @@ static int vgic_its_cmd_handle_mapc(struct kvm *kvm, struct vgic_its *its,
 		return E_ITS_MAPC_PROCNUM_OOR;
 
 	if (!valid) {
-		vgic_its_free_collection(its, coll_id);
+		vgic_its_free_collection(kvm, its, coll_id);
 	} else {
 		collection = find_collection(its, coll_id);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
