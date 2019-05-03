Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 154FA12EB6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:03:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lnr5KUUIhE8Dab7R5rnXX9Ma4vDM0/gDZeAiWm3Dmgo=; b=EDXcpimTCr+FPj
	MW3PbNxX4OBozzwHmyRE6dTw3wLQFZntGEhaEu1IfNflJPZ2klvsdjiTLnOhoqlEDS8FL0v3mdx6Z
	V6yw+HdCrezHc0/iX7BRhEMLoEY6s0lcTNCHjCxCsuuWH3kFZsLJ/Gn/WeCcIc9AkrXqhzZJOHgsq
	vyyA3xXvslVdYDIQAwJlG1HBcDJny0H2EhQhJ2NlZZ/dk6ek6aGwQ6Xp2l1hV/0/YRBtMqptGgsGL
	DW5H0EJMolibE8+lzf1PwJpkhhdVVwpQB+gJZCqj1KdnBwsr3jm11lSd/OC6ARhDNhU/yRND4UMOY
	P+jm1VnWH7gNVIuAyUkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXqP-0003oW-OC; Fri, 03 May 2019 13:03:17 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXo5-0000HX-L6
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:00:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2J4sHMRwFtTOuvFR3WVa9mFK1bmhYQp9xm93dywxrGU=; b=L7GZ+BaOT7O+5fx9XRq05K+K2y
 mCq9ZaJaeL0CVJ7ygv7EqEGn5XRlpPh4dYaioWAu2bP34Tw+c1BVsWdy8DsvMhNiAKAEfBo7JtJ+O
 ipioMYrmeYDWsldVt+k8DRGTwdmpaOAsnjTJexQTi3oXIF5XPtkyVpyq/rGKNzlqxcK+0AFh05TzE
 C1KLG5VXhbi/PmWJntRiopJm27yk4K8EWxSgtd3Vh+IdfTHbbj/fQx8M/Ov/GqH1+gfdsbLmeaMuP
 siCFKIVx3voOjjrTzG2ohjITzxIUsAdXZbhUPsA+72gRzVeWJc9mRFULE94H5bVaPPdTb9mzISu25
 9fGuqDJw==;
Received: from foss.arm.com ([217.140.101.70])
 by casper.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXaF-000265-Dq
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:46:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 299B1374;
 Fri,  3 May 2019 05:46:35 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E6A2B3F220;
 Fri,  3 May 2019 05:46:31 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 32/56] KVM: arm64/sve: sys_regs: Demote redundant
 vcpu_has_sve() checks to WARNs
Date: Fri,  3 May 2019 13:44:03 +0100
Message-Id: <20190503124427.190206-33-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_134635_633536_8FED440E 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Julien Thierry <julien.thierry@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 "zhang . lei" <zhang.lei@jp.fujitsu.com>, Julien Grall <julien.grall@arm.com>,
 kvmarm@lists.cs.columbia.edu, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Martin <Dave.Martin@arm.com>

Because of the logic in kvm_arm_sys_reg_{get,set}_reg() and
sve_id_visibility(), we should never call
{get,set}_id_aa64zfr0_el1() for a vcpu where !vcpu_has_sve(vcpu).

To avoid the code giving the impression that it is valid for these
functions to be called in this situation, and to help the compiler
make the right optimisation decisions, this patch adds WARN_ON()
for these cases.

Given the way the logic is spread out, this seems preferable to
dropping the checks altogether.

Suggested-by: Andrew Jones <drjones@redhat.com>
Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Reviewed-by: Andrew Jones <drjones@redhat.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/kvm/sys_regs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 09e9b0625911..7046c7686321 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1144,7 +1144,7 @@ static int get_id_aa64zfr0_el1(struct kvm_vcpu *vcpu,
 {
 	u64 val;
 
-	if (!vcpu_has_sve(vcpu))
+	if (WARN_ON(!vcpu_has_sve(vcpu)))
 		return -ENOENT;
 
 	val = guest_id_aa64zfr0_el1(vcpu);
@@ -1159,7 +1159,7 @@ static int set_id_aa64zfr0_el1(struct kvm_vcpu *vcpu,
 	int err;
 	u64 val;
 
-	if (!vcpu_has_sve(vcpu))
+	if (WARN_ON(!vcpu_has_sve(vcpu)))
 		return -ENOENT;
 
 	err = reg_from_user(&val, uaddr, id);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
