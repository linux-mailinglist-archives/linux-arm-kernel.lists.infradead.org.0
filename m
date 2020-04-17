Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E931AD8B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 10:35:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HiE7YsdiHhfuSbAgxB6/ynvcAgp8ISv+kR+S01GZLO8=; b=eYBsWDf+vAPnI+
	veHSMIJlKsbjCRuLCCYjsE2RoCewvm3l3AOrlfnXZaje5cvO46RP/u/jhzQ0+KucWBX1TGemUmwvq
	joqPdpEY5Gu80+dGyNVQs7igWDtA33929LzgGJd61DSGlIb2/lO2AmlJS5g2nzLpIbrXyKHZ1Bw2A
	x4jh5i8bY61HpYvxKnE6gWe1VtwrV7oid4pkotHHveQbgcmo8YtwTAOOPwembSKdxF9kqhqK2H4mq
	jVrBMn9HiXemC4KKn562PDh70ffv3LpLRTWgmEyMC3rnH1FZs/rjnKGXYnX0zx4uh8VF2P2LlvS2D
	BXXpHR0xvO56TjLnUV/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPMTM-0005Rl-Ni; Fri, 17 Apr 2020 08:35:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPMRR-0001ey-VM
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 08:33:43 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A85D2137B;
 Fri, 17 Apr 2020 08:33:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587112421;
 bh=wgbDGjmWkcsUiNz9bIZL+0Ltlz6/FJw3k/MWaB3fMrw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nYEmalLQ7vuYovMPorqzw96rlzSnYudaUqANjXjx68SdGftqYQt8fiYwblSWJdawR
 0W9I1tRLm+2leFgm+iNFW2Gai1IU0H9wgVM4HGlASes23lCw1jx91JMQH00g/c+nzB
 OILt+OybDeYlTrDR/lYWez7fHI9vQj+B+i3FGb3c=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jPMRP-00473f-NV; Fri, 17 Apr 2020 09:33:39 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 6/6] KVM: arm64: vgic-its: Fix memory leak on the error
 path of vgic_add_lpi()
Date: Fri, 17 Apr 2020 09:33:19 +0100
Message-Id: <20200417083319.3066217-7-maz@kernel.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200417083319.3066217-1-maz@kernel.org>
References: <20200417083319.3066217-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, yuzenghui@huawei.com,
 eric.auger@redhat.com, Andre.Przywara@arm.com, julien@xen.org,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_013342_097584_3F1FE5EC 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Julien Grall <julien@xen.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <Andre.Przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Zenghui Yu <yuzenghui@huawei.com>

If we're going to fail out the vgic_add_lpi(), let's make sure the
allocated vgic_irq memory is also freed. Though it seems that both
cases are unlikely to fail.

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Link: https://lore.kernel.org/r/20200414030349.625-3-yuzenghui@huawei.com
---
 virt/kvm/arm/vgic/vgic-its.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
index d53d34a33e35..c012a52b19f5 100644
--- a/virt/kvm/arm/vgic/vgic-its.c
+++ b/virt/kvm/arm/vgic/vgic-its.c
@@ -96,14 +96,21 @@ static struct vgic_irq *vgic_add_lpi(struct kvm *kvm, u32 intid,
 	 * We "cache" the configuration table entries in our struct vgic_irq's.
 	 * However we only have those structs for mapped IRQs, so we read in
 	 * the respective config data from memory here upon mapping the LPI.
+	 *
+	 * Should any of these fail, behave as if we couldn't create the LPI
+	 * by dropping the refcount and returning the error.
 	 */
 	ret = update_lpi_config(kvm, irq, NULL, false);
-	if (ret)
+	if (ret) {
+		vgic_put_irq(kvm, irq);
 		return ERR_PTR(ret);
+	}
 
 	ret = vgic_v3_lpi_sync_pending_status(kvm, irq);
-	if (ret)
+	if (ret) {
+		vgic_put_irq(kvm, irq);
 		return ERR_PTR(ret);
+	}
 
 	return irq;
 }
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
