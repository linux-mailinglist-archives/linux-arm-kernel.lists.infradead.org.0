Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4F91E2701
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 18:30:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQR6x2T3PGEh5Ge7lHkZHNxkHZDwJ3rvOXqOdgDp7eU=; b=cqpV/1IkjD4+ti
	1bTDIYlYUGz1V5IdqcV6I0SCFU4B/s3SiTGtTL/a/t6Xxg6c674vB5UIwsaj0Iyi4eIQZhQ7rVvSC
	FpTxbo+z8gQLC7R1729tkZWj460zRz/JC6N91fxHHEXNdnS9Dyh4vff5hgnfEnJR0m6DTNbU6OOFX
	68QnJmrbf+i0q5Viewz5RoRv7OxdP7erO4uS/kO4dnOG0b+kyoiHZf+n9gGao73wy9DJqa5JhMNWI
	w2ig2FZ5ww3jT7VKYpeGR4SM1okh4Q3JQzY39Yhwq0AJV2lElxefoJswMEmMVIhxxGVfHgirq/ACl
	l8EojL+PyPbtLAf2Wmww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdcSg-0007Ai-RE; Tue, 26 May 2020 16:29:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdcSX-00076n-BG
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 16:29:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C352B30E;
 Tue, 26 May 2020 09:29:44 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C53183F52E;
 Tue, 26 May 2020 09:29:42 -0700 (PDT)
From: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 19/26] KVM: arm64: Make struct kvm_regs userspace-only
To: Marc Zyngier <maz@kernel.org>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-20-maz@kernel.org>
Message-ID: <0a38305f-77f8-11b0-cb74-2bec07ce0a0a@arm.com>
Date: Tue, 26 May 2020 17:29:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200422120050.3693593-20-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_092945_437350_A973D910 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 22/04/2020 13:00, Marc Zyngier wrote:
> struct kvm_regs is used by userspace to indicate which register gets
> accessed by the {GET,SET}_ONE_REG API. But as we're about to refactor
> the layout of the in-kernel register structures, we need the kernel to
> move away from it.
> 
> Let's make kvm_regs userspace only, and let the kernel map it to its own
> internal representation.

> diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
> index 23ebe51410f06..9fec9231b63e2 100644
> --- a/arch/arm64/kvm/guest.c
> +++ b/arch/arm64/kvm/guest.c
> @@ -102,6 +102,55 @@ static int core_reg_size_from_offset(const struct kvm_vcpu *vcpu, u64 off)
>  	return size;
>  }
>  
> +static void *core_reg_addr(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
> +{
> +	u64 off = core_reg_offset_from_id(reg->id);
> +
> +	switch (off) {

> +	default:
> +		return NULL;

Doesn't this switch statement catch an out of range offset, and a misaligned offset?

... We still test for those explicitly in the caller. Better safe than implicit?


> +	}
> +}

With the reset thing reported by Zenghui and Zengtao on the previous patch fixed:
Reviewed-by: James Morse <james.morse@arm.com>

(otherwise struct kvm_regs isn't userspace-only!)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
