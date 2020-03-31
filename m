Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B11B8199BBD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:36:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vToQ5zMr4uaAFi60QPlBV7QnocAddGTNK6Pl/s2Ib0Y=; b=FP/phsRd8QBiL4
	NHVuatckG+xK2hdxaqgqeNFMHlOYdK5EJIgA1o0ZqV9xraJUbKmEX81SAhaE2xJ0sEjwq9TBGKBd4
	c+47ukFhojwNDFqRQUOVSKwhtzEnKuxL2b9wkg/VKvQiAAxgkVHVTvxwdrkoFxx7ZvyXwtIzKrb2C
	cGyud+uBJUTsNVByU8mLDAtuVv2QfaobIHahB/sVoHm6RalU60khGDDa8SvfuvRNJe8xDqrds9dVt
	wwSn3Z0qa4KBAXT931SgD8+Cur+IZG64ZH8I4jAhIWfRMbPWgOeJCC2HBqvPnhDrIETjbovbiYFjJ
	87BmSzYORaWG+DO+PJAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJs8-0002Ug-B3; Tue, 31 Mar 2020 16:36:16 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJoA-0005NY-Df
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:32:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=xxO7+kge1OZhyFxEH3ZMVBPDCuI8ewHnOT2uyjC0GX0=; b=ihY2RBjo2jJBYEbiBxpgNU6IoU
 xyBxk8Zls1xpZfCRB6ws3M9sE9yXT8A2f17wFKCvdywRrsoFZ5GvhQ1xFe9ykbo9jc2uWaeQPvUum
 D3KMgW1/aNJG+GZc3lrg3nk5Rx4Bt6B3GPgJ0ohUa/dAnHtFHwa+jMCj45paI8rFUGYc4bYPhAAfg
 jHueH3YmQ337xk34ZaAxq8v2b4IEThQBi2TiubMuffueeLg58WwdVGFR7racG8HjxDHONFW6ymu1P
 cQ4gFa37eRMnmFIW/IlRb4sw1p4JVg3CHm4TAC9nLrGL3aCyl+XoOlJ/5rYjagTUdx/hTEywH2oYA
 vhtWs+UA==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJFpS-0007zU-3k
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 12:17:17 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6BDEB20838;
 Tue, 31 Mar 2020 12:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585657030;
 bh=UKESaLDxPSB+InQ4SQPbwyW9ucmZcRKTBMCbcB6rK4g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=taBmYvmLZWGx0pkjt4cFtCG9PLHTIX4i1zlg+ZJGDF6bA6QHl0SNR3wVSibiHykxu
 3C0qz9oCVqzb50KYOYCyzi6sUQZ+r0QR7Xc2xobkt0YEkBkZE+WOheDhQHkwGkiMdS
 B042cFXcaiKfuBEPEaR7RI8bZijWCJ7z8E3mOhyQ=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jJFpM-00HBlI-MS; Tue, 31 Mar 2020 13:17:08 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 01/15] KVM: arm64: Use the correct timer structure to access
 the physical counter
Date: Tue, 31 Mar 2020 13:16:31 +0100
Message-Id: <20200331121645.388250-2-maz@kernel.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200331121645.388250-1-maz@kernel.org>
References: <20200331121645.388250-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, arnd@arndb.de, catalin.marinas@arm.com,
 christoffer.dall@arm.com, eric.auger@redhat.com, karahmed@amazon.de,
 linus.walleij@linaro.org, olof@lixom.net, vladimir.murzin@arm.com,
 will@kernel.org, yuzenghui@huawei.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_131714_486102_8DEEF872 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -7.3 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-7.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Vladimir Murzin <vladimir.murzin@arm.com>, kvm@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 KarimAllah Ahmed <karahmed@amazon.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Christoffer Dall <christoffer.dall@arm.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Olof Johansson <olof@lixom.net>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: KarimAllah Ahmed <karahmed@amazon.de>

Use the physical timer structure when reading the physical counter
instead of using the virtual timer structure. Thankfully, nothing is
accessing this code path yet (at least not until we enable save/restore
of the physical counter). It doesn't hurt for this to be correct though.

Signed-off-by: KarimAllah Ahmed <karahmed@amazon.de>
[maz: amended commit log]
Signed-off-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
Fixes: 84135d3d18da ("KVM: arm/arm64: consolidate arch timer trap handlers")
Link: https://lore.kernel.org/r/1584351546-5018-1-git-send-email-karahmed@amazon.de
---
 virt/kvm/arm/arch_timer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/virt/kvm/arm/arch_timer.c b/virt/kvm/arm/arch_timer.c
index 0d9438e9de2a..93bd59b46848 100644
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
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
