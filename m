Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E70061E97DB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 15:38:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EpZSFmQroeyutxLw0mnHQ8YIvYPGO4X5iF+AaH6TjVY=; b=GivYeRLGC54FbWKbZj7LVdz8/
	Z0XkpNi3ndEdOOFOXvDhC/39HIdUBUvC57bpQwM1crosoFv4JK0G3IRRLDc15dX5g9zbzsD7WQr2V
	3ReIYva+KLoI+JN8MoGkNyvi6r8aUozBFDmEBWK27Xitsnm2cbGgEweKMudULBhL2zA30/r75V8rv
	J4/hpi8S8b8o/6lcCnPTF537aqCKjGPmSggMfeilYb7u5xXQgx4XickR8l7eete3d/6GIqaJIBUyx
	1++62mNmN976mYO1fqJ2IGH93LbxXyNK8Pu7p5Y6l7LKX7jqQ2/EfRfKOo0d1D0uizaLX+7zUH9ej
	U9AZ5G6mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfOA5-00080r-Hy; Sun, 31 May 2020 13:38:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfO9x-00080L-FF
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 13:37:54 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2C8C1206F1;
 Sun, 31 May 2020 13:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590932272;
 bh=PinbNsGvjOCu01z2yD/Rnhlz2gzf22QvJJ6yl34ziwA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nBsqsjL403lfU1YOplK66SyWzj2gv9BgXlGslZn8oFCn4A/7YSjqasY1I0HxwEYwt
 BcbkIkc9sd0AaV0rrzeb+yZDegif9TiRJgc8JBO8nBAUp6wdiHcLdsrIyUHzXP/4OH
 x95FNBWTw7C2EUnRBoWpMi53enuTA2BYMReUX2yg=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jfO9u-00Gh3V-Ph; Sun, 31 May 2020 14:37:50 +0100
MIME-Version: 1.0
Date: Sun, 31 May 2020 14:37:50 +0100
From: Marc Zyngier <maz@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 0/3] KVM: arm64: aarch32 ACTLR accesses
In-Reply-To: <20200526161834.29165-1-james.morse@arm.com>
References: <20200526161834.29165-1-james.morse@arm.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <8bdb1f67fb142f3547ebcbbe4e6158c0@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: james.morse@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_063753_553164_ED419DD1 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 2020-05-26 17:18, James Morse wrote:

[...]

> 1. How does this copro[] thing work with a big-endian host?
> The cp15_regs emulation look fine as nothing uses vcpu_cp15() to read 
> the
> register, but wouldn't prepare_fault32() read the wrong end of the 
> register
> when using vcpu_cp15()?

This seems pretty broken indeed. How about something like this:

diff --git a/arch/arm64/include/asm/kvm_host.h 
b/arch/arm64/include/asm/kvm_host.h
index 59029e90b557..e80c0e06f235 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -404,8 +404,14 @@ void vcpu_write_sys_reg(struct kvm_vcpu *vcpu, u64 
val, int reg);
   * CP14 and CP15 live in the same array, as they are backed by the
   * same system registers.
   */
-#define vcpu_cp14(v,r)		((v)->arch.ctxt.copro[(r)])
-#define vcpu_cp15(v,r)		((v)->arch.ctxt.copro[(r)])
+#ifdef CPU_BIG_ENDIAN
+#define CPx_OFFSET	1
+#else
+#define CPx_OFFSET	0
+#endif
+
+#define vcpu_cp14(v,r)		((v)->arch.ctxt.copro[(r) ^ CPx_OFFSET])
+#define vcpu_cp15(v,r)		((v)->arch.ctxt.copro[(r) ^ CPx_OFFSET])

  struct kvm_vm_stat {
  	ulong remote_tlb_flush;

Yes, it's ugly.

> 2. How does the 32bit fault injection code work with VHE?
> vcpu_cp15() modifies the in-memory copy, surely a vcpu_put() will 
> clobber
> everything it did, or fail to restore it when entering the guest.

Wow, you're really wadding into dangerous territory! ;-)

Again, you are absolutely right. I guess nobody really ever ran
32bit guests on VHE systems, as they are both rare and mostly
with 64-bit-only EL1. This code is also mostly never used
(we run well behaved guests at all times!).

Here's a hack that should do the right thing at all times:

diff --git a/arch/arm64/kvm/aarch32.c b/arch/arm64/kvm/aarch32.c
index 0a356aa91aa1..40a62a99fbf8 100644
--- a/arch/arm64/kvm/aarch32.c
+++ b/arch/arm64/kvm/aarch32.c
@@ -33,6 +33,26 @@ static const u8 return_offsets[8][2] = {
  	[7] = { 4, 4 },		/* FIQ, unused */
  };

+static bool pre_fault_synchronize(struct kvm_vcpu *vcpu)
+{
+	preempt_disable();
+	if (vcpu->arch.sysregs_loaded_on_cpu) {
+		kvm_arch_vcpu_put(vcpu);
+		return true;
+	}
+
+	preempt_enable();
+	return false;
+}
+
+static void post_fault_synchronize(struct kvm_vcpu *vcpu, bool loaded)
+{
+	if (loaded) {
+		kvm_arch_vcpu_load(vcpu, smp_processor_id());
+		preempt_enable();
+	}
+}
+
  /*
   * When an exception is taken, most CPSR fields are left unchanged in 
the
   * handler. However, some are explicitly overridden (e.g. M[4:0]).
@@ -155,7 +175,10 @@ static void prepare_fault32(struct kvm_vcpu *vcpu, 
u32 mode, u32 vect_offset)

  void kvm_inject_undef32(struct kvm_vcpu *vcpu)
  {
+	bool loaded = pre_fault_synchronize(vcpu);
+
  	prepare_fault32(vcpu, PSR_AA32_MODE_UND, 4);
+	post_fault_synchronize(vcpu, loaded);
  }

  /*
@@ -168,6 +191,9 @@ static void inject_abt32(struct kvm_vcpu *vcpu, bool 
is_pabt,
  	u32 vect_offset;
  	u32 *far, *fsr;
  	bool is_lpae;
+	bool loaded;
+
+	loaded = pre_fault_synchronize(vcpu);

  	if (is_pabt) {
  		vect_offset = 12;
@@ -191,6 +217,8 @@ static void inject_abt32(struct kvm_vcpu *vcpu, bool 
is_pabt,
  		/* no need to shuffle FS[4] into DFSR[10] as its 0 */
  		*fsr = DFSR_FSC_EXTABT_nLPAE;
  	}
+
+	post_fault_synchronize(vcpu, loaded);
  }

  void kvm_inject_dabt32(struct kvm_vcpu *vcpu, unsigned long addr)

Of course, none of this is tested. We really should find ways to
trigger these corner cases... :-/

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
