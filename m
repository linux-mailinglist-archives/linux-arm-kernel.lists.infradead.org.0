Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 539F2CB71F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 11:13:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tnwaymjNfnLrSO2GWhqiQf0K6YgtcNzBJu0TU10MHPA=; b=Am4iR8Fry/v5tD
	qAS2K76+LNe2O7kpv+E4aqkZ16+Kx4KCeRFDkgjy+XgCcbMm/LegPR4BWQ6sAScyAqrWIo4cOS00k
	DhrvS+99eO95ME+5J72aPtIMJu0EDx8RVLfcRRFCHFek9EKsxQsJI9mnmwgg6lmAY+tJ/ByqVguDV
	8pNjnaht68nxf5sLT2KjXrbsT7yRCb6/jQV9glAkOllANeceuTlRtqMq1CBR/xuzlsgvb2R1UjHvn
	qm/Iy1ndktWQxsko6Mfh0w7QEfz+Dp/kC8o83wQ9jiP0hPEm6MC2/BRsSE1N0tBdMI7gHqt3iCuBv
	dNIn0m8tbD5Id5PqyK0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGJeq-0007Q9-FO; Fri, 04 Oct 2019 09:13:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGJei-0007Pd-7S
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 09:13:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7066C1597;
 Fri,  4 Oct 2019 02:13:43 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5FCE83F739;
 Fri,  4 Oct 2019 02:13:41 -0700 (PDT)
Subject: Re: [PATCH v5 05/10] KVM: arm64: Support stolen time reporting via
 shared structure
To: Andrew Jones <drjones@redhat.com>
References: <20191002145037.51630-1-steven.price@arm.com>
 <20191002145037.51630-6-steven.price@arm.com>
 <20191003132235.ruanyfmdim5s6npj@kamzik.brq.redhat.com>
 <20191004070301.d7ari5rjlu3uuara@kamzik.brq.redhat.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <b107c1ca-6804-dc47-af25-fcd0b201472f@arm.com>
Date: Fri, 4 Oct 2019 10:13:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191004070301.d7ari5rjlu3uuara@kamzik.brq.redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_021344_311193_3E14F6DB 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 linux-doc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/10/2019 08:03, Andrew Jones wrote:
> On Thu, Oct 03, 2019 at 03:22:35PM +0200, Andrew Jones wrote:
>> On Wed, Oct 02, 2019 at 03:50:32PM +0100, Steven Price wrote:
>>> +int kvm_update_stolen_time(struct kvm_vcpu *vcpu, bool init)
>>> +{
>>> +	struct kvm *kvm = vcpu->kvm;
>>> +	u64 steal;
>>> +	u64 steal_le;
>>> +	u64 offset;
>>> +	int idx;
>>> +	u64 base = vcpu->arch.steal.base;
>>> +
>>> +	if (base == GPA_INVALID)
>>> +		return -ENOTSUPP;
>>> +
>>> +	/* Let's do the local bookkeeping */
>>> +	steal = vcpu->arch.steal.steal;
>>> +	steal += current->sched_info.run_delay - vcpu->arch.steal.last_steal;
>>> +	vcpu->arch.steal.last_steal = current->sched_info.run_delay;
>>> +	vcpu->arch.steal.steal = steal;
>>> +
>>> +	steal_le = cpu_to_le64(steal);
>>
>> Agreeing on a byte order for this interface makes sense, but I don't see
>> it documented anywhere. Is this an SMCCC thing? Because I skimmed some
>> of those specs and other users too but didn't see anything obvious. Anyway
>> even if everybody but me knows that all data returned from SMCCC calls
>> should be LE, it might be nice to document that in the pvtime doc.

A very good point - I'll document this in the Linux document and feed
that back for DEN0057A.

> 
> I have another [potentially dumb] SMCCC byte order question. If we need
> to worry about using LE for the members of this structure, then why don't
> we need to worry about the actual return values of the SMCCC calls? Like
> the IPA of the structure?

The SMCCC calls pass values in registers. It's only when reading/writing
these values from/to memory that the endianness actually has any meaning.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
