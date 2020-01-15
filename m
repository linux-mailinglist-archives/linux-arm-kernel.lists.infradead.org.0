Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2624A13C46A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 14:59:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oPyQQ54DuJdg+Kb0IuFA+2wQKhXeDqzXmAA1ZXoDHVI=; b=fe3L2BrAC74Zix+MksPOU2NOu
	VMeaXeyPvIgYc2PNz5gA72v6kYoJXmGM2mXaDE7vjLYQbuThsMn8IpAbhWI3RZFmvc8buFG2K+4y1
	H4b84OvcIGMkMd66hgeVm7Mi8t1Dbc65TTz9F0+W+NvbtrExrHXhALDtOOdpSLKc29g+R38DEpHp3
	GIl9SeTq8DB1SdPMOykNrw50DHGXnw1MAF/qZJpcHHqZ4vtleRcLAbkxNpBrTF+P4tGcWztTpn1SY
	yLW1SflzyUxEWo2jCVQNJyJyJ6CqLBz8ZaaZ/JDRV6YK8znSl1G1A/KYF/ittOoXcm5Hg0gnkllK4
	edBPS1jjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjCP-0002Ew-6k; Wed, 15 Jan 2020 13:59:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjCE-0002DE-HP
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 13:58:59 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1EF70222C3;
 Wed, 15 Jan 2020 13:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579096738;
 bh=/G/weRCXbYPuSwrN2fOcmc9IMAtSW0V+wjMZcxSDxn8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ytuEmCKm0MYbr4DkGoe+3o7uNRCJlGbBzyN9FYICsCn4CppE/loxARmvmoz3h42Zd
 eH2gDh7+8+YPfaMiBYxAqP1E00+AMdDHCoZK7X6psiKuA0FLaczA+NAMD1rlE7dpjT
 O23E6godf3BYjzVUVq+n0cB/xaE4WRfxm0dcYl64=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1irjCC-0000PM-CF; Wed, 15 Jan 2020 13:58:56 +0000
MIME-Version: 1.0
Date: Wed, 15 Jan 2020 13:58:56 +0000
From: Marc Zyngier <maz@kernel.org>
To: linmiaohe <linmiaohe@huawei.com>
Subject: Re: [PATCH] KVM: arm64: get rid of var ret and out jump label in
 kvm_arch_vcpu_ioctl_set_guest_debug()
In-Reply-To: <ab61de3a04a74f74866683b062d0bab2@huawei.com>
References: <ab61de3a04a74f74866683b062d0bab2@huawei.com>
Message-ID: <728a5ea123bf6f55b1653e4ccac76175@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: linmiaohe@huawei.com, pbonzini@redhat.com,
 rkrcmar@redhat.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, christoffer.dall@arm.com, catalin.marinas@arm.com,
 eric.auger@redhat.com, gregkh@linuxfoundation.org, will@kernel.org,
 andre.przywara@arm.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 linux-kernel@vger.kernel.org, kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_055858_620040_98079CF6 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: kvm@vger.kernel.org, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 rkrcmar@redhat.com, christoffer.dall@arm.com, linux-kernel@vger.kernel.org,
 eric.auger@redhat.com, andre.przywara@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, gregkh@linuxfoundation.org,
 pbonzini@redhat.com, tglx@linutronix.de, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-14 02:20, linmiaohe wrote:
> Friendly ping :)

Friendly reply:

>> From: Miaohe Lin <linmiaohe@huawei.com>
>> 
>> The var ret and out jump label is not really needed. Clean them up.
>> Signed-off-by: Miaohe Lin <linmiaohe@huawei.com>
>> ---
>>  arch/arm64/kvm/guest.c | 11 +++--------
>>  1 file changed, 3 insertions(+), 8 deletions(-)
>> 
>> diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c index 
>> 2fff06114a8f..3b836c91609e 100644
>> --- a/arch/arm64/kvm/guest.c
>> +++ b/arch/arm64/kvm/guest.c
>> @@ -834,14 +834,10 @@ int kvm_arch_vcpu_ioctl_translate(struct 
>> kvm_vcpu *vcpu,  int kvm_arch_vcpu_ioctl_set_guest_debug(struct 
>> kvm_vcpu *vcpu,
>>  					struct kvm_guest_debug *dbg)
>>  {
>> -	int ret = 0;
>> -
>>  	trace_kvm_set_guest_debug(vcpu, dbg->control);
>> 
>> -	if (dbg->control & ~KVM_GUESTDBG_VALID_MASK) {
>> -		ret = -EINVAL;
>> -		goto out;
>> -	}
>> +	if (dbg->control & ~KVM_GUESTDBG_VALID_MASK)
>> +		return -EINVAL;
>> 
>>  	if (dbg->control & KVM_GUESTDBG_ENABLE) {
>>  		vcpu->guest_debug = dbg->control;
>> @@ -856,8 +852,7 @@ int kvm_arch_vcpu_ioctl_set_guest_debug(struct 
>> kvm_vcpu *vcpu,
>>  		vcpu->guest_debug = 0;
>>  	}
>> 
>> -out:
>> -	return ret;
>> +	return 0;

I don't think there is anything wrong with the existing code.
It may not be to your own taste, but is in keeping with a lot
of the KVM code.

If you were making changes to this code, I wouldn't object.
But on its own, this is just churn.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
