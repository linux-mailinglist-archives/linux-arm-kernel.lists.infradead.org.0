Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D83E1281F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 19:10:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LUk0vtV9jhQukCH55L/r20c/TGWr0VeXHCdER/4nlNQ=; b=NryIM8IZ/ynNKk
	mtBb4Py0/zJ3dXt5L75jH6ShwzYbomrUQWOlyye3zVvdf5o5wtQPUq3nxzKU9s9Im+CVc5TyK67jN
	vg//gboss/jLQjt4kib49q6Fd+1tA47tP8LW4johJubCV255zRhJwBIMN/xT0+a5kGnlActq1ZMAS
	C++raaqA5jX9mu2idPC/L3E2FBQS5IbTUbLAWsegXnUpPVSUzIo+P6sPMxHW7YCSStrLAxIAl8sBA
	tnWrgLzdgJ2gVnrbEcxNorITwA+I+e6+pfbBg/Gf7AX9pqqJisIZk+PJXRs4K0Xk/hcZtcCJXB5h2
	ksdbR/SSd2LLpUgbSJhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiMjA-00051K-Cf; Fri, 20 Dec 2019 18:10:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiMiy-0004dl-6u
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 18:10:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B45D61FB;
 Fri, 20 Dec 2019 10:10:03 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7A1F73F67D;
 Fri, 20 Dec 2019 10:10:02 -0800 (PST)
Date: Fri, 20 Dec 2019 18:10:00 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 15/18] perf: arm_spe: Handle guest/host exclusion flags
Message-ID: <20191220180959.GF25258@lakrids.cambridge.arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-16-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220143025.33853-16-andrew.murray@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_101004_311021_F16331B6 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kvm@vger.kernel.org, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 02:30:22PM +0000, Andrew Murray wrote:
> A side effect of supporting the SPE in guests is that we prevent the
> host from collecting data whilst inside a guest thus creating a black-out
> window. This occurs because instead of emulating the SPE, we share it
> with our guests.

We used to permit this; do we know if anyone is using it?

Thanks,
Mark.

> Let's accurately describe our capabilities by using the perf exclude
> flags to prevent !exclude_guest and exclude_host flags from being used.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>  drivers/perf/arm_spe_pmu.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/perf/arm_spe_pmu.c b/drivers/perf/arm_spe_pmu.c
> index 2d24af4cfcab..3703dbf459de 100644
> --- a/drivers/perf/arm_spe_pmu.c
> +++ b/drivers/perf/arm_spe_pmu.c
> @@ -679,6 +679,9 @@ static int arm_spe_pmu_event_init(struct perf_event *event)
>  	if (attr->exclude_idle)
>  		return -EOPNOTSUPP;
>  
> +	if (!attr->exclude_guest || attr->exclude_host)
> +		return -EOPNOTSUPP;
> +
>  	/*
>  	 * Feedback-directed frequency throttling doesn't work when we
>  	 * have a buffer of samples. We'd need to manually count the
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
