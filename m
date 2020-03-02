Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B53E17597F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 12:25:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zpHSRSdipdKyyOoTBrec1flENyfTrXfjOMUIe0tlbJc=; b=LtrAhQA/ejn2L2
	n9miILmOeDsUqGp9akQ08L4lsPKomieh5fgNv9zR7wSxtUr1jmwMKGh9RExIAHxlI88dzV8GalJEE
	tB3BtgaDntV9qDtFO5dbozsZvMZgbOpiMcwXLacrHKFl0GFEysZc2GI0Sy/6RmMI7UFCirLOTyBYL
	E8UkknGaSuyzQoddYMAv+a11A6tIA8FFbIctp1TUk4JlX1VD6PNmLM0ca1UwvhlT9v+m/aSHOB12H
	DWlSutPF5tP+moOaiwRQ6vCJZNhgMAagcs11kHkWQDilDjcmLBxJnXrS9T9OxiW4e+BDVBwPuev4u
	9XISENyuJxcMleVCGgOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8jBv-0000mU-0s; Mon, 02 Mar 2020 11:24:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8jBm-0000m9-RK
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 11:24:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 072B02166E;
 Mon,  2 Mar 2020 11:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583148286;
 bh=shjNfFrY8P4vv1Tb08UagbsrrFiIT1lpRM0AvSAkfG4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bDokAyCV0InOwp7LWdi71wyJGdVE32hYb64TAWaM13cAEgCVUoGY1ks4OAeoBayyH
 aq4kHiJr+ucTluKfNY21hKrhxQSY/zaExrM8XIZN5gE4hbOT/E8FnImkEvQsvovT9Y
 1SHXJXkxi2BkmN8q0CUVCnhSegOzP0DC5m1is8+w=
Date: Mon, 2 Mar 2020 11:24:41 +0000
From: Will Deacon <will@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH 2/2] perf/imx_ddr: Add stop counter support for i.MX8MP
Message-ID: <20200302112441.GB7995@willie-the-truck>
References: <20200225125644.18853-1-qiangqing.zhang@nxp.com>
 <20200225125644.18853-2-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225125644.18853-2-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_032446_907985_3BEA94E5 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, robin.murphy@arm.com, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 08:56:44PM +0800, Joakim Zhang wrote:
> DDR perf driver now only supports free-running event counters
> (counter1/2/3), which means that event counters will continue counting
> even they are overflow.
> 
> However, the situation is changed on i.MX8MP, event counters are not
> free-running any more. Event counters would stop counting if they are
> overflow. So we need clear event counters when cycle counter overflow.
> 
> The patch adds stop counter support which would be compatible to
> free-running counter.

Hmm, are you saying that the hardware behaviour has changed here, so that
newer SoCs force the behaviour where all the counters stop when one
overflows? Is there any way to control that behaviour?

> @@ -566,6 +571,25 @@ static irqreturn_t ddr_perf_irq_handler(int irq, void *p)
>  			cycle_event = event;
>  	}
>  
> +	spin_lock(&pmu->lock);
> +
> +	for (i = 0; i < NUM_COUNTERS; i++) {
> +		if (!pmu->events[i])
> +			continue;
> +
> +		event = pmu->events[i];
> +
> +		if (event->hw.idx == EVENT_CYCLES_COUNTER)
> +			continue;
> +
> +		/* clear non-cycle counters */
> +		ddr_perf_counter_enable(pmu, event->attr.config, event->hw.idx, true);
> +
> +		local64_set(&event->hw.prev_count, 0);
> +	}
> +
> +	spin_unlock(&pmu->lock);

I'm suspicious of this locking, as it's /very/ fine-grained. What prevents
racing with a concurrent ddr_perf_counter_enable() call? Also, doesn't perf
core need to be aware that you're stopping counters here?

Finally, this looks like it's an unconditional change in user-visible
behaviour. Why doesn't it break existing usage of the perf tool?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
