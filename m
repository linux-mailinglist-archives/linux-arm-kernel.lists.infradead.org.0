Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A159312DEE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 14:45:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AaMFBKpwwRN9uOfeYJTEwpnRYO/z/0e6rmDfCiKN81U=; b=M0jcMRSwG7oAPt
	svI/qLT03XwDe28pUJAdUghGo0jS1vEhoQghNRcyYm1jMaP3t0qFM6LrkFvic/J9tIIEXb1YnWDuX
	yBbJEacVjDx/YDEOCZDzLqkL/DKntUIZNuB97hfnDBjXU97HoHyDHzoO8MWBXjgyLKe15rSyLvgtL
	Eh1t46g3ifrO5TRbaat/azKk604Le+lsd10pIWdfwtiSlAFda8abB/jq058G4IbAOSQ7Xifz83/+U
	MMHU/wsgJfzdsaQYS/xhCRB032NJ094Ak8oc4s5O4wpYg8Q/sG6c4p9lx6iUGDHpU7dngzHuMBVHa
	Ett8iiXzHZEWjwkuNCtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXYl-0002PK-OU; Fri, 03 May 2019 12:45:03 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXYU-0002IF-NE
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:44:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5299C374;
 Fri,  3 May 2019 05:44:46 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1BDE43F220;
 Fri,  3 May 2019 05:44:42 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 01/56] KVM: Documentation: Document arm64 core registers in
 detail
Date: Fri,  3 May 2019 13:43:32 +0100
Message-Id: <20190503124427.190206-2-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_054446_765114_3E3FFF9E 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
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

Since the the sizes of individual members of the core arm64
registers vary, the list of register encodings that make sense is
not a simple linear sequence.

To clarify which encodings to use, this patch adds a brief list
to the documentation.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Reviewed-by: Julien Grall <julien.grall@arm.com>
Reviewed-by: Peter Maydell <peter.maydell@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 Documentation/virtual/kvm/api.txt | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/virtual/kvm/api.txt b/Documentation/virtual/kvm/api.txt
index 7de9eee73fcd..2d4f7ce5e967 100644
--- a/Documentation/virtual/kvm/api.txt
+++ b/Documentation/virtual/kvm/api.txt
@@ -2107,6 +2107,30 @@ contains elements ranging from 32 to 128 bits. The index is a 32bit
 value in the kvm_regs structure seen as a 32bit array.
   0x60x0 0000 0010 <index into the kvm_regs struct:16>
 
+Specifically:
+    Encoding            Register  Bits  kvm_regs member
+----------------------------------------------------------------
+  0x6030 0000 0010 0000 X0          64  regs.regs[0]
+  0x6030 0000 0010 0002 X1          64  regs.regs[1]
+    ...
+  0x6030 0000 0010 003c X30         64  regs.regs[30]
+  0x6030 0000 0010 003e SP          64  regs.sp
+  0x6030 0000 0010 0040 PC          64  regs.pc
+  0x6030 0000 0010 0042 PSTATE      64  regs.pstate
+  0x6030 0000 0010 0044 SP_EL1      64  sp_el1
+  0x6030 0000 0010 0046 ELR_EL1     64  elr_el1
+  0x6030 0000 0010 0048 SPSR_EL1    64  spsr[KVM_SPSR_EL1] (alias SPSR_SVC)
+  0x6030 0000 0010 004a SPSR_ABT    64  spsr[KVM_SPSR_ABT]
+  0x6030 0000 0010 004c SPSR_UND    64  spsr[KVM_SPSR_UND]
+  0x6030 0000 0010 004e SPSR_IRQ    64  spsr[KVM_SPSR_IRQ]
+  0x6060 0000 0010 0050 SPSR_FIQ    64  spsr[KVM_SPSR_FIQ]
+  0x6040 0000 0010 0054 V0         128  fp_regs.vregs[0]
+  0x6040 0000 0010 0058 V1         128  fp_regs.vregs[1]
+    ...
+  0x6040 0000 0010 00d0 V31        128  fp_regs.vregs[31]
+  0x6020 0000 0010 00d4 FPSR        32  fp_regs.fpsr
+  0x6020 0000 0010 00d5 FPCR        32  fp_regs.fpcr
+
 arm64 CCSIDR registers are demultiplexed by CSSELR value:
   0x6020 0000 0011 00 <csselr:8>
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
