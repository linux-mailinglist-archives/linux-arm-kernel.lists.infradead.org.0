Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 849481F3A14
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:48:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XPljk2OnCQLm7nP+Th4WMtbR7E5IUQDvAbGZoAYAtyE=; b=DC1UQe5KlRQ36odTOkA5irvHQ
	NKAGShM5uE/yYk4DdE/6PHv3rvM6VDrB84Zu3XjtEQsqzdX6cuIhy/L1xL46sjjxKWbszuwqdOHXq
	ooqLPevFIZJmFKHtVG3olTgQHK5jIVCR/Lsyj6lBeeRe4ISOB+zu+AZLAC4Ed5WOWB+HmOnjZ0FAR
	Jw+nNFB7c/rlNYyzF6JMgI1abUGlSwR/QTR/j+DI7hpxMJeoABQ/w46uaBPZVi/9oW0KvPyIGBq5p
	NLXyg0C3F4d0/GUqZ7kIMA8OliLI+gN/sXtZJ6hnMkL/qoWWjaz7FJWmJIfSm2IoieWJChLe7Wexi
	hUObFs73g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jickO-0006AQ-4x; Tue, 09 Jun 2020 11:48:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jickH-00069v-Op
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 11:48:46 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E6B52068D;
 Tue,  9 Jun 2020 11:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591703323;
 bh=jZQ4Zg8DwzAMUN+GXuZsfRY/XUjTHIpyRTgWTNdxQ6U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SJHtmjskzqroQWd1r6br+wTjNT4XT/FqsM/GKHQWDyjLzIrRFrVhmW0IDafmtC9Ww
 ehsbYKYgQVtTV/FweObun9JuYyHm7puwcbAMPh7GDgA5ur6YqoQ/+obEdfwg0sVJbn
 EaYlTyWJUdF7g4ky+Jz8KNOfDDuKxchuhUyVaMQk=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jickD-001ROy-Pv; Tue, 09 Jun 2020 12:48:41 +0100
MIME-Version: 1.0
Date: Tue, 09 Jun 2020 12:48:41 +0100
From: Marc Zyngier <maz@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 1/2] KVM: arm64: Make vcpu_cp1x() work on Big Endian hosts
In-Reply-To: <7c173265-3f8e-51df-d700-7e3658a0e4d8@arm.com>
References: <20200609084921.1448445-1-maz@kernel.org>
 <20200609084921.1448445-2-maz@kernel.org>
 <7c173265-3f8e-51df-d700-7e3658a0e4d8@arm.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <7451e64c22d8432f998458e0343aee7f@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: robin.murphy@arm.com, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel-team@android.com, james.morse@arm.com, stable@vger.kernel.org,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_044845_823092_B1A497E6 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 stable@vger.kernel.org, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On 2020-06-09 12:41, Robin Murphy wrote:
> On 2020-06-09 09:49, Marc Zyngier wrote:
>> AArch32 CP1x registers are overlayed on their AArch64 counterparts
>> in the vcpu struct. This leads to an interesting problem as they
>> are stored in their CPU-local format, and thus a CP1x register
>> doesn't "hit" the lower 32bit portion of the AArch64 register on
>> a BE host.
>> 
>> To workaround this unfortunate situation, introduce a bias trick
>> in the vcpu_cp1x() accessors which picks the correct half of the
>> 64bit register.
>> 
>> Cc: stable@vger.kernel.org
>> Reported-by: James Morse <james.morse@arm.com>
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>   arch/arm64/include/asm/kvm_host.h | 10 ++++++++--
>>   1 file changed, 8 insertions(+), 2 deletions(-)
>> 
>> diff --git a/arch/arm64/include/asm/kvm_host.h 
>> b/arch/arm64/include/asm/kvm_host.h
>> index 59029e90b557..e80c0e06f235 100644
>> --- a/arch/arm64/include/asm/kvm_host.h
>> +++ b/arch/arm64/include/asm/kvm_host.h
>> @@ -404,8 +404,14 @@ void vcpu_write_sys_reg(struct kvm_vcpu *vcpu, 
>> u64 val, int reg);
>>    * CP14 and CP15 live in the same array, as they are backed by the
>>    * same system registers.
>>    */
>> -#define vcpu_cp14(v,r)		((v)->arch.ctxt.copro[(r)])
>> -#define vcpu_cp15(v,r)		((v)->arch.ctxt.copro[(r)])
>> +#ifdef CPU_BIG_ENDIAN
> 
> Ahem... I think you're missing a "CONFIG_" there ;)

Duh! As I said, I didn't test the thing at all! ;-)

> Bonus trickery - for a 0 or 1 value you can simply use IS_ENABLED().

Beautiful! Definitely a must! :D

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
