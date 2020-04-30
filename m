Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C51B1BF3F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 11:16:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=izsInSV6+P+c0IBB1pRPT94aZCVQjubnBsMug8WWVGY=; b=EQ7rdbH/MbMbcd/xncGOGv2th
	P59QlxZJHlUmOrZtzjLP2Udk4h7s30JAtFU97WRdjP6BYpYvjn7PtyuVSbNb0zYyjzJGca/dZiGM1
	VRJWSoSPDylLCBd4JLGrcqOWNaCYWday+80beKW++qlW4RkATbfCxDuV3+4rVKSZ2XKAVPnnQ7btV
	oVmynHBt17Izptpom4SlggsPJ6uhduBHd6+tgpOGxnUwr30Kh6EinyxxE7tt3IPH7ebxy/J35eEy6
	c9LD6AcnnZ4EeihvyT4O9zm+sXd4HZr+STA60jG8eWtZm+QL/c/lmR+vfBFbkNKeIw0IwhYUbdjPn
	G7FhD/1Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU5Im-00045P-Ep; Thu, 30 Apr 2020 09:16:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU5Ib-00044r-EQ
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 09:16:06 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 085BA2137B;
 Thu, 30 Apr 2020 09:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588238165;
 bh=ZD3GewpH6XoWQC75apsQplyXgLr4vmSrblW7tvPlipc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QkSkySpdq/DpTJocgJrrXPQxg8LJpnv+mNnL7dz9tS8lgROrDQulSfnbq+tRV/hG8
 LQ/0WXEPy6Oe7kuQ83haGtZIdgVbL43fOSoTTDt/RiTAEpuNeZErLnw2CzsFUSE5in
 3FBl7iSt9ibSap1/o5sxzGpnWgUQLpd1ANfy40lE=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jU5IZ-007ycL-EO; Thu, 30 Apr 2020 10:16:03 +0100
MIME-Version: 1.0
Date: Thu, 30 Apr 2020 10:16:03 +0100
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] arm64: Unify WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}
In-Reply-To: <20200429212120.GC8604@willie-the-truck>
References: <20200422161346.67325-1-ascull@google.com>
 <20200429212120.GC8604@willie-the-truck>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <5f391a75142a8ae2263e52d37d73526d@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: will@kernel.org, ascull@google.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 james.morse@arm.com, suzuki.poulose@arm.com, steven.price@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_021605_503688_C7AA9AB5 
X-CRM114-Status: GOOD (  13.58  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Steven Price <steven.price@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Scull <ascull@google.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-29 22:21, Will Deacon wrote:
> Hi Andrew,
> 
> On Wed, Apr 22, 2020 at 05:13:46PM +0100, Andrew Scull wrote:
>> Errata 1165522, 1319367 and 1530923 each allow TLB entries to be
>> allocated as a result of a speculative AT instruction. In order to
>> avoid mandating VHE on certain affected CPUs, apply the workaround to
>> both the nVHE and the VHE case for all affected CPUs.
>> 
>> Signed-off-by: Andrew Scull <ascull@google.com>
>> CC: Marc Zyngier <maz@kernel.org>
>> CC: James Morse <james.morse@arm.com>
>> CC: Suzuki K Poulose <suzuki.poulose@arm.com>
>> CC: Will Deacon <will@kernel.org>
>> CC: Steven Price <steven.price@arm.com>
>> ---
>> * From v1 <20200327143941.195626-1-ascull@google.com>:
>>   - Restored registers in VHE path
> 
> This largely looks good to me, but I don't understand these bits:
> 
>> diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
>> index 8a1e81a400e0..651820f537fb 100644
>> --- a/arch/arm64/kvm/hyp/switch.c
>> +++ b/arch/arm64/kvm/hyp/switch.c
>> @@ -138,7 +138,7 @@ static void __hyp_text 
>> __activate_traps_nvhe(struct kvm_vcpu *vcpu)
>> 
>>  	write_sysreg(val, cptr_el2);
>> 
>> -	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
>> +	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
> 
> It seems like you consistently replace cpus_have_final_cap() with
> cpus_have_const_cap(), but I can't figure out why that's required.

Seems like a bad conflict resolution. We definitely want to keep the
final_cap checks for anything that will run at EL2, and probably
everywhere else (if capabilities are not final by the time we hit KVM,
we have bigger problems to solve).

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
