Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1764D621DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 17:20:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JrIrHZCezIRAoNW/HMOc7IZdezKIMPtKp3vMdApWYn4=; b=p9kIUwkKDdVlmi
	zWRZQ90aDxU6UIlR7dM15KI700xxACFF3waeWrCDT57n6FNto3bUshEuLn9Gm48JQzBrTdMmcEKdR
	GHkxIbWVM+D5R2dwBNSCdFcMNVptAb7lbStu2GsxEaVw8r1C2MYKr/ObwIvsxUEpKiLPokxwsupsF
	OHTm0xWXbhEmWrz8T5TrRP+uFZqW1wceMT1zE5TWUxXr8xgvdWg5tiJa4e5Yuplu+BcPNdk25X17z
	6lz6PXbsQ3Nf1RgA+kf05odCto0Cn0ln6WFRkrJZdz92Lm6F6jigH3z8o4WE8Zoe0BlIY7ASuIKdD
	SvPRK/rKQbxa0m6SBh5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkVR1-0006Ip-2Y; Mon, 08 Jul 2019 15:20:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkVQi-0006Hp-R1
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 15:19:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 15499360;
 Mon,  8 Jul 2019 08:19:48 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9A7AE3F59C;
 Mon,  8 Jul 2019 08:19:46 -0700 (PDT)
Date: Mon, 8 Jul 2019 16:19:41 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v3 5/9] perf/arm_pmu: Move PMU lock to ARMv6 events
Message-ID: <20190708151941.GA36116@lakrids.cambridge.arm.com>
References: <1562596377-33196-1-git-send-email-julien.thierry@arm.com>
 <1562596377-33196-6-git-send-email-julien.thierry@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562596377-33196-6-git-send-email-julien.thierry@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_081948_922007_4ED4CAEA 
X-CRM114-Status: GOOD (  11.28  )
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
Cc: peterz@infradead.org, liwei391@huawei.com, will.deacon@arm.com,
 Russell King <linux@armlinux.org.uk>, acme@kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 08, 2019 at 03:32:53PM +0100, Julien Thierry wrote:
> Perf event backend for ARMv8 and ARMv7 no longer uses the pmu_lock.
> The only remaining user is the ARMv6 event backend.
> 
> Move the pmu_lock out of the generic arm_pmu driver into the ARMv6 code.

Moving this into the ARMv6 PMU code makes sense to me.

[...]

> @@ -502,6 +508,8 @@ static void armv6pmu_init(struct arm_pmu *cpu_pmu)
>  	cpu_pmu->stop		= armv6pmu_stop;
>  	cpu_pmu->map_event	= armv6_map_event;
>  	cpu_pmu->num_events	= 3;
> +
> +	raw_spin_lock_init(this_cpu_ptr(&pmu_lock));

This needs to initialize the lock on each CPU in order for armv6mpcore.

In __armpmu_alloc we had:

for_each_possible_cpu(cpu) {
	struct pmu_hw_events *events;
	events = per_cpu_ptr(pmu->hw_events, cpu);
	raw_spin_lock_init(&events->pmu_lock);
	...
}

... which did that for us.

Otherwise, this looks good to me.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
