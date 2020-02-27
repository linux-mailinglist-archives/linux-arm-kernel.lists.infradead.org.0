Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC75172952
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 21:14:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toQhdRgFoFHLM7QhMatUFrttthP7q0X0nb+jh1m4FU8=; b=XUbWxXih7SQkA0
	kU0fGQs1h0Qz2EyTSjGij7cgWpJ4FIkRnaV7dHD4owZ40aoAUh3yMlyPWsImKT+T1ZEQtCtUtF/6k
	KUf95AaAk2g/0kty7KWoU8PW+GcxmJeETKGAB1z9z/MLKgDWOxxfEgLR0nZ26WUmCSzosTsJHipdi
	JYfpUT5u5HqWWWO8D/on5ga6ku53+iqV1TX6+5iExLToa1ZDLZi3Yr0zENTmqCoZdeaFWCldjhAp2
	UAH2CS+Nlle9NHjxeoF1WXcugG3G+Pk5WgUNZqsERdvsR9hnytX7cIKSZBv0/ykfV93Dyb0uiGffE
	vL+lcRaO5zCW486ivnHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7PY7-0001hw-2G; Thu, 27 Feb 2020 20:14:23 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7PXv-0001hP-MY
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 20:14:13 +0000
Received: by mail-pl1-x641.google.com with SMTP id b22so232240pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 12:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HueSZx0ts8rrl9axXw3uhQrr5WR5FCAoM3cWMzSUgig=;
 b=hNTfbru9GbcIsnZTVTdW0TakeEdKmidNn9IGs9Q4vyQM5obrsrI6gbCWhrTP1ZjqiG
 fNOQO9OikDz6eyrMN7moq6+WGCOBwPrQXpa4mnSSzA1zjBxWb2RPE+/8/vLCTnCaBr6+
 J/9PTCyTntgmKIZdiizaCQpVBAkIyzUGztMR71yEdQgpX3u3ovwgmtmnr04S4yvqhWy/
 o/4yKE3uf+lGEqeLvsHPav3OumWq/dUSWNoOD1zYxCtB8GSe/M7PmgK0T9e4u3e1oT3M
 NI181DWGmEzEoSrD1WNQ30g8z0NTEHw6ZFeB9C8lZAlzm7nGhujoJQ+Am/nLoY1gT+Vo
 bjsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HueSZx0ts8rrl9axXw3uhQrr5WR5FCAoM3cWMzSUgig=;
 b=TbW7Lm4oqjfYX/YrVJ56UTm7ONflZ0Om7l+dgsjJV5kJ+gR2bgGwl9yrP5SrnH6zv8
 NtV8QraZACd4TimO8oUBUDfIwj5XTFOQWhmJ6YrdXG5LCNnqgP6EiXxFWeU74zMXZwGL
 bPgwvnX301s3aNt/RuLwpy39KkPPXmMdgxKGIh2V2Aqvo0Cg9B7w+8Eg9vO/sodkt9YL
 px974MYM64NWZcJe8+46O1ZczqIz7KjArdfYhPzsmBtncaQu8+cKN20HpgvYc9U0zs8S
 zQ+q4pBjDiGqeNhW6lxVRo5BFplm5rByjU1x+9FoaSvoyYtEg+ymlhC78sMzXgKHAmGK
 8wlw==
X-Gm-Message-State: APjAAAXaDK7EKTR2a2pisJXrYfLa7MYnpcwNO8GteEowHSYtqmVniG0X
 mctALaLzvvf3+ioefo2j0o1big==
X-Google-Smtp-Source: APXvYqyjkedN5nnEyPuP2TOGanlZFuaAlwWxVqtpqMCjioYvsaHmpHmOGZsqvmBEwtv9veLZecW9Cw==
X-Received: by 2002:a17:90a:191a:: with SMTP id
 26mr656861pjg.111.1582834450608; 
 Thu, 27 Feb 2020 12:14:10 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v29sm7349350pgc.72.2020.02.27.12.14.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 12:14:10 -0800 (PST)
Date: Thu, 27 Feb 2020 13:14:08 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Siddharth Gupta <sidgup@codeaurora.org>
Subject: Re: [PATCH 4/6] drivers: remoteproc: Add name field for every
 subdevice
Message-ID: <20200227201408.GB20116@xps15>
References: <1582167465-2549-1-git-send-email-sidgup@codeaurora.org>
 <1582167465-2549-5-git-send-email-sidgup@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582167465-2549-5-git-send-email-sidgup@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_121411_742772_892BE611 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, Feb 19, 2020 at 06:57:43PM -0800, Siddharth Gupta wrote:
> From: Rishabh Bhatnagar <rishabhb@codeaurora.org>
> 
> When a client driver wishes to utilize functionality from a particular
> subdevice of a remoteproc, it cannot differentiate between the subdevices
> that have been added. This patch allows the client driver to distinguish
> between subdevices and thus utilize their functionality.
> 
> Signed-off-by: Rishabh Bhatnagar <rishabhb@codeaurora.org>
> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
> ---
>  drivers/remoteproc/qcom_common.c | 6 ++++++
>  include/linux/remoteproc.h       | 2 ++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/remoteproc/qcom_common.c b/drivers/remoteproc/qcom_common.c
> index 60650bc..5d59538 100644
> --- a/drivers/remoteproc/qcom_common.c
> +++ b/drivers/remoteproc/qcom_common.c
> @@ -58,6 +58,7 @@ void qcom_add_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glink)
>  	glink->dev = dev;
>  	glink->subdev.start = glink_subdev_start;
>  	glink->subdev.stop = glink_subdev_stop;
> +	glink->subdev.name = kstrdup("glink", GFP_KERNEL);

Because @subdev is a member of qcom_rproc_glink (rather than a pointer), it is
possible to get to glink with container_of().  From there edge->name is
available - would that work?

>  
>  	rproc_add_subdev(rproc, &glink->subdev);
>  }
> @@ -73,6 +74,7 @@ void qcom_remove_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glin
>  	if (!glink->node)
>  		return;
>  
> +	kfree(glink->subdev.name);
>  	rproc_remove_subdev(rproc, &glink->subdev);
>  	of_node_put(glink->node);
>  }
> @@ -154,6 +156,7 @@ void qcom_add_smd_subdev(struct rproc *rproc, struct qcom_rproc_subdev *smd)
>  	smd->dev = dev;
>  	smd->subdev.start = smd_subdev_start;
>  	smd->subdev.stop = smd_subdev_stop;
> +	smd->subdev.name = kstrdup("smd", GFP_KERNEL);

Same as above - qcom_smd_edge has a name.

Worse case scenario, both qcom_rproc_glink and qcom_smd_edge have a device_node
that can be used as well.

>  
>  	rproc_add_subdev(rproc, &smd->subdev);
>  }
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
> index e2eaba9..e2f60cc 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -519,6 +519,7 @@ struct rproc {
>  /**
>   * struct rproc_subdev - subdevice tied to a remoteproc
>   * @node: list node related to the rproc subdevs list
> + * @name: name of the subdevice
>   * @prepare: prepare function, called before the rproc is started
>   * @start: start function, called after the rproc has been started
>   * @stop: stop function, called before the rproc is stopped; the @crashed
> @@ -527,6 +528,7 @@ struct rproc {
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
