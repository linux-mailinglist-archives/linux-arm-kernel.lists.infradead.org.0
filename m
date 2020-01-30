Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B716914DBD2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 14:29:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c74EcLVSUVDT+kt/AckOxdCIGn8XahtTWuG5d0IhHXY=; b=M7wqCFvqmPnJbV
	fZ6850t/56rRgL8yDd1GUskulF/qpgHcrPgM7sWJrw/aPhy2XzGvWzpcQHcNm2Y+3Dnfyz1KIhhQv
	LpmCMsPsOikvPxBB6fH7getcEe5LF4HUKzvwGr6YXIKTYcS7BesymStintXbkEolRC7uO55Qc3MnV
	I3OjPo3GSgdV3O7IH8Z4A9E4wb37WE+UL1myfqWZ+2BfTOw4kQyn21MBlBBq3HhKgvdRnq9Ea+RoA
	7I0zLFYgsTvGFSmJu46uudbszZ1+0vbIcmwfApWW3w/ePKJg7BuhULScqwuAW3jX7DTwNwBAw+kdW
	9y7lWtVje3bahFvyS3fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix9st-0007BH-34; Thu, 30 Jan 2020 13:29:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix9sc-00078B-FZ
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 13:29:12 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AAAE3206D3;
 Thu, 30 Jan 2020 13:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580390949;
 bh=HNmTpVeszCcKilnw8gAeL3m81gLCuXq0dzrjP7gheCo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KhngnmhhburDHBqnnxRCxCVo8hfApvEUR9iOJxmXsEoZyJJp0cSre7mIhIXZKK7Zm
 8kDKQrIst2KajY+b9y5iV0OTLpIY1Osh9+h/sGfc8aY4ND4TAZYksMcJ1psI0+YRGH
 HBLDR60IPoALz9zU5l8BObYUX57HuuIMdCRI3OMQ=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1ix9ps-002BmW-G2; Thu, 30 Jan 2020 13:26:20 +0000
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 12/23] KVM: arm/arm64: vgic: Drop the
 kvm_vgic_register_mmio_region()
Date: Thu, 30 Jan 2020 13:25:47 +0000
Message-Id: <20200130132558.10201-13-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200130132558.10201-1-maz@kernel.org>
References: <20200130132558.10201-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, alexandru.elisei@arm.com,
 drjones@redhat.com, andrew.murray@arm.com, beata.michalska@linaro.org,
 christoffer.dall@arm.com, eric.auger@redhat.com, gshan@redhat.com,
 wanghaibin.wang@huawei.com, james.morse@arm.com, broonie@kernel.org,
 mark.rutland@arm.com, rmk+kernel@armlinux.org.uk,
 shannon.zhao@linux.alibaba.com, steven.price@arm.com, will@kernel.org,
 yuehaibing@huawei.com, yuzenghui@huawei.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_052910_575914_D4357AC1 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Gavin Shan <gshan@redhat.com>,
 Beata Michalska <beata.michalska@linaro.org>, kvm@vger.kernel.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 YueHaibing <yuehaibing@huawei.com>, Steven Price <steven.price@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Haibin Wang <wanghaibin.wang@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Andrew Jones <drjones@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Shannon Zhao <shannon.zhao@linux.alibaba.com>,
 Eric Auger <eric.auger@redhat.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>, Alexandru Elisei <alexandru.elisei@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Zenghui Yu <yuzenghui@huawei.com>

kvm_vgic_register_mmio_region() was introduced in commit 4493b1c4866a
("KVM: arm/arm64: vgic-new: Add MMIO handling framework") but never
used, and even never implemented. Remove it to avoid confusing readers.

Reported-by: Haibin Wang <wanghaibin.wang@huawei.com>
Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Link: https://lore.kernel.org/r/20200119090604.398-1-yuzenghui@huawei.com
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
