Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CE67FDE1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 17:56:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3gycx9DYy+Qk0CdTPvHVZmVegNUeuLfLMYIaXpDcbsk=; b=sdfY+KpbZV8804
	7aaGmJsKib4XIfS2Pg7qNgECHPbc7mLTdF7Bd1+SfZ5fnoESo00Uk9Nj7NyNbRTpWdeQqBIHZhYRR
	DQfLnGqmBL8XhAhp8l/MDL5gdYbUynsI7YisoEt1wXjbgCwCp7nH4bRPdoG5QoallL38GGuwVsLgh
	EeBmCAda14Pyzv0H2HtmkL7I3TmE3U9ki+HVWlfOt2xyD7DcUYbN/qckO5z6LTIBcSVzzCZHcQqqU
	Cd9D//sGQ3nuwSsRGYF67z7y0UarhKbXYjNRz5C5YPbDKTEqgi53cDCF5dVeaM4BAq+5SquLghMP0
	gt4OR+CAan1kjWDPoDwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htZuz-0002Du-Sf; Fri, 02 Aug 2019 15:56:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htZut-0002DJ-Hf
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 15:56:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CD6F61596;
 Fri,  2 Aug 2019 08:56:26 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 AC41C3F575; Fri,  2 Aug 2019 08:56:25 -0700 (PDT)
Subject: Re: kvm-unit-tests: psci_cpu_on_test FAILed
To: Zenghui Yu <yuzenghui@huawei.com>, drjones@redhat.com,
 James Morse <james.morse@arm.com>, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
References: <3ddf8766-6f02-b655-1b80-d8a7fd016509@huawei.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <48a18685-ee81-83a7-9eea-63fe26690903@kernel.org>
Date: Fri, 2 Aug 2019 16:56:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3ddf8766-6f02-b655-1b80-d8a7fd016509@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_085627_690062_43885DCA 
X-CRM114-Status: GOOD (  20.84  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org,
 "Wanghaibin \(D\)" <wanghaibin.wang@huawei.com>, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/08/2019 11:56, Zenghui Yu wrote:
> Hi folks,
> 
> Running kvm-unit-tests with Linux 5.3.0-rc2 on Kunpeng 920, we will get
> the following fail info:
> 
> 	[...]
> 	FAIL psci (4 tests, 1 unexpected failures)
> 	[...]
> and
> 	[...]
> 	INFO: unexpected cpu_on return value: caller=CPU9, ret=-2
> 	FAIL: cpu-on
> 	SUMMARY: 4 tests, 1 unexpected failures
> 
> 
> I think this is an issue had been fixed once by commit 6c7a5dce22b3
> ("KVM: arm/arm64: fix races in kvm_psci_vcpu_on"), which makes use of
> kvm->lock mutex to fix the race between two PSCI_CPU_ON calls - one
> does reset on the MPIDR register whilst another reads it.
> 
> But commit 358b28f09f0 ("arm/arm64: KVM: Allow a VCPU to fully reset
> itself") later moves the reset work into check_vcpu_requests(), by
> making a KVM_REQ_VCPU_RESET request in PSCI code. Thus the reset work
> has not been protected by kvm->lock mutex anymore, and the race shows up
> again...
> 
> Do we need a fix for this issue? At least achieve a mutex execution
> between the reset of MPIDR and kvm_mpidr_to_vcpu()?

The thing is that the way we reset registers is marginally insane.
Yes, it catches most reset bugs. It also introduces many more in
the rest of the paths.

The fun part is that there is hardly a need for resetting MPIDR.
It has already been set when we've created the vcpu. It is the
poisoning of the sysreg array that creates a situation where
the MPIDR is temporarily invalid.

So instead of poisoning the array, how about we just keep
track of the registers for which we've called a reset function?
It should be enough to track the most obvious bugs... I've
cobbled the following patch together, which seems to fix the
issue on my TX2 with 64 vcpus.

Thoughts?

	M.

diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index f26e181d881c..17f46ee7dc83 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -2254,13 +2254,17 @@ static int emulate_sys_reg(struct kvm_vcpu *vcpu,
 }
 
 static void reset_sys_reg_descs(struct kvm_vcpu *vcpu,
-			      const struct sys_reg_desc *table, size_t num)
+				const struct sys_reg_desc *table, size_t num,
+				unsigned long *bmap)
 {
 	unsigned long i;
 
 	for (i = 0; i < num; i++)
-		if (table[i].reset)
+		if (table[i].reset) {
 			table[i].reset(vcpu, &table[i]);
+			if (bmap)
+				set_bit(i, bmap);
+		}
 }
 
 /**
@@ -2772,21 +2776,23 @@ void kvm_sys_reg_table_init(void)
  */
 void kvm_reset_sys_regs(struct kvm_vcpu *vcpu)
 {
+	unsigned long *bmap;
 	size_t num;
 	const struct sys_reg_desc *table;
 
-	/* Catch someone adding a register without putting in reset entry. */
-	memset(&vcpu->arch.ctxt.sys_regs, 0x42, sizeof(vcpu->arch.ctxt.sys_regs));
+	bmap = bitmap_alloc(NR_SYS_REGS, GFP_KERNEL);
 
 	/* Generic chip reset first (so target could override). */
-	reset_sys_reg_descs(vcpu, sys_reg_descs, ARRAY_SIZE(sys_reg_descs));
+	reset_sys_reg_descs(vcpu, sys_reg_descs, ARRAY_SIZE(sys_reg_descs), bmap);
 
 	table = get_target_table(vcpu->arch.target, true, &num);
-	reset_sys_reg_descs(vcpu, table, num);
+	reset_sys_reg_descs(vcpu, table, num, bmap);
 
 	for (num = 1; num < NR_SYS_REGS; num++) {
-		if (WARN(__vcpu_sys_reg(vcpu, num) == 0x4242424242424242,
+		if (WARN(bmap && !test_bit(num, bmap),
 			 "Didn't reset __vcpu_sys_reg(%zi)\n", num))
 			break;
 	}
+
+	kfree(bmap);
 }


-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
