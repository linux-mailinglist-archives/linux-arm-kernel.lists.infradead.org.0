Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 939D717DDF5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 11:52:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i/MmVxG4jTwMtIvT/MbfjN7ua4wAlBPxOHSR+SnMl3M=; b=k0MNoEUZnLSfm6
	OYFb3YsQoHCLg1TB1H8PUAHZmDoa9rNjhg3JSXF7DlULSzZwZ8NUxpa4kAo0VNRRPCYSigjyRRJBI
	ROGg+CQmK4h2veIey4asZuoHhsKjeNJ+l1/vAf7C1xDwg0WvKcR46Q8aqjQbfuNQZYZrcZPgvwAnO
	vR9APWzUVzbfsRNjmTddqnZY3BEHHoR/6nMN8aAzkPJOovqfMZYZcFnJMxFwm3Si2M4TvNbt+HRbF
	n9AN/V4YSbKwP+lqiCCWzxEuzo2m+mDi1IPwxMCDWSal5IZs55aZY8WDwqUzvT+6zPk2PXeogumkq
	rmpQlZXdHpguFzmSfEkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBG1V-0006kM-Pq; Mon, 09 Mar 2020 10:52:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBG1I-0006jj-IB
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 10:52:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 244D81FB;
 Mon,  9 Mar 2020 03:52:23 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 741AF3F6CF;
 Mon,  9 Mar 2020 03:52:22 -0700 (PDT)
Date: Mon, 9 Mar 2020 10:52:20 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: luanshi <zhangliguang@linux.alibaba.com>
Subject: Re: [PATCH] perf: arm_spe: remove unnecessary zero check
Message-ID: <20200309105219.GC25261@lakrids.cambridge.arm.com>
References: <1582691106-3432-1-git-send-email-zhangliguang@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582691106-3432-1-git-send-email-zhangliguang@linux.alibaba.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_035224_643409_8D9EDC19 
X-CRM114-Status: GOOD (  15.50  )
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
Cc: Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 12:25:06PM +0800, luanshi wrote:
> The "nr_pages" variable has been checked before, it can't be zero, so a check here would be useless.
> 
> Signed-off-by: Liguang Zhang <zhangliguang@linux.alibaba.com>

As the commit message states, a  done:

| /* We need at least two pages for this to work. */
| if (nr_pages < 2)
|         return NULL;

... so this looks sensible to me:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  drivers/perf/arm_spe_pmu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/perf/arm_spe_pmu.c b/drivers/perf/arm_spe_pmu.c
> index 4e4984a..b72c048 100644
> --- a/drivers/perf/arm_spe_pmu.c
> +++ b/drivers/perf/arm_spe_pmu.c
> @@ -831,7 +831,7 @@ static void *arm_spe_pmu_setup_aux(struct perf_event *event, void **pages,
>  	 * parts and give userspace a fighting chance of getting some
>  	 * useful data out of it.
>  	 */
> -	if (!nr_pages || (snapshot && (nr_pages & 1)))
> +	if (snapshot && (nr_pages & 1))
>  		return NULL;
>  
>  	if (cpu == -1)
> -- 
> 1.8.3.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
