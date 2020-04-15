Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AA41AB05C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 20:11:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HjCwL5vsaSrkvT02PP2+F/o+aYcUjftGhQOMWAD044=; b=sG1rsWHcR0Jw6o
	Kn/DLqNIi4TzJ3GbucTb8hjwtiDVVRZPSPWEY6EGg4zE5+l6Hch3xY2ulQ1R7z3coTS49Zhly1OGm
	2/ab+DR4bKmj4mtIOGCf9tWNznuiydNcZH7iS2w4S49OtQIRmKC9by2w1iYYHXNhSdKWhDu/+8Njq
	PosNa57YTyZmveOI57AWlv9yVMXXaTZsthWP07xFU2g5lJ8zQQAGgos+DwLKlHYGfjLFdMSd7Sf24
	chniMXpU7CT1MiK6uJNQeQxgrhTYK9D40BCK6KqElHxkwQc5VnoTltLl8ohSXp4fvcT2uET/xVT/7
	nInPj23c6IUDmRydL19g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOmUt-0007IS-2r; Wed, 15 Apr 2020 18:10:51 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOmUj-0007Hk-Rd
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 18:10:43 +0000
Received: by mail-pf1-x444.google.com with SMTP id w65so328715pfc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 11:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yOYBo8OjxgFUtMIRY6LWGA61eRM9SefgAlvGVD6yLNE=;
 b=uyR3zgToYS8mKENYz2nWMYAMB/GuEttq4rdHLh72Oogd0C9iaqdiY+zZ+YwXHTxJww
 R5kmMnjaktd+YRbiCzCC4BbARWPsJOeRydzeCsJWJgTsd3c+ZtrK8ZrpeHSZoBNSYQ5G
 jCbxh5+SPvtgYxzE2yLKx7r3YO+deFbwHqEuUlNKhFyymhIRiP0kasFWvNLGddCTtDh1
 ODAQGq35qmLcM+g3/MNFmMGqG2IfVqgZXw5GgLPA6kfU8hYkneMF4ujTiSPkgg8kn2xF
 9tQO0dZXU1vFQvqllbJNdEc6gbmXJW57lkYwwkdoG2MeCAKzd21VviQxqYLR38PykAeR
 r/Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yOYBo8OjxgFUtMIRY6LWGA61eRM9SefgAlvGVD6yLNE=;
 b=sIUnGPHEhEre58+ayG7QLFIUOwplML5dhY77P74lVO0sHkN2oGRVl/r0jdnLite6oZ
 3MX6tH1Vlu+6EDX6eMQTRPNOTuH3fyqRj750GvbBfhwaMADHBS+hI5CQDomnIb2hOmVr
 jqk1HvSeK5dTOxC20+47WzlNOBT9BVaDDd7JhPIeu7Da729+tACwJumu0WpW2Rw10Z+z
 817oqPtdhP9N6No2GqeR+1NBFIdvG7PbfxM16kvDjTpWNc505pE5wiEcUC+W7MroH7R6
 DirQrNdfQuUozx6rDMIHPwp8lld5hxcn+RvXedyP9Lrp4WKZLGOe6Ru0umpgg2W1q1+Q
 UiXQ==
X-Gm-Message-State: AGi0Pubz4G6xuZZvxvYyelj21FYjGNONVhz55TkYaJXLTkgVwzAsyGIG
 QWr5Mv/v5Y3K8OO/LCvb1WpO1g==
X-Google-Smtp-Source: APiQypJ6qJ39VM0kUmNEVlXtvEwbTTfiXrQq1kKfK78aoE4KVf394jbk0vwvHXBhxKyQYNlGu08xgQ==
X-Received: by 2002:a62:dd48:: with SMTP id w69mr18468228pff.86.1586974241107; 
 Wed, 15 Apr 2020 11:10:41 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id 198sm14741291pfa.87.2020.04.15.11.10.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 11:10:40 -0700 (PDT)
Date: Wed, 15 Apr 2020 12:10:38 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Siddharth Gupta <sidgup@codeaurora.org>
Subject: Re: [PATCH v2 6/6] remoteproc: qcom: Add notification types to SSR
Message-ID: <20200415181038.GE16583@xps15>
References: <1586389003-26675-1-git-send-email-sidgup@codeaurora.org>
 <1586389003-26675-7-git-send-email-sidgup@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586389003-26675-7-git-send-email-sidgup@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_111042_413270_BE7C9077 
X-CRM114-Status: GOOD (  21.91  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ohad@wizery.com, tsoni@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org, agross@kernel.org, rishabhb@codeaurora.org,
 psodagud@codeaurora.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 04:36:43PM -0700, Siddharth Gupta wrote:
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
> +	RPROC_BEFORE_SHUTDOWN,
> +	RPROC_AFTER_SHUTDOWN,
> +	RPROC_BEFORE_POWERUP,
> +	RPROC_AFTER_POWERUP,
> +	RPROC_MAX

Not sure why you have a RPROC_MAX here...  It is not needed in this set but it
might be in some downstream or upcoming code. 

Acked-by: Mathieu Poirier <mathieu.poirier@linaro.org>

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
