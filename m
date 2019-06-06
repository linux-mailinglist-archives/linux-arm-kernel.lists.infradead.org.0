Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9B037241
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 12:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8WFO5Kt/8bJPYAxjpPtpYpq1RKkZodOP6lxBkuoy6DI=; b=gnlxbq2Q+m8htueHWRi9oqodCP
	IUvlJjNQqWj7OMbQUPd2eF/6/O/iNsWy5LQgMcXj+7XaQi9YEbtaBqCvKss0nkQqaRGzusI/3/HQS
	OSkjQ2KMj30I9L7Po3UKTkr9pU2NStreWgdaGI2jv0dEIs/Ue5muuyjrg4csnIjiKUcnQFhhzdMX/
	ETIuq1nGTUPBI4AH2DAUz4a1q24v124FSNrt1sksInaJNL4pT5fsfz0EdjlMqtn+amh0RCqMLxTRQ
	nZ4LyTUxIDOIXmVE6LXxqNBTqQMaYC+N6UpkVZrwD78mhluCL/o643jUa3dPAXTFGje+Ihhpe0XnZ
	oQam/W0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYq6W-0003gJ-EH; Thu, 06 Jun 2019 10:58:44 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYq66-0003Ea-O3
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 10:58:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1E3D415AB;
 Thu,  6 Jun 2019 03:58:18 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 317003F690;
 Thu,  6 Jun 2019 03:58:17 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH 2/2] KVM: arm/arm64: vgic: Fix irq refcount leak in
 kvm_vgic_set_owner()
Date: Thu,  6 Jun 2019 11:58:08 +0100
Message-Id: <1559818688-20638-3-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1559818688-20638-1-git-send-email-Dave.Martin@arm.com>
References: <1559818688-20638-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_035818_783513_C099E178 
X-CRM114-Status: GOOD (  15.27  )
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

kvm_vgic_set_owner() leaks a reference on the vgic_irq descriptor,
which does not seem to match up with any vgic_put_irq() that I can
find.

Since the irq pointer is not passed out and the caller must anyway
subsequently use vgic_get_irq() when is wants a pointer, it is not
clear why we should have a dangling refcount here.

The refcount is still needed inside kvm_vgic_set_owner() to prevent
the vgic_irq struct from disappearing while while it is
manipulated.

So, keep it vgic_get_irq() here, but add the matching
vgic_put_irq() before returning.

unreferenced object 0xffff800b6365ab80 (size 128):
  comm "qemu-system-aar", pid 14414, jiffies 4300822606 (age 84.436s)
  hex dump (first 32 bytes):
    00 00 00 00 00 00 00 00 b0 e1 e0 38 00 00 ff ff  ...........8....
    b0 e1 e0 38 00 00 ff ff 78 e6 ad dd 0a 80 ff ff  ...8....x.......
  backtrace:
    [<00000000a08b80e2>] kmem_cache_alloc+0x178/0x208
    [<00000000114591cb>] vgic_add_lpi.part.5+0x34/0x190
    [<00000000ec1425ae>] vgic_its_cmd_handle_mapi+0x320/0x348
    [<00000000935c5c32>] vgic_its_process_commands.part.14+0x350/0x8b8
    [<00000000dc256d2c>] vgic_mmio_write_its_cwriter+0x78/0x98
    [<000000008659acd2>] dispatch_mmio_write+0xd4/0x120

[...]

Cc: Christoffer Dall <christoffer.dall@arm.com>
Fixes: c6ccd30e0de3 ("KVM: arm/arm64: Introduce an allocator for in-kernel irq lines")
Signed-off-by: Dave Martin <Dave.Martin@arm.com>

---

Based on the limited testing I've done so far, the patch _appears_ to
fix the bug.

However, I still don't understand which the bug is intermittent, or why
the arch_timer or pmu (the only apparent users of kvm_vgic_set_owner())
are claiming an LPI in the first place.

So there may be other bugs in the mix, or I may have misunderstood
something...

The bug (and fix) were observed with native qemu on ThunderX2, on a
merge of v5.1 with kvmarm/next commit 9eecfc22e0bf ("KVM: arm64: Fix
ptrauth ID register masking logic").

My qemu invocation was:

$ qemu-system-aarch64 -machine virt,accel=kvm,gic_version=3 -cpu host \
    -smp 4 -nographic \
    -drive id=vblock,file=block.qcow2,format=qcow2,if=none \
    -device virtio-blk-device,drive=vblock \
    -kernel Image -append 'root=/dev/vda1 ro'
---
 virt/kvm/arm/vgic/vgic.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/virt/kvm/arm/vgic/vgic.c b/virt/kvm/arm/vgic/vgic.c
index 191decc..930319c 100644
--- a/virt/kvm/arm/vgic/vgic.c
+++ b/virt/kvm/arm/vgic/vgic.c
@@ -599,6 +599,7 @@ int kvm_vgic_set_owner(struct kvm_vcpu *vcpu, unsigned int intid, void *owner)
 	else
 		irq->owner = owner;
 	raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
+	vgic_put_irq(vcpu->kvm, irq);
 
 	return ret;
 }
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
