Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0A218D6F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 19:26:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gGC3TcfYYRX3+NVcaOD+5kAF+05vSOHJzy/E6PsUkEg=; b=hoxCXnJ9Dw/SFh
	nNgfWWPduNxYEWbFZT2t2c8W7sZuq+pPGVjp7GXMxtbMAe+Mf3b/k7U5FbA55dtm1pFpgo85zymVe
	MijPlDnltKtaqWxV68YZ+LzHUW4Lf7AaXmvgVxmKcsh9dD0Xt2RT2N7bXhVFvM594junJ6AEYFjIN
	aaemsnrunjRniZfZ69lhwda6beBrO9z8M6f4zJgn83Lm3uMip6Ahh+LFlOxsCPTQXc3kESuVK/Twk
	qk/+86jCLwqYFjgrejNZ+BeAU//e7J0TqvNGlgNE0avt5pUJCF2D9c12J/khlW7E2uoEgz3ucuxot
	L2x4TpFRtCMoOb7qVHNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFMLI-0000wn-Pc; Fri, 20 Mar 2020 18:26:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFMJx-0007Ed-Py
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 18:24:39 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4277E20788;
 Fri, 20 Mar 2020 18:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584728677;
 bh=N3wwRec9eX3tvnTFhlfc0Z6Er175VJYA27eqwFuKldg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xfp31hwNNE/SfpKGyvc/e4S2lRxYGh0r4ZlMb0StqNftSUpexwMEkRfwnBRgA7DLq
 V5q4CYx/8tfniXV5ehE54xNS0NvSzggfYJ5JUvIOMCv1MqJ9ywGQVgSoEDifqTYsA0
 0qmsK7LTRbNRT9Jp1SMNZYJmeE02dHJuWCQP0oh8=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jFMJv-00EKAx-Gr; Fri, 20 Mar 2020 18:24:35 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 04/23] irqchip/gic-v4.1: Wait for completion of
 redistributor's INVALL operation
Date: Fri, 20 Mar 2020 18:23:47 +0000
Message-Id: <20200320182406.23465-5-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200320_112437_900465_4B3C5C0B 
X-CRM114-Status: GOOD (  11.00  )
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

From: Zenghui Yu <yuzenghui@huawei.com>

In GICv4.1, we emulate a guest-issued INVALL command by a direct write
to GICR_INVALLR.  Before we finish the emulation and go back to guest,
let's make sure the physical invalidate operation is actually completed
and no stale data will be left in redistributor. Per the specification,
this can be achieved by polling the GICR_SYNCR.Busy bit (to zero).

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Eric Auger <eric.auger@redhat.com>
Link: https://lore.kernel.org/r/20200302092145.899-1-yuzenghui@huawei.com
Link: https://lore.kernel.org/r/20200304203330.4967-5-maz@kernel.org
---
 drivers/irqchip/irq-gic-v3-its.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index 1af713990123..c84370245bea 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -3827,6 +3827,8 @@ static void its_vpe_4_1_invall(struct its_vpe *vpe)
 	/* Target the redistributor this vPE is currently known on */
 	rdbase = per_cpu_ptr(gic_rdists->rdist, vpe->col_idx)->rd_base;
 	gic_write_lpir(val, rdbase + GICR_INVALLR);
+
+	wait_for_syncr(rdbase);
 }
 
 static int its_vpe_4_1_set_vcpu_affinity(struct irq_data *d, void *vcpu_info)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
