Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EB715F5E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 10:30:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RMssa51GCi6Bli9tCdDOoNeAyXIQBAOZXcQJF5E/lS4=; b=D154RIS1inx7qa
	OKJtIaEvojHbF9fd/LulYlHqNk1HuyEt57xOnrrx4z40Oljlh+/1CXX4FIilLfwM4Sl8tl1DNVsYo
	A+jK1Zg/R6qlqjXMHs9VDY5V2V7k5P95Z7Ygc/WoDC4K6QLnbJNpsWioCxATsRJGoAHTSsQjowkHb
	U+4QlytLluUbHCeElJBOLautn0swdLxzkxRTjMMMwfwmNldvxAyaM5qMNLgOXnjMUTEowpHnos0uI
	CdmTKaCtq4d588IrrvnJEVFYdeSXPNbuXuoJVoKGDi1/1i8mEkiO1kU2jhpov1sqHfmikeUtXEHnU
	hoKXDGRQL0pNPklo7BEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNvUC-0001i4-To; Tue, 07 May 2019 08:30:04 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNvU3-0001h6-NW
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 08:29:57 +0000
Received: by mail-yw1-xc43.google.com with SMTP id a130so6955296ywe.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 01:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UNq780S9Il2xGCGc6hYdagY5z9aOQkZ/Ci4iGfutpL8=;
 b=Gv2RKzxjA5tJevDAowfpmTM7ZLkGwjyI9/pd+TFt3vucB7w8JUGgIY5oSo3y/LbEHp
 R8j92mSRhTXBD+NA0k3I+W4Wi1widNB/BpiW5JbwUNFaZGDQ8EZY3J0r8Z75kUt70VHS
 QUwjmqv3aZYqKCkYisxPaLf7LvWZ+DyLpuGaIZphFsMiiFGpcEj5zzgR3hdY48vo099/
 2qTwRZKp+l1YoGEoxHsYGeznWVNh8wgVE4vBZ1IUQATpwelgQd1zNgisLzh47a5K7v52
 bO+d7XYDKzaShIbx7x2qwXF1VICNj56ysSBRIudrhDOMXrOZ4XLCqijd+Na52x80/j7s
 xaxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UNq780S9Il2xGCGc6hYdagY5z9aOQkZ/Ci4iGfutpL8=;
 b=b99Bqi9TeZ9j3P3XzylTA4tdghmgGFJx1ChJbbr2F/UiYpR7x0O7Wx4CsqH1xxm6Dx
 TsbYtwyt/BYICfXcTPc+jsv1MMalFKfuBZJuX3WUerypcOVnZZP3n238nfB3QQfcJ3P1
 00hg65Euk/muyrrtb4R6CiKNerFeAx03y5L1eJjRI2FY5DarqvS9vf9CeWnPEGqYXltG
 pifCKq7Nc27wmkiCSXhwd4vaNRiwAFmT9U5iu2VEe51K2O276xG6fJ8nRZhJsdviYnmV
 mvRL1pYcmUcFnmuOG/HUSKwLBVvtl2Uw63xl3llBqukn1JVHTjIycgwFVOob2VXjM8IS
 JCHQ==
X-Gm-Message-State: APjAAAWGGPX2dfaceZ2gllVWje7VR+Xsnza+qecBdlMi+u/uQCYwV2sO
 kcjdMi02FHDIGEdffmb1FRn96Q==
X-Google-Smtp-Source: APXvYqyJdaQGQ+aiX4yWrANU5XPpcjwfUywnfa6FwCHFQPEVLTcg9HL4UesogaDJ3meRc+3hNxiYKA==
X-Received: by 2002:a81:5f82:: with SMTP id t124mr19933252ywb.94.1557217793690; 
 Tue, 07 May 2019 01:29:53 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id 124sm3638912yws.21.2019.05.07.01.29.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 01:29:52 -0700 (PDT)
Date: Tue, 7 May 2019 16:29:45 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 3/5] coresight: perf: Don't set the truncated flag in
 snapshot mode
Message-ID: <20190507082945.GC21730@leoy-ThinkPad-X240s>
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
 <20190501175052.29667-4-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501175052.29667-4-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_012955_958632_FE87C864 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: corbet@lwn.net, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, suzuki.poulose@arm.com, acme@kernel.org,
 peterz@infradead.org, mingo@redhat.com, mike.leach@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 11:50:50AM -0600, Mathieu Poirier wrote:
> This patch avoids setting the truncated flag when operaring in snapshot

s/operaring/operating

> mode since the trace buffer is expected to be truncated and discontinuous
> from one snapshot to another.  Moreover when the truncated flag is set
> the perf core stops enabling the event, waiting for user space to consume
> the data.  In snapshot mode this is clearly not what we want since it
> results in stale data.

Not sure if I understand correctly or not.

If set TRUNCATED flag and the user space has finished to read out the
trace data, will perf not re-enable the event anymore for snapshot mode?

Seems to me, the perf core code cannot handle properly for TRUNCATED
flag with snapshot mode.  Sorry if introduce noise, will look into the
perf core code.

Thanks,
Leo Yan

> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>  drivers/hwtracing/coresight/coresight-etb10.c   | 8 +++++++-
>  drivers/hwtracing/coresight/coresight-tmc-etf.c | 8 +++++++-
>  drivers/hwtracing/coresight/coresight-tmc-etr.c | 8 +++++++-
>  3 files changed, 21 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
> index 0764647b92bc..6ff48be91f61 100644
> --- a/drivers/hwtracing/coresight/coresight-etb10.c
> +++ b/drivers/hwtracing/coresight/coresight-etb10.c
> @@ -535,7 +535,13 @@ static unsigned long etb_update_buffer(struct coresight_device *csdev,
>  		lost = true;
>  	}
>  
> -	if (lost)
> +	/*
> +	 * Don't set the TRUNCATED flag in snapshot mode because 1) the
> +	 * captured buffer is expected to be truncated and 2) a full buffer
> +	 * prevents the event from being re-enabled by the perf core,
> +	 * resulting in stale data being send to user space.
> +	 */
> +	if (!buf->snapshot && lost)
>  		perf_aux_output_flag(handle, PERF_AUX_FLAG_TRUNCATED);
>  
>  	/* finally tell HW where we want to start reading from */
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> index d3025634f5e6..8039bd389034 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> @@ -538,7 +538,13 @@ static unsigned long tmc_update_etf_buffer(struct coresight_device *csdev,
>  		lost = true;
>  	}
>  
> -	if (lost)
> +	/*
> +	 * Don't set the TRUNCATED flag in snapshot mode because 1) the
> +	 * captured buffer is expected to be truncated and 2) a full buffer
> +	 * prevents the event from being re-enabled by the perf core,
> +	 * resulting in stale data being send to user space.
> +	 */
> +	if (!buf->snapshot && lost)
>  		perf_aux_output_flag(handle, PERF_AUX_FLAG_TRUNCATED);
>  
>  	cur = buf->cur;
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index b9881d6d41ba..718586a083af 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> @@ -1516,7 +1516,13 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
>  
>  	lost |= etr_buf->full;
>  out:
> -	if (lost)
> +	/*
> +	 * Don't set the TRUNCATED flag in snapshot mode because 1) the
> +	 * captured buffer is expected to be truncated and 2) a full buffer
> +	 * prevents the event from being re-enabled by the perf core,
> +	 * resulting in stale data being send to user space.
> +	 */
> +	if (!etr_perf->snapshot && lost)
>  		perf_aux_output_flag(handle, PERF_AUX_FLAG_TRUNCATED);
>  	return size;
>  }
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
