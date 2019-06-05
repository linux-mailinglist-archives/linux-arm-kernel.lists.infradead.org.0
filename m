Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C11F035C26
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 13:57:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=guo49BkLX7b9cCTeJl2eWceA+d1jktwv4YHMesNu1UU=; b=Cj1glR5yDwVEZ7
	o7LYyAZOGwV72gcisnaRPdECZQB9vW0NXoKDwrU9mUaj58gqL5Jv26h7VS1FM4eScF70FKwYK/5jg
	T1UhFjkhSEuCg351bb/V3McspzA62k6Bbhd6GCxDaDRHPXnPYcCCACq2EXHUQw1m2PEbIypPE9q2I
	pqlhKJEkwoVw9OI4gXcT/i7SEF3PEJN45PnN5pW5DY6/qEqcrt4RPDxnXX9LTR0phRsd8Djka+Kss
	sjzfCZxvTgVvhvHpU+Lz8GmWpfzXbmoVn8HKeTbjHz1gEqGGiP4R4IKvuwiVfEwmHrTYmdrY8jFwr
	3fAMl+plFWHUZmqmXA8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUXJ-0006HD-Oc; Wed, 05 Jun 2019 11:56:57 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUXD-0006Gi-5B
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 11:56:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D9A5480D;
 Wed,  5 Jun 2019 04:56:48 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5DEAB3F5AF;
 Wed,  5 Jun 2019 04:56:47 -0700 (PDT)
Date: Wed, 5 Jun 2019 12:56:44 +0100
From: Will Deacon <will.deacon@arm.com>
To: Anders Roxell <anders.roxell@linaro.org>
Subject: Re: [PATCH 2/3] arm64: arch_timer: mark functions as __always_inline
Message-ID: <20190605115644.GF15030@fuggles.cambridge.arm.com>
References: <20190603091402.25115-1-anders.roxell@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603091402.25115-1-anders.roxell@linaro.org>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_045651_199183_A964795C 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, mingo@redhat.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 11:14:02AM +0200, Anders Roxell wrote:
> If CONFIG_FUNCTION_GRAPH_TRACER is enabled function
> arch_counter_get_cntvct() is marked as notrace. However, function
> __arch_counter_get_cntvct is marked as inline. If
> CONFIG_OPTIMIZE_INLINING is set that will make the two functions
> tracable which they shouldn't.
> 
> Rework so that functions __arch_counter_get_* are marked with
> __always_inline so they will be inlined even if CONFIG_OPTIMIZE_INLINING
> is turned on.
> 
> Fixes: 0ea415390cd3 ("clocksource/arm_arch_timer: Use arch_timer_read_counter to access stable counters")
> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> ---
>  arch/arm64/include/asm/arch_timer.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

I can pick this up if Marc is happy with it.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
