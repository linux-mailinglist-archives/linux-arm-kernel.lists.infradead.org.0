Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD671E35F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 04:57:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c/+59iIkjMcb8UHfQYEs/N+S+t+NPGq0qbrFVOHkQHI=; b=ACQqDliBxAxu26
	jD6RMydAGB+fQbyWJiEj5yACtvYKFB+b/5ww/sY0gcrhg05qfaf83RlRqSeNaAamHA2/fIyaBwp21
	ULQqYDVDaLT3XJeGoBQJRCanEZm61DJUPw29EXvuIpqFLSW5OBZQBgiV4zaWeB+T5PkJVSyAoQx8v
	aG9ghPLy2OE4Slgzh4S6O35MwYcy91/3KRo9N3Bh334DBIBZZUSOm4vKe47yh3QICG0OAtkfkVI9R
	jZW39oTrHdjhej+VVLC0kPIuYO7uNpqBk654uQ0q15R/UswHCizm6Jc5ABaLdlGzHJk/Sf8G94TJr
	lVS77BlBFh2HXm4Zbcqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdmG4-0004oj-OI; Wed, 27 May 2020 02:57:32 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdmFJ-0004Uj-OB
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 02:56:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590548204;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0eD3RZrp9fcIjAqS8NKhao/3RbPRprLb6DUKgvzv45Y=;
 b=Zu/R9eYtHfN9aJp0n/yTLD8xrdiHG5BGusrpvpTmS4fA7tt+H/MZ4MdBC9fsWADxh6RsEz
 vmv6zehimbZkSyh24I7hIp/8vWmeiLs1BxOKVkgZ06LMyrGuyTBsP80VdBrGIUJC1c22SE
 lL9Gqgg/2q//5QNcqsI+d7d9VvpM/gM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-468-mOIlRL0jPSCYqqch8kwzlA-1; Tue, 26 May 2020 22:56:40 -0400
X-MC-Unique: mOIlRL0jPSCYqqch8kwzlA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0AC191800D42;
 Wed, 27 May 2020 02:56:39 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-130.bne.redhat.com
 [10.64.54.130])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A64B05C1B0;
 Wed, 27 May 2020 02:56:31 +0000 (UTC)
Subject: Re: [PATCH RFCv2 5/9] kvm/arm64: Replace hsr with esr
To: Mark Rutland <mark.rutland@arm.com>
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200508032919.52147-6-gshan@redhat.com>
 <20200526104507.GC1363@C02TD0UTHF1T.local>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <63d4e673-4e7e-145e-93f0-3df646bd79da@redhat.com>
Date: Wed, 27 May 2020 12:56:29 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200526104507.GC1363@C02TD0UTHF1T.local>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_195645_876630_7303C5C6 
X-CRM114-Status: GOOD (  21.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: aarcange@redhat.com, drjones@redhat.com, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, eric.auger@redhat.com,
 james.morse@arm.com, shan.gavin@gmail.com, maz@kernel.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 5/26/20 8:45 PM, Mark Rutland wrote:
> On Fri, May 08, 2020 at 01:29:15PM +1000, Gavin Shan wrote:
>> This replace the variable names to make them self-explaining. The
>> tracepoint isn't changed accordingly because they're part of ABI:
>>
>>     * @hsr to @esr
>>     * @hsr_ec to @ec
>>     * Use kvm_vcpu_trap_get_class() helper if possible
>>
>> Signed-off-by: Gavin Shan <gshan@redhat.com>
> 
> As with patch 3, I think this cleanup makes sense independent from the
> rest of the series, and I think it'd make sense to bundle all the
> patches renaming hsr -> esr, and send those as a preparatory series.
> 

Yes, PATCH[3/4/5] will be posted independently, as part of the
preparatory work, as you suggested.

Thanks,
Gavin

> Thanks,
> Mark.
> 
>> ---
>>   arch/arm64/kvm/handle_exit.c | 28 ++++++++++++++--------------
>>   arch/arm64/kvm/hyp/switch.c  |  9 ++++-----
>>   arch/arm64/kvm/sys_regs.c    | 30 +++++++++++++++---------------
>>   3 files changed, 33 insertions(+), 34 deletions(-)
>>
>> diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
>> index 00858db82a64..e3b3dcd5b811 100644
>> --- a/arch/arm64/kvm/handle_exit.c
>> +++ b/arch/arm64/kvm/handle_exit.c
>> @@ -123,13 +123,13 @@ static int kvm_handle_wfx(struct kvm_vcpu *vcpu, struct kvm_run *run)
>>    */
>>   static int kvm_handle_guest_debug(struct kvm_vcpu *vcpu, struct kvm_run *run)
>>   {
>> -	u32 hsr = kvm_vcpu_get_esr(vcpu);
>> +	u32 esr = kvm_vcpu_get_esr(vcpu);
>>   	int ret = 0;
>>   
>>   	run->exit_reason = KVM_EXIT_DEBUG;
>> -	run->debug.arch.hsr = hsr;
>> +	run->debug.arch.hsr = esr;
>>   
>> -	switch (ESR_ELx_EC(hsr)) {
>> +	switch (kvm_vcpu_trap_get_class(esr)) {
>>   	case ESR_ELx_EC_WATCHPT_LOW:
>>   		run->debug.arch.far = vcpu->arch.fault.far_el2;
>>   		/* fall through */
>> @@ -139,8 +139,8 @@ static int kvm_handle_guest_debug(struct kvm_vcpu *vcpu, struct kvm_run *run)
>>   	case ESR_ELx_EC_BRK64:
>>   		break;
>>   	default:
>> -		kvm_err("%s: un-handled case hsr: %#08x\n",
>> -			__func__, (unsigned int) hsr);
>> +		kvm_err("%s: un-handled case esr: %#08x\n",
>> +			__func__, (unsigned int)esr);
>>   		ret = -1;
>>   		break;
>>   	}
>> @@ -150,10 +150,10 @@ static int kvm_handle_guest_debug(struct kvm_vcpu *vcpu, struct kvm_run *run)
>>   
>>   static int kvm_handle_unknown_ec(struct kvm_vcpu *vcpu, struct kvm_run *run)
>>   {
>> -	u32 hsr = kvm_vcpu_get_esr(vcpu);
>> +	u32 esr = kvm_vcpu_get_esr(vcpu);
>>   
>> -	kvm_pr_unimpl("Unknown exception class: hsr: %#08x -- %s\n",
>> -		      hsr, esr_get_class_string(hsr));
>> +	kvm_pr_unimpl("Unknown exception class: esr: %#08x -- %s\n",
>> +		      esr, esr_get_class_string(esr));
>>   
>>   	kvm_inject_undefined(vcpu);
>>   	return 1;
>> @@ -230,10 +230,10 @@ static exit_handle_fn arm_exit_handlers[] = {
>>   
>>   static exit_handle_fn kvm_get_exit_handler(struct kvm_vcpu *vcpu)
>>   {
>> -	u32 hsr = kvm_vcpu_get_esr(vcpu);
>> -	u8 hsr_ec = ESR_ELx_EC(hsr);
>> +	u32 esr = kvm_vcpu_get_esr(vcpu);
>> +	u8 ec = kvm_vcpu_trap_get_class(esr);
>>   
>> -	return arm_exit_handlers[hsr_ec];
>> +	return arm_exit_handlers[ec];
>>   }
>>   
>>   /*
>> @@ -273,15 +273,15 @@ int handle_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
>>   {
>>   	if (ARM_SERROR_PENDING(exception_index)) {
>>   		u32 esr = kvm_vcpu_get_esr(vcpu);
>> -		u8 hsr_ec = ESR_ELx_EC(esr);
>> +		u8 ec = kvm_vcpu_trap_get_class(esr);
>>   
>>   		/*
>>   		 * HVC/SMC already have an adjusted PC, which we need
>>   		 * to correct in order to return to after having
>>   		 * injected the SError.
>>   		 */
>> -		if (hsr_ec == ESR_ELx_EC_HVC32 || hsr_ec == ESR_ELx_EC_HVC64 ||
>> -		    hsr_ec == ESR_ELx_EC_SMC32 || hsr_ec == ESR_ELx_EC_SMC64) {
>> +		if (ec == ESR_ELx_EC_HVC32 || ec == ESR_ELx_EC_HVC64 ||
>> +		    ec == ESR_ELx_EC_SMC32 || ec == ESR_ELx_EC_SMC64) {
>>   			u32 adj =  kvm_vcpu_trap_il_is32bit(esr) ? 4 : 2;
>>   			*vcpu_pc(vcpu) -= adj;
>>   		}
>> diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
>> index 369f22f49f3d..7bf4840bf90e 100644
>> --- a/arch/arm64/kvm/hyp/switch.c
>> +++ b/arch/arm64/kvm/hyp/switch.c
>> @@ -356,8 +356,8 @@ static bool __hyp_text __populate_fault_info(struct kvm_vcpu *vcpu)
>>   static bool __hyp_text __hyp_handle_fpsimd(struct kvm_vcpu *vcpu)
>>   {
>>   	u32 esr = kvm_vcpu_get_esr(vcpu);
>> +	u8 ec = kvm_vcpu_trap_get_class(esr);
>>   	bool vhe, sve_guest, sve_host;
>> -	u8 hsr_ec;
>>   
>>   	if (!system_supports_fpsimd())
>>   		return false;
>> @@ -372,14 +372,13 @@ static bool __hyp_text __hyp_handle_fpsimd(struct kvm_vcpu *vcpu)
>>   		vhe = has_vhe();
>>   	}
>>   
>> -	hsr_ec = kvm_vcpu_trap_get_class(esr);
>> -	if (hsr_ec != ESR_ELx_EC_FP_ASIMD &&
>> -	    hsr_ec != ESR_ELx_EC_SVE)
>> +	if (ec != ESR_ELx_EC_FP_ASIMD &&
>> +	    ec != ESR_ELx_EC_SVE)
>>   		return false;
>>   
>>   	/* Don't handle SVE traps for non-SVE vcpus here: */
>>   	if (!sve_guest)
>> -		if (hsr_ec != ESR_ELx_EC_FP_ASIMD)
>> +		if (ec != ESR_ELx_EC_FP_ASIMD)
>>   			return false;
>>   
>>   	/* Valid trap.  Switch the context: */
>> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
>> index 012fff834a4b..58f81ab519af 100644
>> --- a/arch/arm64/kvm/sys_regs.c
>> +++ b/arch/arm64/kvm/sys_regs.c
>> @@ -2182,10 +2182,10 @@ static void unhandled_cp_access(struct kvm_vcpu *vcpu,
>>   				struct sys_reg_params *params)
>>   {
>>   	u32 esr = kvm_vcpu_get_esr(vcpu);
>> -	u8 hsr_ec = kvm_vcpu_trap_get_class(esr);
>> +	u8 ec = kvm_vcpu_trap_get_class(esr);
>>   	int cp = -1;
>>   
>> -	switch(hsr_ec) {
>> +	switch (ec) {
>>   	case ESR_ELx_EC_CP15_32:
>>   	case ESR_ELx_EC_CP15_64:
>>   		cp = 15;
>> @@ -2216,17 +2216,17 @@ static int kvm_handle_cp_64(struct kvm_vcpu *vcpu,
>>   			    size_t nr_specific)
>>   {
>>   	struct sys_reg_params params;
>> -	u32 hsr = kvm_vcpu_get_esr(vcpu);
>> -	int Rt = kvm_vcpu_sys_get_rt(hsr);
>> -	int Rt2 = (hsr >> 10) & 0x1f;
>> +	u32 esr = kvm_vcpu_get_esr(vcpu);
>> +	int Rt = kvm_vcpu_sys_get_rt(esr);
>> +	int Rt2 = (esr >> 10) & 0x1f;
>>   
>>   	params.is_aarch32 = true;
>>   	params.is_32bit = false;
>> -	params.CRm = (hsr >> 1) & 0xf;
>> -	params.is_write = ((hsr & 1) == 0);
>> +	params.CRm = (esr >> 1) & 0xf;
>> +	params.is_write = ((esr & 1) == 0);
>>   
>>   	params.Op0 = 0;
>> -	params.Op1 = (hsr >> 16) & 0xf;
>> +	params.Op1 = (esr >> 16) & 0xf;
>>   	params.Op2 = 0;
>>   	params.CRn = 0;
>>   
>> @@ -2273,18 +2273,18 @@ static int kvm_handle_cp_32(struct kvm_vcpu *vcpu,
>>   			    size_t nr_specific)
>>   {
>>   	struct sys_reg_params params;
>> -	u32 hsr = kvm_vcpu_get_esr(vcpu);
>> -	int Rt  = kvm_vcpu_sys_get_rt(hsr);
>> +	u32 esr = kvm_vcpu_get_esr(vcpu);
>> +	int Rt = kvm_vcpu_sys_get_rt(esr);
>>   
>>   	params.is_aarch32 = true;
>>   	params.is_32bit = true;
>> -	params.CRm = (hsr >> 1) & 0xf;
>> +	params.CRm = (esr >> 1) & 0xf;
>>   	params.regval = vcpu_get_reg(vcpu, Rt);
>> -	params.is_write = ((hsr & 1) == 0);
>> -	params.CRn = (hsr >> 10) & 0xf;
>> +	params.is_write = ((esr & 1) == 0);
>> +	params.CRn = (esr >> 10) & 0xf;
>>   	params.Op0 = 0;
>> -	params.Op1 = (hsr >> 14) & 0x7;
>> -	params.Op2 = (hsr >> 17) & 0x7;
>> +	params.Op1 = (esr >> 14) & 0x7;
>> +	params.Op2 = (esr >> 17) & 0x7;
>>   
>>   	if (!emulate_cp(vcpu, &params, target_specific, nr_specific) ||
>>   	    !emulate_cp(vcpu, &params, global, nr_global)) {
>> -- 
>> 2.23.0
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
