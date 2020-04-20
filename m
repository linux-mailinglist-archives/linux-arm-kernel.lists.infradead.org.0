Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC231B022B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 09:05:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eYTRDLZZPtw5vsTuzwLteuB/W+1EW9qrot50PJ33TRU=; b=aeX0g/rXQ/UHhE
	4XXHzcli+hrk9PbLB8UU23QzJ+VKHi1toWttKVDgOc1M9LYsa/vixr/LoHaXRrA+amWswMfD7Armm
	+Mi24icY/jAvo+tpKhcfx77/mreDZwOggT9b2K2AzyKgWcqCMUwHjtATv+EDLvNsQmUIryutyaGjn
	8vxbz9QqZ1GMC54ibRxx3k5xU/E8Ksu8JgYiTtH9xPPwTwPzKxFgfDM1fbzldQWWov4KBWPGAJ8MT
	PAzPrteRMZIK6XNymmuR7aZOn8n/BLgpIdnW9keh8k1w5NXGhQ9fj1Kk1u41cErIbUrfrlGPufhV5
	UEIlflha8rO0Ruk7Slyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQQUA-0006pV-4S; Mon, 20 Apr 2020 07:04:54 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQQU2-0006nn-49
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 07:04:48 +0000
Received: by mail-pf1-x441.google.com with SMTP id u9so4499408pfm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 00:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=s11JGkMo64bkJfoSlJ3gamPmjiZWAtO5TwTvV1WpWbE=;
 b=qPMKe74Axz3iuvAgEm5PUFr0JEzorHbSLpp+t8fsBt4zWIqblwuGPlrPdfbH6ynq+v
 k6BnEAr7JShE83PlTATp+w5cvsu+xYZ/tiNArEksPm3hswP5df/tqzSxdiOv84S4QsHb
 f9ytGiOWi2JvmqB9UnEjQJpi122Ewhr+DANygi5JPA2tmijZEM6/c8sIFmxgU4zO4inX
 1rnYKlj3GulChVuLX1GF9DOpMB2e3GJ+/LNoGikipve+CdFGffqdFwVlnlR+t2QnaY7B
 pT01gl9peG3qmgQkMCHHq0Lpa9csFASI87dKS8dfaYkXbX/+RJzg45FBbCGqpYIEm5TU
 3gaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=s11JGkMo64bkJfoSlJ3gamPmjiZWAtO5TwTvV1WpWbE=;
 b=KvulQ2CIIH/ciAKsQ1pk4+y6szeYLobfa8N2RFLHCKML+i2Rsn2QX6aj38ex+UO6mv
 UxNZPXQyNFE7/b03hQeEro1HlbiZWU6JvDSrLdFW0V6KGP8zN2D2avXxtYFzULyolBUI
 cCBYfeiUKcwnh+HSS/ZI+RckdBBi/+X5HBRJZVnSUGxgzmSjmLcK3NwPycxZSoOmBVus
 6yFtx3lX2EkCss6Hyl865QvgCmvHMGPlmrcoHQKjeDf07CwKcnmfzQzq/LzZsSCFu+Oo
 9q6fFek6L0nJ/GskwQM1FQd79iYOsw6fR1d39dNW6IKMEWVWghgCI+jR037XBfVR7PMH
 E2FA==
X-Gm-Message-State: AGi0PubYAlD4eUc4Uo7fXWwemH8bnc4qYTDe4QXU99wQRrADkY8z1ses
 Yfb6W0bpEUgb6dWDQL/JD6fLOQ==
X-Google-Smtp-Source: APiQypKMKQQMJ6nKIy3wz/SKsVsP3OHHyydE/bozdcBab+k1rAjW8UgKZf3BSB7G8kadD+FVNopaMQ==
X-Received: by 2002:a05:6a00:2cb:: with SMTP id
 b11mr15087011pft.42.1587366285066; 
 Mon, 20 Apr 2020 00:04:45 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id a22sm159630pfg.169.2020.04.20.00.04.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 00:04:44 -0700 (PDT)
Date: Mon, 20 Apr 2020 00:05:07 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Siddharth Gupta <sidgup@codeaurora.org>
Subject: Re: [PATCH v2 1/6] remoteproc: sysmon: Add ability to send type of
 notification
Message-ID: <20200420070507.GD1868936@builder.lan>
References: <1586389003-26675-1-git-send-email-sidgup@codeaurora.org>
 <1586389003-26675-2-git-send-email-sidgup@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586389003-26675-2-git-send-email-sidgup@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_000446_199709_ED9FC34E 
X-CRM114-Status: GOOD (  19.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 agross@kernel.org, rishabhb@codeaurora.org, psodagud@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 08 Apr 16:36 PDT 2020, Siddharth Gupta wrote:

> Current implementation of the sysmon driver does not support adding
> notifications for other remoteproc events - prepare, start, unprepare.
> Clients on the remoteproc side might be interested in knowing when a
> remoteproc boots up. This change adds the ability to send the notification
> type along with the name. For example, audio DSP is interested in knowing
> when modem has crashed so that it can perform cleanup and wait for modem to
> boot up before it starts processing data again.
> 
> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

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
