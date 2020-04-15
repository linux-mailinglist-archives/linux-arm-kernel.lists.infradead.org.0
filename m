Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 385FF1AB063
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 20:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ArDpMag1olDY8CLAjRg189z1OcVeRkRWG61Uo3jmo4o=; b=LLl3683O0wfIne
	UjGv/mGUeiLQRmIrp5fuDzN6BWJ5fAV4tF0eusKVMhJmWMrFc5aUS+ZwTh73P05SJYqK5jb4FQWjc
	Nk/oz2eEedPU8dxE/dSdLuwkK6ce/0vG8p9XVcJEbM1xjOzaEqnujb4Hph23XD1b0UzgPuEFUwT+Z
	qt0nnKaqWYhVOnFdyW2PRQB0xFTtIZg6efeQMInaJoPXQw4L5sAiKzqiV9/JDTKjxjsfmE6bWY+3Y
	ojObJjZ+EgazP3ebd4AnKsVP+aK59P6+XjciPtMqvRna3cueyHVm7DWZK2dKqXvc8Fi70yYodxKxM
	I11R+wAe+/itB/61H0sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOmVw-0007jE-HJ; Wed, 15 Apr 2020 18:11:56 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOmVj-0007hr-1k
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 18:11:44 +0000
Received: by mail-pf1-x444.google.com with SMTP id m21so328765pff.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 11:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Hv4Gb+XU8mOj8xMFdipxFcMjlc532U8U6KOUpsFhxqY=;
 b=Gs45V7acM1Gg+IDEQIa8efTGGg+FVai47wUYfRNm7sgC8M3235Wdfd627OlVlKHree
 G/JPIqjAQoOF8XLyehNauDN4H23NKVUyIa4c6e++RGuOQusJlK5JVxRWbw3QRuUGoJqO
 TaD/89qJ+j7tYxgDCu/WtVuv5G/ZLBCfX9gl+AgCJXpWsj6YuJ4VaeuSXBhTKmAO2OF8
 i/i5RsHx4X/GnRoq77MHKt2Ec/hYDX2QbLJFxEcAkm3pUQ/j8effzI8hR3pvnsPIcAWX
 Azhy1QdjR5nkInSATS1UlDa1H4dG83YYu8+8hdn/wBWZeCVW5myrBWGYSUoyIhqYnw3g
 qmGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Hv4Gb+XU8mOj8xMFdipxFcMjlc532U8U6KOUpsFhxqY=;
 b=kQl6AuGMXRmxqg+MyO88yd0qZraY/Z+61yRFR7BL3RSNd/bI1FkQmdUbe/UMLO0v2t
 beKHzA3qQCKaCgKILz1z2mnEAsqphMHD3bGNKch+Lf4yEzUGA5Vs6/kBcuxOTcZ3qIHS
 czmNy6YY6/JyVz+ZV865bBmzWNm5xh+il9BPPH4zraAIAdVdn61FqHHWuuP6+zAHmI5g
 5Wg6wjlxd1AZv8UrnKZdRjWIOvcVvcxVnXUIoLjNtFhT20q3G7QPmfKWoRiAkTmWUxMs
 Uk85RN5huXpoHqZ7TMGvMpzVx8i8Fq82BYXrBccyEF1Ug+w8Tf1MtS5p95d6Ehoeybqs
 wH/Q==
X-Gm-Message-State: AGi0PuZBCUdf7Gpvn9DVX/gLkVJiddiUYbO7R6acORvtDcbNi+ar+H7i
 ZgMJ/m95wzhvuYsNsb+g3BFjhA==
X-Google-Smtp-Source: APiQypIjo5joNUHWhj8LYjKyMfT+ubnd1PrqS6lJmTvfS1amP7RXRU6Uzmg8PU7h9tURc3cv4RxdgQ==
X-Received: by 2002:aa7:9625:: with SMTP id r5mr7532605pfg.256.1586974302516; 
 Wed, 15 Apr 2020 11:11:42 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id 65sm9606185pfz.211.2020.04.15.11.11.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 11:11:42 -0700 (PDT)
Date: Wed, 15 Apr 2020 12:11:40 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Siddharth Gupta <sidgup@codeaurora.org>
Subject: Re: [PATCH v2 4/6] remoteproc: qcom: Add name field for every
 subdevice
Message-ID: <20200415181140.GF16583@xps15>
References: <1586389003-26675-1-git-send-email-sidgup@codeaurora.org>
 <1586389003-26675-5-git-send-email-sidgup@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586389003-26675-5-git-send-email-sidgup@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_111143_608035_85B2B33C 
X-CRM114-Status: GOOD (  18.34  )
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
 bjorn.andersson@linaro.org, agross@kernel.org,
 Rishabh Bhatnagar <rishabhb@codeaurora.org>, psodagud@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 04:36:41PM -0700, Siddharth Gupta wrote:
> From: Rishabh Bhatnagar <rishabhb@codeaurora.org>
> 
> When a client driver wishes to utilize functionality from a particular
> subdevice of a remoteproc, it cannot differentiate between the subdevices
> that have been added. This patch allows the client driver to distinguish
> between subdevices and thus utilize their functionality.
> 
> Signed-off-by: Rishabh Bhatnagar <rishabhb@codeaurora.org>
> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>

Acked-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> ---
>  drivers/remoteproc/qcom_common.c | 6 ++++++
>  include/linux/remoteproc.h       | 2 ++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/remoteproc/qcom_common.c b/drivers/remoteproc/qcom_common.c
> index 60650bc..1d2351b 100644
> --- a/drivers/remoteproc/qcom_common.c
> +++ b/drivers/remoteproc/qcom_common.c
> @@ -56,6 +56,7 @@ void qcom_add_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glink)
>  		return;
>  
>  	glink->dev = dev;
> +	glink->subdev.name = kstrdup("glink", GFP_KERNEL);
>  	glink->subdev.start = glink_subdev_start;
>  	glink->subdev.stop = glink_subdev_stop;
>  
> @@ -73,6 +74,7 @@ void qcom_remove_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glin
>  	if (!glink->node)
>  		return;
>  
> +	kfree(glink->subdev.name);
>  	rproc_remove_subdev(rproc, &glink->subdev);
>  	of_node_put(glink->node);
>  }
> @@ -152,6 +154,7 @@ void qcom_add_smd_subdev(struct rproc *rproc, struct qcom_rproc_subdev *smd)
>  		return;
>  
>  	smd->dev = dev;
> +	smd->subdev.name = kstrdup("smd", GFP_KERNEL);
>  	smd->subdev.start = smd_subdev_start;
>  	smd->subdev.stop = smd_subdev_stop;
>  
> @@ -169,6 +172,7 @@ void qcom_remove_smd_subdev(struct rproc *rproc, struct qcom_rproc_subdev *smd)
>  	if (!smd->node)
>  		return;
>  
> +	kfree(smd->subdev.name);
>  	rproc_remove_subdev(rproc, &smd->subdev);
>  	of_node_put(smd->node);
>  }
> @@ -220,6 +224,7 @@ void qcom_add_ssr_subdev(struct rproc *rproc, struct qcom_rproc_ssr *ssr,
>  			 const char *ssr_name)
>  {
>  	ssr->name = ssr_name;
> +	ssr->subdev.name = kstrdup("ssr_notifs", GFP_KERNEL);
>  	ssr->subdev.unprepare = ssr_notify_unprepare;
>  
>  	rproc_add_subdev(rproc, &ssr->subdev);
> @@ -233,6 +238,7 @@ EXPORT_SYMBOL_GPL(qcom_add_ssr_subdev);
>   */
>  void qcom_remove_ssr_subdev(struct rproc *rproc, struct qcom_rproc_ssr *ssr)
>  {
> +	kfree(ssr->subdev.name);
>  	rproc_remove_subdev(rproc, &ssr->subdev);
>  }
>  EXPORT_SYMBOL_GPL(qcom_remove_ssr_subdev);
> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> index c5d36e6..687e1eb 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -523,6 +523,7 @@ struct rproc {
>  /**
>   * struct rproc_subdev - subdevice tied to a remoteproc
>   * @node: list node related to the rproc subdevs list
> + * @name: name of the subdevice
>   * @prepare: prepare function, called before the rproc is started
>   * @start: start function, called after the rproc has been started
>   * @stop: stop function, called before the rproc is stopped; the @crashed
> @@ -531,6 +532,7 @@ struct rproc {
>   */
>  struct rproc_subdev {
>  	struct list_head node;
> +	char *name;
>  
>  	int (*prepare)(struct rproc_subdev *subdev);
>  	int (*start)(struct rproc_subdev *subdev);
> -- 
> Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
