Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D34111EED3C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 23:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MIwomMUyYUFpWMW4TeFyfQ9Z7Nsg4/21qYQsUAi6oOg=; b=mlvvG2GfthR6D3
	C4sBSJvP25uaCLOBtoZuQITn4MKSAnr0iLmEZSVfdscpysW7XLfkoNmsiENNAKfln24cUmPVwkbkc
	ENXo96Y4p5cHx9wqJB4xEG0ZYi7T/4YEyBDh4E/0Ddgvlk8dQEVqrny9qOin/F+qzRhDpy725i51U
	1Em102fRej76AMmGlci8sAY9KM88ZSPwuk5pSWoQLe0RAjiMUhrKKw8OPL4hKd9bfN7RI3gcRBw34
	Yh3pKSMxR0pBK0V69BoRGXsjIn3osHYIWj6p8bTt0n6EfIZiW9Lk4QEez8eS8m4Q3lZEu1a+P3ObR
	LKp3gVXhfLIUoAzPZ/iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgxEy-0005rg-5e; Thu, 04 Jun 2020 21:17:32 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgxEq-0005rM-0x
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 21:17:25 +0000
Received: by mail-pj1-x1041.google.com with SMTP id jz3so1664390pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 14:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eR+EvferEgDLgBdtMAfuwCrl2t6Ztb7WDk1y81pmGAc=;
 b=zqFSjJPMuFE1VKAaKfl9jXaAKJNnB9jasL1Ww9r/Gj67uSGDfiEPK90VC6kLGwOLp3
 lEUMmr7OP/kaKAK5qE3ZKWg1iHUNZuPo2UE8f+DERExyeBbJiOoT5efd1/PvWGvMDbJh
 Pxj7U/Lm+MsX+hRSKOlq78JKQSL2fKxwLuyj2dG8HRHRW+eR+X7k63xWi14tT8peRz6w
 wqhaWIsRieaGiLx8htefznxvtoJkGzzn5Gu9QO2/IYZDf9C4+3PuRH/3BtcIThJfSDLY
 YkHVJeqvmQEmQzs0hOGOMiOPcFYXpQhaYLe2bHxqNSpO12koqkxdbKF246Gs126H9tha
 JI6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eR+EvferEgDLgBdtMAfuwCrl2t6Ztb7WDk1y81pmGAc=;
 b=SpyfSqDEOpHR/ywIMqSA6G64Ha/D4VGwtJRg0qDkq6yXOk/Nf0nEowLp8quKSwH73P
 Nr99oO9I8bvwwXHsmzWZISW2CnB2qR8NdxvrA4TdR0JhH6KvNALnPrg9jIYhrDFqW/Ce
 Pc814blWCwHvEZ/zYXiDsFErE9fdHq48rmqmaejiiL7QUjmwum4TZvPbYHtaeCIeDrp5
 QocFoAMEtc27r3lX/tTA9s61VXnLR+WuVS4P30PawxcLaXTLD4diAX3zUGqRjaRF7JtY
 +tL+pbTuMXp6oj2gtqWurg7Q0k9wehatcCmb+1zppUGWGPV5ofsKPOmHYso/qqWKVzES
 Mi4g==
X-Gm-Message-State: AOAM530D+3xzkrk1fFBsb02qqoIItiv5UOaHX0c9ljHd/XP5BC3bBZG1
 2O9oqp9CoOman15WiLbFWRmPOg==
X-Google-Smtp-Source: ABdhPJxqU73IN82YCR67/HRkAoaERIllvYxFkHxYb/+qfp29weVEaEI43t8AcCHqB+8IciU3LOdzwg==
X-Received: by 2002:a17:90a:ea84:: with SMTP id
 h4mr7378080pjz.45.1591305443293; 
 Thu, 04 Jun 2020 14:17:23 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id o16sm4811723pgg.57.2020.06.04.14.17.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 14:17:22 -0700 (PDT)
Date: Thu, 4 Jun 2020 15:17:20 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v4 2/5] coresight: Add default sink selection to
 CoreSight base
Message-ID: <20200604211720.GB18961@xps15>
References: <20200526104642.9526-1-mike.leach@linaro.org>
 <20200526104642.9526-3-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526104642.9526-3-mike.leach@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_141724_067887_57949250 
X-CRM114-Status: GOOD (  36.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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

On Tue, May 26, 2020 at 11:46:39AM +0100, Mike Leach wrote:
> Adds a method to select a suitable sink connected to a given source.
> 
> In cases where no sink is defined, the coresight_find_default_sink
> routine can search from a given source, through the child connections
> until a suitable sink is found.
> 
> The suitability is defined in by the sink coresight_dev_subtype on the
> CoreSight device, and the distance from the source by counting
> connections.
> 
> Higher value subtype is preferred - where these are equal, shorter
> distance from source is used as a tie-break.
> 
> This allows for default sink to be discovered were none is specified
> (e.g. perf command line)
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Leo has also added a RB for this patch, please add it on when you rebase on
v5.8-rc1.

> ---
>  drivers/hwtracing/coresight/coresight-priv.h |   2 +
>  drivers/hwtracing/coresight/coresight.c      | 136 +++++++++++++++++++
>  include/linux/coresight.h                    |   3 +
>  3 files changed, 141 insertions(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> index 36c943ae94d5..f2dc625ea585 100644
> --- a/drivers/hwtracing/coresight/coresight-priv.h
> +++ b/drivers/hwtracing/coresight/coresight-priv.h
> @@ -150,6 +150,8 @@ int coresight_enable_path(struct list_head *path, u32 mode, void *sink_data);
>  struct coresight_device *coresight_get_sink(struct list_head *path);
>  struct coresight_device *coresight_get_enabled_sink(bool reset);
>  struct coresight_device *coresight_get_sink_by_id(u32 id);
> +struct coresight_device *
> +coresight_find_default_sink(struct coresight_device *csdev);
>  struct list_head *coresight_build_path(struct coresight_device *csdev,
>  				       struct coresight_device *sink);
>  void coresight_release_path(struct list_head *path);
> diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> index f3efbb3b2b4d..7632d060e25d 100644
> --- a/drivers/hwtracing/coresight/coresight.c
> +++ b/drivers/hwtracing/coresight/coresight.c
> @@ -769,6 +769,142 @@ void coresight_release_path(struct list_head *path)
>  	path = NULL;
>  }
>  
> +/* return true if the device is a suitable type for a default sink */
> +static inline bool coresight_is_def_sink_type(struct coresight_device *csdev)
> +{
> +	/* sink & correct subtype */
> +	if (((csdev->type == CORESIGHT_DEV_TYPE_SINK) ||
> +	     (csdev->type == CORESIGHT_DEV_TYPE_LINKSINK)) &&
> +	    (csdev->subtype.sink_subtype >= CORESIGHT_DEV_SUBTYPE_SINK_BUFFER))
> +		return true;
> +	return false;
> +}
> +
> +/**
> + * coresight_select_best_sink - return the best sink for use as default from
> + * the two provided.
> + *
> + * @sink:	current best sink.
> + * @depth:      search depth where current sink was found.
> + * @new_sink:	new sink for comparison with current sink.
> + * @new_depth:  search depth where new sink was found.
> + *
> + * Sinks prioritised according to coresight_dev_subtype_sink, with only
> + * subtypes CORESIGHT_DEV_SUBTYPE_SINK_BUFFER or higher being used.
> + *
> + * Where two sinks of equal priority are found, the sink closest to the
> + * source is used (smallest search depth).
> + *
> + * return @new_sink & update @depth if better than @sink, else return @sink.
> + */
> +static struct coresight_device *
> +coresight_select_best_sink(struct coresight_device *sink, int *depth,
> +			   struct coresight_device *new_sink, int new_depth)
> +{
> +	bool update = false;
> +
> +	if (!sink) {
> +		/* first found at this level */
> +		update = true;
> +	} else if (new_sink->subtype.sink_subtype >
> +		   sink->subtype.sink_subtype) {
> +		/* found better sink */
> +		update = true;
> +	} else if ((new_sink->subtype.sink_subtype ==
> +		    sink->subtype.sink_subtype) &&
> +		   (*depth > new_depth)) {
> +		/* found same but closer sink */
> +		update = true;
> +	}
> +
> +	if (update)
> +		*depth = new_depth;
> +	return update ? new_sink : sink;
> +}
> +
> +/**
> + * coresight_find_sink - recursive function to walk trace connections from
> + * source to find a suitable default sink.
> + *
> + * @csdev: source / current device to check.
> + * @depth: [in] search depth of calling dev, [out] depth of found sink.
> + *
> + * This will walk the connection path from a source (ETM) till a suitable
> + * sink is encountered and return that sink to the original caller.
> + *
> + * If current device is a plain sink return that & depth, otherwise recursively
> + * call child connections looking for a sink. Select best possible using
> + * coresight_select_best_sink.
> + *
> + * return best sink found, or NULL if not found at this node or child nodes.
> + */
> +static struct coresight_device *
> +coresight_find_sink(struct coresight_device *csdev, int *depth)
> +{
> +	int i, curr_depth = *depth + 1, found_depth = 0;
> +	struct coresight_device *found_sink = NULL;
> +
> +	if (coresight_is_def_sink_type(csdev)) {
> +		found_depth = curr_depth;
> +		found_sink = csdev;
> +		if (csdev->type == CORESIGHT_DEV_TYPE_SINK)
> +			goto return_def_sink;
> +		/* look past LINKSINK for something better */
> +	}
> +
> +	/*
> +	 * Not a sink we want - or possible child sink may be better.
> +	 * recursively explore each port found on this element.
> +	 */
> +	for (i = 0; i < csdev->pdata->nr_outport; i++) {
> +		struct coresight_device *child_dev, *sink = NULL;
> +		int child_depth = curr_depth;
> +
> +		child_dev = csdev->pdata->conns[i].child_dev;
> +		if (child_dev)
> +			sink = coresight_find_sink(child_dev, &child_depth);
> +
> +		if (sink)
> +			found_sink = coresight_select_best_sink(found_sink,
> +								&found_depth,
> +								sink,
> +								child_depth);
> +	}
> +
> +return_def_sink:
> +	/* return found sink and depth */
> +	if (found_sink)
> +		*depth = found_depth;
> +	return found_sink;
> +}
> +
> +/**
> + * coresight_find_default_sink: Find a sink suitable for use as a
> + * default sink.
> + *
> + * @csdev: starting source to find a connected sink.
> + *
> + * Walks connections graph looking for a suitable sink to enable for the
> + * supplied source. Uses CoreSight device subtypes and distance from source
> + * to select the best sink.
> + *
> + * If a sink is found, then the default sink for this device is set and
> + * will be automatically used in future.
> + *
> + * Used in cases where the CoreSight user (perf / sysfs) has not selected a
> + * sink.
> + */
> +struct coresight_device *
> +coresight_find_default_sink(struct coresight_device *csdev)
> +{
> +	int depth = 0;
> +
> +	/* look for a default sink if we have not found for this device */
> +	if (!csdev->def_sink)
> +		csdev->def_sink = coresight_find_sink(csdev, &depth);
> +	return csdev->def_sink;
> +}
> +
>  /** coresight_validate_source - make sure a source has the right credentials
>   *  @csdev:	the device structure for a source.
>   *  @function:	the function this was called from.
> diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> index 84dc695e87d4..58fffdecdbfd 100644
> --- a/include/linux/coresight.h
> +++ b/include/linux/coresight.h
> @@ -48,6 +48,7 @@ enum coresight_dev_subtype_sink {
>  	CORESIGHT_DEV_SUBTYPE_SINK_NONE,
>  	CORESIGHT_DEV_SUBTYPE_SINK_PORT,
>  	CORESIGHT_DEV_SUBTYPE_SINK_BUFFER,
> +	CORESIGHT_DEV_SUBTYPE_SINK_SYSMEM,
>  };
>  
>  enum coresight_dev_subtype_link {
> @@ -182,6 +183,7 @@ struct coresight_sysfs_link {
>   *		happens when a source has been selected and a path is enabled
>   *		from source to that sink.
>   * @ea:		Device attribute for sink representation under PMU directory.
> + * @def_sink:	cached reference to default sink found for this device.
>   * @ect_dev:	Associated cross trigger device. Not part of the trace data
>   *		path or connections.
>   * @nr_links:   number of sysfs links created to other components from this
> @@ -200,6 +202,7 @@ struct coresight_device {
>  	/* sink specific fields */
>  	bool activated;	/* true only if a sink is part of a path */
>  	struct dev_ext_attribute *ea;
> +	struct coresight_device *def_sink;
>  	/* cross trigger handling */
>  	struct coresight_device *ect_dev;
>  	/* sysfs links between components */
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
