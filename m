Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA401640C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 10:46:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K30FDe9vAkBOtH1UJe+Q+GMeH3gdSKEBfVH3eGHzbCU=; b=nHA+fSeCJ7PRb5LHjwEan8rak
	xHosdETZM/IqnuRlIJK560MIq8lS/pdNFbDZ0IlFU+IYRm2dR09APbAaGMZ7o/Y7VnSsTt8Ot6jcv
	YtGGc5loxZf0LkutewNGMP42smOGi4V1BiZixb6jL8Vvok7yUmb/aqN2yBkirVLSpGP14SQxBwJms
	ulAaW2urnkm9DW7K2fo5Od9OzQx8cKAwnOP9sQbsaZTamqrZoO9AtFrgvjN4PyhYfXQ6TU1Mk1pCt
	D0A4+AJgTrG31iwPIB95/PoKfddhn0cLDMyh2KCyhu7pTYFlwKJx9xDrx2tEosGI9+3A6qzy2g/2v
	CKLVQR+JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Lw9-00053c-MC; Wed, 19 Feb 2020 09:46:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Lvq-0004zd-B9
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 09:46:15 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 827582465D;
 Wed, 19 Feb 2020 09:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582105573;
 bh=l2TiWhrUXaBuX2+2Pq1CuvcDwByg8tH8hEVRAgq5hpQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Jy8hMAFnB3XFRvcNLvZhdJXbWEmXZdU7Unqf0eGMIV144a2MOFvhbu9venyIdOvj2
 rkgtkUGH02+MrcibimIvj0Kz6a78iEs0Xqp7hHDVaUNJnek0JfdS6VAMHSotnFhp4n
 zhlGK8eUbxmurWOYi8DySyeD13APjhPpWQ2NSYgc=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j4Lvn-006TMB-TE; Wed, 19 Feb 2020 09:46:11 +0000
MIME-Version: 1.0
Date: Wed, 19 Feb 2020 09:46:11 +0000
From: Marc Zyngier <maz@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 3/5] kvm: arm64: Limit PMU version to ARMv8.1
In-Reply-To: <eb0294ef-5ad2-9940-2d59-b92220948ffc@arm.com>
References: <20200216185324.32596-1-maz@kernel.org>
 <20200216185324.32596-4-maz@kernel.org>
 <eb0294ef-5ad2-9940-2d59-b92220948ffc@arm.com>
Message-ID: <c0a848e3ababff4ee9ecaa4b246d5875@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: james.morse@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, peter.maydell@linaro.org,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_014614_449933_43CCF1B8 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peter Maydell <peter.maydell@linaro.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-18 17:43, James Morse wrote:
> Hi Marc,
> 
> On 16/02/2020 18:53, Marc Zyngier wrote:
>> Our PMU code is only implementing the ARMv8.1 features, so let's
>> stick to this when reporting the feature set to the guest.
> 
>> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
>> index 682fedd7700f..06b2d0dc6c73 100644
>> --- a/arch/arm64/kvm/sys_regs.c
>> +++ b/arch/arm64/kvm/sys_regs.c
>> @@ -1093,6 +1093,11 @@ static u64 read_id_reg(const struct kvm_vcpu 
>> *vcpu,
>>  				 FEATURE(ID_AA64ISAR1_GPA) |
>>  				 FEATURE(ID_AA64ISAR1_GPI));
>>  		break;
>> +	case SYS_ID_AA64DFR0_EL1:
>> +		/* Limit PMU to ARMv8.1 */
> 
> Not just limit, but upgrade too! (force?)
> This looks safe because ARMV8_PMU_EVTYPE_EVENT always includes the
> extra bits this added, and the register is always trapped.

That's definitely not what I intended! Let me fix that one.

> The PMU version is also readable via ID_DFR0_EL1.PerfMon, should that
> be sanitised to be the same? (I don't think we've hidden an aarch64
> feature that also existed in aarch32 before).

Indeed, yet another oversight. I'll fix that too.

> Regardless:
> Reviewed-by: James Morse <james.morse@arm.com>

You're way too kind! ;-)

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
