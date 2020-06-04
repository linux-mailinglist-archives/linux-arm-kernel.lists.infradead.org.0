Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 813B41EED3E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 23:19:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OtD9lGFZbWNthQGVQyjqh+UpFD+H7lIFNpaf70Cr6i4=; b=Sg2bsMEMDsH7eE
	wSNbJFAGdoTwO/qpqEiSki8V0gKhunm8tEKFexA/7bpG0MR7qDiywIsMDp9RjQ9QtGtMtcxtC5iz/
	KZqygNHZkF3nFAQLRparYice9pXxB5WmE725PHDvOmK6HE7jARtxQPtHo7T72YDHKDbQ2gGNq8zuY
	MbQoSQfFmLHhqbcqeklXskSJNJQAZ75eywCOQ2NQekCgDMQVX4l8bhQzhTL3zjwiNh/higFjcv2nt
	9Yki51UTh6WL0y5BI0nLDcwNpZwHd9tmTn3Bst3EPokeLETBA81ue+ZyOBaH+xpJC8MY32hunD6j7
	jEPO0l7JdYzbycJJdXWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgxGX-0006NP-Rk; Thu, 04 Jun 2020 21:19:09 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgxGN-0006Mo-15
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 21:19:02 +0000
Received: by mail-pf1-x444.google.com with SMTP id x207so3851658pfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 14:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MwCIfTRqbU14edZBNKs/TRMo62iL5QAU44scjMHHOg0=;
 b=mH0+AI+pLCbXbnTNhNCDPqNtoBMGqqXrwlVCZFfwK8sp8K0gvRgS/YYhYtNmlpa0gH
 y21Wa/Ri9vnw8dEdxzD8yQaaflceuvdHHKgpSHTbX7UeF/8Pm6kxiwPUhensI+xsopzj
 5k1sJ2h5o0ldiQpGtTDuIsj6zXhsiPO6FnZ4jVZ33LvOIb8/UvDshdPS66/XiwMvPepT
 mE1A2XgYq+bR8zj9491EwcmoP0GugNVEqQlObUQ0EvxN008UVCucnB22Ochnikd4gUwp
 lkPB88uaRroOkJ3vhtb6Dvdt0qTWBf6cHWZQuOnPyc7uupc/OunwHIeklFBrNALEjmij
 pf5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MwCIfTRqbU14edZBNKs/TRMo62iL5QAU44scjMHHOg0=;
 b=cL4s4mtGTeYC+va3XHdD438J+iNOozS5Tom5txzsR1BUglaD4kSvk3bFw2oSjTRm3D
 XOKnfh4np37iDSxQfdMyQctuc6ezhTIMjJS53qhjMH+Dk4WhsgdgJIhUoxjv0W2WKfuf
 uF4YLzmzV+BUorYfNqeFWINCtD22T3l3J117ogxExss2pl0TxImSwJgSSkMl06bLfFy1
 18IJykOaVVG9w8JHAveYj83nl2SnVlqcXObn5OMObS8uXEeefvAHAiN+kFrAif6ca68c
 j9Y7vPSWxxLQpKuLmIY5aj0PMl2XkvPQRGBHOXdS6fiUKZWDh1kY4vPXgyUyep/SLRLj
 wnWA==
X-Gm-Message-State: AOAM533ZdmKl/dddwW6IMFD1xFM9Z20xe0Ka3hLag0BYjPwqd8tG4O7L
 D46u/yWfA4tgl3SQAOoB96nJFA==
X-Google-Smtp-Source: ABdhPJyqlgBCytQf8F/z1ioCoD0KVKYO1CckzNSYu5fAmVLGpNPVZ2RdPbIDn8VvhsFt5WhfwCBSOw==
X-Received: by 2002:a62:8f45:: with SMTP id n66mr6177273pfd.236.1591305538461; 
 Thu, 04 Jun 2020 14:18:58 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id e143sm5288315pfh.42.2020.06.04.14.18.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 14:18:57 -0700 (PDT)
Date: Thu, 4 Jun 2020 15:18:55 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v4 4/5] coresight: etm: perf: Add default sink selection
 to etm perf
Message-ID: <20200604211855.GD18961@xps15>
References: <20200526104642.9526-1-mike.leach@linaro.org>
 <20200526104642.9526-5-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526104642.9526-5-mike.leach@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_141901_325532_66A07807 
X-CRM114-Status: GOOD (  20.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: coresight@lists.linaro.org, acme@kernel.org,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 11:46:41AM +0100, Mike Leach wrote:
> Add default sink selection to the perf trace handling in the etm driver.
> Uses the select default sink infrastructure to select a sink for the perf
> session, if no other sink is specified.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  .../hwtracing/coresight/coresight-etm-perf.c    | 17 ++++++++++++++---
>  1 file changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm-perf.c b/drivers/hwtracing/coresight/coresight-etm-perf.c
> index 84f1dcb69827..1a3169e69bb1 100644
> --- a/drivers/hwtracing/coresight/coresight-etm-perf.c
> +++ b/drivers/hwtracing/coresight/coresight-etm-perf.c
> @@ -226,9 +226,6 @@ static void *etm_setup_aux(struct perf_event *event, void **pages,
>  		sink = coresight_get_enabled_sink(true);
>  	}
>  
> -	if (!sink)
> -		goto err;
> -
>  	mask = &event_data->mask;
>  
>  	/*
> @@ -253,6 +250,16 @@ static void *etm_setup_aux(struct perf_event *event, void **pages,
>  			continue;
>  		}
>  
> +		/*
> +		 * No sink provided - look for a default sink for one of the
> +		 * devices. At present we only support topology where all CPUs
> +		 * use the same sink [N:1], so only need to find one sink. The
> +		 * coresight_build_path later will remove any CPU that does not
> +		 * attach to the sink, or if we have not found a sink.
> +		 */
> +		if (!sink)
> +			sink = coresight_find_default_sink(csdev);
> +
>  		/*
>  		 * Building a path doesn't enable it, it simply builds a
>  		 * list of devices from source to sink that can be
> @@ -267,6 +274,10 @@ static void *etm_setup_aux(struct perf_event *event, void **pages,
>  		*etm_event_cpu_path_ptr(event_data, cpu) = path;
>  	}
>  
> +	/* no sink found for any CPU - cannot trace */
> +	if (!sink)
> +		goto err;
> +

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>  	/* If we don't have any CPUs ready for tracing, abort */
>  	cpu = cpumask_first(mask);
>  	if (cpu >= nr_cpu_ids)
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
