Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A7714A29A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 12:08:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kdGwMTGclkNCRTMuP6Q84wuYhsnKqEGixRyy8rUVFd8=; b=AmhMsn/4KCNAWSoXew8J2JpDb
	FOVhEDyTCmcbk6f1T0B4mNpKDubAYD2sKeZf8Y+IV8IPKWEwhqixk0j/nQP/xu9yqRSk3gwdKjuZp
	CN+m7HFgGy8oD8MInTnK3gjL2Rx1krHDE6Te0BfSpyALOWK012Q7sz8+ixzOnn6noyHUHMkas6HxP
	l2WU5AqRadoK3n50SKjnMaCyIjpBYmIukOXVF4xvhICiez/+rcU7I8wmMKkcQjv1Hr+DfId/aEMH+
	m7GEo0wXgfKRceIBNx4WdeL517vSQaSwYQDV3UkAH/2gaXtzdzx38KZLpbY+KggaNekLjcE34OZow
	tL39r+KLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw2FR-00056L-2w; Mon, 27 Jan 2020 11:08:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw2FH-00055u-8x
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 11:07:56 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B98C206A2;
 Mon, 27 Jan 2020 11:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580123274;
 bh=XtPA8Ig4ryv+n4XTiVr/+miOFcjAr3IBN5e8V49V0oc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oyjsE4Tia2Xnz3WM35PVEk56sRpDCe/euovB/pw+uefePlv5393JZDREcGK5b36Oj
 0zG68m2ZlSJU21o80OQgWbdzZlBN8L34HkpKrWL3ic1O1TqX+yJbtg6+gV7YfKI/8g
 b4agbuXpEZQGiSCylixAVF/Xfvith77Aw4v70OJ4=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1iw2FE-001arU-EI; Mon, 27 Jan 2020 11:07:52 +0000
MIME-Version: 1.0
Date: Mon, 27 Jan 2020 11:07:52 +0000
From: Marc Zyngier <maz@kernel.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Subject: Re: [PATCH] KVM: arm64: Treat emulated TVAL TimerValue as a signed
 32-bit integer
In-Reply-To: <20200127103652.2326-1-alexandru.elisei@arm.com>
References: <20200127103652.2326-1-alexandru.elisei@arm.com>
Message-ID: <5f633dfb2abe63059d75c0da58c69241@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: alexandru.elisei@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 linux-kernel@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_030755_362450_B0596294 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alexandru,

On 2020-01-27 10:36, Alexandru Elisei wrote:
> According to the ARM ARM, registers CNT{P,V}_TVAL_EL0 have bits [63:32]
> RES0 [1]. When reading the register, the value is truncated to the 
> least
> significant 32 bits [2], and on writes, TimerValue is treated as a 
> signed
> 32-bit integer [1, 2].
> 
> When the guest behaves correctly and writes 32-bit values, treating 
> TVAL
> as an unsigned 64 bit register works as expected. However, things start
> to break down when the guest writes larger values, because
> (u64)0x1_ffff_ffff = 8589934591. but (s32)0x1_ffff_ffff = -1, and the
> former will cause the timer interrupt to be asserted in the future, but
> the latter will cause it to be asserted now.  Let's treat TVAL as a
> signed 32-bit register on writes, to match the behaviour described in
> the architecture, and the behaviour experimentally exhibited by the
> virtual timer on a non-vhe host.
> 
> [1] Arm DDI 0487E.a, section D13.8.18
> [2] Arm DDI 0487E.a, section D11.2.4
> 
> Signed-off-by: Alexandru Elisei <alexandru.elisei@arm.com>

Huhuh... Nice catch!

Fixes: 8fa761624871 ("KVM: arm/arm64: arch_timer: Fix CNTP_TVAL 
calculation")

(how many times are we doing to fix this???)

> ---
>  include/kvm/arm_arch_timer.h | 2 ++
>  virt/kvm/arm/arch_timer.c    | 3 ++-
>  2 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/include/kvm/arm_arch_timer.h 
> b/include/kvm/arm_arch_timer.h
> index d120e6c323e7..be912176b7a3 100644
> --- a/include/kvm/arm_arch_timer.h
> +++ b/include/kvm/arm_arch_timer.h
> @@ -10,6 +10,8 @@
>  #include <linux/clocksource.h>
>  #include <linux/hrtimer.h>
> 
> +#define ARCH_TIMER_TVAL_MASK	((1ULL << 32) - 1)
> +
>  enum kvm_arch_timers {
>  	TIMER_PTIMER,
>  	TIMER_VTIMER,
> diff --git a/virt/kvm/arm/arch_timer.c b/virt/kvm/arm/arch_timer.c
> index f182b2380345..5d40f17f7024 100644
> --- a/virt/kvm/arm/arch_timer.c
> +++ b/virt/kvm/arm/arch_timer.c
> @@ -805,6 +805,7 @@ static u64 kvm_arm_timer_read(struct kvm_vcpu 
> *vcpu,
>  	switch (treg) {
>  	case TIMER_REG_TVAL:
>  		val = timer->cnt_cval - kvm_phys_timer_read() + timer->cntvoff;
> +		val &= ARCH_TIMER_TVAL_MASK;

nit: Do we really need this mask? I'd rather see it written as

                 val = lower_32_bits(val);


>  		break;
> 
>  	case TIMER_REG_CTL:
> @@ -850,7 +851,7 @@ static void kvm_arm_timer_write(struct kvm_vcpu 
> *vcpu,
>  {
>  	switch (treg) {
>  	case TIMER_REG_TVAL:
> -		timer->cnt_cval = kvm_phys_timer_read() - timer->cntvoff + val;
> +		timer->cnt_cval = kvm_phys_timer_read() - timer->cntvoff + (s32)val;
>  		break;
> 
>  	case TIMER_REG_CTL:

Otherwise, looks good to me. If you're OK with the above change, I'll
take it as a fix.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
