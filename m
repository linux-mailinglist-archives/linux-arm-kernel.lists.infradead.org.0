Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3361BD3D80
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 12:36:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9t0x7yoStIgq1Mdi+N5uxfYNw500N3O5b7o5qQzjsHo=; b=sgYpI2eCrxXZ3G
	fcB0Kr8qh/bZXaeMrI09P1g7PjKThmgpN1ayznHhzgfoJLM/CGbYDd6vpXR0WSs9arDg8Zwd0RZrK
	sFfmAkG19bAkp7e4xMf9faNloeNFLIzl/K8btYhYfZHGjl1+nAX2EjPmCGYMRnMqy9yW2TKJmaOg2
	W/+/zkp1FYCjQ7lxV7hpQtUYY+RprUeVfP8TtOHw6epdN9YbL4Qz+JEsR3q7KgytucZxdFMbw1YRq
	DsYmliioyW54UnImeQWmbN6ajxYs1k2iiPwVdVR/maZLUFpqV6TrprtAjQYjckRXPmzFmoscAqYx4
	E14v5xakLeBWVi39IOMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsHT-00048p-GD; Fri, 11 Oct 2019 10:36:19 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIsGl-0003iP-6Y
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 10:35:36 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9BAYvMH014951; Fri, 11 Oct 2019 03:35:27 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=KNmvBhVn1l0nKUfPonA02QzS24cBuF4re9Gx4RRspao=;
 b=dE1NvOgFRuUVHhXv96249kZyEq4hbzLSzRt8nKijasCYM9vTuosPvCRaNa6I30sbRzfr
 JxNMT2HMS2MrGsO7IpaEg0keZgdhW1ON5ZjCppbv75I/4meMyFunpgDHKt0oInFFho41
 TyJLAB/WZDqNg17tiky+rZ9aBfwF4rDquIF/P00XI1m4nativvKhJTa+MrM4c/l+4+A+
 XK7WtWU2us9D1QInq4InKZM86nuI3NP8aI8LLUBUviyYSkVMSwbbQg+3zY0SM+DvCoEU
 jGTNT28Tk5yawFasgKTPd/5n/ji7K7gsouaAmfKNcPRkzSWkSaLsGGgrWnRyUMJ6oqDV 4g== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0a-0016f401.pphosted.com with ESMTP id 2vjj6v181p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 11 Oct 2019 03:35:27 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Fri, 11 Oct
 2019 03:35:26 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (104.47.32.53) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Fri, 11 Oct 2019 03:35:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GJaHQIZUDhJwmTdYX71AUEKlCJst+UrQxrvAIV1C1qUMrYxGxF7nqGw4aweCVwl95IWv5LUrwWMcbzUVgKkIiXbpbfffSmkKYsJOO5hAHN+7eAhCQVXKNcgsnTPlCMaeiHf77W/ZBByod+5hut3OrxipLPS1QiFfTwoifJBwaMfKzrAulC7m6FuqfL7owPGH7a4PArmpUO2A6gdbV9aCV5Px/FFJ7k5ZUvT0Pu2r1QfSGa3gDRzX2KMpgE0z9NNiPeKK1exDypX6lf6w6WIVcOHSpKMI6EJ/dHqJu9EW+Ni2Lj26nr2sbYnu2tQTFnAm4UR4BoDeoZk4IgIg9sHY0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KNmvBhVn1l0nKUfPonA02QzS24cBuF4re9Gx4RRspao=;
 b=jHNrLi2X9sNDn+/p0wgA13KITEgRXi/TVNlFH0R28trWPjEAUGdOfC3WOaFH82un6EVxHSNleQycje2K2anh/7IhiwQIoHXysAuzhiFn4Sbz/60bUOQhatn6z0qiollpc0tZrX5ObS7V/kmGVDkLnkikLZ9sSmJkkMFkq2nAMAs+PG6Lc++BCB0wRq+JQPuCwWuMOi1b7d4jgzz7I0d05/7DDtHbjAf9o9ECOSizYc9Sy1S6ha8geoHQ8tdmcwFnmrnfPZFFQyLv/2dDLdChtjHntEuVyW6Ok34zAM/lY/tXTjyheBlI4aZo9nxzZxEO9Dr8SCN/ywRWvM3BNglNzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KNmvBhVn1l0nKUfPonA02QzS24cBuF4re9Gx4RRspao=;
 b=iUqqErFXBAtIU4Vv5P2rpq3L/StmJhQK9+3wsVmdOPS0ol6FnKhtXsEfjIO9UPhCb7ldy9/R0z6EzS3s9412WYiycNe3iy1lS7XwdkWTr3XBvTKKL5nVPDL+D5hr/LW9KzuUws0X40w8URQvo0v8++j0PF4OQSCbZq72gbm5ymQ=
Received: from CY4PR1801MB1895.namprd18.prod.outlook.com (10.171.254.153) by
 CY4PR1801MB2006.namprd18.prod.outlook.com (10.165.89.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Fri, 11 Oct 2019 10:35:24 +0000
Received: from CY4PR1801MB1895.namprd18.prod.outlook.com
 ([fe80::95d8:1a9a:a3b4:616b]) by CY4PR1801MB1895.namprd18.prod.outlook.com
 ([fe80::95d8:1a9a:a3b4:616b%7]) with mapi id 15.20.2347.016; Fri, 11 Oct 2019
 10:35:24 +0000
From: Jayachandran Chandrasekharan Nair <jnair@marvell.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Marc Zyngier <maz@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "kvmarm@lists.cs.columbia.edu"
 <kvmarm@lists.cs.columbia.edu>
Subject: [PATCH 2/2] arm64: KVM: Add option to trap and emulate guest VM
 sysreg updates
Thread-Topic: [PATCH 2/2] arm64: KVM: Add option to trap and emulate guest VM
 sysreg updates
Thread-Index: AQHVgB+WMfRHhwoFN0m2Vnnd0TZZlw==
Date: Fri, 11 Oct 2019 10:35:23 +0000
Message-ID: <1570790105-31829-3-git-send-email-jnair@marvell.com>
References: <1570790105-31829-1-git-send-email-jnair@marvell.com>
In-Reply-To: <1570790105-31829-1-git-send-email-jnair@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR04CA0015.namprd04.prod.outlook.com
 (2603:10b6:a03:40::28) To CY4PR1801MB1895.namprd18.prod.outlook.com
 (2603:10b6:910:79::25)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2cbc005e-92f0-4fc3-123f-08d74e36b90d
x-ms-traffictypediagnostic: CY4PR1801MB2006:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1801MB2006EB1B2181B74391E5C775A6970@CY4PR1801MB2006.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0187F3EA14
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(396003)(39860400002)(366004)(346002)(199004)(189003)(2616005)(4326008)(14454004)(305945005)(8676002)(11346002)(6486002)(76176011)(316002)(6436002)(8936002)(81166006)(5660300002)(446003)(102836004)(81156014)(386003)(26005)(15650500001)(52116002)(66066001)(6116002)(2906002)(7736002)(2501003)(99286004)(476003)(4720700003)(256004)(478600001)(3846002)(64756008)(66446008)(2171002)(66476007)(66556008)(110136005)(6506007)(486006)(71190400001)(66946007)(186003)(54906003)(25786009)(86362001)(2201001)(71200400001)(50226002)(36756003)(6512007)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR1801MB2006;
 H:CY4PR1801MB1895.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TjdAEoP8tCo9Ew6arM/IVm1A0hmj8l4k5cHVm4vcRdeXzzdR/jK7LnQ7p/C4HLVnrIHL6K8gQhUhq2OlQ8U1WQqX3lEEkG7ZI2TyM3wXaYyeKqMbFrupCuD33sypKsOJFolJcvtpy3znH0YIKmqoulJ2j8hSZRfarV633aCRh83PJoSwVocjo44ao1mBkIAVte9OfH+zkTdjZTFgzSBNCpOs4vBb1NPQpy0KuMzchcTb+FaTbtgtejFxT+apRInNl6HwnLn9fQLc/7ExszGTpCyDGGX1jFidHkUkNWdhycFSEyjy5/RBuWf8n28hY18YosiSrplQPy2y2xm7SiQpwjJwFRV2CUm4KTsjcqpt7SXugriFMjtN6UyJedbL7HS9DZ75cqFCzwc/J/TyqyZ6RXmdb6ko7TuBYzKSozvbkmE=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cbc005e-92f0-4fc3-123f-08d74e36b90d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2019 10:35:23.7865 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a8592Vx0HmqG8HajXIRT68UEJOCt+3hvENYXMrrPEdJr9Jj7DWceJrL5nziZ1NUQ4qlpewM7aKy8/Wnjst/oCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1801MB2006
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-11_07:2019-10-10,2019-10-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_033535_246612_F0C244E8 
X-CRM114-Status: GOOD (  26.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tomasz Nowicki <tnowicki@marvell.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Robert Richter <rrichter@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable use of HCR_EL2.TVM to trap and emulate updates to TTBRx_EL1
and other address translation related system registers.

To minimize the overhead, traps caused by this flag are emulated in a
fast path and we don't go all the way back to the main sysreg handling
code, unless the rest of the hypervisor expects to see these accesses.

On Cavium ThunderX2, this option enabled by default when SMT > 1, to
ensure that a guest kernel cannot trigger erratum 219. We provide a
kernel command line option "kvm-arm.vm_msr_trap"  to turn this
option off - this is to handle the case where the user has a trustable
guest kernel, and wants to avoid the trap overhead.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
[Marc's original patch has been changed significantly to add the
 boot time parameter - jnair]
Signed-off-by: Jayachandran Chandrasekharan Nair <jnair@marvell.com>
---
 .../admin-guide/kernel-parameters.txt         |   5 +
 arch/arm/include/asm/kvm_host.h               |   1 +
 arch/arm64/include/asm/kvm_host.h             |   2 +
 arch/arm64/kvm/hyp/switch.c                   | 115 +++++++++++++++++-
 virt/kvm/arm/arm.c                            |   2 +
 5 files changed, 123 insertions(+), 2 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index c7ac2f3ac99f..2028b002bc99 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -2078,6 +2078,11 @@
 			[KVM,ARM] Allow use of GICv4 for direct injection of
 			LPIs.
 
+	kvm-arm.vm_msr_trap=
+			[KVM,ARM] Trap guest accesses to address translation
+			related system registers. Can be set to 0 to turn off
+			erratum 219 workaround on Cavium ThunderX2.
+
 	kvm-intel.ept=	[KVM,Intel] Disable extended page tables
 			(virtualized MMU) support on capable Intel chips.
 			Default is 1 (enabled)
diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
index 8a37c8e89777..a9cc1be336ef 100644
--- a/arch/arm/include/asm/kvm_host.h
+++ b/arch/arm/include/asm/kvm_host.h
@@ -42,6 +42,7 @@
 DECLARE_STATIC_KEY_FALSE(userspace_irqchip_in_use);
 
 static inline int kvm_arm_init_sve(void) { return 0; }
+static inline int kvm_arm_config_vm_msr_trap(void) { }
 
 u32 *kvm_vcpu_reg(struct kvm_vcpu *vcpu, u8 reg_num, u32 mode);
 int __attribute_const__ kvm_target_cpu(void);
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index f656169db8c3..4939e795e2ee 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -50,6 +50,8 @@ DECLARE_STATIC_KEY_FALSE(userspace_irqchip_in_use);
 extern unsigned int kvm_sve_max_vl;
 int kvm_arm_init_sve(void);
 
+void kvm_arm_config_vm_msr_trap(void);
+
 int __attribute_const__ kvm_target_cpu(void);
 int kvm_reset_vcpu(struct kvm_vcpu *vcpu);
 void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu);
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 3d3815020e36..cbba53714305 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -120,10 +120,15 @@ static void __hyp_text __activate_traps_nvhe(struct kvm_vcpu *vcpu)
 	write_sysreg(val, cptr_el2);
 }
 
+/* Key to set HCR_EL2.TVM when running a guest */
+static DEFINE_STATIC_KEY_FALSE(vm_msr_trap);
+
 static void __hyp_text __activate_traps(struct kvm_vcpu *vcpu)
 {
 	u64 hcr = vcpu->arch.hcr_el2;
 
+	if (static_branch_unlikely(&vm_msr_trap))
+		hcr |= HCR_TVM;
 	write_sysreg(hcr, hcr_el2);
 
 	if (cpus_have_const_cap(ARM64_HAS_RAS_EXTN) && (hcr & HCR_VSE))
@@ -174,8 +179,10 @@ static void __hyp_text __deactivate_traps(struct kvm_vcpu *vcpu)
 	 * the crucial bit is "On taking a vSError interrupt,
 	 * HCR_EL2.VSE is cleared to 0."
 	 */
-	if (vcpu->arch.hcr_el2 & HCR_VSE)
-		vcpu->arch.hcr_el2 = read_sysreg(hcr_el2);
+	if (vcpu->arch.hcr_el2 & HCR_VSE) {
+		vcpu->arch.hcr_el2 &= ~HCR_VSE;
+		vcpu->arch.hcr_el2 |= read_sysreg(hcr_el2) & HCR_VSE;
+	}
 
 	if (has_vhe())
 		deactivate_traps_vhe();
@@ -380,6 +387,61 @@ static bool __hyp_text __hyp_handle_fpsimd(struct kvm_vcpu *vcpu)
 	return true;
 }
 
+static bool __hyp_text handle_hcr_tvm(struct kvm_vcpu *vcpu)
+{
+	u32 sysreg = esr_sys64_to_sysreg(kvm_vcpu_get_hsr(vcpu));
+	int rt = kvm_vcpu_sys_get_rt(vcpu);
+	u64 val = vcpu_get_reg(vcpu, rt);
+
+	/*
+	 * The normal sysreg handling code expects to see the traps,
+	 * let's not do anything here.
+	 */
+	if (vcpu->arch.hcr_el2 & HCR_TVM)
+		return false;
+
+	switch (sysreg) {
+	case SYS_SCTLR_EL1:
+		write_sysreg_el1(val, SYS_SCTLR);
+		break;
+	case SYS_TTBR0_EL1:
+		write_sysreg_el1(val, SYS_TTBR0);
+		break;
+	case SYS_TTBR1_EL1:
+		write_sysreg_el1(val, SYS_TTBR1);
+		break;
+	case SYS_TCR_EL1:
+		write_sysreg_el1(val, SYS_TCR);
+		break;
+	case SYS_ESR_EL1:
+		write_sysreg_el1(val, SYS_ESR);
+		break;
+	case SYS_FAR_EL1:
+		write_sysreg_el1(val, SYS_FAR);
+		break;
+	case SYS_AFSR0_EL1:
+		write_sysreg_el1(val, SYS_AFSR0);
+		break;
+	case SYS_AFSR1_EL1:
+		write_sysreg_el1(val, SYS_AFSR1);
+		break;
+	case SYS_MAIR_EL1:
+		write_sysreg_el1(val, SYS_MAIR);
+		break;
+	case SYS_AMAIR_EL1:
+		write_sysreg_el1(val, SYS_AMAIR);
+		break;
+	case SYS_CONTEXTIDR_EL1:
+		write_sysreg_el1(val, SYS_CONTEXTIDR);
+		break;
+	default:
+		return false;
+	}
+
+	__kvm_skip_instr(vcpu);
+	return true;
+}
+
 /*
  * Return true when we were able to fixup the guest exit and should return to
  * the guest, false when we should restore the host state and return to the
@@ -399,6 +461,11 @@ static bool __hyp_text fixup_guest_exit(struct kvm_vcpu *vcpu, u64 *exit_code)
 	if (*exit_code != ARM_EXCEPTION_TRAP)
 		goto exit;
 
+	if (static_branch_unlikely(&vm_msr_trap) &&
+	    kvm_vcpu_trap_get_class(vcpu) == ESR_ELx_EC_SYS64 &&
+	    handle_hcr_tvm(vcpu))
+		return true;
+
 	/*
 	 * We trap the first access to the FP/SIMD to save the host context
 	 * and restore the guest context lazily.
@@ -718,3 +785,47 @@ void __hyp_text __noreturn hyp_panic(struct kvm_cpu_context *host_ctxt)
 
 	unreachable();
 }
+
+/* command line setting, values : -1 : off, 1 : on, 0 : not set */
+static int vm_msr_trap_arg;
+
+static int __init handle_early_vm_msr_trap_arg(char *buf)
+{
+	bool val;
+	int rv;
+
+	rv = strtobool(buf, &val);
+	vm_msr_trap_arg = val ? 1 : -1;
+	return rv;
+}
+early_param("kvm-arm.vm_msr_trap", handle_early_vm_msr_trap_arg);
+
+void kvm_arm_config_vm_msr_trap(void)
+{
+	bool needed = false;
+
+#ifdef CONFIG_CAVIUM_TX2_ERRATUM_219
+	if (cpus_have_const_cap(ARM64_WORKAROUND_CAVIUM_TX2_219)) {
+		int i;
+
+		/* needed if Aff0 of any CPU is non-zero, i.e, SMT > 1 */
+		for_each_possible_cpu(i) {
+			if (MPIDR_AFFINITY_LEVEL(cpu_logical_map(i), 0) != 0) {
+				needed = true;
+				break;
+			}
+		}
+	}
+#endif
+	if (needed) {
+		if (vm_msr_trap_arg == -1)
+			pr_warn("KVM: Cavium ThunderX2 erratum 219 workaround forced off!\n");
+		else
+			vm_msr_trap_arg = 1;
+	}
+
+	if (vm_msr_trap_arg > 0) {
+		static_branch_enable(&vm_msr_trap);
+		kvm_info("Using HCR_EL2.TVM to trap guest VM updates.\n");
+	}
+}
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index 86c6aa1cb58e..799c4bb308be 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -1696,6 +1696,8 @@ int kvm_arch_init(void *opaque)
 	if (err)
 		return err;
 
+	kvm_arm_config_vm_msr_trap();
+
 	if (!in_hyp_mode) {
 		err = init_hyp_mode();
 		if (err)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
