Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE5D172AA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 23:00:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6wjiibfwfYdDQPq/HZKsebEVfySvyrvW4SvZ4/JXShw=; b=uK2IX+OQ6x9zQH
	0p5CSBlVlqZM5WXVKk+rQkm4ZGOLq+2weK1eEyFsPUzmGroYa8LM5zFKjuMTOAuL4hU1DFhfJjsyw
	qzVL7IwjMr8X2NTZSGWXJ60IJuD1F3sluaPwtEMBI6wmko8aoPXshNBdV0QgsrZj0mmfVzbfBt1n2
	Y6O9IylNOB0MzUFjaAp36vwBLnEDw0YikYVi7tO3OMC1m3TZBMoF2zX/Qs2VhObUdniTY9/4Pstqq
	+jea+HsgaTJ4XMVJsdosefskaH4O1YI7hros8IULm/nAWMHOHevuZE3hgxFhgwM+zI0ueAbDVOosq
	jJvtGvqqtG9D6dKkB9/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7RCG-0007Tu-7J; Thu, 27 Feb 2020 21:59:56 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7RC7-0007T8-8Z
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 21:59:50 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ep11so367377pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 13:59:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fTXwSB4VEwuhKImP00VDYWj8Af4ja5hCUGthoXkzd7w=;
 b=da4qGju1+eZ2u8i58+SFACyeBx7k8na1SwRT59gr6pARxKA7OBl7JlfyCR7xI1I3Kf
 /V/VJ1QOH11rKWuOKFg6KOIQSn+Jf7ZnhVidCNFdPdLe5622MrW8OtaZUl+w8nDRJzjC
 iU0mCfwyleneSgcMGPjzjbS919tBWgh52msMkbxy2L20TrjcgDaEEE4U+t6Xx4ARA6EY
 Pd7KbZc4mLkKkKvANfjruzXD6s8EcFm28mA+EXMt6QkUik1OE0lYSQ+hOAKbF+NE85Tg
 D0yvxM69y5mK8RJgJVo1EUow5kIadB0W6kCJP3apUHPOEgrj7i7YFk3BPvb13ic6uso0
 TA/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fTXwSB4VEwuhKImP00VDYWj8Af4ja5hCUGthoXkzd7w=;
 b=uURMlT1Pdqgab5zBWHM74WENZmExLfJTVvsFJf8f/e9hNpSNW67poNftEDrhFQBaR2
 RCqRtYQf7gaRy3HI//Qp6mUEi0N5O9hhxA1bTX+mkwAQcYR4hpArUUAKN+jURmJY1ugy
 ewDIc5Mnp2TrjFM4F0ejKyD5Ipt3oqcHxur3gtykDYV3mFwHJ0SMFBxVoupIl/ZTWutR
 EaCgX29rTg6vMI0BNxboAVHqw9L1yvYL6Z6sdxqNBT82S4DLSE24VxW3b2ueRFZ4N9YS
 30QA9XZP1kgdezLMcS8VSO6pzL0sMs6ZthXdsL/VjTEgzfYbspGjUdQcWiqF3hnF77hD
 RJFQ==
X-Gm-Message-State: APjAAAWFO5iPnTguPfm6y0e9e74nXEhTBEerZ/7SzxESUfSdgfllN7VB
 rgwQBAkI5mCD9Dwai1VRM7ylxZbQEt4=
X-Google-Smtp-Source: APXvYqyJbAO6h6eSnb87jvQLhMjQwDPCpkhG8rjKyddMg705cLOaRbLZ4Ipmh0A78bB2EbWpjwj77A==
X-Received: by 2002:a17:902:c113:: with SMTP id
 19mr899784pli.138.1582840783021; 
 Thu, 27 Feb 2020 13:59:43 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id p21sm8081275pfn.103.2020.02.27.13.59.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 13:59:42 -0800 (PST)
Date: Thu, 27 Feb 2020 14:59:40 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Siddharth Gupta <sidgup@codeaurora.org>
Subject: Re: [PATCH 6/6] remoteproc: qcom: Add notification types to SSR
Message-ID: <20200227215940.GC20116@xps15>
References: <1582167465-2549-1-git-send-email-sidgup@codeaurora.org>
 <1582167465-2549-7-git-send-email-sidgup@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582167465-2549-7-git-send-email-sidgup@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_135947_337662_7000C304 
X-CRM114-Status: GOOD (  23.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 bjorn.andersson@linaro.org, agross@kernel.org, rishabhb@codeaurora.org,
 psodagud@codeaurora.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 06:57:45PM -0800, Siddharth Gupta wrote:
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
> index 6714f27..6f04a5b 100644
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

Now that I have a better understanding of what this patchset is doing, I realise
my comments in patch 04 won't work.  To differentiate the subdevs of an rproc I
suggest to wrap them in a generic structure with a type and an enum.  That way
you can differenciate between subdevices without having to add to the core.

That being said, I don't understand what patches 5 and 6 are doing...
Registering with the global ssr_notifiers allowed to gracefully shutdown all the
MCUs in the system when one of them would go down.  But now that we are using
the notifier on a per MCU, I really don't see why each subdev couldn't implement
the right prepare/start/stop functions.

Am I missing something here?
 

>  	ssr->subdev.unprepare = ssr_notify_unprepare;
>  	ssr->rproc_notif_list = kzalloc(sizeof(struct srcu_notifier_head),
>  								GFP_KERNEL);
> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> index e2f60cc..4be4478 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -449,6 +449,21 @@ struct rproc_dump_segment {
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
> +};
> +
> +/**
>   * struct rproc - represents a physical remote processor device
>   * @node: list node of this rproc object
>   * @domain: iommu domain
> -- 
> Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
