Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EB4199BAF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxbaGky3m/9pJGkK+p+JjgrxSqBrOkgkft3kyAZ7sOU=; b=HZv1W0iwBectWb
	V56CYV0k/0u3JF3etjelB+gchc8sAt3iWIzETTrAlBVjGdo50qMUMdIdTxa30nQYQQWUKbJdjjbaE
	+CrHboQVAKCr+vOHdJfTULNGrACBEuQkj9v8ov5uLoaySZtcHPVtY4rHtvR6vBq5Q/qxXOSt0oV3G
	kv+8WUNQuwqFXTccEHAo5kJ0f/2kBFYqzhIl0tc9Pd/wSeeuKpCrnh5ZmYNf8djc+I5sW7vA4AbzG
	ucRiQqp/DACx3ZFHPAcbjelWpvC8UmjIyGb5/aZbc1fNEgMYa2rq+mv/1TfwDwH4A6LbbHJuxRxDR
	7B27zywB9f/viTy3aO7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJq9-0006c9-HK; Tue, 31 Mar 2020 16:34:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJnx-0005EI-PK
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:31:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=zWw1PBkLKZO/1SCUrEYPQIjuKXzFwwaGl7kJUKQancE=; b=jDhhz7qNa/3wzR7TcB8xBjUSPL
 Sw8BARxdLcEQBRlD69RABSMzPcRNNkDu+7Vs0EXhuOUVc8czBZHwsUpMDcMFAtu9Hy8fD6LjHmTjq
 TRgqkxN7IezzOl2AIXGVWv4zaTbKq2pqUaCCIW/7svDMRzWHNlmllK5WbnPd33km7Wd/sVQRw2/mM
 r9VD5E2dEugQ+r4vicuVPjWk9f9K2LE9ReN+t2FZ8ddQwSwE2xsVQm0aSXDWS8hHhIYy5sRmzmHdW
 X8mMHqlpOieVihHz7zL0mg+nqwInxGpAWquz6C8la+sVKs3v4zbZOMC0b0ZfLlCxd+AhQz7bLo+O0
 KZbJkXrQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJFpZ-00080k-6l
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 12:17:24 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 99D2D21473;
 Tue, 31 Mar 2020 12:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585657039;
 bh=pF5jIxK97ltdsCKXvkyp8u1t0qhyes9Mxr4id4nqWic=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sC7NV47OGjr9KdjEnicTNouF55gGuNcFUtaG23ZR3MEcZ0cPVKrGmlo0ljSY8oArx
 i2UTyEPBf7BIbZH+omivfofAgGwxqBcNPrrdaeE/pHgROC4pdbKo7GIB7c0uB+MMrA
 vtZV9fj5OE/KeM5H9jl1MleuLQ7EPu13MtF79J6w=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jJFpV-00HBlI-Gt; Tue, 31 Mar 2020 13:17:17 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 09/15] KVM: arm64: GICv4.1: Let doorbells be auto-enabled
Date: Tue, 31 Mar 2020 13:16:39 +0100
Message-Id: <20200331121645.388250-10-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200331_131721_609954_ACF158B9 
X-CRM114-Status: GOOD (  14.23  )
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

As GICv4.1 understands the life cycle of doorbells (instead of
just randomly firing them at the most inconvenient time), just
enable them at irq_request time, and be done with it.

Signed-off-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
Reviewed-by: Eric Auger <eric.auger@redhat.com>
Link: https://lore.kernel.org/r/20200304203330.4967-18-maz@kernel.org
---
 virt/kvm/arm/vgic/vgic-v4.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/virt/kvm/arm/vgic/vgic-v4.c b/virt/kvm/arm/vgic/vgic-v4.c
index 1eb0f8c76219..c2fcde104ea2 100644
--- a/virt/kvm/arm/vgic/vgic-v4.c
+++ b/virt/kvm/arm/vgic/vgic-v4.c
@@ -141,6 +141,7 @@ int vgic_v4_init(struct kvm *kvm)
 
 	kvm_for_each_vcpu(i, vcpu, kvm) {
 		int irq = dist->its_vm.vpes[i]->irq;
+		unsigned long irq_flags = DB_IRQ_FLAGS;
 
 		/*
 		 * Don't automatically enable the doorbell, as we're
@@ -148,8 +149,14 @@ int vgic_v4_init(struct kvm *kvm)
 		 * blocked. Also disable the lazy disabling, as the
 		 * doorbell could kick us out of the guest too
 		 * early...
+		 *
+		 * On GICv4.1, the doorbell is managed in HW and must
+		 * be left enabled.
 		 */
-		irq_set_status_flags(irq, DB_IRQ_FLAGS);
+		if (kvm_vgic_global_state.has_gicv4_1)
+			irq_flags &= ~IRQ_NOAUTOEN;
+		irq_set_status_flags(irq, irq_flags);
+
 		ret = request_irq(irq, vgic_v4_doorbell_handler,
 				  0, "vcpu", vcpu);
 		if (ret) {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
