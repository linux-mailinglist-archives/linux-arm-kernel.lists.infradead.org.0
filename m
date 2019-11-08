Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC4DF4E9E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:46:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vZPD3FmIR687R4FVVG0o5oUf6TACZucxKeip13RYKzo=; b=I6BvqZ1EAb3XanZ8GVL/NP2q+o
	xnKdS+TWS5aTxsR5Zjj2iEOtJwEVG/EzzUG+wng9tNcWw+ZR8NimamaKzpmq+YF3Wf3zW/G6jTVP/
	ROlgTpoA2PAzHTtp59GrtmdeBNQDyKimKtLIlrWniCoq1AbdxnJzHDtRND9QoUgk/EdH5ny9Z+jcY
	r740/DE44tnj/nFk/zoi63btWrVaiNTGqWCjByWxACPsrfVFO8beFeJQsglMVgiyEvMxV4Irxl+SL
	UikYDO62vSAlqYKjA9lUiWZ71m0iFFml+mAqUvb8TmsW8T/knWVXhFN+IrbUjmhbOoqwm4SY3ohGN
	8CTMVvwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5WM-0002nT-C8; Fri, 08 Nov 2019 14:45:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5Tc-0007dG-2k
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:43:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA65346A;
 Fri,  8 Nov 2019 06:43:03 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BD1F73F719;
 Fri,  8 Nov 2019 06:43:02 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Andrew Jones <drjones@redhat.com>,
	Paolo Bonzini <pbonzini@redhat.com>
Subject: [kvm-unit-tests PATCH 10/17] arm: gic: Check for writable IGROUPR
 registers
Date: Fri,  8 Nov 2019 14:42:33 +0000
Message-Id: <20191108144240.204202-11-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191108144240.204202-1-andre.przywara@arm.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_064304_196128_4DF8CB9B 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Marc Zyngier <maz@kernel.org>, Alexandru Elisei <alexandru.elisei@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When both groups are avaiable to the non-secure side, the MMIO group
registers need to be writable, so that the group that an IRQ belongs to
can be programmed.

Check that the group can be flipped, after having established that both
groups are usable.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arm/gic.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arm/gic.c b/arm/gic.c
index c882a24..485ca4f 100644
--- a/arm/gic.c
+++ b/arm/gic.c
@@ -683,6 +683,7 @@ static bool gicv3_check_security(void *gicd_base)
 static void test_irq_group(void *gicd_base)
 {
 	bool is_gicv3 = (gic_version() == 3);
+	u32 reg;
 
 	report_prefix_push("GROUP");
 	gic_enable_defaults();
@@ -692,6 +693,16 @@ static void test_irq_group(void *gicd_base)
 		if (!gicv3_check_security(gicd_base))
 			return;
 	}
+
+	/*
+	 * On a security aware GIC in non-secure world the IGROUPR registers
+	 * are RAZ/WI. KVM emulates a single-security-state GIC, so both
+	 * groups are available and the IGROUPR registers are writable.
+	 */
+	reg = gic_get_irq_group(SPI_IRQ);
+	gic_set_irq_group(SPI_IRQ, !reg);
+	report("IGROUPR is writable", gic_get_irq_group(SPI_IRQ) != reg);
+	gic_set_irq_group(SPI_IRQ, reg);
 }
 
 static void spi_send(void)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
