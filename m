Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EBE162D9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 19:01:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iu+8Ae+m5V8ZCa3Kn3XY9s7EvnLPTb8NXC8dTLsYZTQ=; b=fUkECCoiv+y4+Q9w7BqGoFTT7
	BeEsVEw76cWbXY/imac6EnqnKDZJKb/zzIAR0kp0O+rg94bdh+1O1v+XDm3AVbqFWdxu/S77N9M03
	BNsBAH1RZr/3EOEro4l47uqJnMQBZTrLSEXb19wOnehCx8qDpfiYJcDinZ2am4mLGik5Ag8AhNjNy
	zSNFSjluS9uYnGj/oLv0/fqcw8V/3pCsesMzLOoPW15edhRbzb4Nm/1dQ0zDtjwSKjkzLKjgT3kZd
	tG6jeha4ouf4wi66/3/8rlMkmAlqY0wNRcz3Vn+4kCRdHbaXVjNFqsQ4CG4sWBPpdecgk25GgGtDM
	/O3IwLrSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j47BX-0001mC-Qq; Tue, 18 Feb 2020 18:01:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j47BP-0001lQ-Oj
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 18:01:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DDFA331B;
 Tue, 18 Feb 2020 10:01:15 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ADC4E3F68F;
 Tue, 18 Feb 2020 10:01:14 -0800 (PST)
Subject: Re: [PATCH 1/5] KVM: arm64: Fix missing RES1 in emulation of DBGBIDR
To: James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>
References: <20200216185324.32596-1-maz@kernel.org>
 <20200216185324.32596-2-maz@kernel.org>
 <c1bd5c57-666e-0d54-1e7c-e45d0535ffe3@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <a02252f6-1e9a-2a35-9944-f23e161583ab@arm.com>
Date: Tue, 18 Feb 2020 18:01:13 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <c1bd5c57-666e-0d54-1e7c-e45d0535ffe3@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_100119_849869_777998A4 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Peter Maydell <peter.maydell@linaro.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/02/2020 5:43 pm, James Morse wrote:
> Hi Marc,
> 
> $subject typo: ~/DBGBIDR/DBGDIDR/
> 
> On 16/02/2020 18:53, Marc Zyngier wrote:
>> The AArch32 CP14 DBGDIDR has bit 15 set to RES1, which our current
>> emulation doesn't set. Just add the missing bit.
> 
> So it does.
> 
> Reviewed-by: James Morse <james.morse@arm.com>
> 
> 
>> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
>> index 3e909b117f0c..da82c4b03aab 100644
>> --- a/arch/arm64/kvm/sys_regs.c
>> +++ b/arch/arm64/kvm/sys_regs.c
>> @@ -1658,7 +1658,7 @@ static bool trap_dbgidr(struct kvm_vcpu *vcpu,
>>   		p->regval = ((((dfr >> ID_AA64DFR0_WRPS_SHIFT) & 0xf) << 28) |
>>   			     (((dfr >> ID_AA64DFR0_BRPS_SHIFT) & 0xf) << 24) |
>>   			     (((dfr >> ID_AA64DFR0_CTX_CMPS_SHIFT) & 0xf) << 20)
>> -			     | (6 << 16) | (el3 << 14) | (el3 << 12));
>> +			     | (6 << 16) | (1 << 15) | (el3 << 14) | (el3 << 12));
> 
> Hmmm, where el3 is:
> | u32 el3 = !!cpuid_feature_extract_unsigned_field(pfr, ID_AA64PFR0_EL3_SHIFT);
> 
> Aren't we depending on the compilers 'true' being 1 here?

Pretty much, but thankfully the only compilers we support are C compilers:

"The result of the logical negation operator ! is 0 if the value of its 
operand compares unequal to 0, 1 if the value of its operand compares 
equal to 0. The result has type int."

And now I have you to thank for flashbacks to bitwise logical operators 
in Visual Basic... :P

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
