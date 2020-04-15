Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BB31AAF09
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 19:04:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cU9KvLBC5UVTlc+8AFE62FNaHQbgpoe0J5dtTxSzCBo=; b=uL53cmWesELDJV
	FlhAE2OKHvmT3mLU3rD9lpj5YcXwG/17fwEboeA1ySO5nkxDnQl0PabNFWcWwQ7I4/gSzmFqT/qnY
	3YRVtP7caqOhe6VtFGJjmGEFeIMs2aeU5LK66pJGsEyNjDiQ8gOIGnyYos+mwRDxxO1uJmifba3sj
	bmqGhQ9EjVIzdgBn4mD+Jgku447+Z4rXGp8klxdk99J/Y4ywe9ruuuIQleO/AtQH1xBRZquZ8Htve
	/F+pBVWxZqqt/kCFn61hbucLaONtXu5Rf0j/r7uT73DWIAplLA52hnjrHnG+7Yh8jm4icSNZto6cV
	O6i6OaVrOfC1yCUb9dZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOlSJ-0006X2-As; Wed, 15 Apr 2020 17:04:07 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOlS7-0006WP-1m
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 17:03:56 +0000
Received: by mail-pg1-x542.google.com with SMTP id x26so183768pgc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 10:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TXmBTmjlGDdkYJ5YaS9MFQANC5ZQIcUdQZgB+/qVJcg=;
 b=FaDHsxJ/Bsq5/mrz/KAm6LRhZzJ4oycH4qGHGQN9l033vBRXCFWhhDAHZx0+xkwcn6
 3d9mqYrLsMXHMiqUyBOvrSZgysqBewL5VEDFgtVWtZ5r5R4iKx0idNL1JXlvFWZkTJG1
 z4/YrF5Wga+eRnhDgvfXrFjJEwsFIlqlBzlRcSojTuj2fo9hu1Gco/ImeqCdmYAyEG7h
 ladEsxtLlmQSyVLOdLCdz9Y6RtEjYQKZnB+Ofr1ZjLsx6jSBvrP7LBYE5Itxoaazm7tz
 FI4TPa2wRScdEcGxXCnlV1c5PskOclAIjNWYYB/RjLot4De6rh4OvuWVsPpy2MGobT+R
 vnAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TXmBTmjlGDdkYJ5YaS9MFQANC5ZQIcUdQZgB+/qVJcg=;
 b=URftpvXGdwG969cWDQwKls/g/fdJW4NPbfakiXu5HS3A9yZkrYe/F1oslSdVRmLT1U
 mjMC9ILVcZId1F6t0huAgsIG2ihswawsFm/Q1TJqTneFENXiaF1KXma7W//7AUI5hOd5
 hC+ib+5nb2USP3CV/rJtgduXfrjnsP0o9Fz3UrLF9ZRr9oQ+TCKoCm54qh6AX68wERIv
 eL4ju9Ir52L4+NM3MIozm1+19q8RnWhD6apA/5dJ9qwl6IabqCbelWxdIXaiGjfayqdV
 H+Kmb004NZorY3CNxoqhkSClkV+3ulkWGhYc9a2wp6TRqlzgEtyk9p0+5dvD5vL1AJ9l
 xTWA==
X-Gm-Message-State: AGi0PuZqdHA8pjxZlvG9dZKDqsaw1DtrDYInt3HxmygjruRgPcmM1/0Z
 X7lJllFx4IaWRJ8BINO5598ToQ==
X-Google-Smtp-Source: APiQypKxA2s9Ixhh/x4lzTu9wFMre6vgaWEw6jKo5l4u/n/V4C6g53A2/FTS+wGYaVfEJGJ7TqgWsQ==
X-Received: by 2002:a62:2506:: with SMTP id l6mr24888469pfl.184.1586970234265; 
 Wed, 15 Apr 2020 10:03:54 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id i124sm14308027pfg.14.2020.04.15.10.03.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 10:03:53 -0700 (PDT)
Date: Wed, 15 Apr 2020 11:03:51 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Siddharth Gupta <sidgup@codeaurora.org>
Subject: Re: [PATCH v2 2/6] remoteproc: sysmon: Add notifications for events
Message-ID: <20200415170351.GB16583@xps15>
References: <1586389003-26675-1-git-send-email-sidgup@codeaurora.org>
 <1586389003-26675-3-git-send-email-sidgup@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586389003-26675-3-git-send-email-sidgup@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_100355_088156_A990F564 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

On Wed, Apr 08, 2020 at 04:36:39PM -0700, Siddharth Gupta wrote:
> Add notification for other stages of remoteproc boot and shutdown. This
> includes adding callback functions for the prepare and unprepare events,
> and fleshing out the callback function for start.
> 
> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>

Acked-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> ---
>  drivers/remoteproc/qcom_sysmon.c | 37 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 
> diff --git a/drivers/remoteproc/qcom_sysmon.c b/drivers/remoteproc/qcom_sysmon.c
> index 1366050..851664e 100644
> --- a/drivers/remoteproc/qcom_sysmon.c
> +++ b/drivers/remoteproc/qcom_sysmon.c
> @@ -439,8 +439,31 @@ static const struct qmi_ops ssctl_ops = {
>  	.del_server = ssctl_del_server,
>  };
>  
> +static int sysmon_prepare(struct rproc_subdev *subdev)
> +{
> +	struct qcom_sysmon *sysmon = container_of(subdev, struct qcom_sysmon,
> +						  subdev);
> +	struct sysmon_event event = {
> +		.subsys_name = sysmon->name,
> +		.ssr_event = SSCTL_SSR_EVENT_BEFORE_POWERUP
> +	};
> +
> +	blocking_notifier_call_chain(&sysmon_notifiers, 0, (void *)&event);
> +
> +	return 0;
> +}
> +
>  static int sysmon_start(struct rproc_subdev *subdev)
>  {
> +	struct qcom_sysmon *sysmon = container_of(subdev, struct qcom_sysmon,
> +						  subdev);
> +	struct sysmon_event event = {
> +		.subsys_name = sysmon->name,
> +		.ssr_event = SSCTL_SSR_EVENT_AFTER_POWERUP
> +	};
> +
> +	blocking_notifier_call_chain(&sysmon_notifiers, 0, (void *)&event);
> +
>  	return 0;
>  }
>  
> @@ -464,6 +487,18 @@ static void sysmon_stop(struct rproc_subdev *subdev, bool crashed)
>  		sysmon_request_shutdown(sysmon);
>  }
>  
> +static void sysmon_unprepare(struct rproc_subdev *subdev)
> +{
> +	struct qcom_sysmon *sysmon = container_of(subdev, struct qcom_sysmon,
> +						  subdev);
> +	struct sysmon_event event = {
> +		.subsys_name = sysmon->name,
> +		.ssr_event = SSCTL_SSR_EVENT_AFTER_SHUTDOWN
> +	};
> +
> +	blocking_notifier_call_chain(&sysmon_notifiers, 0, (void *)&event);
> +}
> +
>  /**
>   * sysmon_notify() - notify sysmon target of another's SSR
>   * @nb:		notifier_block associated with sysmon instance
> @@ -563,8 +598,10 @@ struct qcom_sysmon *qcom_add_sysmon_subdev(struct rproc *rproc,
>  
>  	qmi_add_lookup(&sysmon->qmi, 43, 0, 0);
>  
> +	sysmon->subdev.prepare = sysmon_prepare;
>  	sysmon->subdev.start = sysmon_start;
>  	sysmon->subdev.stop = sysmon_stop;
> +	sysmon->subdev.unprepare = sysmon_unprepare;
>  
>  	rproc_add_subdev(rproc, &sysmon->subdev);
>  
> -- 
> Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
