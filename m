Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBCE1C9891
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 20:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o9+/eFJkNFMBWFbVT2NcehoBF/PkUwm8HfND3WYybZU=; b=nlT1nhQ872vmNSQPGuXkWOUtI
	hxpaq5ZkEWjDyBgI2JIzIA/OW3bXk9eHXqgXptEjOVut1NHptA28VyraLVnt4D2Lf/gI8M+hIydhG
	3u/7i7CtKc5MZPtPIVqZT09jQovFxRsLHPprP2L+UHvqQCUlO4jukjkC37Ff0zE+zZpwOrSg31GwW
	DZs+nbMzTq26RYvMMZauPspCAxxRho0T2RzFExhrd2j+YEyjFV9H0TvlW+TYdCojEITBerGY9a+lU
	rNU/kFGtqQtEfoLlmqdiDuemDbiVa72eyY3svX/E1hoUkOZ/fJZQDhKAQI/JMSOHxctejtyE7N9JD
	oroPbE6hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkpX-0002YX-PJ; Thu, 07 May 2020 18:01:07 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkpK-0002XP-W9
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 18:00:59 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588874457; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=V2UzeczAOzuRzbcwtp57WQZkgmlbothElG0QWq0YFcc=;
 b=ICIrlQ85zoYs4w1mHKC28PUnEp0SWaFGzCfO+lb8jt8DfmCW23EGFpiT512UZdiznp9DuobR
 ZvZ77hxdP6BF+Snynu6vkdmlI2D/3Ic9r9Aci6EHXvIbtprxHDrF1rIni0akEDI8MWRrzkNk
 JkFQXnt/8+QZOOUwLHXhqBMX64Q=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 3F1F9C4478C; Thu,  7 May 2020 18:00:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: rishabhb)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0693FC433BA;
 Thu,  7 May 2020 18:00:20 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 07 May 2020 11:00:19 -0700
From: rishabhb@codeaurora.org
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 1/4] remoteproc: qcom: Pass ssr_name to glink subdevice
In-Reply-To: <20200423003736.2027371-2-bjorn.andersson@linaro.org>
References: <20200423003736.2027371-1-bjorn.andersson@linaro.org>
 <20200423003736.2027371-2-bjorn.andersson@linaro.org>
Message-ID: <6138eb0490203f138e97baf9c3fdaf1a@codeaurora.org>
X-Sender: rishabhb@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_110058_019148_4FF1FEA1 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, linux-remoteproc-owner@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chris Lew <clew@codeaurora.org>,
 Andy Gross <agross@kernel.org>, Sibi <sibis@codeaurora.org>,
 Siddharth Gupta <sidgup@codeaurora.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-22 17:37, Bjorn Andersson wrote:
> Pass ssr_name to glink subdevice in preparation for tying glink_ssr to
> the glink subdevice, rather than having its own "ssr subdevice".
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---

Acked-by: Rishabh Bhatnagar <rishabhb@codeaurora.org>

>  drivers/remoteproc/qcom_common.c    | 9 ++++++++-
>  drivers/remoteproc/qcom_common.h    | 5 ++++-
>  drivers/remoteproc/qcom_q6v5_adsp.c | 2 +-
>  drivers/remoteproc/qcom_q6v5_mss.c  | 2 +-
>  drivers/remoteproc/qcom_q6v5_pas.c  | 2 +-
>  5 files changed, 15 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/remoteproc/qcom_common.c 
> b/drivers/remoteproc/qcom_common.c
> index 60650bcc8c67..ff26f2b68752 100644
> --- a/drivers/remoteproc/qcom_common.c
> +++ b/drivers/remoteproc/qcom_common.c
> @@ -46,8 +46,10 @@ static void glink_subdev_stop(struct rproc_subdev
> *subdev, bool crashed)
>   * qcom_add_glink_subdev() - try to add a GLINK subdevice to rproc
>   * @rproc:	rproc handle to parent the subdevice
>   * @glink:	reference to a GLINK subdev context
> + * @ssr_name:	identifier of the associated remoteproc for ssr 
> notifications
>   */
> -void qcom_add_glink_subdev(struct rproc *rproc, struct 
> qcom_rproc_glink *glink)
> +void qcom_add_glink_subdev(struct rproc *rproc, struct 
> qcom_rproc_glink *glink,
> +			   const char *ssr_name)
>  {
>  	struct device *dev = &rproc->dev;
> 
> @@ -55,6 +57,10 @@ void qcom_add_glink_subdev(struct rproc *rproc,
> struct qcom_rproc_glink *glink)
>  	if (!glink->node)
>  		return;
> 
> +	glink->ssr_name = kstrdup_const(ssr_name, GFP_KERNEL);
> +	if (!glink->ssr_name)
> +		return;
> +
>  	glink->dev = dev;
>  	glink->subdev.start = glink_subdev_start;
>  	glink->subdev.stop = glink_subdev_stop;
> @@ -74,6 +80,7 @@ void qcom_remove_glink_subdev(struct rproc *rproc,
> struct qcom_rproc_glink *glin
>  		return;
> 
>  	rproc_remove_subdev(rproc, &glink->subdev);
> +	kfree_const(glink->ssr_name);
>  	of_node_put(glink->node);
>  }
>  EXPORT_SYMBOL_GPL(qcom_remove_glink_subdev);
> diff --git a/drivers/remoteproc/qcom_common.h 
> b/drivers/remoteproc/qcom_common.h
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
> -void qcom_add_glink_subdev(struct rproc *rproc, struct
> qcom_rproc_glink *glink);
> +void qcom_add_glink_subdev(struct rproc *rproc, struct 
> qcom_rproc_glink *glink,
> +			   const char *ssr_name);
>  void qcom_remove_glink_subdev(struct rproc *rproc, struct
> qcom_rproc_glink *glink);
> 
>  int qcom_register_dump_segments(struct rproc *rproc, const struct
> firmware *fw);
> diff --git a/drivers/remoteproc/qcom_q6v5_adsp.c
> b/drivers/remoteproc/qcom_q6v5_adsp.c
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
> diff --git a/drivers/remoteproc/qcom_q6v5_mss.c
> b/drivers/remoteproc/qcom_q6v5_mss.c
> index 7af1d0c987e0..b5dd36775b77 100644
> --- a/drivers/remoteproc/qcom_q6v5_mss.c
> +++ b/drivers/remoteproc/qcom_q6v5_mss.c
> @@ -1762,7 +1762,7 @@ static int q6v5_probe(struct platform_device 
> *pdev)
> 
>  	qproc->mpss_perm = BIT(QCOM_SCM_VMID_HLOS);
>  	qproc->mba_perm = BIT(QCOM_SCM_VMID_HLOS);
> -	qcom_add_glink_subdev(rproc, &qproc->glink_subdev);
> +	qcom_add_glink_subdev(rproc, &qproc->glink_subdev, "mpss");
>  	qcom_add_smd_subdev(rproc, &qproc->smd_subdev);
>  	qcom_add_ssr_subdev(rproc, &qproc->ssr_subdev, "mpss");
>  	qcom_add_ipa_notify_subdev(rproc, &qproc->ipa_notify_subdev);
> diff --git a/drivers/remoteproc/qcom_q6v5_pas.c
> b/drivers/remoteproc/qcom_q6v5_pas.c
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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
