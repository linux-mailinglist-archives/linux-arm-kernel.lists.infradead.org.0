Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F9DF153F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 12:37:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q96eA1XlEWrh/sCfdK9gq1tot6Odh5Z8ZHV3VLABHKk=; b=JlDjumlBRSleGh
	IHYmdlvu/ge5vCSEpIfPLURcTLlRTJObTbHOcWzP41hB9OIM9Rj82TLK7Pk+147R5fMvGDWU9OsbI
	vCjxIx8RC3Hpem0ZcUaOmD14A/L52SOZy/m8ALwO270pQ6TaP8uERWabSdNb9Ba2U0t+4xC/s8lkP
	rZTZkCgScuAPCUC7nuLs1ltkN4jdAdpev1KfZ7J/QgO8uhPiaVVk5jOW4uv0wQvpQCiU+yZ4e10mN
	w+CwGPb6xiwiEh25Nalo1ZjpFjqcsBop57IOZcyzpB3VtKfl9Swwwqo0G8FjhlIOKQWriUY+zGpeE
	07V9j+pUTfSIt4zuXrRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJdA-0008M7-Hb; Wed, 06 Nov 2019 11:37:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJd2-0008KS-R7
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 11:37:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 48C0A7A7;
 Wed,  6 Nov 2019 03:37:34 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0D70B3F6C4;
 Wed,  6 Nov 2019 03:37:32 -0800 (PST)
Date: Wed, 6 Nov 2019 11:37:30 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>
Subject: Re: [PATCH 2/2] Thunderx2, uncore: Add workaround for ThunderX2
 erratum 221
Message-ID: <20191106113730.GB50610@lakrids.cambridge.arm.com>
References: <1573002091-9744-1-git-send-email-gkulkarni@marvell.com>
 <1573002091-9744-3-git-send-email-gkulkarni@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573002091-9744-3-git-send-email-gkulkarni@marvell.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_033736_920558_9EFB5E75 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "gklkml16@gmail.com" <gklkml16@gmail.com>,
 "mingo@redhat.com" <mingo@redhat.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 01:01:41AM +0000, Ganapatrao Prabhakerrao Kulkarni wrote:
> When perf tried with more events than the PMU supported counters, the perf
> core uses event multiplexing to accommodate all events. This results in
> burst of PMU register read and writes and causes the system hang, when
> executed along with the CPU intensive applications.

Can you please elaborate on how a burst of PMU reads/writes leads to a
hang?

I see the PMU counts DMC/L3C events -- does this occur under heavy /cpu/
load, or heavy /memory/ load?

Does this only happen with a specific timing of reads/writes, or is it
always possible that accessing the PMU can trigger a lockup, and it's
just more likely when the PMU is accessed more often?

Thanks,
Mark.

> 
> Adding software workaround by disabling event multiplexing.
> 
> Signed-off-by: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>
> ---
>  Documentation/admin-guide/perf/thunderx2-pmu.rst | 9 +++++++++
>  drivers/perf/thunderx2_pmu.c                     | 3 ++-
>  2 files changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/admin-guide/perf/thunderx2-pmu.rst b/Documentation/admin-guide/perf/thunderx2-pmu.rst
> index 08e33675853a..fff65382c887 100644
> --- a/Documentation/admin-guide/perf/thunderx2-pmu.rst
> +++ b/Documentation/admin-guide/perf/thunderx2-pmu.rst
> @@ -40,3 +40,12 @@ Examples::
>    uncore_l3c_0/read_hit/,\
>    uncore_l3c_0/inv_request/,\
>    uncore_l3c_0/inv_hit/ sleep 1
> +
> +ThunderX2 erratum 221:
> +When perf tried with more events than the PMU supported counters, the perf core
> +uses event multiplexing to accommodate all events. This results in burst of PMU
> +registers read and write and leading to system hang when executed along with
> +CPU intensive applications.
> +
> +
> +Disabling PMUs event multiplexing capability.
> diff --git a/drivers/perf/thunderx2_pmu.c b/drivers/perf/thunderx2_pmu.c
> index 43d76c85da56..c443be8bd449 100644
> --- a/drivers/perf/thunderx2_pmu.c
> +++ b/drivers/perf/thunderx2_pmu.c
> @@ -563,7 +563,8 @@ static int tx2_uncore_pmu_register(
>  		.start		= tx2_uncore_event_start,
>  		.stop		= tx2_uncore_event_stop,
>  		.read		= tx2_uncore_event_read,
> -		.capabilities	= PERF_PMU_CAP_NO_EXCLUDE,
> +		.capabilities	= PERF_PMU_CAP_NO_EXCLUDE |
> +					PERF_PMU_CAP_NO_MUX_EVENTS,
>  	};
>  
>  	tx2_pmu->pmu.name = devm_kasprintf(dev, GFP_KERNEL,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
