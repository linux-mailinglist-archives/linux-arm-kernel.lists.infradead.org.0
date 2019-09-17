Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5834BB53B3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 19:11:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FaYBpAexj2f0TT/2o6rg8YR9N/FJRZ9J6NZXrOOIXWk=; b=WdbKW9qpAUkuv5
	df+vBNg5HCTMNvs4bXmkVB8D0pen9ZWhoLf0Cl3mBfkzjOzCLgvRKpk1jvILKiAIYj94CbsMZiTQ+
	qPUS4nXKWjsAVqwTPUjMGvpk6muhK91hUn2ucbXD8b6x74X5hsgvU8pMpeOqhW6220DS9BHAsYp0t
	jxO0XgMBWkDlNg27gqztsiOdMB4pVpC2B3MfsyS4owkDss8wwmEUl3WxCbqErol9QC2+d+0xk4pMz
	N7ASbH5XnNjG5ioVRuo+udYDBTENY3pxe8DSbjnHDn2Q1c6/pn0HFgQ/D4Lo67kmPk+nK2KHPn00W
	lqZS86kfB+qHUNscA63A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAH0m-000648-LO; Tue, 17 Sep 2019 17:11:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAGzo-000638-Qg
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 17:10:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8468328;
 Tue, 17 Sep 2019 10:10:29 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 D136B3F575; Tue, 17 Sep 2019 10:10:27 -0700 (PDT)
Subject: Re: [PATCH 3/6] Timer: expose monotonic clock and counter value
To: Jianyong Wu <jianyong.wu@arm.com>, netdev@vger.kernel.org,
 pbonzini@redhat.com, sean.j.christopherson@intel.com,
 richardcochran@gmail.com, Mark.Rutland@arm.com, Will.Deacon@arm.com,
 suzuki.poulose@arm.com
References: <20190917112430.45680-1-jianyong.wu@arm.com>
 <20190917112430.45680-4-jianyong.wu@arm.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <ad38f692-a7c4-34e0-8236-ebd2d237bd93@kernel.org>
Date: Tue, 17 Sep 2019 18:10:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190917112430.45680-4-jianyong.wu@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_101034_339994_2037CEA7 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: justin.he@arm.com, Steve.Capper@arm.com, linux-kernel@vger.kernel.org,
 Kaly.Xin@arm.com, nd@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/09/2019 12:24, Jianyong Wu wrote:
> A number of PTP drivers (such as ptp-kvm) are assuming what the
> current clock source is, which could lead to interesting effects on
> systems where the clocksource can change depending on external events.
> 
> For this purpose, add a new API that retrives both the current
> monotonic clock as well as its counter value.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>

There must be something wrong with the way you've taken this patch in
your tree. My authorship is gone (not that I deeply care about it, but
it is good practice to keep attributions), and the subject line has been
rewritten.

I'd appreciate it if you could fix this in a future revision of this
series. For reference, the original patch is here[1].

> ---
>  include/linux/timekeeping.h |  3 +++
>  kernel/time/timekeeping.c   | 13 +++++++++++++
>  2 files changed, 16 insertions(+)
> 
> diff --git a/include/linux/timekeeping.h b/include/linux/timekeeping.h
> index a8ab0f143ac4..a5389adaa8bc 100644
> --- a/include/linux/timekeeping.h
> +++ b/include/linux/timekeeping.h
> @@ -247,6 +247,9 @@ extern int get_device_system_crosststamp(
>  			struct system_time_snapshot *history,
>  			struct system_device_crosststamp *xtstamp);
>  
> +/* Obtain current monotonic clock and its counter value  */
> +extern void get_current_counterval(struct system_counterval_t *sc);
> +
>  /*
>   * Simultaneously snapshot realtime and monotonic raw clocks
>   */
> diff --git a/kernel/time/timekeeping.c b/kernel/time/timekeeping.c
> index 44b726bab4bd..07a0969625b1 100644
> --- a/kernel/time/timekeeping.c
> +++ b/kernel/time/timekeeping.c
> @@ -1098,6 +1098,19 @@ static bool cycle_between(u64 before, u64 test, u64 after)
>  	return false;
>  }
>  
> +/**
> + * get_current_counterval - Snapshot the current clocksource and counter value
> + * @sc:	Pointer to a struct containing the current clocksource and its value
> + */
> +void get_current_counterval(struct system_counterval_t *sc)
> +{
> +	struct timekeeper *tk = &tk_core.timekeeper;
> +
> +	sc->cs = READ_ONCE(tk->tkr_mono.clock);
> +	sc->cycles = sc->cs->read(sc->cs);
> +}
> +EXPORT_SYMBOL_GPL(get_current_counterval);

This export wasn't in my original patch. I guess you need it because
your ptp driver builds as a module? It'd be good to mention it in the
commit log.

> +
>  /**
>   * get_device_system_crosststamp - Synchronously capture system/device timestamp
>   * @get_time_fn:	Callback to get simultaneous device time and
> 

Thanks,

	M.

[1]
https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/commit/?h=timer/counterval&id=a6e8abce025691b6a55e1c195878d7f76bfeb9d1
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
