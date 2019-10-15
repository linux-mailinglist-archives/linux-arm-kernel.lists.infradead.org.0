Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE82D7BDA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 18:38:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lg2lXpmofy+uhqxhSDexxzeMX65Ov5Y40gsDOy2OrGM=; b=ddanP44XX72PA5
	FiBejlupJ6SlKI4VI8grHv34Zw9a2/YGRYA47TMTTOw4PFarq93Ca1d2oqZrzQWt4Vcga2KQ8KYHn
	O6dl4+GjqrkeQn92ZZ8mAQHLOV4TUe+uMgPJCh9X+9Gg0y+RMq/TkcKuUKYSywDSjyUyqhXtOq2A2
	uL+44/AZU3itks1YxD6LyarGevcJ/NP0UN9BgCV4uBkSDfPy8W2q24bTTQSkTY6Ze5ehIrQWqU1VX
	bLVt0STxHiHTRn5EEEFFfNxmCHVAsL9CGKE0ENXQFNGx2rUBkPrYWn9paMfI+yWy3HOCoS6CKOzql
	T2gweHKmoT/8G6Kk5o2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKPpb-0002VS-KB; Tue, 15 Oct 2019 16:37:55 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKPpS-0002Uy-IS
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 16:37:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571157464;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:openpgp;
 bh=1jEbQ5iqOThUFULFTyIFEug52/ZAJJCm7u+tNv/e0Pk=;
 b=eAy7IcvHZyJZgNteHAkya8+rdSXPrC4gFj0wpf9kWa5zrm1CjPK+zzAIruK9G7UVZ/F12o
 DPKGqr8kmnRbdmT147jvloYoExZ+n7p1f/P8/r9YOfDcrgKxNnq2i+OJjJ45jt/e+h2tin
 4ITMZ+kTQJGya8Zw5srolvIWmN11C3Q=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-317-4U7k6LDJM3OAL-Jks9XYLQ-1; Tue, 15 Oct 2019 12:37:40 -0400
Received: by mail-wr1-f71.google.com with SMTP id a15so1342573wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 09:37:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/afoUvKJ/G8ziRnWqBlZqbL4cc1xk25yfAVgZZ9J6P4=;
 b=DzRd349tO+YJ+MfdNktf314JXJskrI1zwjM0O37QTgliDt4x1a6Ad3ScZEim3lTa61
 LMCTSKt9zcO5MfPnZ5n3Ig5GnVvdDZb9xdMVW+RFazt6ufK6bdnD/5xGFt3O0i7AbIs5
 60/7qiK1e2qAFHc6O9/PaBQmhW9CUXRNeI8PZDQJ3NuouEYUfV8ZFhKCXaJZVBCSiSQd
 W48oy788Mmr4lC2j0qf421KSE+3Rl6pH+9eTBRpXfTusw8qhxbbeRKWBM6SztgWOUgV4
 fGRitHkmg4HUANXI+yYa113+TIm3YycQj7FaIwJmqxJQQK/QWifzxej+sQ9aScAtSACo
 UYXA==
X-Gm-Message-State: APjAAAWU/suggQzxlAImD31RcD6+m6fFkfLpD9leQvBiehVsaOaZ6FA9
 9M6TtkTxr2MI5EYUiDrN9dbK53QXkZF1ZV5DCGeIypWHYuYtvoBG0BwM2QbHnPeLR/04WtZA+4A
 4HudbOxuWXr7W/hrkrKjQa1itIVVj4SY+388=
X-Received: by 2002:a5d:4108:: with SMTP id l8mr30326060wrp.391.1571157459636; 
 Tue, 15 Oct 2019 09:37:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxipARbWgSrbXCwl1TEPdWRJHBQlN9VqVPvaKOq4EkdjYSYjz5KQDey2GKDwlfZaBSNuv9Oqg==
X-Received: by 2002:a5d:4108:: with SMTP id l8mr30326034wrp.391.1571157459287; 
 Tue, 15 Oct 2019 09:37:39 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:d001:591b:c73b:6c41?
 ([2001:b07:6468:f312:d001:591b:c73b:6c41])
 by smtp.gmail.com with ESMTPSA id r65sm26602863wmr.9.2019.10.15.09.37.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Oct 2019 09:37:38 -0700 (PDT)
Subject: Re: [PATCH v5 3/6] timekeeping: Add clocksource to
 system_time_snapshot
To: Jianyong Wu <jianyong.wu@arm.com>, netdev@vger.kernel.org,
 yangbo.lu@nxp.com, john.stultz@linaro.org, tglx@linutronix.de,
 sean.j.christopherson@intel.com, maz@kernel.org, richardcochran@gmail.com,
 Mark.Rutland@arm.com, will@kernel.org, suzuki.poulose@arm.com
References: <20191015104822.13890-1-jianyong.wu@arm.com>
 <20191015104822.13890-4-jianyong.wu@arm.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <9274d21c-2c43-2e0d-f086-6aaba3863603@redhat.com>
Date: Tue, 15 Oct 2019 18:37:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191015104822.13890-4-jianyong.wu@arm.com>
Content-Language: en-US
X-MC-Unique: 4U7k6LDJM3OAL-Jks9XYLQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_093746_737079_6905E02A 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: justin.he@arm.com, kvm@vger.kernel.org, Steve.Capper@arm.com,
 linux-kernel@vger.kernel.org, Kaly.Xin@arm.com, nd@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/10/19 12:48, Jianyong Wu wrote:
> Sometimes, we need check current clocksource outside of
> timekeeping area. Add clocksource to system_time_snapshot then
> we can get clocksource as well as system time.
> 
> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> Suggested-by: Paolo Bonzini <pbonzini@redhat.com>
> ---
>  include/linux/timekeeping.h | 35 ++++++++++++++++++-----------------
>  kernel/time/timekeeping.c   |  7 ++++---
>  2 files changed, 22 insertions(+), 20 deletions(-)
> 
> diff --git a/include/linux/timekeeping.h b/include/linux/timekeeping.h
> index a8ab0f143ac4..964c14fbbf69 100644
> --- a/include/linux/timekeeping.h
> +++ b/include/linux/timekeeping.h
> @@ -194,23 +194,6 @@ extern bool timekeeping_rtc_skipresume(void);
>  
>  extern void timekeeping_inject_sleeptime64(const struct timespec64 *delta);
>  
> -/*
> - * struct system_time_snapshot - simultaneous raw/real time capture with
> - *	counter value
> - * @cycles:	Clocksource counter value to produce the system times
> - * @real:	Realtime system time
> - * @raw:	Monotonic raw system time
> - * @clock_was_set_seq:	The sequence number of clock was set events
> - * @cs_was_changed_seq:	The sequence number of clocksource change events
> - */
> -struct system_time_snapshot {
> -	u64		cycles;
> -	ktime_t		real;
> -	ktime_t		raw;
> -	unsigned int	clock_was_set_seq;
> -	u8		cs_was_changed_seq;
> -};
> -
>  /*
>   * struct system_device_crosststamp - system/device cross-timestamp
>   *	(syncronized capture)
> @@ -236,6 +219,24 @@ struct system_counterval_t {
>  	struct clocksource	*cs;
>  };
>  
> +/*
> + * struct system_time_snapshot - simultaneous raw/real time capture with
> + *	counter value
> + * @sc:		Contains clocksource and clocksource counter value to produce
> + * 	the system times
> + * @real:	Realtime system time
> + * @raw:	Monotonic raw system time
> + * @clock_was_set_seq:	The sequence number of clock was set events
> + * @cs_was_changed_seq:	The sequence number of clocksource change events
> + */
> +struct system_time_snapshot {
> +	struct system_counterval_t sc;
> +	ktime_t		real;
> +	ktime_t		raw;
> +	unsigned int	clock_was_set_seq;
> +	u8		cs_was_changed_seq;
> +};
> +
>  /*
>   * Get cross timestamp between system clock and device clock
>   */
> diff --git a/kernel/time/timekeeping.c b/kernel/time/timekeeping.c
> index 44b726bab4bd..66ff089605b3 100644
> --- a/kernel/time/timekeeping.c
> +++ b/kernel/time/timekeeping.c
> @@ -983,7 +983,8 @@ void ktime_get_snapshot(struct system_time_snapshot *systime_snapshot)
>  		nsec_raw  = timekeeping_cycles_to_ns(&tk->tkr_raw, now);
>  	} while (read_seqcount_retry(&tk_core.seq, seq));
>  
> -	systime_snapshot->cycles = now;
> +	systime_snapshot->sc.cycles = now;
> +	systime_snapshot->sc.cs = tk->tkr_mono.clock;
>  	systime_snapshot->real = ktime_add_ns(base_real, nsec_real);
>  	systime_snapshot->raw = ktime_add_ns(base_raw, nsec_raw);
>  }
> @@ -1189,12 +1190,12 @@ int get_device_system_crosststamp(int (*get_time_fn)
>  		 * clocksource change
>  		 */
>  		if (!history_begin ||
> -		    !cycle_between(history_begin->cycles,
> +		    !cycle_between(history_begin->sc.cycles,
>  				   system_counterval.cycles, cycles) ||
>  		    history_begin->cs_was_changed_seq != cs_was_changed_seq)
>  			return -EINVAL;
>  		partial_history_cycles = cycles - system_counterval.cycles;
> -		total_history_cycles = cycles - history_begin->cycles;
> +		total_history_cycles = cycles - history_begin->sc.cycles;
>  		discontinuity =
>  			history_begin->clock_was_set_seq != clock_was_set_seq;
>  
> 

Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
