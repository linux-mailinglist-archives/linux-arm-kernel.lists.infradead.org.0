Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A7915F92D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 23:01:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+nA1moRONK+KmBXuUXDOtCJeIikEnAiAOfXl9RnvzTI=; b=hev+Xg6hsZOxY6pYyNpnNhg8+
	dRIJW4b1wbbbAINM6bHuuZxiz88hnCMDma7c2BPrECv1B7tRl1d4ejbA8xFa9/MiFjJrtKDMxu5Aq
	8iKKxJizGXqKN624rc5p+iHcvNuPkYC8/LcngYaXFZ9nBbwKK6LB3y2YMXJ0riQSYQQV87CLyfhXo
	PLip8wdE+kcfKy2Pj/AgDmFoA34+smEfiIbAU+qXrviS/wDszLrwAZZ2PuQrqEt2Phn5WPAGCVEjL
	vaYhv0fgQMddGjHCpgkiRcpJztTE7C1pTwjOWOhwTeD9A3OsQNoon3oDiJpEQNwmwSaxLGpKevuVK
	ZFtAKjmjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2j1O-0003Y9-Bw; Fri, 14 Feb 2020 22:01:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2j1H-0003Xb-Dl
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 22:01:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF41A328;
 Fri, 14 Feb 2020 14:01:03 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9FA693F68E;
 Fri, 14 Feb 2020 14:01:02 -0800 (PST)
Subject: Re: [PATCH 1/2] KVM: arm64: Add PMU event filtering infrastructure
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
References: <20200214183615.25498-1-maz@kernel.org>
 <20200214183615.25498-2-maz@kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <ac2a8a87-3a90-1abb-30a5-00c20667cd14@arm.com>
Date: Fri, 14 Feb 2020 22:01:01 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200214183615.25498-2-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_140107_507622_F7E1C74C 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020-02-14 6:36 pm, Marc Zyngier wrote:
[...]
> @@ -585,6 +585,14 @@ static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
>   	    pmc->idx != ARMV8_PMU_CYCLE_IDX)
>   		return;
>   
> +	/*
> +	 * If we have a filter in place and that the event isn't allowed, do
> +	 * not install a perf event either.
> +	 */
> +	if (vcpu->kvm->arch.pmu_filter &&
> +	    !test_bit(eventsel, vcpu->kvm->arch.pmu_filter))
> +		return;

If I'm reading the derivation of eventsel right, this will end up 
treating cycle counter events (aliased to SW_INCR) differently from 
CPU_CYCLES, which doesn't seem desirable.

Also, if the user did try to blacklist SW_INCR for ridiculous reasons, 
we'd need to special-case kvm_pmu_software_increment() to make it (not) 
work as expected, right?

Robin.

> +
>   	memset(&attr, 0, sizeof(struct perf_event_attr));
>   	attr.type = PERF_TYPE_RAW;
>   	attr.size = sizeof(attr);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
