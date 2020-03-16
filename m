Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F253186806
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 10:40:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4PhXknzVQXZ4EmGABfj4hvr8IFkodBZT0e1IiuI9iHw=; b=LWo
	W6xcTv1ezSLH/wB8X1J1MXYpCiOG0O+HN5bcto1cnsV33VJ9BFoHe89jFEZ2mtTED9FVZ5PDcIM1R
	tCzreRkxgdlH0VE9KIoG2pcTraiuUjfP/SS2w9XNx2NIY/zI5aWkthl2DlBpGFDN1ZypyK49hd8Cq
	LPdiUqS05zZPH7TNcjtm77ILQZswtyjqx4giYOu6KpmLs4bfjVRcqFt8rAVvwocX1Km5w9e6a9Uf+
	oKuplJc7ny6txuXUF7vLeRfGhTgPIeUR+xNg2556O/5umXX5RsFlhsaBhIB5e+pAjybps96Nl1pun
	JpyCdFqD+NxBwR/g1Vl8zVrG7G4Wf3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDmDn-0007gx-QM; Mon, 16 Mar 2020 09:39:43 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDmDf-0007gN-VR
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 09:39:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
 t=1584351576; x=1615887576;
 h=from:to:cc:subject:date:message-id;
 bh=qSfJ6u84LZu6czX0X2ef4AdDkN6oHZIFm1K2WciznEs=;
 b=Y7BvvoEM4podhqtv2c1anO+uOXTrTy435FC7fbfhhvZRcVOIuKomSY04
 Fkt3FVdJm+m6kju5E2J7YkKnwxU20rwAjhNnzLp6zjhsqV4yRwqccQREl
 Oouhc9SUslGj+Hcn/BTQ4+8acho/tgjAYmirlRqDXn/Mdja+S58Ec5zaU g=;
IronPort-SDR: xsYhxKPGjqk2aAysy+zQY9HiQRGEhcQrSC6cz8QMXDMAK4Bl9ABga5RZJdQs+98Mauhlz0Fl+1
 EnHgnQILdeOw==
X-IronPort-AV: E=Sophos;i="5.70,559,1574121600"; d="scan'208";a="31381162"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-2c-87a10be6.us-west-2.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 16 Mar 2020 09:39:23 +0000
Received: from u54e1ad5160425a4b64ea.ant.amazon.com
 (pdx2-ws-svc-lb17-vlan3.amazon.com [10.247.140.70])
 by email-inbound-relay-2c-87a10be6.us-west-2.amazon.com (Postfix) with ESMTPS
 id F1E8DA175E; Mon, 16 Mar 2020 09:39:21 +0000 (UTC)
Received: from u54e1ad5160425a4b64ea.ant.amazon.com (localhost [127.0.0.1])
 by u54e1ad5160425a4b64ea.ant.amazon.com (8.15.2/8.15.2/Debian-3) with ESMTP id
 02G9dI8G005147; Mon, 16 Mar 2020 10:39:18 +0100
Received: (from karahmed@localhost)
 by u54e1ad5160425a4b64ea.ant.amazon.com (8.15.2/8.15.2/Submit) id
 02G9dHYs005143; Mon, 16 Mar 2020 10:39:17 +0100
From: KarimAllah Ahmed <karahmed@amazon.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] KVM: arm64: Use the correct timer for accessing CNT
Date: Mon, 16 Mar 2020 10:39:06 +0100
Message-Id: <1584351546-5018-1-git-send-email-karahmed@amazon.de>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_023936_052668_934A913D 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -12.4 (------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-12.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 KarimAllah Ahmed <karahmed@amazon.de>, Marc Zyngier <maz@kernel.org>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the physical timer object when reading the physical timer counter
instead of using the virtual timer object. This is only visible when
reading it from user-space as kvm_arm_timer_get_reg() is only executed on
the get register patch from user-space.

Cc: Marc Zyngier <maz@kernel.org>
Cc: James Morse <james.morse@arm.com>
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: kvmarm@lists.cs.columbia.edu
Cc: linux-kernel@vger.kernel.org
Signed-off-by: KarimAllah Ahmed <karahmed@amazon.de>
---
 virt/kvm/arm/arch_timer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/virt/kvm/arm/arch_timer.c b/virt/kvm/arm/arch_timer.c
index 0d9438e..93bd59b 100644
--- a/virt/kvm/arm/arch_timer.c
+++ b/virt/kvm/arm/arch_timer.c
@@ -788,7 +788,7 @@ u64 kvm_arm_timer_get_reg(struct kvm_vcpu *vcpu, u64 regid)
 					  vcpu_ptimer(vcpu), TIMER_REG_CTL);
 	case KVM_REG_ARM_PTIMER_CNT:
 		return kvm_arm_timer_read(vcpu,
-					  vcpu_vtimer(vcpu), TIMER_REG_CNT);
+					  vcpu_ptimer(vcpu), TIMER_REG_CNT);
 	case KVM_REG_ARM_PTIMER_CVAL:
 		return kvm_arm_timer_read(vcpu,
 					  vcpu_ptimer(vcpu), TIMER_REG_CVAL);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
