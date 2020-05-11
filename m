Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8281CE0DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 18:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mLwY9pvR1tjspaftz5/ph3Xe0V8OnhzcNAkCYcZ21Oc=; b=IITqmNUhniHH7j
	rVsToCBYnm494Ya8KSunlchxKVWLLO1NoPdLWxML3XtemaRDxOPuh5pvQj3twpLRZf4lTJQzOVvkp
	HbCSiRARMWNlcoK+gWu82nrSEPqAuDTYWLg6wCaVjKDY66slRh70mUlAu7tB4jXSQK44viMyHR9cE
	jM6kKWrZ1RtSEJa5ftzKtmhA2vxTcibjcGkXsuHejt3AybNE8elIzYkajxFWt2xaM2nlirgy6lNTT
	KRIYkVjUr6HQUSqBgKQpnPeEYu/LlE0PlomLb8PP1LbSbqsJhiF3eIAlH+4/9iGvHlaRhZKL7Lefa
	m3kjIZ0upodF+gj41G7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYBa0-0007fe-OV; Mon, 11 May 2020 16:47:00 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYBZr-0007eb-MJ
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 16:46:53 +0000
Received: by mail-pf1-x441.google.com with SMTP id 18so4989998pfx.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 09:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jzFl153wKEGiW6thuE8cqwaVsp6YPUfR1GodlHQ+GfQ=;
 b=LWKWl4hJ/KeNQWI2yPjgG/p82FYw92ZmKSo6jRP99e8Pr0YN2m956c6tPnU/2qa0hh
 fIgeSNjibDcP+mCbfqimxcgq9XPJv3IuwDhWzMaGzLp/OtrfMcxs5SIj/o6UuzkczJbn
 Ic/GlIy7azb65C7ZKUbqpzfwYIwRrTI2gfi1uejtnksutrbG4zIRYwjbSMvJoUuTtK3F
 Uyeb7mKuJC1L3qy/7LgapTP7F2PRAtCcRk7rpkNDSaLwG6q32QJeSreFlgAt5JeNWtcW
 Q454WjF6vxajisP6dFsYEUqEWpdARz3tr0XTWtKML5Js45/QI+394RULlFYonfsF2rVK
 H0cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jzFl153wKEGiW6thuE8cqwaVsp6YPUfR1GodlHQ+GfQ=;
 b=rEsHzCz860lPp+vWCd8DTwJ7D4vJW3caM7591kTZ8at348W2rUa1PJ2OovjAkn1AE7
 uAzMuNwXOSfkXlc8EcP02Id679GpCyG+xGcgCMMKZVRk7099w6wGZ94z1rqtJOGkMYCn
 bbds10XReDBAidUn/vlm8RpEvwg4Ievsnr1BFL96KYECQ0k/p43ntyJAc8MhzvG52Pxq
 I3iL8H5Kb0hMjine6/Gp6o2erv4cnQs6gTjBiZjlfu3RG7ICFZlmb/tplVi89vLTdKI1
 jNraI8ZAzcKW3KSVnGI63ZYdBgDMFM2WZulKrbjtyBhhZ4F/S2IUHLUIMSBVWWGPfVGt
 9mEw==
X-Gm-Message-State: AGi0PubcM8kMw2JElO9L9SGNcAVLIFimfecEsGPketmZdGMj6nNS1fOu
 AMHiA2v5ZTp3Dlz2lPpBF1elGA==
X-Google-Smtp-Source: APiQypKvls9a7p/jOLFrW4kvUprsP8vRtSo5EZqIM4JrTwpFR+XkcaG0Xvs1xzsYgRLaFcuJIwM9vA==
X-Received: by 2002:a63:f958:: with SMTP id q24mr15161215pgk.338.1589215609812; 
 Mon, 11 May 2020 09:46:49 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id n16sm9604203pfq.61.2020.05.11.09.46.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 09:46:49 -0700 (PDT)
Date: Mon, 11 May 2020 10:46:47 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Chunyan Zhang <zhang.lyra@gmail.com>
Subject: Re: [PATCH] coresight: tmc: mark coresight_tmc_groups with static
Message-ID: <20200511164647.GA13202@xps15>
References: <20200508091340.11711-1-zhang.lyra@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200508091340.11711-1-zhang.lyra@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_094651_731383_55A784A8 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chunyan Zhang <chunyan.zhang@unisoc.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chunyan,

On Fri, May 08, 2020 at 05:13:40PM +0800, Chunyan Zhang wrote:
> From: Chunyan Zhang <chunyan.zhang@unisoc.com>
> 
> Sparse reports a warning like:
> drivers/hwtracing/coresight/coresight-tmc.c:364:30: warning: symbol
> 'coresight_tmc_groups' was not declared. Should it be static? [sparse]
> 
> coresight_tmc_groups is used in the local file only, so it should be
> marked with static.
> 
> Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
> ---
>  drivers/hwtracing/coresight/coresight-tmc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
> index 1cf82fa..39fba1d 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc.c
> @@ -361,7 +361,7 @@ static ssize_t buffer_size_store(struct device *dev,
>  	.name = "mgmt",
>  };
>  
> -const struct attribute_group *coresight_tmc_groups[] = {
> +static const struct attribute_group *coresight_tmc_groups[] = {

This has already been addressed by Stephen [1] earlier in this cycle.  It is
currently in linux-next and will be submitted for inclusion in the next cycle.

Thanks,
Mathieu

[1]. https://www.spinics.net/lists/arm-kernel/msg801714.html

>  	&coresight_tmc_group,
>  	&coresight_tmc_mgmt_group,
>  	NULL,
> -- 
> 1.9.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
