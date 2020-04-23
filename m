Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CAA1B518F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 02:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vvv6dKONPRzyLZGkthJGSR8fyIpQTbUtO7XHWl48AOo=; b=B54kXiZf8Ibpuf
	d8RDRJVgCszt3fV1yfGa93CYd94HN43wnXzjnr+dM9xDCqfM47g5Ghs7wr62Fddmo6kmq37XkYkUm
	pPiD5OeBNoUJdJCUTiykuOHDQmLGdFd30boAaHcw+nd59lSa2/i2y2RdfYk7/GUC/Fxa7YwpWtKFS
	XakeybiRuLTj4adH9prck9G3kU7c8tpjGg3116A/kcNHF3sexioGMTymGHTErPtR+aq3u0FrGoLeo
	AXZor6ElDbObDb7Nwz48FQDOgB3UdqHehHFYL/K4pEIqYQCBrDohLXoa/ETsvy4H/sGO4PRSnQRxU
	HNtGbNq4H3whDZlwdiig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRQ8Z-0003xu-1p; Thu, 23 Apr 2020 00:54:43 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRQ8D-0003wF-N6
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 00:54:23 +0000
Received: by mail-pf1-x444.google.com with SMTP id 18so2048851pfx.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 17:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=JE6oe6+FjyPpD6b7n/9jEP7EO44SjCw/ANTgeIyfdbY=;
 b=f9fD5qDZqzQntcq3cunw40sGeOnYhRZwuOYSZU9eAfnkrWzSHJwwyOdiMKCzz6mAmz
 YeTAKrcPmJwh30QSShuQ/ixpOXqQrCyNzO0CH/pBn/+KQV6iGdMvtRDZnK0qcnfTpU8q
 9cRTgijwpN+krvCuy3P6p/sfZTK4qLvq5EhVrw7S3YWTo/jsXGiCubMb5N4uxrXk49eE
 2TtncsCXFkv6MaH5dC2pnTboQHddPnu7ZTR47q7IzzOReJoeY7hzf7wDWfOjResBAdyl
 TMSr7qGclw49xvEtAgNqFqiVMSgsam9O/UpmNDBLnke4CwMByRbOkJYf94nKhyX2ISE5
 NU4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JE6oe6+FjyPpD6b7n/9jEP7EO44SjCw/ANTgeIyfdbY=;
 b=AOWk81PfaoaH7j0AEPUImkUUiXDjgMiUGRE+mj6ytqxU5cogBslT3CDQW5GgeFt2es
 w28j+PDuMNujVQxDHD1lAaqUhVp+nvvpLJWJLIb51XU6wWaXD3bY3rESRkIGze+JbwFZ
 opVHxzauMtAk+I0B0pZ9YxX3MsEAK0fxZ1IU3pDQ8uuaC/pV8bpKuAj87NeKH/UB5CAg
 NISCHpfWPROpHJ/4u6gvElokaBxJaj8bXh+GNieV5h5oy/M6vGF9rT3+fDntaR+QoOKl
 xEovyL04NI6IVS8WPEYJlpFB7cFmVmYaLJgCUzkdhmrphDsS2JgmDkS0jfTsnoyBfGUD
 CDaw==
X-Gm-Message-State: AGi0PuacCzm6euBRZbwNHTzqOim8MAqdQk9tSwdn7U9Jxuj8qt0YWyvE
 4mZgn4nkCx/DnnjXT6mgiopfFw==
X-Google-Smtp-Source: APiQypLZ//tdUMggVbUWBbANGF4BxMMvcCwHBTx5jEXUWU97jlHYEDGls/VqjKQRsQUH8uPFIVuiCA==
X-Received: by 2002:a62:144c:: with SMTP id 73mr1296022pfu.37.1587603260848;
 Wed, 22 Apr 2020 17:54:20 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id y71sm712012pfb.179.2020.04.22.17.54.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 17:54:20 -0700 (PDT)
Date: Wed, 22 Apr 2020 17:54:47 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Siddharth Gupta <sidgup@codeaurora.org>
Subject: Re: [PATCH v2 4/6] remoteproc: qcom: Add name field for every
 subdevice
Message-ID: <20200423005447.GM1868936@builder.lan>
References: <1586389003-26675-1-git-send-email-sidgup@codeaurora.org>
 <1586389003-26675-5-git-send-email-sidgup@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586389003-26675-5-git-send-email-sidgup@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_175421_755613_B7971A7F 
X-CRM114-Status: GOOD (  18.39  )
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
 agross@kernel.org, Rishabh Bhatnagar <rishabhb@codeaurora.org>,
 psodagud@codeaurora.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 08 Apr 16:36 PDT 2020, Siddharth Gupta wrote:

> From: Rishabh Bhatnagar <rishabhb@codeaurora.org>
> 
> When a client driver wishes to utilize functionality from a particular
> subdevice of a remoteproc, it cannot differentiate between the subdevices
> that have been added. This patch allows the client driver to distinguish
> between subdevices and thus utilize their functionality.
> 

As noted in patch 5, this invites driver authors to traverse the rproc
subdev list outside the remoteproc core. So I would like to avoid this.

Regards,
Bjorn

> Signed-off-by: Rishabh Bhatnagar <rishabhb@codeaurora.org>
> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
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
