Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFEF54D569
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 19:43:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGWmsrSz96XZQyNxRda6HpUm9bARGZ5ocC8zct6BFXo=; b=MoJ8+ll8kLr1ao
	tGx02YTbN57G6gXpEo2hNwl5o6idFzlbjd8V4Z9nMUiMB9kkVJ9qbvqYJr3drDPusMi4w124/hFJ6
	zhyFAS6EPe62Uz1w6hQQTpf2FzI7Lw7qrSyBAZo30QnROS3PFpW0m3T3RDRLf+7bAwKtE7g6X21LA
	BideG9UozF/6xFddR4tezfXxeJtsQtP4vXxQJP6m9trDTgvUIUyvjzXSnRsu/p0CQ6Mw+qrq4lp3w
	2dTEpCKb8bawAzb2r2E38+3DSQ5Kjr5NX50n89vVAKOFzNWkj5kOm9GOn2JxHcAOobTDDP5X+M/65
	bdbGuaz88GQcYa455vuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he15p-0001b8-Fh; Thu, 20 Jun 2019 17:43:25 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he15c-0001ag-2q
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 17:43:13 +0000
Received: by mail-pl1-x644.google.com with SMTP id a93so1682757pla.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 10:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1KJ0e9ekOabFfxqwKvIk2A6/zmASWNljaHVvnXYUQxY=;
 b=NhbZE295vHsBmR1o4reSr3vcb9K8QjxL6emGCch81QYlNOzn7tv09NGjCC4euADxnF
 kQ9KHGtlQFK1CrMuPhar8/Gj18tnyoWZvwEwjjoeZ2Y8SXMRT0ZyVfD+LvYgGCWATUny
 i8Lyu2TMQ2OIPveZZ4LNrdJYrwqd0pP0sMzbjmZjiJMHYCcIrzLZQIWHl1FFlesbP1ox
 NNsDRkkjMXOQfhrCxZSpHUhVEU3i+VRqLDAwl1jKSZ+erU61VvXj4/vDVX52htPpCiYG
 gAm41dgBnAfhpb1fsukKduPkNOHXyGnyxvX6uxP9MRSJlzwV52XRAveCMA5b4uhZ74Vl
 U+lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1KJ0e9ekOabFfxqwKvIk2A6/zmASWNljaHVvnXYUQxY=;
 b=C8pqqqBL+FPc8/EBLTjKWRC4N3fZRataNvN8miQVGTCHTT88tvBDPUqdr+E8XXkjVp
 Qr3nJxrCorAvr1lZMmG/U06NSRnsUwI85VEBX+JZ17WOgcJUL0ybLMcqVgik/MyCJk18
 6Sfb/dgpQ62Shtsyn309H2IAeL0zEYWWgxfV5EztQpyPkAqFauycMvIozj6dNWlgUZOx
 audXaYjmkEKrFv5H+Ei6WWSBxurHS301M03i72Uwjk7OaM0Y8B1MroNBSq7ofJw7ljqd
 kN5PGWz7bYqBYxly5r/krQwgdkFVy2hLpANuNkpFm8jdU9CNc+akGJkTBAU33IgdQSwQ
 Ql2w==
X-Gm-Message-State: APjAAAXZ3ls++QrZqZrvtc7SfVvUp4lWKs+/VopdWRgDgquGSxDtctWH
 XknztXSakxvIn9RrhjjYpgJwKQ==
X-Google-Smtp-Source: APXvYqyrJ3P57l2hXzKwykASSM4m8XDMhpVpPOdFDF+6NySV8L9SKNqqSA+NS5K7Rf8cf9mtKD7jIQ==
X-Received: by 2002:a17:902:2aa8:: with SMTP id
 j37mr82097915plb.316.1561052591240; 
 Thu, 20 Jun 2019 10:43:11 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id y185sm95763pfy.110.2019.06.20.10.43.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Jun 2019 10:43:10 -0700 (PDT)
Date: Thu, 20 Jun 2019 11:43:08 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 2/2] coresight: Abort probe for missing CPU phandle
Message-ID: <20190620174308.GB5581@xps15>
References: <cover.1561037262.git.saiprakash.ranjan@codeaurora.org>
 <d93e28fc80227f9a385130a766a24f8f39a1dcf0.1561037262.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d93e28fc80227f9a385130a766a24f8f39a1dcf0.1561037262.git.saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_104312_142666_F0AB9C0B 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rajendra Nayak <rnayak@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 David Brown <david.brown@linaro.org>, Sibi Sankar <sibis@codeaurora.org>,
 Vivek Gautam <vivek.gautam@codeaurora.org>, Leo Yan <leo.yan@linaro.org>,
 Andy Gross <andy.gross@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 07:15:47PM +0530, Sai Prakash Ranjan wrote:
> Currently the coresight etm and cpu-debug drivers
> assume the affinity to CPU0 returned by coresight
> platform and continue the probe in case of missing
> CPU phandle. This is not true and leads to crash
> in some cases, so abort the probe in case of missing
> CPU phandle.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  drivers/hwtracing/coresight/coresight-cpu-debug.c | 3 +++
>  drivers/hwtracing/coresight/coresight-etm3x.c     | 3 +++
>  drivers/hwtracing/coresight/coresight-etm4x.c     | 3 +++
>  3 files changed, 9 insertions(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-cpu-debug.c b/drivers/hwtracing/coresight/coresight-cpu-debug.c
> index 07a1367c733f..43f32fa71ff9 100644
> --- a/drivers/hwtracing/coresight/coresight-cpu-debug.c
> +++ b/drivers/hwtracing/coresight/coresight-cpu-debug.c
> @@ -579,6 +579,9 @@ static int debug_probe(struct amba_device *adev, const struct amba_id *id)
>  		return -ENOMEM;
>  
>  	drvdata->cpu = coresight_get_cpu(dev);
> +	if (drvdata->cpu == -ENODEV)
> +		return -ENODEV;

As Suzuki pointed out, simply return the error message conveyed by
coresight_get_cpu().

Also please merge both patches together to avoid bisect nightmare.

Thank you for the contribution,
Mathieu

> +
>  	if (per_cpu(debug_drvdata, drvdata->cpu)) {
>  		dev_err(dev, "CPU%d drvdata has already been initialized\n",
>  			drvdata->cpu);
> diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
> index 225c2982e4fe..882e2751746c 100644
> --- a/drivers/hwtracing/coresight/coresight-etm3x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm3x.c
> @@ -816,6 +816,9 @@ static int etm_probe(struct amba_device *adev, const struct amba_id *id)
>  	}
>  
>  	drvdata->cpu = coresight_get_cpu(dev);
> +	if (drvdata->cpu == -ENODEV)
> +		return -ENODEV;
> +
>  	desc.name  = devm_kasprintf(dev, GFP_KERNEL, "etm%d", drvdata->cpu);
>  	if (!desc.name)
>  		return -ENOMEM;
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index 7fe266194ab5..97d71dbbeb19 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -1101,6 +1101,9 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
>  	spin_lock_init(&drvdata->spinlock);
>  
>  	drvdata->cpu = coresight_get_cpu(dev);
> +	if (drvdata->cpu == -ENODEV)
> +		return -ENODEV;
> +
>  	desc.name = devm_kasprintf(dev, GFP_KERNEL, "etm%d", drvdata->cpu);
>  	if (!desc.name)
>  		return -ENOMEM;
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
