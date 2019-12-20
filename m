Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1EC1279D9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 12:19:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kr5vLXY7DeDBtMs3iWyywKF/k36IhCpA+gpCZ1zE57E=; b=W+Gm1DYQCfR/Pi
	6XYILiUmrbBNb2tYeAKlRVCxGgVZEsOKZyZc/KmpxLtHLL/OMXLWCbXK1DPylo2BbFXhJNYP7UgyA
	lDcJzN6XXBVRoOnJ1ci6fAUlYQkX8NmwAozxH4hpFJT0L9NVvZN7tjI1vAYzE6Dlit5Mho73ODgxd
	FFSDK1aAZ9H3Ve2f76Vaox2pHxLG7vPGpvEV2NnLZQdCyWQmvMJODFyek13H6zNCaBH8SBCU16/qZ
	dM2IVPK/gOJRab5R8FaUizmB3vKbOe0d8ifMjjS00sslglx5KEtL+bBrVYSInfXixMbJL/qONocE1
	29PRbbztBZCZB8O/prSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiGJa-0002MP-0e; Fri, 20 Dec 2019 11:19:26 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiGJP-0002LK-Oe
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 11:19:17 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 4A1A6CC09BE5C294C012;
 Fri, 20 Dec 2019 19:19:02 +0800 (CST)
Received: from DESKTOP-8RFUVS3.china.huawei.com (10.173.222.27) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.439.0; Fri, 20 Dec 2019 19:18:54 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <maz@kernel.org>
Subject: [PATCH] KVM: arm/arm64: vgic: Handle GICR_PENDBASER.PTZ filed as RAZ
Date: Fri, 20 Dec 2019 19:18:33 +0800
Message-ID: <20191220111833.1422-1-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_031915_980150_34047045 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: andre.przywara@arm.com, linux-kernel@vger.kernel.org, eric.auger@redhat.com,
 Zenghui Yu <yuzenghui@huawei.com>, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Although guest will hardly read and use the PTZ (Pending Table Zero)
bit in GICR_PENDBASER, let us emulate the architecture strictly.
As per IHI 0069E 9.11.30, PTZ field is WO, and reads as 0.

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---

Noticed when checking all fields of GICR_PENDBASER register.
But _not_ sure whether it's worth a fix, as Linux never sets
the PTZ bit before enabling LPI (set GICR_CTLR_ENABLE_LPIS).

And I wonder under which scenarios can this bit be written as 1.
It seems difficult for software to determine whether the pending
table contains all zeros when writing this bit.

 virt/kvm/arm/vgic/vgic-mmio-v3.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c b/virt/kvm/arm/vgic/vgic-mmio-v3.c
index 7dfd15dbb308..ebc218840fc2 100644
--- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
+++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
@@ -414,8 +414,11 @@ static unsigned long vgic_mmio_read_pendbase(struct kvm_vcpu *vcpu,
 					     gpa_t addr, unsigned int len)
 {
 	struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;
+	u64 value = vgic_cpu->pendbaser;
 
-	return extract_bytes(vgic_cpu->pendbaser, addr & 7, len);
+	value &= ~GICR_PENDBASER_PTZ;
+
+	return extract_bytes(value, addr & 7, len);
 }
 
 static void vgic_mmio_write_pendbase(struct kvm_vcpu *vcpu,
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
