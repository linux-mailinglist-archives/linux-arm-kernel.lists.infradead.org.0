Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E03C1288B2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 11:48:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jBVY9qCoVub5/2SJFP/Beu9oCtanMaMchaTBfDoio5U=; b=Ww97MN4KmyjZ9y3po06ke0WAg
	ad8Y29NqHIa7OYLMtByNQiHezpp8cdBgw8LrOfvnkSOWUfmavuZF5bRaVDEDTEuFnGBW0Rz0RiC/x
	Hx7woIC3MXxvgUVx/toChKbgLNOHISDuHRT4qomL+H5PZqdG8F3O7UVN7vPurUeClm292dXjQALVz
	sY6ps92GpqOFO/cCqxboJ96ZjIGXwk4AZUKQs7L6vyW/KauvHottmkhkwqZM8YpXTGvlKz7hxD/CU
	Kg4CvS88JGg0iFZBku6lXBjCLJINOBTCkvOAqE4cx1At2rAS+0PKknbZGp0HVo94Scjq7KqlKjNr5
	xisxQxd7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iicJC-00026s-Ts; Sat, 21 Dec 2019 10:48:30 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iicJ5-00025t-1B
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 10:48:24 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iicIy-00080I-IP; Sat, 21 Dec 2019 11:48:16 +0100
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 00/18] arm64: KVM: add SPE profiling support
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Sat, 21 Dec 2019 10:48:16 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191220143025.33853-1-andrew.murray@arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
Message-ID: <f023f5529361cc1e2d799daa70f196c2@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: andrew.murray@arm.com, catalin.marinas@arm.com,
 mark.rutland@arm.com, kvm@vger.kernel.org, linux-kernel@vger.kernel.org,
 sudeep.holla@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, will@kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_024823_225269_BC3D8C0F 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[fixing email addresses]

Hi Andrew,

On 2019-12-20 14:30, Andrew Murray wrote:
> This series implements support for allowing KVM guests to use the Arm
> Statistical Profiling Extension (SPE).

Thanks for this. In future, please Cc me and Will on email addresses
we can actually read.

> It has been tested on a model to ensure that both host and guest can
> simultaneously use SPE with valid data. E.g.
>
> $ perf record -e arm_spe/ts_enable=1,pa_enable=1,pct_enable=1/ \
>         dd if=/dev/zero of=/dev/null count=1000
> $ perf report --dump-raw-trace > spe_buf.txt
>
> As we save and restore the SPE context, the guest can access the SPE
> registers directly, thus in this version of the series we remove the
> trapping and emulation.
>
> In the previous series of this support, when KVM SPE isn't supported
> (e.g. via CONFIG_KVM_ARM_SPE) we were able to return a value of 0 to
> all reads of the SPE registers - as we can no longer do this there 
> isn't
> a mechanism to prevent the guest from using SPE - thus I'm keen for
> feedback on the best way of resolving this.

Surely there is a way to conditionally trap SPE registers, right? You
should still be able to do this if SPE is not configured for a given
guest (as we do for other feature such as PtrAuth).

> It appears necessary to pin the entire guest memory in order to 
> provide
> guest SPE access - otherwise it is possible for the guest to receive
> Stage-2 faults.

Really? How can the guest receive a stage-2 fault? This doesn't fit 
what
I understand of the ARMv8 exception model. Or do you mean a SPE 
interrupt
describing a S2 fault?

And this is not just pinning the memory either. You have to ensure that
all S2 page tables are created ahead of SPE being able to DMA to guest
memory. This may have some impacts on the THP code...

I'll have a look at the actual series ASAP (but that's not very soon).

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
