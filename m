Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F461AAF08
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 19:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D/9Q2s6BTfqiKOkadp01ydJ3RAB2ZP8c9NfpOcLhJuo=; b=EGOg1KW52v56e4
	BO++VGPFaUYR+fcTb6qw5iCVzYZAC+BpgUIemMAIfe3ulgp3UBe0g9dvBarMWmRwHImGYM2DwrKTW
	B66JlDfILVCzBBjR+9xxOidjYl8Mv03QBAQE+rYfK6sbgA7h2/ihrlWlJWAMUKqRGW18ZV7JcrdXQ
	NeE8yXDYAMMLZ6CplXUrZoXP92XuFvZk8V3MZhCTEFbsaSGNeCALhaAMz2JZTrW9jOmGTtSYM17TB
	P2BRuTdVVuKv20BNYw5whN0wykn6wlkfvtx9KNHsS1Cyalfo7rfPoCrHHasvdZKPhGU89xYdlX1gU
	Itm9+7irMJrFN7Y+0ZMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOlRo-0006Gb-AM; Wed, 15 Apr 2020 17:03:36 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOlRe-0006Fy-7I
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 17:03:28 +0000
Received: by mail-pj1-x1043.google.com with SMTP id z9so109057pjd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 10:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=m6PMuu9ZsS6NKtR16/PWLHb99bJA87GDVdw4d6eRXPY=;
 b=HKSPf7lmr8NSMJcjHmO2pqRhkkrTmImEL+4X6XIQY9QRmUGA4hW7Uj/9dFs1YXDSRx
 /fTKYfb4c0oYumCypTp/AaQ0EFPXmlklNCsS9sVb/LqMpR4gp/NANGZPNjJH9vpDtz2A
 kGVCelbrykLtVDiIiqDex1PHfJdb6csVsNihDZaHM5VG+iTXvqigzbL76SNwXn5Xt3/S
 6nn0eMyqkjcaMt8savZffyVNFojppS5Yism8i+BUgUuE79L/eTgpg7GEp9gP1tUAlzG6
 c2KqKv9n3/ZgNy4cR2unLhvObX92gb3Yn6yAY/7P89r6vqsIbljynj1vGXGK13rApEmC
 5rMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=m6PMuu9ZsS6NKtR16/PWLHb99bJA87GDVdw4d6eRXPY=;
 b=TuN47GJ09p6Hoc/I2T+P6eeJdaJn2YwmTiOWz4LtKlMzquZOjzSj7eFcIwYI42k0LX
 e3fDA82hnVAEmZ3D/Jmz1ZEnLfOSYD9yHx3W/TA9q8/fh9JxmGvtwYxQX5UqH+8584TF
 EA8hTvNNQGnMd0YVCTnJTBMUJl+RqlxcMYrO+uTMoDftqRp/Dstc6RBrvYuFK5sVAb8e
 QUtfQy9JKS1fYnEuhltf2Lbd/23g0/5s2MkbQBeHqwXAdcrK/84gwsWFgLrzGQvx36Y1
 mjSdNpQrg+Jiz8YfJKzlCQhm/pWJE0M8RVZgVEPXBdPYEeZ+qTf09d96pn48WLYUaT4c
 Pvxg==
X-Gm-Message-State: AGi0PuZmPh4wnYOs1cwbhNiIMyhK4dm0udMa3L+n5MJ1kfrsDnQo3kAa
 rV9IWJGB8PCDzjq6dWsdaW6jsg==
X-Google-Smtp-Source: APiQypKIPZpgwGTPRM9ugWolNcCNTo8HziySaG+E4u5LYl42bhxbKiI6ztSbVJR652BoBjf9UkJpFw==
X-Received: by 2002:a17:902:b60d:: with SMTP id
 b13mr6049074pls.324.1586970204964; 
 Wed, 15 Apr 2020 10:03:24 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id 17sm9258175pgg.76.2020.04.15.10.03.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 10:03:24 -0700 (PDT)
Date: Wed, 15 Apr 2020 11:03:22 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Siddharth Gupta <sidgup@codeaurora.org>
Subject: Re: [PATCH v2 1/6] remoteproc: sysmon: Add ability to send type of
 notification
Message-ID: <20200415170322.GA16583@xps15>
References: <1586389003-26675-1-git-send-email-sidgup@codeaurora.org>
 <1586389003-26675-2-git-send-email-sidgup@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586389003-26675-2-git-send-email-sidgup@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_100326_294743_1263488C 
X-CRM114-Status: GOOD (  20.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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

On Wed, Apr 08, 2020 at 04:36:38PM -0700, Siddharth Gupta wrote:
> Current implementation of the sysmon driver does not support adding
> notifications for other remoteproc events - prepare, start, unprepare.
> Clients on the remoteproc side might be interested in knowing when a
> remoteproc boots up. This change adds the ability to send the notification
> type along with the name. For example, audio DSP is interested in knowing
> when modem has crashed so that it can perform cleanup and wait for modem to
> boot up before it starts processing data again.
> 
> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>

Acked-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> ---
>  drivers/remoteproc/qcom_sysmon.c | 54 +++++++++++++++++++++++++++-------------
>  1 file changed, 37 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/remoteproc/qcom_sysmon.c b/drivers/remoteproc/qcom_sysmon.c
> index faf3822..1366050 100644
> --- a/drivers/remoteproc/qcom_sysmon.c
> +++ b/drivers/remoteproc/qcom_sysmon.c
> @@ -46,6 +46,25 @@ struct qcom_sysmon {
>  	struct sockaddr_qrtr ssctl;
>  };
>  
> +enum {
> +	SSCTL_SSR_EVENT_BEFORE_POWERUP,
> +	SSCTL_SSR_EVENT_AFTER_POWERUP,
> +	SSCTL_SSR_EVENT_BEFORE_SHUTDOWN,
> +	SSCTL_SSR_EVENT_AFTER_SHUTDOWN,
> +};
> +
> +static const char * const sysmon_state_string[] = {
> +	[SSCTL_SSR_EVENT_BEFORE_POWERUP]	= "before_powerup",
> +	[SSCTL_SSR_EVENT_AFTER_POWERUP]		= "after_powerup",
> +	[SSCTL_SSR_EVENT_BEFORE_SHUTDOWN]	= "before_shutdown",
> +	[SSCTL_SSR_EVENT_AFTER_SHUTDOWN]	= "after_shutdown",
> +};
> +
> +struct sysmon_event {
> +	const char *subsys_name;
> +	u32 ssr_event;
> +};
> +
>  static DEFINE_MUTEX(sysmon_lock);
>  static LIST_HEAD(sysmon_list);
>  
> @@ -54,13 +73,15 @@ static LIST_HEAD(sysmon_list);
>   * @sysmon:	sysmon context
>   * @name:	other remote's name
>   */
> -static void sysmon_send_event(struct qcom_sysmon *sysmon, const char *name)
> +static void sysmon_send_event(struct qcom_sysmon *sysmon,
> +			      const struct sysmon_event *event)
>  {
>  	char req[50];
>  	int len;
>  	int ret;
>  
> -	len = snprintf(req, sizeof(req), "ssr:%s:before_shutdown", name);
> +	len = snprintf(req, sizeof(req), "ssr:%s:%s", event->subsys_name,
> +		       sysmon_state_string[event->ssr_event]);
>  	if (len >= sizeof(req))
>  		return;
>  
> @@ -149,13 +170,6 @@ static int sysmon_callback(struct rpmsg_device *rpdev, void *data, int count,
>  #define SSCTL_SUBSYS_NAME_LENGTH	15
>  
>  enum {
> -	SSCTL_SSR_EVENT_BEFORE_POWERUP,
> -	SSCTL_SSR_EVENT_AFTER_POWERUP,
> -	SSCTL_SSR_EVENT_BEFORE_SHUTDOWN,
> -	SSCTL_SSR_EVENT_AFTER_SHUTDOWN,
> -};
> -
> -enum {
>  	SSCTL_SSR_EVENT_FORCED,
>  	SSCTL_SSR_EVENT_GRACEFUL,
>  };
> @@ -331,7 +345,8 @@ static void ssctl_request_shutdown(struct qcom_sysmon *sysmon)
>   * @sysmon:	sysmon context
>   * @name:	other remote's name
>   */
> -static void ssctl_send_event(struct qcom_sysmon *sysmon, const char *name)
> +static void ssctl_send_event(struct qcom_sysmon *sysmon,
> +			     const struct sysmon_event *event)
>  {
>  	struct ssctl_subsys_event_resp resp;
>  	struct ssctl_subsys_event_req req;
> @@ -346,9 +361,9 @@ static void ssctl_send_event(struct qcom_sysmon *sysmon, const char *name)
>  	}
>  
>  	memset(&req, 0, sizeof(req));
> -	strlcpy(req.subsys_name, name, sizeof(req.subsys_name));
> +	strlcpy(req.subsys_name, event->subsys_name, sizeof(req.subsys_name));
>  	req.subsys_name_len = strlen(req.subsys_name);
> -	req.event = SSCTL_SSR_EVENT_BEFORE_SHUTDOWN;
> +	req.event = event->ssr_event;
>  	req.evt_driven_valid = true;
>  	req.evt_driven = SSCTL_SSR_EVENT_FORCED;
>  
> @@ -432,8 +447,12 @@ static int sysmon_start(struct rproc_subdev *subdev)
>  static void sysmon_stop(struct rproc_subdev *subdev, bool crashed)
>  {
>  	struct qcom_sysmon *sysmon = container_of(subdev, struct qcom_sysmon, subdev);
> +	struct sysmon_event event = {
> +		.subsys_name = sysmon->name,
> +		.ssr_event = SSCTL_SSR_EVENT_BEFORE_SHUTDOWN
> +	};
>  
> -	blocking_notifier_call_chain(&sysmon_notifiers, 0, (void *)sysmon->name);
> +	blocking_notifier_call_chain(&sysmon_notifiers, 0, (void *)&event);
>  
>  	/* Don't request graceful shutdown if we've crashed */
>  	if (crashed)
> @@ -456,19 +475,20 @@ static int sysmon_notify(struct notifier_block *nb, unsigned long event,
>  {
>  	struct qcom_sysmon *sysmon = container_of(nb, struct qcom_sysmon, nb);
>  	struct rproc *rproc = sysmon->rproc;
> -	const char *ssr_name = data;
> +	struct sysmon_event *sysmon_event = data;
>  
>  	/* Skip non-running rprocs and the originating instance */
> -	if (rproc->state != RPROC_RUNNING || !strcmp(data, sysmon->name)) {
> +	if (rproc->state != RPROC_RUNNING ||
> +	    !strcmp(sysmon_event->subsys_name, sysmon->name)) {
>  		dev_dbg(sysmon->dev, "not notifying %s\n", sysmon->name);
>  		return NOTIFY_DONE;
>  	}
>  
>  	/* Only SSCTL version 2 supports SSR events */
>  	if (sysmon->ssctl_version == 2)
> -		ssctl_send_event(sysmon, ssr_name);
> +		ssctl_send_event(sysmon, sysmon_event);
>  	else if (sysmon->ept)
> -		sysmon_send_event(sysmon, ssr_name);
> +		sysmon_send_event(sysmon, sysmon_event);
>  
>  	return NOTIFY_DONE;
>  }
> -- 
> Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
