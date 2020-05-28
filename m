Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E346C1E5B49
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 10:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=19EVwRftqgZoPtvP0kExcjVDTw2zyWwCjbos1/ZnKXo=; b=LfG7t1FJrvDJH0oGlTosTu5s1
	hyP9NT/LG8xSJxwlix6Dmy0j4MkMrL219buWG7tONSq5bZ9QnzJb+bgZ7MvTGOR+dQ5PL35JPOBav
	uNMD1ojjEyJcXfn1ihXW6d304ZyrLH/y7i1HQaB5MWaCIoLpOK58AYQeM5/rbk/GZvh2f6RAns+or
	fI1iBhNB9P9Dp03nf214e5QLJuz8TgG170Zt5X63b0UG7X/08QpMl0UMSyLGsqO5thEi5X27CM7xR
	cQjnmI25sF9tEcVjMDea2+t8cP+uAyLOvzKzBH8nqzAKhjySu2uY3GcnhERtuHjI4j6Jr48B4FmP4
	IpzosIkqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeEM0-0007HM-Aj; Thu, 28 May 2020 08:57:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeELp-0007CH-I2
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 08:57:23 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 002A820B80;
 Thu, 28 May 2020 08:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590656241;
 bh=FXN3K+B2SmCExaj+5+rU5K3IOASOMRXzf1ApNpbQMU4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SYiOzZs1gDTA/T2D57/wUksIGZCdTyDbDmeZkq6tk0eZ4MgdYb4xsYzV9B3x+cQqo
 /muXvwo/rvMHcFD0lVdWNLY0GlCoUu87fa6edavgLnJOlVb4g0XoL19WYmjAHN54pH
 PRhbYiVPaa9JZP3H2YdDPJ0qkELkSHL1BvWuJApA=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jeELm-00Fw0L-Qz; Thu, 28 May 2020 09:57:19 +0100
MIME-Version: 1.0
Date: Thu, 28 May 2020 09:57:18 +0100
From: Marc Zyngier <maz@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 1/3] KVM: arm64: Stop writing aarch32's CSSELR into ACTLR
In-Reply-To: <20200526161834.29165-2-james.morse@arm.com>
References: <20200526161834.29165-1-james.morse@arm.com>
 <20200526161834.29165-2-james.morse@arm.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <4be0c0b654f7d7c1efe9f52efb856bd8@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: james.morse@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, stable@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_015721_639308_7E974B3E 
X-CRM114-Status: GOOD (  25.60  )
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
Cc: stable@vger.kernel.org, Julien Thierry <julien.thierry.kdev@gmail.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 2020-05-26 17:18, James Morse wrote:
> aarch32 has pairs of registers to access the high and low parts of 
> 64bit
> registers. KVM has a union of 64bit sys_regs[] and 32bit copro[]. The
> 32bit accessors read the high or low part of the 64bit sys_reg[] value
> through the union.
> 
> Both sys_reg_descs[] and cp15_regs[] list access_csselr() as the 
> accessor
> for CSSELR{,_EL1}. access_csselr() is only aware of the 64bit 
> sys_regs[],
> and expects r->reg to be 'CSSELR_EL1' in the enum, index 2 of the 64bit
> array.
> 
> cp15_regs[] uses the 32bit copro[] alias of sys_regs[]. Here CSSELR is
> c0_CSSELR which is the same location in sys_reg[]. r->reg is 
> 'c0_CSSELR',
> index 4 in the 32bit array.
> 
> access_csselr() uses the 32bit r->reg value to access the 64bit array,
> so reads and write the wrong value. sys_regs[4], is ACTLR_EL1, which
> is subsequently save/restored when we enter the guest.

Huhuh... Nice catch.

> 
> ACTLR_EL1 is supposed to be read-only for the guest. This register
> only affects execution at EL1, and the host's value is restored before
> we return to host EL1.
> 
> Rename access_csselr() to access_csselr_el1(), to indicate it expects
> the 64bit register index, and pass it CSSELR_EL1 from cp15_regs[].
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: James Morse <james.morse@arm.com>
> ----
> Providing access_csselr_cp15() wouldn't work as with VHE CSSELR_EL1 is
> loaded on the CPU while this code runs. access_csselr_cp15() would have
> to map it back the 64bit resgister to use vcpu_write_sys_reg(). We may
> as well do it in the table.
> 
>  arch/arm64/kvm/sys_regs.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> index 51db934702b6..2eda539f3281 100644
> --- a/arch/arm64/kvm/sys_regs.c
> +++ b/arch/arm64/kvm/sys_regs.c
> @@ -1302,7 +1302,7 @@ static bool access_clidr(struct kvm_vcpu *vcpu,
> struct sys_reg_params *p,
>  	return true;
>  }
> 
> -static bool access_csselr(struct kvm_vcpu *vcpu, struct sys_reg_params 
> *p,
> +static bool access_csselr_el1(struct kvm_vcpu *vcpu, struct 
> sys_reg_params *p,
>  			  const struct sys_reg_desc *r)
>  {
>  	if (p->is_write)
> @@ -1566,7 +1566,7 @@ static const struct sys_reg_desc sys_reg_descs[] 
> = {
> 
>  	{ SYS_DESC(SYS_CCSIDR_EL1), access_ccsidr },
>  	{ SYS_DESC(SYS_CLIDR_EL1), access_clidr },
> -	{ SYS_DESC(SYS_CSSELR_EL1), access_csselr, reset_unknown, CSSELR_EL1 
> },
> +	{ SYS_DESC(SYS_CSSELR_EL1), access_csselr_el1, reset_unknown, 
> CSSELR_EL1 },
>  	{ SYS_DESC(SYS_CTR_EL0), access_ctr },
> 
>  	{ SYS_DESC(SYS_PMCR_EL0), access_pmcr, reset_pmcr, PMCR_EL0 },
> @@ -2060,7 +2060,7 @@ static const struct sys_reg_desc cp15_regs[] = {
> 
>  	{ Op1(1), CRn( 0), CRm( 0), Op2(0), access_ccsidr },
>  	{ Op1(1), CRn( 0), CRm( 0), Op2(1), access_clidr },
> -	{ Op1(2), CRn( 0), CRm( 0), Op2(0), access_csselr, NULL, c0_CSSELR },
> +	{ Op1(2), CRn( 0), CRm( 0), Op2(0), access_csselr_el1, NULL, 
> CSSELR_EL1 },
>  };
> 
>  static const struct sys_reg_desc cp15_64_regs[] = {

This is a departure from the way we deal with 32bit CP15 registers.
We deal with this exact issue in a very different way for other
CP15 regs, by adjusting the index in the sys_regs array (see the
way we handle the VM regs).

How about something like this (untested):

diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 12d07e7ced82..515c0c11a668 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1321,10 +1321,16 @@ static bool access_clidr(struct kvm_vcpu *vcpu, 
struct sys_reg_params *p,
  static bool access_csselr(struct kvm_vcpu *vcpu, struct sys_reg_params 
*p,
  			  const struct sys_reg_desc *r)
  {
+	int reg = r->reg;
+
+	/* See the 32bit mapping in kvm_host.h */
+	if (p->is_aarch32)
+		reg = r->reg / 2;
+
  	if (p->is_write)
-		vcpu_write_sys_reg(vcpu, p->regval, r->reg);
+		vcpu_write_sys_reg(vcpu, p->regval, reg);
  	else
-		p->regval = vcpu_read_sys_reg(vcpu, r->reg);
+		p->regval = vcpu_read_sys_reg(vcpu, reg);
  	return true;
  }

Ideally, I'd like the core sys_reg code to deal with this sort
of funnies, but I'm trying to keep the change minimal...

Thanks,

          M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
