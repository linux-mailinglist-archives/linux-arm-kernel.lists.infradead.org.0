Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 862C51E3F33
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 12:37:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cx9lhl0wPQ0UcuNlrPyhDxnNONqzLVDTdyIXf2/NLf0=; b=Fvksc6P8n5l0A7hfS+CXFerIw
	+n1wHlFVoVzYXGGl5MekG3eIEU56zRQcFLRcjGlel0mBE6jIZYTekdP4bYH2/B6GW1JO9zNcMPv1+
	Sqwd1jmWmvWt5Zc5TzVSqENhqBirex+ojMioKyYQIowVJafbBp78sLrqbu0yhZpyZ5M7HlNEgoXQ7
	eMvigYklqCrmreVI5MrqN0kXriTH/PwSmva2z2MG1cA6abfPSDUzkPjMcvug97z7pu48P0GpwqAQf
	J70F9eUNJxdjNYC/XMDiDvwdzk7rppzmJo5Ys8EmssuNv5hO6+wqpF1/KM7y18UC7lZ2skcnzmIfY
	t6PpDO+HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdtQY-0005Eu-Pr; Wed, 27 May 2020 10:36:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdtQP-0005Eb-8r
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 10:36:42 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ADBF02073B;
 Wed, 27 May 2020 10:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590575800;
 bh=7S8+Z2WBgc1CxZauci2e0vIy7gbHb1PyiVeg2bPwpiA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=FOGli9qmkqQ4Ze0mRKWYbl6IppezOt2yoZUoMr7iHcex1obc03QQ3Py46tdbH8e1W
 u7VuSQozk3bsiTyFdUIrNif5FMiHWV1omCJC97VbGRNSgbz+tL6s99Quqb6Phn4K6r
 JljcMRM9wLQqsUP4A5SEMYqpI6ckO2wJduE72oKk=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jdtQN-00FfU0-2j; Wed, 27 May 2020 11:36:39 +0100
MIME-Version: 1.0
Date: Wed, 27 May 2020 11:36:39 +0100
From: Marc Zyngier <maz@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 20/26] KVM: arm64: Move ELR_EL1 to the system register
 array
In-Reply-To: <b6a08ca6-1682-4fa6-e8f4-bb4adba5d19a@arm.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-21-maz@kernel.org>
 <b6a08ca6-1682-4fa6-e8f4-bb4adba5d19a@arm.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <d7cb5dc4656cab36db79b0eaf3737221@kernel.org>
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
X-CRM114-CacheID: sfid-20200527_033641_353941_FEAFA3C2 
X-CRM114-Status: GOOD (  13.03  )
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
>> As ELR-EL1 is a VNCR-capable register with ARMv8.4-NV, let's move it 
>> to
>> the sys_regs array and repaint the accessors. While we're at it, let's
>> kill the now useless accessors used only on the fault injection path.
> 
> Reviewed-by: James Morse <james.morse@arm.com>
> 
> 
> A curiosity:
> 
>> diff --git a/arch/arm64/include/asm/kvm_host.h 
>> b/arch/arm64/include/asm/kvm_host.h
>> index 95977b80265ce..46949fce3e813 100644
>> --- a/arch/arm64/include/asm/kvm_host.h
>> +++ b/arch/arm64/include/asm/kvm_host.h
>> @@ -184,6 +184,8 @@ enum vcpu_sysreg {
> 
> Comment above the enum has some claims about the order, but its
> already out of order with
> __vcpu_read_sys_reg_from_cpu()... (PAR_EL1 being the culprit)

This comment dates back from the original assembly implementation,
where I was paranoid about accessing the sys_regs array in strict
order to maximize the chances of the prefetcher doing the right thing.

As always with premature optimization, it was worthless, and moving
things to C forced us to do things differently anyway (not to mention
VHE...).

I'll delete the comment in a separate patch.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
