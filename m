Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F391442E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 18:11:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gK0DN4v/LDAk9qGgAZuHaXDDxO29SXaM7vkhuGQT5o8=; b=dKhygD+io+tiXA
	CQ/1JoUb7x+zpUrzm/6T2WhITCL6uyb8WCjHXnzoLYZUoIWQ0gc0CH4bwuC5BpBZa3bDoOVJ9qwSM
	OggOgfuPq44oQlvWYBGnQPOdfUygbLl5fQir8o43uAyuqIFYBFKAl4d/L79xm81iAEZTnfnz8r8Om
	ld6tlVMH65eNdizQGDfisqfJUmkcGzNafVd67rmaqYUSnN0jZf4RNMmYtf9VopNZR6MG1SuSVk92H
	uinlrCK3z8FMIH0pPpRSmL3LPjBBnD8z6C8DMSFpp+Hq0MlC3P5sZ8MuLR/eQ1KkAWgP8dPDD1xyc
	ERBEQOcrz+tuZTW2WogA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itx48-0006pT-Bv; Tue, 21 Jan 2020 17:11:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itx3r-0006ko-2k; Tue, 21 Jan 2020 17:11:38 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 457E2206A2;
 Tue, 21 Jan 2020 17:11:26 +0000 (UTC)
Date: Tue, 21 Jan 2020 12:11:24 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: lukasz.luba@arm.com
Subject: Re: [PATCH 3/4] thermal: devfreq_cooling: Refactor code and switch
 to use Energy Model
Message-ID: <20200121121124.1a1f3175@gandalf.local.home>
In-Reply-To: <20200116152032.11301-4-lukasz.luba@arm.com>
References: <20200116152032.11301-1-lukasz.luba@arm.com>
 <20200116152032.11301-4-lukasz.luba@arm.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_091131_142483_585E10D4 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: nm@ti.com, juri.lelli@redhat.com, daniel.lezcano@linaro.org,
 peterz@infradead.org, viresh.kumar@linaro.org, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, khilman@kernel.org,
 agross@kernel.org, b.zolnierkie@samsung.com, steven.price@arm.com,
 cw00.choi@samsung.com, mingo@redhat.com, linux-imx@nxp.com,
 rui.zhang@intel.com, mgorman@suse.de, daniel@ffwll.ch,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, Chris.Redpath@arm.com, linux-omap@vger.kernel.org,
 Dietmar.Eggemann@arm.com, linux-arm-kernel@lists.infradead.org,
 airlied@linux.ie, javi.merino@arm.com, tomeu.vizoso@collabora.com,
 qperret@google.com, sboyd@kernel.org, shawnguo@kernel.org, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, sudeep.holla@arm.com,
 patrick.bellasi@matbug.net, ionela.voinescu@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 Jan 2020 15:20:31 +0000
lukasz.luba@arm.com wrote:

> diff --git a/include/trace/events/thermal.h b/include/trace/events/thermal.h
> index 135e5421f003..8a5f04888abd 100644
> --- a/include/trace/events/thermal.h
> +++ b/include/trace/events/thermal.h
> @@ -153,31 +153,30 @@ TRACE_EVENT(thermal_power_cpu_limit,
>  TRACE_EVENT(thermal_power_devfreq_get_power,
>  	TP_PROTO(struct thermal_cooling_device *cdev,
>  		 struct devfreq_dev_status *status, unsigned long freq,
> -		u32 dynamic_power, u32 static_power, u32 power),
> +		u32 power),
>  
> -	TP_ARGS(cdev, status,  freq, dynamic_power, static_power, power),
> +	TP_ARGS(cdev, status,  freq, power),
>  
>  	TP_STRUCT__entry(
>  		__string(type,         cdev->type    )
>  		__field(unsigned long, freq          )
> -		__field(u32,           load          )
> -		__field(u32,           dynamic_power )
> -		__field(u32,           static_power  )
> +		__field(u32,           busy_time)
> +		__field(u32,           total_time)
>  		__field(u32,           power)
>  	),
>  
>  	TP_fast_assign(
>  		__assign_str(type, cdev->type);
>  		__entry->freq = freq;
> -		__entry->load = (100 * status->busy_time) / status->total_time;
> -		__entry->dynamic_power = dynamic_power;
> -		__entry->static_power = static_power;
> +		__entry->busy_time = status->busy_time;
> +		__entry->total_time = status->total_time;
>  		__entry->power = power;
>  	),
>  
> -	TP_printk("type=%s freq=%lu load=%u dynamic_power=%u static_power=%u power=%u",
> +	TP_printk("type=%s freq=%lu load=%u power=%u",
>  		__get_str(type), __entry->freq,
> -		__entry->load, __entry->dynamic_power, __entry->static_power,
> +		__entry->total_time == 0 ? 0 :
> +			(100 * __entry->busy_time) / __entry->total_time,
>  		__entry->power)
>  );
>  

Tracing updates look fine to me. Having the division on the output
makes more sense.

Reviewed-by: Steven Rostedt (VMware) <rostedt@goodmis.org> # for tracing code

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
