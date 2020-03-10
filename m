Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E12B17F6CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 12:55:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uci3u3mjLTwZo+lFfvcl4JfZ5vfrPW/scJdX4xJMsNE=; b=hMjgB1yOsDxjPn7aROTqjjDN3
	ORzf7AdmmxTx36fHC1HQRC6Lra6gZ2jB+OqbMhzmYNDydNmhFPpHczpYQGUegAqgpqiOlHy9AA76Z
	r7ptDLl3AmDRlrPnSz3oA7LaH4tSNizLtZre0dwmGoQmqso6KButOpGQCQNrtAiXYrfKq0KB5ZFCW
	ak0wHr76c15dITIyRpuQqyODu9wbAYFfzoIQNCA5ZV6C/pQtjRDq8MWzGOr+6JUILjEdHqq07zTgV
	IV+sNXCSoyOWu2bhE5TpNsfSpIyD5G4BsyjFD7aGqTiOPw21LW1EsBj44T66s0ybLRAAHE1uHkIVq
	ihA3rYRbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBdTP-0003WN-0Q; Tue, 10 Mar 2020 11:54:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBdTH-0003Vv-RU
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 11:54:53 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 49D5B2464B;
 Tue, 10 Mar 2020 11:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583841291;
 bh=oHt26cI0evbqGQu3N7YOlcKoUwgoa88DrVqzHJqkdEw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=j3UGAoUogik5p9i5EPRsvGFc8i4r+/KdQnG9teAjKg3+Ld3RyOoDWINtKMATN8Z9k
 kZ1UniPntVhawKyyaOl0XqSyHRs1u016YYBMkpBKfVXVZ82CFWwQRJlWU3vPvA6akY
 00fJiFeTZYd2IGtSz1+9hLWDFvkvESMmIdfjsvl0=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jBdTF-00BYBZ-DK; Tue, 10 Mar 2020 11:54:49 +0000
MIME-Version: 1.0
Date: Tue, 10 Mar 2020 11:54:49 +0000
From: Marc Zyngier <maz@kernel.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH v2 2/2] KVM: arm64: Document PMU filtering API
In-Reply-To: <7943c896-013b-d9cb-ba89-2040b46437fe@redhat.com>
References: <20200309124837.19908-1-maz@kernel.org>
 <20200309124837.19908-3-maz@kernel.org>
 <7943c896-013b-d9cb-ba89-2040b46437fe@redhat.com>
Message-ID: <07f4ef9b5ff6c6c5086c9723c64c035f@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: eric.auger@redhat.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, robin.murphy@arm.com,
 mark.rutland@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_045451_924866_3E01CABD 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-09 18:17, Auger Eric wrote:
> Hi Marc,
> 
> On 3/9/20 1:48 PM, Marc Zyngier wrote:
>> Add a small blurb describing how the event filtering API gets used.
>> 
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>  Documentation/virt/kvm/devices/vcpu.rst | 40 
>> +++++++++++++++++++++++++
>>  1 file changed, 40 insertions(+)
>> 
>> diff --git a/Documentation/virt/kvm/devices/vcpu.rst 
>> b/Documentation/virt/kvm/devices/vcpu.rst
>> index 9963e680770a..7262c0469856 100644
>> --- a/Documentation/virt/kvm/devices/vcpu.rst
>> +++ b/Documentation/virt/kvm/devices/vcpu.rst
>> @@ -55,6 +55,46 @@ Request the initialization of the PMUv3.  If using 
>> the PMUv3 with an in-kernel
>>  virtual GIC implementation, this must be done after initializing the 
>> in-kernel
>>  irqchip.
>> 
>> +1.3 ATTRIBUTE: KVM_ARM_VCPU_PMU_V3_FILTER
>> +---------------------------------------
>> +
>> +:Parameters: in kvm_device_attr.addr the address for a PMU event 
>> filter is a
>> +             pointer to a struct kvm_pmu_event_filter
>> +
>> +:Returns:
>> +
>> +	 =======  ======================================================
>> +	 -ENODEV: PMUv3 not supported or GIC not initialized
>> +	 -ENXIO:  PMUv3 not properly configured or in-kernel irqchip not
>> +	 	  configured as required prior to calling this attribute
>> +	 -EBUSY:  PMUv3 already initialized
> maybe document -EINVAL?

Yup, definitely.

>> +	 =======  ======================================================
>> +
>> +Request the installation of a PMU event filter describe as follows:
> s/describe/described
>> +
>> +struct kvm_pmu_event_filter {
>> +	__u16	base_event;
>> +	__u16	nevents;
>> +
>> +#define KVM_PMU_EVENT_ALLOW	0
>> +#define KVM_PMU_EVENT_DENY	1
>> +
>> +	__u8	action;
>> +	__u8	pad[3];
>> +};
>> +
>> +A filter range is defined as the range [@base_event, @base_event + 
>> @nevents[,
>> +together with an @action (KVM_PMU_EVENT_ALLOW or KVM_PMU_EVENT_DENY). 
>> The
>> +first registered range defines the global policy (global ALLOW if the 
>> first
>> +@action is DENY, global DENY if the first @action is ALLOW). Multiple 
>> ranges
>> +can be programmed, and must fit within the 16bit space defined by the 
>> ARMv8.1
>> +PMU architecture.
> what about before 8.1 where the range was 10 bits? Should it be tested
> in the code?

It's a good point. We could test that upon installing the filter and 
limit
the bitmap allocation to the minimum.

> nitpicking: It is not totally obvious what does happen if the user 
> space
> sets a deny filter on a range and then an allow filter on the same
> range. it is supported but may be worth telling so? Also explain the 
> the
> default filtering remains "allow" by default?

Overlapping filters are easy: the last one wins. And yes, no filter 
means
just that: no filter.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
