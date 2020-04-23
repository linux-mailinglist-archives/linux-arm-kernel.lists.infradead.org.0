Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E57AE1B5195
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 02:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YlHZfHysinypsbSmqgyXEnWgJ4DXbG3CgV37QAwE76M=; b=MetXPlO1G/z2P0
	8AQy5zMON63WEnbPBsh8o82jA/X3Li6i2O5kCfbIXW9hjXS+tgZTEomkpaUL/ZFvnWCZ6uDZ8X+Pf
	vU6ZMCFT6qL31K+DmGMxVbsz8H30M/g8JVHMla7utDawkHhHy1k3LRP7sJE+nqWDmFlm+FHKQ4qjT
	Thz8d6yd+qV6f280PyXPE1Nog+Usd3ScWdlmx+Of60/45h1yVQWJRwYXD4/1hsN0KfAjyJfIb/K/a
	RD4may045caCv/igEKv9oZI0PMef0JoO94rK2w5al8FBcDDZNOMnUwBZ/qUW+z2Tg+7wDn2ioLGeH
	gWDc02mIyiZLheQzRnHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRQBq-0007Dl-9I; Thu, 23 Apr 2020 00:58:06 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRQBh-0007D7-8i
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 00:57:58 +0000
Received: by mail-pf1-x444.google.com with SMTP id 18so834208pfv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 17:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=a2tyd36y2uEBXJHo8BrX3WP4rk+2WUCthbbsOwyGFY8=;
 b=EXGLr7yotOZFeroLTaEgBQfGyx14dknJdBBakeNlJDnAwWBkNBeA1CgC7AZbOeP4FI
 3ACr7TeXBbbakI5rFdHMzkhlcAaG4DSDD2B2Cl3lomfTy8pEk3DUwKF9zgryzo94/7o6
 yuA2iwOhAeX3bKjX0Zwxctg8SndS+ausQrK4Ku1ERNJ6L5ZJ3lCTwEulyu9RfPLwjo3U
 G+Z6xli2Zj9edg8QHoCbJZARqAJziifFlskh4j50QURMTF9BufULYkXDUzE5Qd1FMLjT
 QwW7pqDva60he7Vmc8oBV9xH+aZOANh2anG9OcjhyMbCybCHxkslkdc9byWz4lr5dA5S
 CgRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=a2tyd36y2uEBXJHo8BrX3WP4rk+2WUCthbbsOwyGFY8=;
 b=flC4FKsMb/gaFqMiCCSv6D5E+kvqu9eJyMZatC/GjGveDb8qBRVb0PdHRycZE4mAmK
 eB9VARR7SgcfwjPTDnCSImB4KJZ/fRJYi839yjs1EqUuOqRVMVkWkZ3KCyD1E3TW53IM
 S2riQ3emdYzeWvciC0bpDmtkcbW62SHXplQRN3bSBEOcoIvJ0W8/OuiUe2lWcgl0K4cu
 epztTMvkB341b1ucy2dpR/+EILR4zUcY9M5soZcn0P6qww5SgGpFRTCmxcZZuFuwYCHA
 pi9CHeBfG17nV7NngF0BCh1CJk1dh9ri9dtqAGMUa8y7KaEYUFg8CAdCLdUHWCrY6O5C
 0XeA==
X-Gm-Message-State: AGi0PuYrfjZasRKN3eVH4YJ0kDyRGjwb7g4l321NzKaSlHP/Dk2NlsUT
 dRA2IoUsjtFdTAJXvl05UKWR8A==
X-Google-Smtp-Source: APiQypJp5JqB2scsWxIk+15J7WKWXfVRUvd+pWW1ljCqwR+yvB+JVSsNZV2yXfn7a6gNX4qzl8tX+w==
X-Received: by 2002:a63:3502:: with SMTP id c2mr1644084pga.276.1587603476606; 
 Wed, 22 Apr 2020 17:57:56 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id a200sm699680pfa.201.2020.04.22.17.57.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 17:57:55 -0700 (PDT)
Date: Wed, 22 Apr 2020 17:58:23 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Siddharth Gupta <sidgup@codeaurora.org>
Subject: Re: [PATCH v2 6/6] remoteproc: qcom: Add notification types to SSR
Message-ID: <20200423005823.GN1868936@builder.lan>
References: <1586389003-26675-1-git-send-email-sidgup@codeaurora.org>
 <1586389003-26675-7-git-send-email-sidgup@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586389003-26675-7-git-send-email-sidgup@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_175757_322812_BC9D0E50 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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
Cc: ohad@wizery.com, tsoni@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 agross@kernel.org, rishabhb@codeaurora.org, psodagud@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 08 Apr 16:36 PDT 2020, Siddharth Gupta wrote:

> The SSR subdevice only adds callback for the unprepare event. Add callbacks
> for unprepare, start and prepare events. The client driver for a particular
> remoteproc might be interested in knowing the status of the remoteproc
> while undergoing SSR, not just when the remoteproc has finished shutting
> down.
> 
> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
> ---
>  drivers/remoteproc/qcom_common.c | 39 +++++++++++++++++++++++++++++++++++----
>  include/linux/remoteproc.h       | 15 +++++++++++++++
>  2 files changed, 50 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/remoteproc/qcom_common.c b/drivers/remoteproc/qcom_common.c
> index 56b0c3e..06611f2 100644
> --- a/drivers/remoteproc/qcom_common.c
> +++ b/drivers/remoteproc/qcom_common.c
> @@ -183,9 +183,9 @@ EXPORT_SYMBOL_GPL(qcom_remove_smd_subdev);
>   *
>   * Returns pointer to srcu notifier head on success, ERR_PTR on failure.
>   *
> - * This registers the @notify function as handler for restart notifications. As
> - * remote processors are stopped this function will be called, with the rproc
> - * pointer passed as a parameter.
> + * This registers the @notify function as handler for powerup/shutdown
> + * notifications. This function will be invoked inside the callbacks registered
> + * for the ssr subdevice, with the rproc pointer passed as a parameter.
>   */
>  void *qcom_register_ssr_notifier(struct rproc *rproc, struct notifier_block *nb)
>  {
> @@ -227,11 +227,39 @@ int qcom_unregister_ssr_notifier(void *notify, struct notifier_block *nb)
>  }
>  EXPORT_SYMBOL_GPL(qcom_unregister_ssr_notifier);
>  
> +static int ssr_notify_prepare(struct rproc_subdev *subdev)
> +{
> +	struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
> +
> +	srcu_notifier_call_chain(ssr->rproc_notif_list,
> +				 RPROC_BEFORE_POWERUP, (void *)ssr->name);
> +	return 0;
> +}
> +
> +static int ssr_notify_start(struct rproc_subdev *subdev)
> +{
> +	struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
> +
> +	srcu_notifier_call_chain(ssr->rproc_notif_list,
> +				 RPROC_AFTER_POWERUP, (void *)ssr->name);
> +	return 0;
> +}
> +
> +static void ssr_notify_stop(struct rproc_subdev *subdev, bool crashed)
> +{
> +	struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
> +
> +	srcu_notifier_call_chain(ssr->rproc_notif_list,
> +				 RPROC_BEFORE_SHUTDOWN, (void *)ssr->name);
> +}
> +
> +
>  static void ssr_notify_unprepare(struct rproc_subdev *subdev)
>  {
>  	struct qcom_rproc_ssr *ssr = to_ssr_subdev(subdev);
>  
> -	srcu_notifier_call_chain(ssr->rproc_notif_list, 0, (void *)ssr->name);
> +	srcu_notifier_call_chain(ssr->rproc_notif_list,
> +				 RPROC_AFTER_SHUTDOWN, (void *)ssr->name);
>  }
>  
>  /**
> @@ -248,6 +276,9 @@ void qcom_add_ssr_subdev(struct rproc *rproc, struct qcom_rproc_ssr *ssr,
>  {
>  	ssr->name = ssr_name;
>  	ssr->subdev.name = kstrdup("ssr_notifs", GFP_KERNEL);
> +	ssr->subdev.prepare = ssr_notify_prepare;
> +	ssr->subdev.start = ssr_notify_start;
> +	ssr->subdev.stop = ssr_notify_stop;
>  	ssr->subdev.unprepare = ssr_notify_unprepare;
>  	ssr->rproc_notif_list = kzalloc(sizeof(struct srcu_notifier_head),
>  								GFP_KERNEL);
> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> index 687e1eb..facadb07 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -452,6 +452,21 @@ struct rproc_dump_segment {
>  };
>  
>  /**
> + * enum rproc_notif_type - Different stages of remoteproc notifications
> + * @RPROC_BEFORE_SHUTDOWN:	unprepare stage of  remoteproc
> + * @RPROC_AFTER_SHUTDOWN:	stop stage of  remoteproc
> + * @RPROC_BEFORE_POWERUP:	prepare stage of  remoteproc
> + * @RPROC_AFTER_POWERUP:	start stage of  remoteproc
> + */
> +enum rproc_notif_type {

As these are tied to the API defined in qcom_rproc.h, I think it better
belong there.

> +	RPROC_BEFORE_SHUTDOWN,
> +	RPROC_AFTER_SHUTDOWN,
> +	RPROC_BEFORE_POWERUP,
> +	RPROC_AFTER_POWERUP,
> +	RPROC_MAX

Please omit the MAX, unless you have a specific purpose for it.

Regards,
Bjorn

> +};
> +
> +/**
>   * struct rproc - represents a physical remote processor device
>   * @node: list node of this rproc object
>   * @domain: iommu domain
> -- 
> Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
