Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8034315AD70
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 17:33:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xJ+r94zD1cU1EaHssdXCMnSyDeJP848wVf7EDTWURXY=; b=MICh8rQoUGt4sPTfazxZ2VxN6
	qWprwJRePDV56FOCV0yuPBYpLkBR1OcJjbzEEDGb++n7yrpvCCnzOzK6EJpItbqJw2QVsPpSL/6u4
	UlqOD3O8wOspR99mewnyzZQ+HcWXVLQkjSz3pMygAqwhhsqPZ5rkUs4QrkSLfSISsWA1FEhUjAsZY
	myCtyq/jwlt5JHQq4oIf9z3gj7QTYpPmAUP39TQHeHZyu4+NJYbMiXUgcDHB9Y/X58+aQ8twFysTz
	dYHAWN0A/B1/UWtGvy/wwnTez3Zs4uTvUSN1D8YHKe9PRhROWROK6uyXcz4zwuNRkUriRXkjjZ9m1
	LSEviqg9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1uxA-0001Vo-Vq; Wed, 12 Feb 2020 16:33:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ux1-0001VJ-Fx
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 16:33:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BCE12328;
 Wed, 12 Feb 2020 08:33:22 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7C9333F68F;
 Wed, 12 Feb 2020 08:33:20 -0800 (PST)
Subject: Re: [PATCH v3 3/7] arm64/kvm: disable access to AMU registers from
 kvm guests
To: Ionela Voinescu <ionela.voinescu@arm.com>, catalin.marinas@arm.com,
 will@kernel.org, mark.rutland@arm.com, maz@kernel.org, sudeep.holla@arm.com,
 lukasz.luba@arm.com, valentin.schneider@arm.com, rjw@rjwysocki.net
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-4-ionela.voinescu@arm.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <f4f2b3a7-b8fe-e724-8a57-f6e8991760b4@arm.com>
Date: Wed, 12 Feb 2020 16:33:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200211184542.29585-4-ionela.voinescu@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_083323_575456_63A78D2B 
X-CRM114-Status: GOOD (  11.40  )
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org, viresh.kumar@linaro.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/02/2020 18:45, Ionela Voinescu wrote:
> Access to the AMU counters should be disabled by default in kvm guests,
> as information from the counters might reveal activity in other guests
> or activity on the host.
> 
> Therefore, disable access to AMU registers from EL0 and EL1 in kvm
> guests by:
>   - Hiding the presence of the extension in the feature register
>     (SYS_ID_AA64PFR0_EL1) on the VCPU.
>   - Disabling access to the AMU registers before switching to the guest.
>   - Trapping accesses and injecting an undefined instruction into the
>     guest.
> 
> Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: James Morse <james.morse@arm.com>
> Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> ---

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
