Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3401141D16
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 10:07:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P/HHB+rKIo6Bi0jAHMBhrkEojlhc6DIkl6b/V6kyiDY=; b=TuEZQcdlZDjCCq
	P8bQApoPqygPxVK/VGtK72dEW9IvE2EDOKILgkA/P7EfaoWlCsKSLmk89QMTt794nLhUu/0SQrPC3
	DoFVglO46jNK8FTRm0qvzwcEpiNi6ggH2yex/GMexl4HOR7yhKIr4gwHtR9hHWTw18NHshVizexBD
	t1xEtB2qAkFFfYo5hGB1EKkW/mNy82QKo7QEwA/PcS6DTA+8PXqZ1wrF9eTKt5YWJ0fSTZooB8xYi
	JSteGdFSbsfJRnF7hX/0juMDDc6pzYGUOucF7VIQ75Co4NFYnS8fr2xfNlkZCE4lOowRrbsEvoOZI
	T/PaeN14hyhqVhxewwSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1it6YE-0001mT-BD; Sun, 19 Jan 2020 09:07:22 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1it6Y3-0001lL-6t
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 09:07:14 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 0ECFB4E55211167F5BDE;
 Sun, 19 Jan 2020 17:06:55 +0800 (CST)
Received: from DESKTOP-8RFUVS3.china.huawei.com (10.173.222.27) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.439.0; Sun, 19 Jan 2020 17:06:45 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <maz@kernel.org>
Subject: [PATCH] KVM: arm/arm64: vgic: Drop the kvm_vgic_register_mmio_region()
Date: Sun, 19 Jan 2020 17:06:04 +0800
Message-ID: <20200119090604.398-1-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_010711_815180_0B9D9B0F 
X-CRM114-Status: UNSURE (   6.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Zenghui Yu <yuzenghui@huawei.com>, Haibin
 Wang <wanghaibin.wang@huawei.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

kvm_vgic_register_mmio_region() was introduced in commit 4493b1c4866a
("KVM: arm/arm64: vgic-new: Add MMIO handling framework") but never
used, and even never implemented. Remove it to avoid confusing readers.

Reported-by: Haibin Wang <wanghaibin.wang@huawei.com>
Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 virt/kvm/arm/vgic/vgic-mmio.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/virt/kvm/arm/vgic/vgic-mmio.h b/virt/kvm/arm/vgic/vgic-mmio.h
index 836f418f1ee8..5af2aefad435 100644
--- a/virt/kvm/arm/vgic/vgic-mmio.h
+++ b/virt/kvm/arm/vgic/vgic-mmio.h
@@ -98,11 +98,6 @@ extern struct kvm_io_device_ops kvm_io_gic_ops;
 		.uaccess_write = uwr,					\
 	}
 
-int kvm_vgic_register_mmio_region(struct kvm *kvm, struct kvm_vcpu *vcpu,
-				  struct vgic_register_region *reg_desc,
-				  struct vgic_io_device *region,
-				  int nr_irqs, bool offset_private);
-
 unsigned long vgic_data_mmio_bus_to_host(const void *val, unsigned int len);
 
 void vgic_data_host_to_mmio_bus(void *buf, unsigned int len,
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
