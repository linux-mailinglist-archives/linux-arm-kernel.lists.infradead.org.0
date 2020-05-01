Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E41751C1BDD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 19:37:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cfr7kEX8dLAyRQpuGx4JMTdjkgFRDmh7K88cvHZkB3w=; b=g2SYYIdTqb/0GO
	56E1PvOkRNwATaaHEFW8G4twmKBcL0715zPdDG1MvwGz33dbeOXBHyxto2ieQHm8WCSloOxEOmh0w
	K1+eoLYAh+1cn1EdI1jmUeYGp7gV9AKrY+ePZGDPgwlN+XtBvsbBrNBpuiTLwrWZvL9WtLvbqZRNE
	8amDYn1YL6OYjcXWDWr09ODs8x6755i4o30eL162nIDMbEVS11WFEJKzdEQlI8U+z6UHhsw2Y7BVG
	/wAHEcuGj+IOU0zYUSRjt5NbmdFe51KVkAVKC0QJ5l7LQ05tRYdsKMhR/qL3beqMwobnuftsB6vbO
	aGwwZeXRRglE0fvqIvvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUZb8-0006KW-FB; Fri, 01 May 2020 17:37:14 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUZaz-0006Jy-65
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 17:37:06 +0000
Received: by mail-pg1-x541.google.com with SMTP id h69so4833745pgc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 10:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8Ssb7zR045y0hQVLJADfxNoncBIqCoA1zZayMTSJOr0=;
 b=hQ69sOZII3yUJZKvzqgTA8LlEb2W+x+4V2m+WK6WBI3Tv9Sz2Sa28ekYrPSz5DnTS6
 RnyhEv/ii17kbsMDUKml+C2aO6VCaV7qqB6bGAZP6M6uCSKwmdUOk3xVW5ovXqsj4fe9
 Ws/l7w4bPmqVcV8fKGJ+NoM6axcrB7Xp9DWboQsdYMiENlN1I1BuplWgP8rxdF5+A7T7
 QVXsgNe+JOwwnNEPtJ81qhP7LfWJ+oDH5drm/r0uk33usOgQiN+qUebKHveh2uWiKuno
 d2+TNZf1OCd5POX7yyQR1K45AzB7fzj4vv3GDTNScJ1V+r486i5ziz3URMRLDZ3x+FSS
 QbIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8Ssb7zR045y0hQVLJADfxNoncBIqCoA1zZayMTSJOr0=;
 b=akQq7KG6040D3qAk5dVIGR/4D4AZQwpEAf7KzGh78eVMv1EplQNpmmqHYOEGq2A0eG
 a1I/l+qj0wRud+JsLKCbe1WEHaJ0GBQ+hdpgxJ1oZoIExG8G1dbHsfj632HMyJe9Rrlx
 JTBoChNUCss4rYnxPkQkX9FbsDZjQozU8+MlDqJHxenoWb4RpoN/JlJf6qthows5QwD9
 4sYR9K1imGiTfL8pHe634CnuBLYa6sp/x8ymxXkrQule5+LZKxydR8KtFc1g38sjnMGG
 fi2Qoa+Z00oPnjupLnmwyyqiTjsJmsSYN5a3NdYrg6rcFUHarhpMWJ+xcLurMFuAwAgB
 eE6w==
X-Gm-Message-State: AGi0PubVHRc/S8U8WR5kwOnCSMxT/UTFtEmqtlZhIM0VLSW3HV80neYC
 dVsJY4dbCltHfok8xpfLzj9J1w==
X-Google-Smtp-Source: APiQypKsRiBbPiO5UhEvgJ1CHiMaz4G022mxednNbGE1FSP2xisXt1FHVOYEQLgrh2gez/w7Jv7UYQ==
X-Received: by 2002:a63:b542:: with SMTP id u2mr5053271pgo.352.1588354624072; 
 Fri, 01 May 2020 10:37:04 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a22sm2369969pga.28.2020.05.01.10.37.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 May 2020 10:37:03 -0700 (PDT)
Date: Fri, 1 May 2020 11:37:01 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 2/4] soc: qcom: glink_ssr: Internalize ssr_notifiers
Message-ID: <20200501173701.GB30509@xps15>
References: <20200423003736.2027371-1-bjorn.andersson@linaro.org>
 <20200423003736.2027371-3-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423003736.2027371-3-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_103705_236402_CA8455B9 
X-CRM114-Status: GOOD (  22.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

On Wed, Apr 22, 2020 at 05:37:34PM -0700, Bjorn Andersson wrote:
> Rather than carrying a special purpose blocking notifier for glink_ssr
> in remoteproc's qcom_common.c, move it into glink_ssr so allow wider
> reuse of the common one.

After reading the changelog and the cover letter a few times along with thinking
about the content of the patch, I decude that glink_ssr devices using the
common ssr_notifiers in qcom_common.c was causing problems (having some details
on what those problems are would be useful). 

As such this patch is introducing a new notifier, also called ssr_notifiers,
that only deals with glink ssr notification to narrow the nature of the
notifications that are sent and received.  Is my understanding correct?  Also,
how does that fit into what Siddharth was doing here[1]?

It would be nice if Siddharth could ack the patch before moving forward.

Thanks,
Mathieu

[1]. https://patchwork.kernel.org/patch/11481081/ 

> 
> The rpmsg glink header file is used in preparation for the next patch.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  drivers/remoteproc/qcom_common.c |  8 ++++++++
>  drivers/soc/qcom/glink_ssr.c     | 24 +++++++++++++++++++-----
>  include/linux/rpmsg/qcom_glink.h |  6 ++++++
>  3 files changed, 33 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/remoteproc/qcom_common.c b/drivers/remoteproc/qcom_common.c
> index ff26f2b68752..9028cea2d81e 100644
> --- a/drivers/remoteproc/qcom_common.c
> +++ b/drivers/remoteproc/qcom_common.c
> @@ -42,6 +42,13 @@ static void glink_subdev_stop(struct rproc_subdev *subdev, bool crashed)
>  	glink->edge = NULL;
>  }
>  
> +static void glink_subdev_unprepare(struct rproc_subdev *subdev)
> +{
> +	struct qcom_rproc_glink *glink = to_glink_subdev(subdev);
> +
> +	qcom_glink_ssr_notify(glink->ssr_name);
> +}
> +
>  /**
>   * qcom_add_glink_subdev() - try to add a GLINK subdevice to rproc
>   * @rproc:	rproc handle to parent the subdevice
> @@ -64,6 +71,7 @@ void qcom_add_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glink,
>  	glink->dev = dev;
>  	glink->subdev.start = glink_subdev_start;
>  	glink->subdev.stop = glink_subdev_stop;
> +	glink->subdev.unprepare = glink_subdev_unprepare;
>  
>  	rproc_add_subdev(rproc, &glink->subdev);
>  }
> diff --git a/drivers/soc/qcom/glink_ssr.c b/drivers/soc/qcom/glink_ssr.c
> index d7babe3d67bc..847d79c935f1 100644
> --- a/drivers/soc/qcom/glink_ssr.c
> +++ b/drivers/soc/qcom/glink_ssr.c
> @@ -54,6 +54,19 @@ struct glink_ssr {
>  	struct completion completion;
>  };
>  
> +/* Notifier list for all registered glink_ssr instances */
> +static BLOCKING_NOTIFIER_HEAD(ssr_notifiers);
> +
> +/**
> + * qcom_glink_ssr_notify() - notify GLINK SSR about stopped remoteproc
> + * @ssr_name:	name of the remoteproc that has been stopped
> + */
> +void qcom_glink_ssr_notify(const char *ssr_name)
> +{
> +	blocking_notifier_call_chain(&ssr_notifiers, 0, (void *)ssr_name);
> +}
> +EXPORT_SYMBOL_GPL(qcom_glink_ssr_notify);
> +
>  static int qcom_glink_ssr_callback(struct rpmsg_device *rpdev,
>  				   void *data, int len, void *priv, u32 addr)
>  {
> @@ -81,8 +94,9 @@ static int qcom_glink_ssr_callback(struct rpmsg_device *rpdev,
>  	return 0;
>  }
>  
> -static int qcom_glink_ssr_notify(struct notifier_block *nb, unsigned long event,
> -				 void *data)
> +static int qcom_glink_ssr_notifier_call(struct notifier_block *nb,
> +					unsigned long event,
> +					void *data)
>  {
>  	struct glink_ssr *ssr = container_of(nb, struct glink_ssr, nb);
>  	struct do_cleanup_msg msg;
> @@ -121,18 +135,18 @@ static int qcom_glink_ssr_probe(struct rpmsg_device *rpdev)
>  
>  	ssr->dev = &rpdev->dev;
>  	ssr->ept = rpdev->ept;
> -	ssr->nb.notifier_call = qcom_glink_ssr_notify;
> +	ssr->nb.notifier_call = qcom_glink_ssr_notifier_call;
>  
>  	dev_set_drvdata(&rpdev->dev, ssr);
>  
> -	return qcom_register_ssr_notifier(&ssr->nb);
> +	return blocking_notifier_chain_register(&ssr_notifiers, &ssr->nb);
>  }
>  
>  static void qcom_glink_ssr_remove(struct rpmsg_device *rpdev)
>  {
>  	struct glink_ssr *ssr = dev_get_drvdata(&rpdev->dev);
>  
> -	qcom_unregister_ssr_notifier(&ssr->nb);
> +	blocking_notifier_chain_unregister(&ssr_notifiers, &ssr->nb);
>  }
>  
>  static const struct rpmsg_device_id qcom_glink_ssr_match[] = {
> diff --git a/include/linux/rpmsg/qcom_glink.h b/include/linux/rpmsg/qcom_glink.h
> index 96e26d94719f..09daa0acde2c 100644
> --- a/include/linux/rpmsg/qcom_glink.h
> +++ b/include/linux/rpmsg/qcom_glink.h
> @@ -26,4 +26,10 @@ static inline void qcom_glink_smem_unregister(struct qcom_glink *glink) {}
>  
>  #endif
>  
> +#if IS_ENABLED(CONFIG_RPMSG_QCOM_GLINK_SSR)
> +void qcom_glink_ssr_notify(const char *ssr_name);
> +#else
> +static inline void qcom_glink_ssr_notify(const char *ssr_name) {}
> +#endif
> +
>  #endif
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
