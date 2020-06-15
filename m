Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7061F94D9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 12:45:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ql1BzGwyeIlVEXwjnOyNT1oRZ4zPqnwtLNi7b7Q659c=; b=szSMp5e+9gRU8RCERiPE7WnYL
	qKktBxRV8K6Vs6B9CbpPVf7APgCo7jHFmPmP8SVGWlS6zFkPSu6UTFuoB4sjmLvC/PsehFiMlLX85
	7tR9AluKh+g1eyEcBE7aRIehvPdujtUxREHQvBK8yaLn69ZHVwknHRu/NzmetRbHffZBjRAnejtgo
	n033/WSgnC/FEpD5ot4Fh7k56PKzxl9qI0OGtJSSUtQkxVtDAwo6QdVgaFCGAN7lGFdqUmjo2NFwQ
	pLrwNwGizS7WsDBrjveKBmIWeg1uC0RwEhIGIFvbamufX+Dj7ICpTgIulss5kHvYSH+OGapE+KgoH
	jP2PCkoTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkmcB-0000Cr-QR; Mon, 15 Jun 2020 10:45:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkmc2-0000Bm-PE
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 10:45:12 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 440DE20679;
 Mon, 15 Jun 2020 10:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592217910;
 bh=NQzIZ8HPcQkoHR2c+q1ZkigBSIf8XsDf44QYuMwZ1eI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=1RtG08G/L03qKYK1oCOce5i21jHfrQ3NbZC8zOJcMgDMZ0czTmcyDD4bt7pC2BB3o
 qecG3/VcX504T1V2WOzpEUg5g2RXJmqv2ter5zGq7x6z+iBfsdH0JfYpj/dt2FmqRm
 v2hCvpW4bzXkjj+JNt21eLWPEaZqZnHxFtfGSm14=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jkmc0-0034QJ-RE; Mon, 15 Jun 2020 11:45:08 +0100
MIME-Version: 1.0
Date: Mon, 15 Jun 2020 11:45:08 +0100
From: Marc Zyngier <maz@kernel.org>
To: Andrew Scull <ascull@google.com>
Subject: Re: [PATCH 1/4] KVM: arm64: Enable Pointer Authentication at EL2 if
 available
In-Reply-To: <20200615084857.GD177680@google.com>
References: <20200615081954.6233-1-maz@kernel.org>
 <20200615081954.6233-2-maz@kernel.org> <20200615084857.GD177680@google.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <8683c038040236e1fefed067649c31d9@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: ascull@google.com, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_034510_841160_07DD5CFB 
X-CRM114-Status: GOOD (  11.16  )
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 kernel-team@android.com, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On 2020-06-15 09:48, Andrew Scull wrote:
> On Mon, Jun 15, 2020 at 09:19:51AM +0100, Marc Zyngier wrote:
>> While initializing EL2, switch Pointer Authentication if detected
> 
>                                 ^ nit: on?

Yes.

> 
>> from EL1. We use the EL1-provided keys though.
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
>> +1:
>> +	orr	x4, x4, #(SCTLR_ELx_ENIA | SCTLR_ELx_ENIB)
>> +	orr	x4, x4, #SCTLR_ELx_ENDA
>> +	orr	x4, x4, #SCTLR_ELx_ENDB
> 
> mm/proc.S builds the mask with ldr and ors it in one go, would be nice
> to use the same pattern.

Do you actually mean kernel/head.S, or even __ptrauth_keys_init_cpu in 
asm/asm_pointer_auth.h?

If so, I agree that it'd be good to make it look similar by using the 
mov_q macro, at the expense of a spare register (which we definitely can 
afford here).

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
