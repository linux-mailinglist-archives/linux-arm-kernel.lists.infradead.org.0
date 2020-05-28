Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 667671E616E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 14:52:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=as1zJnPTTejABaudvdHmi4pXCnFJA9RRx9Fw9dMyhng=; b=YQKbSUnkBSpStzBMSvAxwaoxy
	5UvGywwXgEWZEeok70VfkL5fFPYd9HWbgglEzjNm/kW+SZxUDo3tZ/O0MLkP2Enq+AaBlfQwNGEU3
	YbZYv4DpNn1XGJiumDIClOZBweceMnVd0mAE75qft1AgzS5VR6GYWKmfwoqP8f8qd8QnooXsvfaz2
	W8YO5NeoKdDzRU/p4Vr9byoQkk/KE2BZkl3nQhzd8mCibDOQgyQsirlZK87VHZoeGKghrNfFt6TCG
	01I81jdxqwEOx2fTtLRsbSpFQ9gHj3t45pTM86Eyw7eSPSMapRNBg/o2y8Dh9w90IQLnva+8NkZrc
	W9ZAB09Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeI0o-0006WI-0P; Thu, 28 May 2020 12:51:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeI0W-0006DP-6F
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 12:51:37 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 61666206F1;
 Thu, 28 May 2020 12:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590670295;
 bh=VYAwSKnjlk0HjjtuNyDMxeRTHpbjzETtCwkNhHk4Ng4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=FR1uGFO1nVoZfGSGOEBbv/FaGlSPTalA/J0vbhrFo9BSzAtLtoADZRY2T/kpVR2Wh
 GXJ10jcmxZbPP8Ra8hF4b3ue+yXDDrEilmZk/hBt5FQ3noYN7GwNolBwsZrSFsToAf
 mwwgy6xtSy0ZFs4aFCuLcuqdwjOPRukPH3IZxYkU=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jeI0T-00FzPb-SH; Thu, 28 May 2020 13:51:33 +0100
MIME-Version: 1.0
Date: Thu, 28 May 2020 13:51:33 +0100
From: Marc Zyngier <maz@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 3/3] KVM: arm64: Add emulation for 32bit guests accessing
 ACTLR2
In-Reply-To: <20200526161834.29165-4-james.morse@arm.com>
References: <20200526161834.29165-1-james.morse@arm.com>
 <20200526161834.29165-4-james.morse@arm.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <1da83682a9ba3704601cb2071e8b638d@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: james.morse@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_055136_287422_005F416F 
X-CRM114-Status: GOOD (  20.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 2020-05-26 17:18, James Morse wrote:
> ACTLR_EL1 is a 64bit register while the 32bit ACTLR is obviously 32bit.
> For 32bit software, the extra bits are accessible via ACTLR2... which
> KVM doesn't emulate.
> 
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
> I'm not convinced this is endian safe, but it does match what
> kvm_inject_undef32() do.
> 
> The alternative would be to always read the 64bit value, and generate
> the 32bit offets like access_vm_reg() does.
> 
>  arch/arm64/include/asm/kvm_host.h    |  1 +
>  arch/arm64/kvm/sys_regs_generic_v8.c | 16 +++++++++++++++-
>  2 files changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_host.h
> b/arch/arm64/include/asm/kvm_host.h
> index 32c8a675e5a4..5b7538663a8e 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -185,6 +185,7 @@ enum vcpu_sysreg {
>  #define c0_CSSELR	(CSSELR_EL1 * 2)/* Cache Size Selection Register */
>  #define c1_SCTLR	(SCTLR_EL1 * 2)	/* System Control Register */
>  #define c1_ACTLR	(ACTLR_EL1 * 2)	/* Auxiliary Control Register */
> +#define c1_ACTLR2	(c1_ACTLR + 1)	/* ACTLR top 32 bits */
>  #define c1_CPACR	(CPACR_EL1 * 2)	/* Coprocessor Access Control */
>  #define c2_TTBR0	(TTBR0_EL1 * 2)	/* Translation Table Base Register 0 
> */
>  #define c2_TTBR0_high	(c2_TTBR0 + 1)	/* TTBR0 top 32 bits */
> diff --git a/arch/arm64/kvm/sys_regs_generic_v8.c
> b/arch/arm64/kvm/sys_regs_generic_v8.c
> index 9cb6b4c8355a..ed77bbb48e64 100644
> --- a/arch/arm64/kvm/sys_regs_generic_v8.c
> +++ b/arch/arm64/kvm/sys_regs_generic_v8.c
> @@ -30,6 +30,18 @@ static bool access_actlr(struct kvm_vcpu *vcpu,
>  	return true;
>  }
> 
> +static bool access_cp15_actlr(struct kvm_vcpu *vcpu,
> +			      struct sys_reg_params *p,
> +			      const struct sys_reg_desc *r)
> +{
> +	if (p->is_write)
> +		return ignore_write(vcpu, p);
> +
> +	p->regval = vcpu_cp15(vcpu, r->reg);
> +	return true;
> +
> +}
> +
>  static void reset_actlr(struct kvm_vcpu *vcpu, const struct 
> sys_reg_desc *r)
>  {
>  	__vcpu_sys_reg(vcpu, ACTLR_EL1) = read_sysreg(actlr_el1);
> @@ -46,7 +58,9 @@ static const struct sys_reg_desc genericv8_sys_regs[] 
> = {
>  static const struct sys_reg_desc genericv8_cp15_regs[] = {
>  	/* ACTLR */
>  	{ Op1(0b000), CRn(0b0001), CRm(0b0000), Op2(0b001),
> -	  access_actlr },
> +	  access_cp15_actlr, NULL, c1_ACTLR },
> +	{ Op1(0b000), CRn(0b0001), CRm(0b0000), Op2(0b011),
> +	  access_cp15_actlr, NULL, c1_ACTLR2 },
>  };
> 
>  static struct kvm_sys_reg_target_table genericv8_target_table = {

I'd get rid of any form of storage, and go with something like 
(untested, again):

diff --git a/arch/arm64/kvm/sys_regs_generic_v8.c 
b/arch/arm64/kvm/sys_regs_generic_v8.c
index 9cb6b4c8355a..1b2bf2d37612 100644
--- a/arch/arm64/kvm/sys_regs_generic_v8.c
+++ b/arch/arm64/kvm/sys_regs_generic_v8.c
@@ -26,13 +26,16 @@ static bool access_actlr(struct kvm_vcpu *vcpu,
  	if (p->is_write)
  		return ignore_write(vcpu, p);

-	p->regval = vcpu_read_sys_reg(vcpu, ACTLR_EL1);
-	return true;
-}
+	p->regval = read_sysreg(actlr_el1);

-static void reset_actlr(struct kvm_vcpu *vcpu, const struct 
sys_reg_desc *r)
-{
-	__vcpu_sys_reg(vcpu, ACTLR_EL1) = read_sysreg(actlr_el1);
+	if (p->aarch32) {
+		if (r->Op2 & 2)
+			p->regval = upper_32_bit(p->regval);
+		else
+			p->regval = lower_32_bit(p->regval);
+	}
+
+	return true;
  }

  /*
@@ -40,13 +43,13 @@ static void reset_actlr(struct kvm_vcpu *vcpu, const 
struct sys_reg_desc *r)
   * Important: Must be sorted ascending by Op0, Op1, CRn, CRm, Op2
   */
  static const struct sys_reg_desc genericv8_sys_regs[] = {
-	{ SYS_DESC(SYS_ACTLR_EL1), access_actlr, reset_actlr, ACTLR_EL1 },
+	{ SYS_DESC(SYS_ACTLR_EL1), access_actlr, },
  };

  static const struct sys_reg_desc genericv8_cp15_regs[] = {
  	/* ACTLR */
-	{ Op1(0b000), CRn(0b0001), CRm(0b0000), Op2(0b001),
-	  access_actlr },
+	{ Op1(0b000), CRn(0b0001), CRm(0b0000), Op2(0b001), access_actlr },
+	{ Op1(0b000), CRn(0b0001), CRm(0b0000), Op2(0b011), access_actlr },
  };

  static struct kvm_sys_reg_target_table genericv8_target_table = {

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
