Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA2E1613B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 14:41:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sWfd3OfVGOqs5c449CWvEuwCQzUVz64Qug8PqN4IJ5Y=; b=cn8gPIJ0AF1F9ArJS3jsAiOQ/
	2aFHPSOiyb4C0rvUak5nhYEXTFQ4KfM5f7Glp9xfdb51rFIeO3zHosDplQ/hHvxHEuJQULMM7KxcZ
	q04KTaXKppUZ885vX2uFJo5YFcl9w1jTIisWc7IiPz1QCcsBva9eKZwg37iz23mxG4HT3HVVhqaSM
	LXhPr8brJS9Fkf1JSuGBDXsbmtWjf0j6ZAXIfB6yn3onDyD9hdC5zwiXQyeGxBqAnm51CgOtcGhSW
	5bVg5n8VUOsqay85ohBwwDJBRYUCatJTM/N0ydBp8NSNFvOB8ob0FS75uAksN2f0Je1NhrTgdQwsn
	DGYu3QaRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3geT-00043z-7E; Mon, 17 Feb 2020 13:41:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3geI-00043S-Gn
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 13:41:23 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06D192070B;
 Mon, 17 Feb 2020 13:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581946882;
 bh=tbdEvdf/iPgFcEmtTo5xRVHBll2cVJBNEUT7VMieH2o=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=0y+9BYPbqi6vSSbFz5DTxlY+Gpnead5nMhaRnAy62noKXvukNSdoeYwrZGh4kDn1c
 RQzqtxoaWV6Lf7AmhPCrvYe74cvfzZK5sGsf7DkvThIEfx8MF0nya9HeOnIFftJDNa
 fSfx4YvR9b+0VfE9GUQm8iP6eCT5vQMoUT3Jx204=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j3geG-005vjd-1f; Mon, 17 Feb 2020 13:41:20 +0000
MIME-Version: 1.0
Date: Mon, 17 Feb 2020 13:41:19 +0000
From: Marc Zyngier <maz@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2 09/94] KVM: arm64: nv: Support virtual EL2 exceptions
In-Reply-To: <20200217125240.GC47755@lakrids.cambridge.arm.com>
References: <20200211174938.27809-1-maz@kernel.org>
 <20200211174938.27809-10-maz@kernel.org>
 <20200217125240.GC47755@lakrids.cambridge.arm.com>
Message-ID: <6ad311202c1be408236899853f66c74a@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 Dave.Martin@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_054122_602464_15A346C9 
X-CRM114-Status: GOOD (  15.61  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andre Przywara <andre.przywara@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-17 12:52, Mark Rutland wrote:
> On Tue, Feb 11, 2020 at 05:48:13PM +0000, Marc Zyngier wrote:
>> From: Jintack Lim <jintack.lim@linaro.org>
>> 
>> Support injecting exceptions and performing exception returns to and
>> from virtual EL2.  This must be done entirely in software except when
>> taking an exception from vEL0 to vEL2 when the virtual 
>> HCR_EL2.{E2H,TGE}
>> == {1,1}  (a VHE guest hypervisor).
>> 
>> Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
>> Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>  arch/arm64/include/asm/kvm_arm.h     |  17 +++
>>  arch/arm64/include/asm/kvm_emulate.h |  22 ++++
>>  arch/arm64/kvm/Makefile              |   2 +
>>  arch/arm64/kvm/emulate-nested.c      | 183 
>> +++++++++++++++++++++++++++
>>  arch/arm64/kvm/inject_fault.c        |  12 --
>>  arch/arm64/kvm/trace.h               |  56 ++++++++
>>  6 files changed, 280 insertions(+), 12 deletions(-)
>>  create mode 100644 arch/arm64/kvm/emulate-nested.c
> 
> [...]
> 
>> +static void enter_el2_exception(struct kvm_vcpu *vcpu, u64 esr_el2,
>> +				enum exception_type type)
>> +{
>> +	trace_kvm_inject_nested_exception(vcpu, esr_el2, type);
>> +
>> +	vcpu_write_sys_reg(vcpu, *vcpu_cpsr(vcpu), SPSR_EL2);
>> +	vcpu_write_sys_reg(vcpu, *vcpu_pc(vcpu), ELR_EL2);
>> +	vcpu_write_sys_reg(vcpu, esr_el2, ESR_EL2);
>> +
>> +	*vcpu_pc(vcpu) = get_el2_except_vector(vcpu, type);
>> +	/* On an exception, PSTATE.SP becomes 1 */
>> +	*vcpu_cpsr(vcpu) = PSR_MODE_EL2h;
>> +	*vcpu_cpsr(vcpu) |= PSR_A_BIT | PSR_F_BIT | PSR_I_BIT | PSR_D_BIT;
>> +}
> 
> This needs to be fixed up to handle the rest of the PSTATE bits.
> 
> It should be possible to refactor get_except64_pstate() for that. I
> *think* the only differences are bits affects by SCTLR controls, but
> someone should audit that -- good thing we added references. :)

Absolutely. It is on my list of things to fix for the next drop. Also,
("arm64: KVM: nv: Honor SCTLR_EL2.SPAN on entering vEL2") should be
folded in there (or simply dropped if we can reuse the EL1 stuff).

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
