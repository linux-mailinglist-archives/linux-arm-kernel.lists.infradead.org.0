Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EE211D3F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 18:30:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xdsuVbmhbLZIphhC7GGtG40hrHUDoom9m8yCikJoRAQ=; b=qB3G1eUPQKlY7j
	ArGtRFog6p15OlqdSy/RNM9nYkM2xeW4EnXDzg5+6/QfKXmNTNxduPVexwr+gwIBpmTiVHBcOBWyq
	Odov9RfkmzAvn7aViioeWOrDDf6ty2MOBoDjrBKYf7vZkyYm6yBWHvxkGUQtqX6cwLqMEYBwvxu1M
	jRXnv8B4v+ChANae4r+uUuteTERKiMYH5EsY1dlDTpz+NcMQZnE5QBxB22GC9H1Oauf/GSKewb1M/
	LLglpwqzdWD83md3ae742bbUs+5l9Kddy3Ri85uh+2VxANoRlQ12xwc6Q9sabK78Dgk6uWUKmRw3Z
	qUEzLPc0NL2T//2vybKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifSHo-000642-3l; Thu, 12 Dec 2019 17:30:00 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifSGf-0005AI-7X
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 17:28:52 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ifSGY-00069s-Qa; Thu, 12 Dec 2019 18:28:43 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 5/8] KVM: arm64: Don't log IMP DEF sysreg traps
Date: Thu, 12 Dec 2019 17:28:21 +0000
Message-Id: <20191212172824.11523-6-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191212172824.11523-1-maz@kernel.org>
References: <20191212172824.11523-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, rkrcmar@redhat.com,
 alexandru.elisei@arm.com, ard.biesheuvel@linaro.org, christoffer.dall@arm.com,
 eric.auger@redhat.com, james.morse@arm.com, justin.he@arm.com,
 mark.rutland@arm.com, linmiaohe@huawei.com, steven.price@arm.com,
 will@kernel.org, kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_092849_411217_3728EDBA 
X-CRM114-Status: UNSURE (   7.92  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Miaohe Lin <linmiaohe@huawei.com>,
 Jia He <justin.he@arm.com>, kvm@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Steven Price <steven.price@arm.com>, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mark Rutland <mark.rutland@arm.com>

We don't intend to support IMPLEMENATION DEFINED system registers, but
have to trap them (and emulate them as UNDEFINED). These traps aren't
interesting to the system administrator or to the KVM developers, so
let's not bother logging when we do so.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Link: https://lore.kernel.org/r/20191205180652.18671-3-mark.rutland@arm.com
---
 arch/arm64/kvm/sys_regs.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index e8bf08e09f78..bd2ac3796d8d 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -2229,6 +2229,12 @@ int kvm_handle_cp14_32(struct kvm_vcpu *vcpu, struct kvm_run *run)
 				NULL, 0);
 }
 
+static bool is_imp_def_sys_reg(struct sys_reg_params *params)
+{
+	// See ARM DDI 0487E.a, section D12.3.2
+	return params->Op0 == 3 && (params->CRn & 0b1011) == 0b1011;
+}
+
 static int emulate_sys_reg(struct kvm_vcpu *vcpu,
 			   struct sys_reg_params *params)
 {
@@ -2244,6 +2250,8 @@ static int emulate_sys_reg(struct kvm_vcpu *vcpu,
 
 	if (likely(r)) {
 		perform_access(vcpu, params, r);
+	} else if (is_imp_def_sys_reg(params)) {
+		kvm_inject_undefined(vcpu);
 	} else {
 		print_sys_reg_msg(params,
 				  "Unsupported guest sys_reg access at: %lx [%08lx]\n",
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
