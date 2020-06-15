Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 945401F94F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 12:56:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T3MYpLJ/EgfEPN+UPHm+88yd54PqU51TEj28P5CT7oo=; b=dSVXNrosyDWnnqm4ZSD+hHsge
	C84umjoEFnXGpDRXwiwL0q3XgrBgwl/dXk/4UDm7k/kpcd0fo0lemutSlBepGbFisJAcehojrmk0e
	4MJa4cC8mHlwJjPgxHh5GmCGrgxk9gOFNBe0/8obKCSLfqg7WhRN8QKSKAA3oTmNyWorKAHVzpWug
	Go/EEmlEHEdRXSFVs7/8JpCXYu4tk0nEM1/kEcK/423uZ5TZXMRuEC454YZhNVidwGSLOt44k0H/L
	ixOYwcLLenthll9DhEWT+ny8lFpYFy5pCyWeZoTeudTgFQs/pLEN/otTcwx2kEC+6UOFFuG5/xcaO
	5pFgAX8uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkmme-0006ck-DS; Mon, 15 Jun 2020 10:56:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkmmR-0006bN-SZ
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 10:55:57 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 759C82068E;
 Mon, 15 Jun 2020 10:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592218555;
 bh=QaBa2U9Geoqv5p35xEZGCPFzj0swu4OiDh55cMIarDQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=uIlbWLp6f1Vl5kwtuO2o8tEhAOPhh8OwsbhlCIUjVE5onhQxrcOt2paYytzhQFZ+S
 ELIHnWlyL61RYWU/C3dTm+2G2hErdEZSbK5DW3FL9qg5z91Ymd4N6jhMqSAN1YD6Je
 HKrDTYLd1K0oZDSgUbNGNojGjlv4ZletzawM1YYY=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jkmmP-0034WH-Vp; Mon, 15 Jun 2020 11:55:54 +0100
MIME-Version: 1.0
Date: Mon, 15 Jun 2020 11:55:53 +0100
From: Marc Zyngier <maz@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 1/4] KVM: arm64: Enable Pointer Authentication at EL2 if
 available
In-Reply-To: <20200615100318.GA773@C02TD0UTHF1T.local>
References: <20200615081954.6233-1-maz@kernel.org>
 <20200615081954.6233-2-maz@kernel.org>
 <20200615100318.GA773@C02TD0UTHF1T.local>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <c1ab609a8888d1c67b1946ebbf934dac@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: mark.rutland@arm.com, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_035555_962304_C811135A 
X-CRM114-Status: GOOD (  18.13  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel-team@android.com, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-15 11:03, Mark Rutland wrote:
> On Mon, Jun 15, 2020 at 09:19:51AM +0100, Marc Zyngier wrote:
>> While initializing EL2, switch Pointer Authentication if detected
>> from EL1. We use the EL1-provided keys though.
> 
> Perhaps "enable address authentication", to avoid confusion with
> context-switch, and since generic authentication cannot be disabled
> locally at EL2.

Ah, fair enough.

>> 
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>  arch/arm64/kvm/hyp-init.S | 11 +++++++++++
>>  1 file changed, 11 insertions(+)
>> 
>> diff --git a/arch/arm64/kvm/hyp-init.S b/arch/arm64/kvm/hyp-init.S
>> index 6e6ed5581eed..81732177507d 100644
>> --- a/arch/arm64/kvm/hyp-init.S
>> +++ b/arch/arm64/kvm/hyp-init.S
>> @@ -104,6 +104,17 @@ alternative_else_nop_endif
>>  	 */
>>  	mov_q	x4, (SCTLR_EL2_RES1 | (SCTLR_ELx_FLAGS & ~SCTLR_ELx_A))
>>  CPU_BE(	orr	x4, x4, #SCTLR_ELx_EE)
>> +alternative_if ARM64_HAS_ADDRESS_AUTH_ARCH
>> +	b	1f
>> +alternative_else_nop_endif
>> +alternative_if_not ARM64_HAS_ADDRESS_AUTH_IMP_DEF
>> +	b	2f
>> +alternative_else_nop_endif
> 
> I see this is the same pattern we use in the kvm context switch, but I
> think we can use the ARM64_HAS_ADDRESS_AUTH cap instead (likewise in 
> the
> existing code).
> 
> AFAICT that won't permit mismatch given both 
> ARM64_HAS_ADDRESS_AUTH_ARCH
> and ARM64_HAS_ADDRESS_AUTH_IMP_DEF are dealt with as
> ARM64_CPUCAP_BOOT_CPU_FEATURE.

That'd be a nice cleanup, as the two back to back alternatives are a bit 
hard to read.

> 
>> +1:
>> +	orr	x4, x4, #(SCTLR_ELx_ENIA | SCTLR_ELx_ENIB)
>> +	orr	x4, x4, #SCTLR_ELx_ENDA
>> +	orr	x4, x4, #SCTLR_ELx_ENDB
> 
> Assuming we have a spare register, it would be nice if we could follow 
> the same
> pattern as in proc.S, where we do:
> 
> | ldr     x2, =SCTLR_ELx_ENIA | SCTLR_ELx_ENIB | \
> |              SCTLR_ELx_ENDA | SCTLR_ELx_ENDB
> | orr     x0, x0, x2
> 
> ... though we could/should use mov_q rather than a load literal, here 
> and in
> proc.S.

Looks like this code isn't in -rc1 anymore, replaced with a mov_q in 
__ptrauth_keys_init_cpu.

I'll switch to that in v2.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
