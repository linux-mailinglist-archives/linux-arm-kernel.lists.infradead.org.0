Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF074349D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 11:22:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DmJ+NF9PiBPxMDpULFI+n3MMNhi1Y2bg6rVu5B2lGA0=; b=sJGERnJvTml48b
	GBjT+z2P69UPMX0PQ5daDbfxRRum9mmU0F5wjSt9rcpV2HE4D1v7xjDVge9hSfOa7Mij0TWLdm147
	mjJ9UACzgvd8mLe0kUHMhekYOSqyqHfvYBLGQz5JMtgG/XqzIA0QkbkwBI3pRyj234fy8I2PULucR
	xQoKqzK2d0iTEGNs9bwc4Uza9eqD+PumvVzQRO82WQl7dFAmBJH/25FUyXAAUjUlsOU60u4+dzlOs
	E/fIpAl+9vZcMgfkCcaE7mbxWV0ZR8ZbrmnxCr9bk2YY5eCLZQ3KiOcZyC7sYPQYP2uIzqSNX+yRT
	jtaDPwtIStwmRaxQSexA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbLvp-0000R3-Mn; Thu, 13 Jun 2019 09:22:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbLvd-0000QL-C0
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 09:21:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B0377367;
 Thu, 13 Jun 2019 02:21:52 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C82023F694;
 Thu, 13 Jun 2019 02:21:51 -0700 (PDT)
Date: Thu, 13 Jun 2019 10:21:49 +0100
From: Will Deacon <will.deacon@arm.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: [PATCH 2/2] arm64: Implement panic_smp_self_stop()
Message-ID: <20190613092149.GB17331@fuggles.cambridge.arm.com>
References: <20190611181050.9647-1-aaro.koskinen@iki.fi>
 <20190611181050.9647-2-aaro.koskinen@iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611181050.9647-2-aaro.koskinen@iki.fi>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_022153_454774_47205338 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Aaro Koskinen <aaro.koskinen@nokia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 09:10:50PM +0300, Aaro Koskinen wrote:
> From: Aaro Koskinen <aaro.koskinen@nokia.com>
> 
> Currently arm64 uses the default implementation of panic_smp_self_stop()
> that is simply a cpu_relax() loop. As a result, when two CPUs panic()
> simultaneously we get "SMP: failed to stop secondary CPUs" warnings and
> extra delays before a reset.

Please can you elaborate a bit on this in the commit message (and preferably
a comment in panic_smp_self_stop() justifying the need for our own
implementation)? I initially thought it was something like two CPUs trying
to IPI each other, but it's much simpler than that.

> Provide an implementation of panic_smp_self_stop() that offlines the
> CPU properly.
> 
> Signed-off-by: Aaro Koskinen <aaro.koskinen@nokia.com>
> ---
>  arch/arm64/kernel/smp.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index 1a1b96a50245..5e09e5032409 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -857,6 +857,11 @@ static void ipi_cpu_stop(unsigned int cpu)
>  	cpu_park_loop();
>  }
>  
> +void panic_smp_self_stop(void)
> +{
> +	ipi_cpu_stop(smp_processor_id());
> +}

ipi_cpu_stop should really be void, and just do smp_processor_id() itself.
It clearly only works for the local CPU. I'd be ok with you folding that
change in here, unless you fancy an extra patch. Maybe rename the function
too, now that it doesn't always run in interrupt context.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
