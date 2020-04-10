Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A85E81A441C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 11:00:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CrEkyB+liWMPYr0hqeP74ekYIfjUu/pSJ1EhmmZDPQM=; b=svRkQGfpNucouB
	xtvoXKYjcPKKHH0pbKxUBNwVdBSQ7UwPmfLUhsh087l29/Q9p/krA3pxXujhao1vj+SeYK8lf+sPv
	1sqmXSHD6Q8ScfLoTNxLNCcvQoTrMiHf03ibqyPB8/wUBZlu9bLGF8ikd7B68Val/6TSd/vNbeP75
	z1HyE/uI9itKoottNO+5Hu90tmiFGrqdbKRJ8ape124aAcxPa0bi6+//5KLkwuFN9NLCCjQuoCBBn
	d06X7zuXbEdu/kDxDvGiIFdJSQ8ZNDiejWcetGLwFeqexKIVbW6TNYRkkFdXb9qDElAcSd+Dgb/i5
	IosLRvV2Hwy0E1cphMkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMpWa-0003TD-KT; Fri, 10 Apr 2020 09:00:32 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMpVN-0008Uu-7y
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 08:59:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586509156;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0kCLBgqm5U5m0awoTWY24IbEePoTKJUpX6H4QYV0tTQ=;
 b=jWIHhKIh5tVhqUJEGifupFRMWWT+rAz0ESRA3vh9xitpXEtBJtKFTB9myDK518gUj5V0qX
 pdUpjcay4vk+NyTDClx3Z3OLeu4YrdqyFbQvUADWyl4yrkHjBJUWBqsQpFR+E6JPIKlRts
 Ce07N9EkRErCzub+qntlPeo7E893UJM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-103-9hgVFw0cN8uJag-xEd0v0Q-1; Fri, 10 Apr 2020 04:59:14 -0400
X-MC-Unique: 9hgVFw0cN8uJag-xEd0v0Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 98C3F18C35A2;
 Fri, 10 Apr 2020 08:59:12 +0000 (UTC)
Received: from 192-168-1-115.tpgi.com.com (vpn2-54-29.bne.redhat.com
 [10.64.54.29])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 517F85E001;
 Fri, 10 Apr 2020 08:59:06 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH RFCv1 5/7] kvm/arm64: Allow inject data abort with specified
 DFSC
Date: Fri, 10 Apr 2020 18:58:18 +1000
Message-Id: <20200410085820.758686-6-gshan@redhat.com>
In-Reply-To: <20200410085820.758686-1-gshan@redhat.com>
References: <20200410085820.758686-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_015917_427982_965DF959 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, drjones@redhat.com, suzuki.poulose@arm.com,
 maz@kernel.org, sudeep.holla@arm.com, eric.auger@redhat.com,
 james.morse@arm.com, shan.gavin@gmail.com, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The data abort will be used as signal by the asynchronous page fault.
However, the specific IMPDEF Data Fault Status Code (DFSC) is used.
Currently, there is no API to inject data abort with specific DSC.
This fixes the gap by introducing kvm_inject_dabt_with_dfsc().

Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 arch/arm64/include/asm/kvm_emulate.h |  4 ++++
 arch/arm64/kvm/inject_fault.c        | 34 ++++++++++++++++++++++++----
 virt/kvm/arm/aarch32.c               | 27 +++++++++++++++-------
 3 files changed, 53 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
index 2873bf6dc85e..fdf6a01b9dcb 100644
--- a/arch/arm64/include/asm/kvm_emulate.h
+++ b/arch/arm64/include/asm/kvm_emulate.h
@@ -31,9 +31,13 @@ void kvm_skip_instr32(struct kvm_vcpu *vcpu, bool is_wide_instr);
 void kvm_inject_undefined(struct kvm_vcpu *vcpu);
 void kvm_inject_vabt(struct kvm_vcpu *vcpu);
 void kvm_inject_dabt(struct kvm_vcpu *vcpu, unsigned long addr);
+void kvm_inject_dabt_with_dfsc(struct kvm_vcpu *vcpu,
+			       unsigned long addr, unsigned int dfsc);
 void kvm_inject_pabt(struct kvm_vcpu *vcpu, unsigned long addr);
 void kvm_inject_undef32(struct kvm_vcpu *vcpu);
 void kvm_inject_dabt32(struct kvm_vcpu *vcpu, unsigned long addr);
+void kvm_inject_dabt32_with_dfsc(struct kvm_vcpu *vcpu,
+				 unsigned long addr, unsigned int dfsc);
 void kvm_inject_pabt32(struct kvm_vcpu *vcpu, unsigned long addr);
 
 static __always_inline bool vcpu_el1_is_32bit(struct kvm_vcpu *vcpu)
diff --git a/arch/arm64/kvm/inject_fault.c b/arch/arm64/kvm/inject_fault.c
index 0ae7c2e40e02..35794d0de0e9 100644
--- a/arch/arm64/kvm/inject_fault.c
+++ b/arch/arm64/kvm/inject_fault.c
@@ -110,7 +110,9 @@ static unsigned long get_except64_pstate(struct kvm_vcpu *vcpu)
 	return new;
 }
 
-static void inject_abt64(struct kvm_vcpu *vcpu, bool is_iabt, unsigned long addr)
+static void inject_abt64(struct kvm_vcpu *vcpu, bool is_iabt,
+			 unsigned long addr, bool dfsc_valid,
+			 unsigned int dfsc)
 {
 	unsigned long cpsr = *vcpu_cpsr(vcpu);
 	bool is_aarch32 = vcpu_mode_is_32bit(vcpu);
@@ -143,7 +145,12 @@ static void inject_abt64(struct kvm_vcpu *vcpu, bool is_iabt, unsigned long addr
 	if (!is_iabt)
 		esr |= ESR_ELx_EC_DABT_LOW << ESR_ELx_EC_SHIFT;
 
-	vcpu_write_sys_reg(vcpu, esr | ESR_ELx_FSC_EXTABT, ESR_EL1);
+	if (dfsc_valid)
+		esr |= dfsc;
+	else
+		esr |= ESR_ELx_FSC_EXTABT;
+
+	vcpu_write_sys_reg(vcpu, esr, ESR_EL1);
 }
 
 static void inject_undef64(struct kvm_vcpu *vcpu)
@@ -180,7 +187,26 @@ void kvm_inject_dabt(struct kvm_vcpu *vcpu, unsigned long addr)
 	if (vcpu_el1_is_32bit(vcpu))
 		kvm_inject_dabt32(vcpu, addr);
 	else
-		inject_abt64(vcpu, false, addr);
+		inject_abt64(vcpu, false, addr, false, 0);
+}
+
+/**
+ * kvm_inject_dabt_with_dfsc - inject a data abort into the guest
+ * @vcpu: The VCPU to receive the data abort
+ * @addr: The address to report in the DFAR
+ * @dfsc: The data fault status code to be reported in DFSR
+ *
+ * It is assumed that this code is called from the VCPU thread and that the
+ * VCPU therefore is not currently executing guest code.
+ */
+void kvm_inject_dabt_with_dfsc(struct kvm_vcpu *vcpu,
+			       unsigned long addr,
+			       unsigned int dfsc)
+{
+	if (vcpu_el1_is_32bit(vcpu))
+		kvm_inject_dabt32_with_dfsc(vcpu, addr, dfsc);
+	else
+		inject_abt64(vcpu, false, addr, true, dfsc);
 }
 
 /**
@@ -196,7 +222,7 @@ void kvm_inject_pabt(struct kvm_vcpu *vcpu, unsigned long addr)
 	if (vcpu_el1_is_32bit(vcpu))
 		kvm_inject_pabt32(vcpu, addr);
 	else
-		inject_abt64(vcpu, true, addr);
+		inject_abt64(vcpu, true, addr, false, 0);
 }
 
 /**
diff --git a/virt/kvm/arm/aarch32.c b/virt/kvm/arm/aarch32.c
index 0a356aa91aa1..82bded4cab25 100644
--- a/virt/kvm/arm/aarch32.c
+++ b/virt/kvm/arm/aarch32.c
@@ -163,7 +163,8 @@ void kvm_inject_undef32(struct kvm_vcpu *vcpu)
  * pseudocode.
  */
 static void inject_abt32(struct kvm_vcpu *vcpu, bool is_pabt,
-			 unsigned long addr)
+			 unsigned long addr, bool dfsc_valid,
+			 unsigned int dfsc)
 {
 	u32 vect_offset;
 	u32 *far, *fsr;
@@ -184,21 +185,31 @@ static void inject_abt32(struct kvm_vcpu *vcpu, bool is_pabt,
 	*far = addr;
 
 	/* Give the guest an IMPLEMENTATION DEFINED exception */
-	is_lpae = (vcpu_cp15(vcpu, c2_TTBCR) >> 31);
-	if (is_lpae) {
-		*fsr = DFSR_LPAE | DFSR_FSC_EXTABT_LPAE;
+	if (dfsc_valid) {
+		*fsr = dfsc;
 	} else {
-		/* no need to shuffle FS[4] into DFSR[10] as its 0 */
-		*fsr = DFSR_FSC_EXTABT_nLPAE;
+		is_lpae = (vcpu_cp15(vcpu, c2_TTBCR) >> 31);
+		if (is_lpae) {
+			*fsr = DFSR_LPAE | DFSR_FSC_EXTABT_LPAE;
+		} else {
+			/* no need to shuffle FS[4] into DFSR[10] as its 0 */
+			*fsr = DFSR_FSC_EXTABT_nLPAE;
+		}
 	}
 }
 
 void kvm_inject_dabt32(struct kvm_vcpu *vcpu, unsigned long addr)
 {
-	inject_abt32(vcpu, false, addr);
+	inject_abt32(vcpu, false, addr, false, 0);
+}
+
+void kvm_inject_dabt32_with_dfsc(struct kvm_vcpu *vcpu,
+				 unsigned long addr, unsigned int dfsc)
+{
+	inject_abt32(vcpu, false, addr, true, dfsc);
 }
 
 void kvm_inject_pabt32(struct kvm_vcpu *vcpu, unsigned long addr)
 {
-	inject_abt32(vcpu, true, addr);
+	inject_abt32(vcpu, true, addr, false, 0);
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
