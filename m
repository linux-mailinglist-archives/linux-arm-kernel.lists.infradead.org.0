Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBA8F390
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 11:58:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+ygq0KE824cnZ8YaHkOTElGg8rD2vqHhWBriv/f+Xs=; b=hjje4i4JgMwXHj
	YEjre0PZzCSYV31wbvGCkHRwZExNwCy/NSG7ppbWir3wXTf5gMecPFgN0GPNcMKDBqnROauZNFYje
	s2bZR7ucRu60yyRugmq+roCmXkuOSglEAjNEpYp5d9vBEVQHzX9xGExEfZIxLORIIdUiVsgW7UpB0
	bB7I32Q1W2rBZpGGof79xC0s75CMhbebbhbJd1oOXG7AzEXdMJkniN2h6963++aBYGrGqnXogxl4Q
	dPvohfK3w3qg6h0CnSRT1TO2T10qSas+jLK/5/3RA1Q/vv5hxUhbwoSRSiP9Cd6nR0vuyBDtNVJQZ
	/dI/KAPlMT8QwQgebfJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPWl-0006wo-Sy; Tue, 30 Apr 2019 09:58:19 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPWf-0006wT-0v
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 09:58:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD0BE80D;
 Tue, 30 Apr 2019 02:58:12 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 199313F5C1;
 Tue, 30 Apr 2019 02:58:11 -0700 (PDT)
Date: Tue, 30 Apr 2019 10:58:10 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH] arm64: KVM: fix perf cycle counter support for VHE
Message-ID: <20190430095810.GG22493@e119886-lin.cambridge.arm.com>
References: <20190429191305.21000-1-andrew.murray@arm.com>
 <8022b69e-f4aa-cc06-0d5a-5ef980cf0d4a@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8022b69e-f4aa-cc06-0d5a-5ef980cf0d4a@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_025813_072637_B9BE0B3A 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, James Morse <James.Morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 10:14:58AM +0100, Marc Zyngier wrote:
> [+ Christoffer, James, Julien]
> 
> Hi Andrew,
> 
> On 29/04/2019 20:13, Andrew Murray wrote:
> > The kvm_vcpu_pmu_{read,write}_evtype_direct functions do not handle
> > the cycle counter use-case, this leads to inaccurate counts and a
> > WARN message when using perf with the cycle counter (-e cycle).
> > 
> > Let's fix this by adding a use case for pmccfiltr_el0.
> > 
> > Reported-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> 
> Queued, with
> Fixes: 39e3406a090a ("arm64: KVM: Avoid isb's by using direct pmxevtyper
> sysreg")
> 
> In the future, please cc all the KVM/arm maintainers/reviewers so that
> we do not risk overseeing an important patch.

OK I will do.

Thanks,

Andrew Murray

> 
> Thanks,
> 
> 	M.
> -- 
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
