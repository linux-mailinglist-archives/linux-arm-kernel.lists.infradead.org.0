Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7491E813C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 17:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UIXDyHs/z2sgKTmXCECC9uBS+dXtK8vxU3hGmmm2zHk=; b=ji7U+ZhfaeN1mq
	+vA/GKfHn2XyZLweklza46numrYPNGwbIeOXQrbQ1nqxJ+rN1lDJjIXwiBEUUAcfAcGiFzv193yrk
	X8294scXDSaKMsEfJnXAFa6V79Z7yilsIave/FYXYe0k9upqJ0ViCqJH+JMyVh2TR2M86GCPpivdg
	JhugeapFh1Rzmmfq+loMxNb+1Gfx+A5L9t69kMiqhwLwf8xEQ37Zn2HI2kIESDJj01agnHx86d5ow
	sO6P2u8ZHwqzvUtva+ai3mLINBOXxV4Fk7XgeI1CWnLE2tAelOclgannrZrx/RvEFNpqYxCdZi8c1
	s4hSNCOwJvNsa4Qk73ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jegbu-00078k-6Y; Fri, 29 May 2020 15:07:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jegbP-0006u3-4c
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 15:07:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A9E081063;
 Fri, 29 May 2020 08:07:18 -0700 (PDT)
Received: from merodach.members.linode.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DA55F3F718;
 Fri, 29 May 2020 08:07:17 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: kvmarm@lists.cs.columbia.edu,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/3] KVM: arm64: Add emulation for 32bit guests accessing
 ACTLR2
Date: Fri, 29 May 2020 15:06:55 +0000
Message-Id: <20200529150656.7339-3-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529150656.7339-1-james.morse@arm.com>
References: <20200529150656.7339-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_080719_222230_A2FA126F 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Marc Zyngier <maz@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ACTLR_EL1 is a 64bit register while the 32bit ACTLR is obviously 32bit.
For 32bit software, the extra bits are accessible via ACTLR2... which
KVM doesn't emulate.

Suggested-by: Marc Zyngier <maz@kernel.org>
Signed-off-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kvm/sys_regs_generic_v8.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/kvm/sys_regs_generic_v8.c b/arch/arm64/kvm/sys_regs_generic_v8.c
index 9cb6b4c8355a..aa9d356451eb 100644
--- a/arch/arm64/kvm/sys_regs_generic_v8.c
+++ b/arch/arm64/kvm/sys_regs_generic_v8.c
@@ -27,6 +27,14 @@ static bool access_actlr(struct kvm_vcpu *vcpu,
 		return ignore_write(vcpu, p);
 
 	p->regval = vcpu_read_sys_reg(vcpu, ACTLR_EL1);
+
+	if (p->is_aarch32) {
+		if (r->Op2 & 2)
+			p->regval = upper_32_bits(p->regval);
+		else
+			p->regval = lower_32_bits(p->regval);
+	}
+
 	return true;
 }
 
@@ -47,6 +55,8 @@ static const struct sys_reg_desc genericv8_cp15_regs[] = {
 	/* ACTLR */
 	{ Op1(0b000), CRn(0b0001), CRm(0b0000), Op2(0b001),
 	  access_actlr },
+	{ Op1(0b000), CRn(0b0001), CRm(0b0000), Op2(0b011),
+	  access_actlr },
 };
 
 static struct kvm_sys_reg_target_table genericv8_target_table = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
