Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0E51C6ACD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 10:06:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=20WQSQtjTA5l4ZqNK78qzjjkq4ckw2RVjNZxvQqh5Jc=; b=azqScC4PyRQ8YQ
	dlU/qMiP1T076Q3f0T1DcRJC3eh+O3g4xzeLFNIj7DLo2/Efe3PUJBG6MIm9ZVuvXUa/dN+HrhOAe
	dIeqnnaVAP/Fx7dOflHZVSkjd0PeW5bvq6156vo8/gjLkGM4t/DAQRFiY6VCVGCNmbsTV40ukHu+u
	l2BmB5EkN8QwJwhl9US6pbI1pQRo6tKrxMIQrU6wejbnozmo6ZGGBsXzmrgYMXSXr/0MLr9CLD4eu
	DIeJTYXTpCIPjoSjpWimrDkmsjyShJLLh6F3EQLpA3cNd1MTc6T8eBnGjM/W4WG5Ysb62uxuhIfvo
	qMXCdGGcqPnS4fFVag6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWF45-0002P7-RP; Wed, 06 May 2020 08:06:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWF3s-0002OX-Q4
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 08:05:50 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5300720661;
 Wed,  6 May 2020 08:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588752348;
 bh=UjdxhpVscqX8eojhwkhNUe0wu2YW5eO/ax3nOE6DNr4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JDNKhr1Phvo7xXG9he3Gj9+ZGn5UNmxa9ERq7/dVBcwVNBfSq167LLMSAdeHkw1ry
 fk1DZbDYo1iI8fp1i3YFFLq2nhDpp1jnlaWBQbBY4kgxdF86Q7ueav7wetKcNq42mX
 AhFiHphOXgYdAR631rYeDrU0Lf7iZVGru3LeekpQ=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jWF3q-009sbR-L1; Wed, 06 May 2020 09:05:46 +0100
Date: Wed, 6 May 2020 09:05:44 +0100
From: Marc Zyngier <maz@kernel.org>
To: Andrew Scull <ascull@google.com>
Subject: Re: [PATCH 06/26] arm64: Add level-hinted TLB invalidation helper
Message-ID: <20200506090544.18620ed4@why>
In-Reply-To: <20200505171631.GC237572@google.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-7-maz@kernel.org>
 <20200505171631.GC237572@google.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: ascull@google.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, will@kernel.org,
 andre.przywara@arm.com, Dave.Martin@arm.com, gcherian@marvell.com,
 prime.zeng@hisilicon.com, catalin.marinas@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_010548_879813_0A64E474 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kvm@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 kvmarm@lists.cs.columbia.edu, George Cherian <gcherian@marvell.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 5 May 2020 18:16:31 +0100
Andrew Scull <ascull@google.com> wrote:

Hi Andrew,

> > +#define __tlbi_level(op, addr, level)					\
> > +	do {								\
> > +		u64 arg = addr;						\
> > +									\
> > +		if (cpus_have_const_cap(ARM64_HAS_ARMv8_4_TTL) &&	\
> > +		    level) {						\
> > +			u64 ttl = level;				\
> > +									\
> > +			switch (PAGE_SIZE) {				\
> > +			case SZ_4K:					\
> > +				ttl |= 1 << 2;				\
> > +				break;					\
> > +			case SZ_16K:					\
> > +				ttl |= 2 << 2;				\
> > +				break;					\
> > +			case SZ_64K:					\
> > +				ttl |= 3 << 2;				\
> > +				break;					\
> > +			}						\
> > +									\
> > +			arg &= ~TLBI_TTL_MASK;				\
> > +			arg |= FIELD_PREP(TLBI_TTL_MASK, ttl);		\  
> 
> Despite the spec saying both tables apply to TLB maintenance
> instructions that do not apply to a range of addresses I think it only
> means the 4-bit version (bug report to Arm, or I'm on the wrong spec).

I'm not quite sure what you mean by the 4-bit version here. Do you mean
the instructions taking a VA or IPA as input address? In this case,
yes, this macro is solely for the use of the invalidation of a given
translation, identified by a VA/IPA and a level (which is an implicit
TLB size for a given translation granule).

And yes, it looks like there is a bad copy-paste bug in the ARM ARM
(Rev F.a).

> This is consistent with Table D5-53 and the macro takes a single address
> argument to make misuse with range based tlbi less likely.
> 
> It relies on the caller to get the level right and getting it wrong
> could be pretty bad as the spec says all bets are off in that case. Is
> it worth adding a check of the level against the address (seems a bit
> involved), or that it is just 2 bits or adding a short doc comment to
> explain it?

I'd like to avoid checking code at that level, to be honest. If you are
writing TLB invalidation code, you'd better know what you are doing.
Happy to document it a bit more thoroughly though, and set the
expectations that if you misuse the level, you're in for a treat.

> (Looks like we get some constants for the levels in a later patch that
> could be referenced with some form of time travel)

I'm happy to bring these definitions forward, maybe in a more generic
form (they are very S2-specific at the moment).

> 
> > +		}							\
> > +									\
> > +		__tlbi(op,  arg);					\  
> 
> cosmetic nit: double space in here

Well spotted.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
