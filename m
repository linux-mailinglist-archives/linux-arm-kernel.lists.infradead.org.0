Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C69431C19EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 17:41:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6IdbZrbRQQj5SpPwMg1dmPOdFV9j9KmkqQ7S0U0H4yo=; b=q35U7d2ODy40uA
	w/C3ruVGsAIy49k10g7ZC/l7r2Q2lUAWLrJHB0ows74x9ZfY+XxfnQhVRGVccggp87NYcgMuS5THr
	a7AlYB/lMjV5R2oNPGJ55JHfWe0qd0VcpRgpzIntNPt/T+Oebov4JLYhi0ZckYnNMNQmRkknv/zEe
	DzfdwmofvQnP5PTnnytjNnQnwF1X+WNO+2/oUAtklv+PhTlTf78YiFU3z4xru19JtK9DOSpIo6llB
	mBHc9u24I3gVFx3D6m/MT64MEO8A+HVBjqXIrahSB8gFGRtlOt2xzT3Bj2xWaLsWCSLTPrvT1r0jY
	TNAxe9n3k4YZf/pOu0IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXmy-0002ZQ-GP; Fri, 01 May 2020 15:41:20 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXms-0002Yn-FD
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 15:41:16 +0000
Received: by mail-pg1-x543.google.com with SMTP id d3so4708170pgj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 08:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YJ4KJlZHvfOajTJzZlfCxHLt+Kv+rjkwCB+Y1R+uJUM=;
 b=yU6H5lg+Ogqt0uxmHyzEVixr4IRtEVo4kUtz8FfGnz0/8CiyJZ/GtOjyzeWKVrdlKy
 Z9LxroihzSaj93D6pfE7osVuQL1LPZLVQUjZSOSa1bHClVrYPYT6QfGX9abQl6FgNh1c
 BdHW25Aan2llomz+UCvvStDBB4NQ3mZqC+Yyp9c1+01e6D0RqK3yoveZDC7358iSIlYD
 FthoYsnXQ1ntEDD496WvXHAXdJ6S6XXUuPVIeuqTaJz+wn09aGpGu1pI3E9uYfvVsTso
 6qSfEk8GbXcevP6xs3Qf1EokZ6+gaIuSTymt4x0ZHf7iuHaAQZkswETQYvmOoVHnOvBm
 QGuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YJ4KJlZHvfOajTJzZlfCxHLt+Kv+rjkwCB+Y1R+uJUM=;
 b=PBrmj5s3+qY1hPK+3iGGL3wpYf163S+o7G+oCJdmP9UgsFnOCMxviqABR2Ln9CwuEs
 ignNhv4WSNVZy7HVgF9b17puR1h1kLMireTnvut/Z7CiPEs8HFuUoNiryf9QNaJ50JUJ
 ZRMR3rkl9AUEwu60OtJYS7Au0vOcO1Bb99CkkZm/ciYkfOdhklkMVM/5YTqedZvsNYb7
 FEUPV86TzRzOZ0kF2StumoTvcm9kHETKiaPxyaN+NKZND3IHz0DpVAqu3nldSYnDT7yT
 9jWmPP2jRlKD2rtbCKHZhLWCkwSILhZOY1uFwyqIDY7j1gQTOM3gq2id1yWp6SJumgbA
 ueZQ==
X-Gm-Message-State: AGi0PuYBoifgbzGh5UB5qQsc7ABStG+HPa7E+Yzet2Z+JdDE/Aymdq9w
 bS8RTm9veqLAGiEjxD6RP4lD4g==
X-Google-Smtp-Source: APiQypK6nmlhA9hedaldYEm5FVJoURCFe+MI7wLhRHr1XRgxqm6Z55fay8Dm845ScS3+RkkmQvfcuQ==
X-Received: by 2002:a63:6543:: with SMTP id z64mr4722206pgb.260.1588347673275; 
 Fri, 01 May 2020 08:41:13 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id gl12sm21394pjb.27.2020.05.01.08.41.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 May 2020 08:41:12 -0700 (PDT)
Date: Fri, 1 May 2020 09:41:10 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 1/4] remoteproc: qcom: Pass ssr_name to glink subdevice
Message-ID: <20200501154110.GA30509@xps15>
References: <20200423003736.2027371-1-bjorn.andersson@linaro.org>
 <20200423003736.2027371-2-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423003736.2027371-2-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_084114_674322_2EDE7C2D 
X-CRM114-Status: GOOD (  20.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chris Lew <clew@codeaurora.org>, Andy Gross <agross@kernel.org>,
 Sibi <sibis@codeaurora.org>, Siddharth Gupta <sidgup@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Good morning Bjorn,

On Wed, Apr 22, 2020 at 05:37:33PM -0700, Bjorn Andersson wrote:
> Pass ssr_name to glink subdevice in preparation for tying glink_ssr to
> the glink subdevice, rather than having its own "ssr subdevice".
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  drivers/remoteproc/qcom_common.c    | 9 ++++++++-
>  drivers/remoteproc/qcom_common.h    | 5 ++++-
>  drivers/remoteproc/qcom_q6v5_adsp.c | 2 +-
>  drivers/remoteproc/qcom_q6v5_mss.c  | 2 +-
>  drivers/remoteproc/qcom_q6v5_pas.c  | 2 +-
>  5 files changed, 15 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/remoteproc/qcom_common.c b/drivers/remoteproc/qcom_common.c
> index 60650bcc8c67..ff26f2b68752 100644
> --- a/drivers/remoteproc/qcom_common.c
> +++ b/drivers/remoteproc/qcom_common.c
> @@ -46,8 +46,10 @@ static void glink_subdev_stop(struct rproc_subdev *subdev, bool crashed)
>   * qcom_add_glink_subdev() - try to add a GLINK subdevice to rproc
>   * @rproc:	rproc handle to parent the subdevice
>   * @glink:	reference to a GLINK subdev context
> + * @ssr_name:	identifier of the associated remoteproc for ssr notifications
>   */
> -void qcom_add_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glink)
> +void qcom_add_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glink,
> +			   const char *ssr_name)
>  {
>  	struct device *dev = &rproc->dev;
>  
> @@ -55,6 +57,10 @@ void qcom_add_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glink)
>  	if (!glink->node)
>  		return;
>  
> +	glink->ssr_name = kstrdup_const(ssr_name, GFP_KERNEL);
> +	if (!glink->ssr_name)
> +		return;
> +

In case or an error with the allocation of ->ssr_name an
of_node_put(glink->node) needs to be done.  That way qcom_add_glink_subdev()
cleans up after itself if things go wrong.  On the flip side the same
of_node_put() will be done when the driver is removed.  So I'm ambivalent on
this one.  With or without this change:

Acked-by: Mathieu Poirier <mathieu.poirier@linaro.org>  

>  	glink->dev = dev;
>  	glink->subdev.start = glink_subdev_start;
>  	glink->subdev.stop = glink_subdev_stop;
> @@ -74,6 +80,7 @@ void qcom_remove_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glin
>  		return;
>  
>  	rproc_remove_subdev(rproc, &glink->subdev);
> +	kfree_const(glink->ssr_name);
>  	of_node_put(glink->node);
>  }
>  EXPORT_SYMBOL_GPL(qcom_remove_glink_subdev);
> diff --git a/drivers/remoteproc/qcom_common.h b/drivers/remoteproc/qcom_common.h
> index 58de71e4781c..34e5188187dc 100644
> --- a/drivers/remoteproc/qcom_common.h
> +++ b/drivers/remoteproc/qcom_common.h
> @@ -11,6 +11,8 @@ struct qcom_sysmon;
>  struct qcom_rproc_glink {
>  	struct rproc_subdev subdev;
>  
> +	const char *ssr_name;
> +
>  	struct device *dev;
>  	struct device_node *node;
>  	struct qcom_glink *edge;
> @@ -30,7 +32,8 @@ struct qcom_rproc_ssr {
>  	const char *name;
>  };
>  
> -void qcom_add_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glink);
> +void qcom_add_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glink,
> +			   const char *ssr_name);
>  void qcom_remove_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glink);
>  
>  int qcom_register_dump_segments(struct rproc *rproc, const struct firmware *fw);
> diff --git a/drivers/remoteproc/qcom_q6v5_adsp.c b/drivers/remoteproc/qcom_q6v5_adsp.c
> index c60dabc6939e..d2a2574dcf35 100644
> --- a/drivers/remoteproc/qcom_q6v5_adsp.c
> +++ b/drivers/remoteproc/qcom_q6v5_adsp.c
> @@ -461,7 +461,7 @@ static int adsp_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto disable_pm;
>  
> -	qcom_add_glink_subdev(rproc, &adsp->glink_subdev);
> +	qcom_add_glink_subdev(rproc, &adsp->glink_subdev, desc->ssr_name);
>  	qcom_add_ssr_subdev(rproc, &adsp->ssr_subdev, desc->ssr_name);
>  	adsp->sysmon = qcom_add_sysmon_subdev(rproc,
>  					      desc->sysmon_name,
> diff --git a/drivers/remoteproc/qcom_q6v5_mss.c b/drivers/remoteproc/qcom_q6v5_mss.c
> index 7af1d0c987e0..b5dd36775b77 100644
> --- a/drivers/remoteproc/qcom_q6v5_mss.c
> +++ b/drivers/remoteproc/qcom_q6v5_mss.c
> @@ -1762,7 +1762,7 @@ static int q6v5_probe(struct platform_device *pdev)
>  
>  	qproc->mpss_perm = BIT(QCOM_SCM_VMID_HLOS);
>  	qproc->mba_perm = BIT(QCOM_SCM_VMID_HLOS);
> -	qcom_add_glink_subdev(rproc, &qproc->glink_subdev);
> +	qcom_add_glink_subdev(rproc, &qproc->glink_subdev, "mpss");
>  	qcom_add_smd_subdev(rproc, &qproc->smd_subdev);
>  	qcom_add_ssr_subdev(rproc, &qproc->ssr_subdev, "mpss");
>  	qcom_add_ipa_notify_subdev(rproc, &qproc->ipa_notify_subdev);
> diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
> index 8ecc157f1ed1..fc6658b523b6 100644
> --- a/drivers/remoteproc/qcom_q6v5_pas.c
> +++ b/drivers/remoteproc/qcom_q6v5_pas.c
> @@ -436,7 +436,7 @@ static int adsp_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto detach_proxy_pds;
>  
> -	qcom_add_glink_subdev(rproc, &adsp->glink_subdev);
> +	qcom_add_glink_subdev(rproc, &adsp->glink_subdev, desc->ssr_name);
>  	qcom_add_smd_subdev(rproc, &adsp->smd_subdev);
>  	qcom_add_ssr_subdev(rproc, &adsp->ssr_subdev, desc->ssr_name);
>  	adsp->sysmon = qcom_add_sysmon_subdev(rproc,
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
