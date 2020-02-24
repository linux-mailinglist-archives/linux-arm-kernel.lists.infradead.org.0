Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC91D16AFBB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:53:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Zz26pUB3MCclrqgva0ZIA1fmPzaz0OZsJHsCH9N9u4=; b=OlmSsUrmIGo2xv
	E3C7a8Zdv9tA4qZ8jpPl37RoYjMgZ3zrdvBl12IB0TanW/L5Njku2yJ3x6w0L181+1rSNdWp8D04e
	+ZVFVyPo9o0dPIfRyDE2AS7lGLNaSPQ6JyTg5PXXDbsEnF7DDZjSvlpyLXwUuynFs0a2g2qaFoA7J
	tRf1MUCKUYdJ8MlDpBqXEZRRd/bd/hSlTi5jOYCXdMu4dJvFuft4hS0RsyQ/D577+WPxzl4+m14uZ
	S8fBpzUNg6zPMyTI3y0d59krqx7gsHPcleeSyIUUTUmrMJVyipw9hKRkGsqu1/LX52eH3359Tkdeq
	pzL9vcE4vmrUxi4pzF0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6IrV-0001dT-TS; Mon, 24 Feb 2020 18:53:49 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IrK-0001d6-9u
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:53:39 +0000
Received: by mail-pf1-x441.google.com with SMTP id 185so5815105pfv.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 10:53:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5o+NRLE+XeQOQqO+QGCBe9virQiAW2Yqk+LqPr6RM+k=;
 b=zlXKmr/tXaX2hjWqTpQ2njtzL2v39uLcpNTrh6YWx5o5mRLOnjMG0dB9wXvhmk4/QP
 mszWYPx63JNQ0rNx9QhLrp2Ty2oJ62q/wHOeDBTmyJcxFUC2gD/GsB94xMpHsLz+SIJo
 oaU2MtzeREnx5KcWl+gpwnp9dGoL2pvM6cwAVb26fFIAjgMLcUidsFJSrGce6IY2ddtH
 DHHkfjIClkjdJ9Ksj84wcjHPezT++M655R7NO5VWHNuSwIANqs/8bQtR2iHA5Av/beM6
 Yt9YlYL4zMXwazL8tbEG1TVgex9D/w4/dlMdEuSmroq2NvA+xmREquf6s839RLDJS8GH
 gQSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5o+NRLE+XeQOQqO+QGCBe9virQiAW2Yqk+LqPr6RM+k=;
 b=BeXqMa3vj8Xm1MTQhYtz2G2Rlu+YFZ/58EEi1eLLBbMlVEHcYpQXKjAEiy7COcFgCQ
 LPRWwgN/5nhxKtGFfvlNu/ok55xvboZ4JHlyaDpUGmtjBtlFDLMF1UCf6jzdyqn54UvY
 GTCsBWLSKASIc5b4r/J+4hTExd5T9/rCxmOWCGA0mIPSq2PGUEbHPciKnynSThrRVJfm
 CGgPpqj4oNj7atux1zSjXSTxNaW8Y13AhF9dIEuUToJYF8WbAY+JClxXiFq+NMPBKJ+R
 PYnIjTa9TVFm7aQYpVcAPgax3OhincROgQIJrfm+EJoacu/+bz/wqofbMrPitkB3Slcp
 49Xw==
X-Gm-Message-State: APjAAAXFI1Q1rUS70nnezSstacUoBhHH7WeML/HU3opqGhdDz5qpe2rK
 wxKIYCmgyDqFAjyWpNKA9Y0p+Q==
X-Google-Smtp-Source: APXvYqxlG79nw9hdnewWjUWulRuruSK0ApRJJQ/cb+aNxOv7rQwCZTRuCo/oWDO8TH8Xl6qVAeD9iw==
X-Received: by 2002:a63:7ce:: with SMTP id 197mr44461643pgh.429.1582570417176; 
 Mon, 24 Feb 2020 10:53:37 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j4sm13931577pfh.152.2020.02.24.10.53.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 10:53:36 -0800 (PST)
Date: Mon, 24 Feb 2020 11:53:34 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Siddharth Gupta <sidgup@codeaurora.org>
Subject: Re: [PATCH 2/2] remoteproc: core: Prevent sleep when rproc crashes
Message-ID: <20200224185334.GB9477@xps15>
References: <1582164713-6413-1-git-send-email-sidgup@codeaurora.org>
 <1582164713-6413-3-git-send-email-sidgup@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582164713-6413-3-git-send-email-sidgup@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_105338_368866_E14921B2 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ohad@wizery.com, tsoni@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org, rishabhb@codeaurora.org, psodagud@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 06:11:53PM -0800, Siddharth Gupta wrote:
> Remoteproc recovery should be fast and any delay will have an impact on the
> user-experience. Use power management APIs (pm_stay_awake and pm_relax) to
> ensure that the system does not go to sleep.

When you say "ensure the system does not go to sleep", you're referring to the
system going idle from the CPUidle subsystem? 

> 
> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
> ---
>  drivers/remoteproc/remoteproc_core.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index 5ab65a4..52e318c 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -1712,6 +1712,8 @@ static void rproc_crash_handler_work(struct work_struct *work)
>  
>  	if (!rproc->recovery_disabled)
>  		rproc_trigger_recovery(rproc);
> +
> +	pm_relax(&rproc->dev);
>  }
>  
>  /**
> @@ -2242,6 +2244,8 @@ void rproc_report_crash(struct rproc *rproc, enum rproc_crash_type type)
>  		return;
>  	}
>  
> +	pm_stay_awake(&rproc->dev);
> +

I fail to understand how this can be useful since there is no HW associted to
rproc->dev...  Is it possible for you to elaborate more on the problem you're
trying to fix?

Thanks,
Mathieu

>  	dev_err(&rproc->dev, "crash detected in %s: type %s\n",
>  		rproc->name, rproc_crash_to_string(type));
>  
> -- 
> Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
