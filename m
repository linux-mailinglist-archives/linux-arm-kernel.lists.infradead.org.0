Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CCE15EE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 10:13:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9u4rOxM9S9HxS1Jw8XT21ykneMu3g2o0kVwZa14DATU=; b=fO6X2h551F8xxG
	C6+3wlT0GPJKO6Lbme+qcZdoU3iZPLimd+RDZWa2rWzZrYuuRzfGEgWGZdr43hLCI1LGyUHWyCIiS
	wI8Zz6MuTWgXJKNq57sz+bMFG9glp6KjgECOYr5fSABN/Vsh9O9yTe4GU7lYSH6XoOdIqA7h6tegd
	9dVbKyFRI7bptcQYIFdZBy+bzrBLQuV1RCh1b1t+AIQqwiQUfQ9d2rWJ5DkgdKczqxOxhHksDYwGW
	kKQMLWu9lKfk7En9TVx4NueK3KPGFMOkKFKyvvd1KNnNlnlcZtsMTNjK4ItTjBjYbBV3siOI4FF5n
	mUj4/WxKT+aIeIwoju0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNvEI-0000xz-0D; Tue, 07 May 2019 08:13:38 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNvEA-0000xQ-TT
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 08:13:32 +0000
Received: by mail-yw1-xc44.google.com with SMTP id 186so3701134ywo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 01:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=V6HRNlerzuTlf65wkki7nM6C4D1FGoZOd7Sxrx3wTEw=;
 b=a2XL0SDQvewd8WYswz0hGMJlsRxA35swdEIQZMf9rrzOFkDU8+mU2AbLpuF5Lbdj5D
 cDaDocokLj/D6D2wZOitvMk2H5DzHvVVP1M+0bGarIya75QECeSMefKT6qOSnl66GAWx
 QrwnQba9avOS39HZIpNpzPK5qsd9a6RDKLAYhbuAqEWndLttju3fvDBxmdyeG6Ind4iw
 +tUFXVYlF1cZgDCJykgYK9LgG01uj5tV58+Y6MbNlisax8dGYKDGvQ3aMBrHOW8LsTmF
 LQWunFcIIoUhJwko6J3um0aD5opKEiB2bhPXKS6WwrgvPak/fh7YtXEvZp/v15N97Nmd
 aH+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=V6HRNlerzuTlf65wkki7nM6C4D1FGoZOd7Sxrx3wTEw=;
 b=DoIi7mEEjbcGlEK8t+vmIaNBZkNItAIKSr4eXFSZHk5rcNMp3o+w7dvlxphNdeSCDe
 zvgNKJ9aKK5RFz3SRldYHdZ2+LBdZmpxFU60nCzM/9pPDf1PTI9/tDyyN/CORvFX4fUY
 mTpT6nPm/vKJI5c2KQLhhAAybPFDKvQ+Dv1S5XJJVQLzVI+HUn31cFzUGetemoKY/nUR
 VH/Y7qq8E7CbVZo6lIJldMs8s6eTCfiYnm91WH+0qq35Op8Knj5IlxZp/oDph4JNCaya
 bnV7lcVVmH8wJrcUqt9NraJRaf0vGu+v4055zRZl9D7Zt+GjwlkezK3YeUyQpSggGO51
 Q4rQ==
X-Gm-Message-State: APjAAAWlNiFeMRnI+MMt/Po8sC2XbOSmO5lRDsMwebjBSPJX8kVhZ/kY
 Rt4VMvIXCrEkY4lem8Ezuq3pGg==
X-Google-Smtp-Source: APXvYqyp5wFsCc77MqbpW/aGAmbY/bVQfAc0hh6Nv8MPyK/9OX3F5lCwI4PDDIil85+CzIj80QWWUg==
X-Received: by 2002:a25:10d6:: with SMTP id 205mr19924624ybq.59.1557216809885; 
 Tue, 07 May 2019 01:13:29 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id 207sm3625406ywv.9.2019.05.07.01.13.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 01:13:28 -0700 (PDT)
Date: Tue, 7 May 2019 16:13:20 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 2/5] coresight: tmc-etf: Fix snapshot mode update function
Message-ID: <20190507081320.GB21730@leoy-ThinkPad-X240s>
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
 <20190501175052.29667-3-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501175052.29667-3-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_011330_954090_E7B87012 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
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

On Wed, May 01, 2019 at 11:50:49AM -0600, Mathieu Poirier wrote:
> When working in snapshot mode function perf_aux_output_begin()

Do you mean perf_aux_output_end() rather than perf_aux_output_begin()?

I checked perf_aux_output_begin(), it will always set 'handle->size'
to zero.

> does not set the handle->size because the size is expected to be
> deduced by the placement of the "head" and "old" pointers in user
> space.  As such there is no point in trying to adjust the amount
> of data to copy to the ring buffer.
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Rest looks good to me:

Reviewed-by: Leo Yan <leo.yan@linaro.org>

> ---
>  drivers/hwtracing/coresight/coresight-tmc-etf.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> index 7694833b13cb..d3025634f5e6 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> @@ -497,9 +497,11 @@ static unsigned long tmc_update_etf_buffer(struct coresight_device *csdev,
>  	/*
>  	 * The TMC RAM buffer may be bigger than the space available in the
>  	 * perf ring buffer (handle->size).  If so advance the RRP so that we
> -	 * get the latest trace data.
> +	 * get the latest trace data.  In snapshot mode none of that matters
> +	 * since we are expected to clobber stale data in favour of the latest
> +	 * traces.
>  	 */
> -	if (to_read > handle->size) {
> +	if (!buf->snapshot && to_read > handle->size) {
>  		u32 mask = 0;
>  
>  		/*
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
