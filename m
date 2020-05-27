Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 076FD1E3EE4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 12:23:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3NyCFiKApqji5d5XD9JHB+wb9sCp9egIu+gV6WzI2fc=; b=rySYzEnP9/ALSULHkKUsCL3FR
	xi6HotKvW3wz/oCSMPJ3oP2ZXr0sAs9rSBAwhfluGtOkByT26O6oXGRO+w5mISmAl/w5AYSKZb5eg
	MveLhBihAyrenm6w8natRhW8uq0eDLN78wSMC8XiorTkA7BEyU0K71WxuG6hafkvu7U0iYUKrJgL5
	DWpK2O1ncZo/GpW9iz2RAf8byGG96T5o3O3nTTh+ZwzMZ5tutBFtoViWtdqJ6JFj+zNKVds9BGJuu
	nxmfLJSQal14krEXRjuWGoXiNDXdckvLKr4HmSA0PBCTh6H22IO99rl86/wWR10svd9MnDH1wl9FF
	kiIlHSR9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdtDL-0004m6-HZ; Wed, 27 May 2020 10:23:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdtD9-0004lR-Jd
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 10:23:00 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C1D99207CB;
 Wed, 27 May 2020 10:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590574978;
 bh=A4o6AQ11xM15anYtwypBhO8P5vfetakTLxp99W90wuY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=H+Dno3NfR/xe7QlwfmZtVqOewiqZuMfqzkYeg2HKsHD5yaLjIA0pGWcPaFAbK0GCu
 9ixtmldbrA9onTT7Xr+rexmfko5Ubp5dYvU8QreAd+rguINSFD7MnOg4bTKXOhvEAX
 AkhphrVvfFfS5dbJsmyB1Z+eedNXsX37mvNbz64A=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jdtD7-00FfKg-6n; Wed, 27 May 2020 11:22:57 +0100
MIME-Version: 1.0
Date: Wed, 27 May 2020 11:22:57 +0100
From: Marc Zyngier <maz@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 19/26] KVM: arm64: Make struct kvm_regs userspace-only
In-Reply-To: <0a38305f-77f8-11b0-cb74-2bec07ce0a0a@arm.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-20-maz@kernel.org>
 <0a38305f-77f8-11b0-cb74-2bec07ce0a0a@arm.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <8f1665abb0bd6f018cb8af53ec203b76@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: james.morse@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, gcherian@marvell.com, prime.zeng@hisilicon.com,
 will@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_032259_688676_618D67BF 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>, Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, kvmarm@lists.cs.columbia.edu,
 Will Deacon <will@kernel.org>, George Cherian <gcherian@marvell.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-26 17:29, James Morse wrote:
> Hi Marc,
> 
> On 22/04/2020 13:00, Marc Zyngier wrote:
>> struct kvm_regs is used by userspace to indicate which register gets
>> accessed by the {GET,SET}_ONE_REG API. But as we're about to refactor
>> the layout of the in-kernel register structures, we need the kernel to
>> move away from it.
>> 
>> Let's make kvm_regs userspace only, and let the kernel map it to its 
>> own
>> internal representation.
> 
>> diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
>> index 23ebe51410f06..9fec9231b63e2 100644
>> --- a/arch/arm64/kvm/guest.c
>> +++ b/arch/arm64/kvm/guest.c
>> @@ -102,6 +102,55 @@ static int core_reg_size_from_offset(const struct 
>> kvm_vcpu *vcpu, u64 off)
>>  	return size;
>>  }
>> 
>> +static void *core_reg_addr(struct kvm_vcpu *vcpu, const struct 
>> kvm_one_reg *reg)
>> +{
>> +	u64 off = core_reg_offset_from_id(reg->id);
>> +
>> +	switch (off) {
> 
>> +	default:
>> +		return NULL;
> 
> Doesn't this switch statement catch an out of range offset, and a
> misaligned offset?
> 
> ... We still test for those explicitly in the caller. Better safe than 
> implicit?

Indeed, this is not supposed to happen at all. Maybe I should just fold
validate_core_offset offset there, and make this NULL value the error
case.

> 
>> +	}
>> +}
> 
> With the reset thing reported by Zenghui and Zengtao on the previous
> patch fixed:
> Reviewed-by: James Morse <james.morse@arm.com>
> 
> (otherwise struct kvm_regs isn't userspace-only!)

Indeed!

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
