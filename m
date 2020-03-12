Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0748183412
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 16:06:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EpaSUl72Z1BFZr6xNGYxw6FD8wYOk3K1oAdVQEXFh0c=; b=D0QrgPE6FPXGFNaByJIDsL5/+
	KbH0gEdtVn6fVCI3dmR7VL4+1AIAp1PujQVsALwI+0rOxftMWrRnF3XfkehQRoa++BuKqAD0SzCaY
	vYogLZMcdN2OmWpIUBzPeUV0cD+gcP/vBb5T4HGcDjJhknr/jaEX0HOyGLZFo6XxPIbxZUuCPAUY2
	3BowmgI6LDKlPfhdJ6Eg6HZp37DC78NvFaKlauDF4pGnM/BMeLb0hWp+I4kcYHLBRjNBSmilsAjKE
	CFbt5Tu3w31JA5bwHd5JAcYo5b95V4zzCfHPVOkKCzWTXih1dHDk1sgMRNzwnFh8KJMZmTG3Pb9mt
	p87DBj32w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCPPG-0001fv-1f; Thu, 12 Mar 2020 15:05:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCPP5-0001fZ-M2
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 15:05:46 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A80AB2067C;
 Thu, 12 Mar 2020 15:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584025541;
 bh=8AcCGmwl34p9HgS/EGgx+kPmyH2l+KR7q9FPherSEL0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CmzSDGy7MntRdiUhHXizcL5qqzTv2vI1ETCcI4mwcnGxK4Rn8PQ0dC5He6955kQBO
 Km8GqsVkCasn25fExvCnNFUG8VeMj/ejVrBhat2K4d5xFgOTyRJsx4v/EitxhVlPsr
 uwaCP2jO0r7YWPZseHZoQmQiNCHljpUgKpBRrDAs=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jCPP1-00CFWM-Kq; Thu, 12 Mar 2020 15:05:39 +0000
MIME-Version: 1.0
Date: Thu, 12 Mar 2020 15:05:39 +0000
From: Marc Zyngier <maz@kernel.org>
To: Amit Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v6 00/18] arm64: return address signing
In-Reply-To: <7ba381f0-095d-6994-bb6d-12b2665b4a8e@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <ae8f900b-6173-5cbb-076e-457994fbe0fe@arm.com>
 <79a45ce2-a632-9821-986e-1f48cb0121c9@arm.com>
 <98ad6e44-7aef-9ad2-0398-d5d412d8bb23@arm.com>
 <b5ca043cfaca30435957974d0f58524e@kernel.org>
 <7ba381f0-095d-6994-bb6d-12b2665b4a8e@arm.com>
Message-ID: <c5889c07a559426798ed508da5755d9e@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: amit.kachhap@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com,
 keescook@chromium.org, ardb@kernel.org, catalin.marinas@arm.com,
 suzuki.poulose@arm.com, will@kernel.org, ramana.radhakrishnan@arm.com,
 kristina.martsenko@arm.com, Dave.Martin@arm.com, Vincenzo.Frascino@arm.com,
 broonie@kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_080545_500817_D66A8BF2 
X-CRM114-Status: GOOD (  21.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[Somehow I managed to butcher the subject line. no idea how...]

On 2020-03-12 13:21, Amit Kachhap wrote:
> Hi Marc,
> 
> On 3/12/20 6:17 PM, Marc Zyngier wrote:
>> Hi Amit,
>> 
>> On 2020-03-12 08:06, Amit Kachhap wrote:
>>> Hi James,
>>> 
>>> On 3/12/20 12:23 PM, Amit Kachhap wrote:
>>>> Hi James,
>>>> 
>>>> On 3/11/20 2:58 PM, James Morse wrote:
>>>>> Hi Amit,
>>>>> 
>>>>> (CC: +Marc)
>>>>> 
>>>>> On 3/6/20 6:35 AM, Amit Daniel Kachhap wrote:
>>>>>> This series improves function return address protection for the 
>>>>>> arm64 kernel, by
>>>>>> compiling the kernel with ARMv8.3 Pointer Authentication 
>>>>>> instructions (referred
>>>>>> ptrauth hereafter). This should help protect the kernel against 
>>>>>> attacks using
>>>>>> return-oriented programming.
>>>>> 
>>>>> (as it looks like there may be another version of this:)
>>>>> 
>>>>> Am I right in thinking that after your patch 10 changing
>>>>> cpu_switch_to(), only the A key is live during kernel execution?
>>>> 
>>>> Yes
>>>> 
>>>>> 
>>>>> KVM is still save/restoring 4 extra keys around guest-entry/exit. 
>>>>> As you
>>>>> restore all the keys on return to user-space, is this still 
>>>>> necessary?
>>>> 
>>>> Yes Its a good optimization to skip 4 non-A keys. I was wondering 
>>>> whether to do it in this series or send it separately.
>>> 
>>> I suppose we can only skip non-A keys save/restore for host context. 
>>> If
>>> we skip non-A keys for guest context then guest with old 
>>> implementation
>>> will break. Let me know your opinion.
>> 
>> I don't think you can skip anything as far as the guest is concerned.
>> But being able to skip the B keys (which is what I expect you call the
>> non-A keys) on the host would certainly be useful.
> 
> Thanks for the clarification.
> 
>> 
>> I assume you have a way to hide them from userspace, though.
> 
> You mean hide all the keys from userspace like below,
> 
> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> index 3e909b1..29cc74f 100644
> --- a/arch/arm64/kvm/sys_regs.c
> +++ b/arch/arm64/kvm/sys_regs.c
> @@ -1023,7 +1023,7 @@ static bool trap_ptrauth(struct kvm_vcpu *vcpu,
>  static unsigned int ptrauth_visibility(const struct kvm_vcpu *vcpu,
>                         const struct sys_reg_desc *rd)
>  {
> -       return vcpu_has_ptrauth(vcpu) ? 0 : REG_HIDDEN_USER | 
> REG_HIDDEN_GUEST;
> +       return vcpu_has_ptrauth(vcpu) ? REG_HIDDEN_USER :
> REG_HIDDEN_USER | REG_HIDDEN_GUEST;
>  }
> 
>  #define __PTRAUTH_KEY(k)
> 
> I don't remember why it was not done this way last time.

No, that's not what I meant. What you're describing is preventing keys
from being exposed to the VMM controlling the guest, and that'd be
pretty bad (you need to be able to save/restore them for migration).

But if KVM doesn't save/restore the host's B-keys in the world switch,
then you must make sure that no host userspace can make use of them,
as they would be the guest's keys.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
