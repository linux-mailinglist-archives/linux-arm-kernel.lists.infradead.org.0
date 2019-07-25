Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56D2752EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 17:38:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rh/+9WB61w+Fwk3VCHq+LQeMU5nvQ42a4TBf3Ufq3b8=; b=fxvCnue8VgB5A1
	fkFadpBC76Hgf2Kne0B9l5mIf/8WrY+71HQqJ7Cx3LxG0hl6exU8A16jUE5RfrTNUMFLEDE6KriHw
	1QunC99AA7KM766Qk1JUTezzdAy8pjkS5BzIXqxKYleb+MkiLWeiewCdECvFTpMUFiIr6BOqbTotW
	Bnor66dYx5RprBLE2wqP6FCiPQvvWTsmtGyZAlHfnbCbu6X23Jb3FZT2GlA4iJgulQhjl6UDK3/dB
	9Q2qOuniD+OhWTogl+wlEQS//1Ie+4Y13PZudh57cMXdDjZO6sP96vaqGke65FyAAAXKGWRwZe1GN
	FcU53JrNG+3nPZECsnPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqfpB-0006CM-H0; Thu, 25 Jul 2019 15:38:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfnJ-0004rQ-Ep
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 15:36:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF3E01684;
 Thu, 25 Jul 2019 08:36:36 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4B1B43F71A;
 Thu, 25 Jul 2019 08:36:35 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v3 06/10] KVM: arm/arm64: vgic-its: Invalidate MSI-LPI
 translation cache on ITS disable
Date: Thu, 25 Jul 2019 16:35:39 +0100
Message-Id: <20190725153543.24386-7-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725153543.24386-1-maz@kernel.org>
References: <20190725153543.24386-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_083637_577105_9781EFA3 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
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

If an ITS gets disabled, we need to make sure that further interrupts
won't hit in the cache. For that, we invalidate the translation cache
when the ITS is disabled.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 virt/kvm/arm/vgic/vgic-its.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
index 09a179820816..05406bd92ce9 100644
--- a/virt/kvm/arm/vgic/vgic-its.c
+++ b/virt/kvm/arm/vgic/vgic-its.c
@@ -1597,6 +1597,8 @@ static void vgic_mmio_write_its_ctlr(struct kvm *kvm, struct vgic_its *its,
 		goto out;
 
 	its->enabled = !!(val & GITS_CTLR_ENABLE);
+	if (!its->enabled)
+		vgic_its_invalidate_cache(kvm);
 
 	/*
 	 * Try to process any pending commands. This function bails out early
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
