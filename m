Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5F61727EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 19:47:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CfAJ7xqeMWSl1Db27Qn81jUW9oZBFdSEkC49u4KGZNc=; b=mOP2sA0q9EWcXZ
	OfML8f9fgWemKUCACuEH5OMtVpFrIp4siP+QzacAG4qAoAYcqmmIWEdEREJgotXLprnOkYDdbNTos
	ueiMnrVinGTE0ZabhvGFq+Ea354tfnF3Bi8BygRh5XK4QMgKu2C6ljqHBroxFdsBQMXBktyNjJED5
	88H6fiCLqC/ZUmnfMzzSLzkRwb1qgBNpPSA5tKSEvkXcrwIaPcKCs6i9LHjSAntuItJ03Uu9wQrLJ
	LpJm9teWrMe4SZxeWacpjcEKdNsPpiBYTWq+8CtlhqdkThsNoAsWsX8LmwZ+qVL+aEqQvUfzikxTD
	e4MvRddsxStwrVpZwIIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7OBp-0004v5-Gy; Thu, 27 Feb 2020 18:47:17 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7OBi-0004uV-2S
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 18:47:11 +0000
Received: by mail-pl1-x644.google.com with SMTP id t14so147487plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 10:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lcrpnq/b6/hpdUjJ7BPbI1dg5z0iJwDYFP4cImRT74Q=;
 b=EBgRVvpATZd+QdllWh7NgaqS+BEpB4r+tKv0NcGj8T6IejQ3JSGblsVlM3JqSpvkUp
 KFswIxe3vj9uVxeHURFe7KHbkZfbgW5bpPj2+sz2YA5/jW2xsej+si7DyS+cHQnuFKpo
 Grytv0YQSoYqUtgbsgqWNtco4yYJYJU/3/kItHoEyRlzenpJIgYyjHD9vjzxocZOgYPn
 TGXazEmGe9xX8g35FKQZAe9OTufWqwCCCUsQdMEqjbOJR993VDCAfV4BipMoCXNtpAEn
 8ob3I4Isj6uIVUuuo1HrvNHQT8xlcmUKu/UapSmtGiuvC/+nGD4eGDbki6Jg2Lrk4yAQ
 xqEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lcrpnq/b6/hpdUjJ7BPbI1dg5z0iJwDYFP4cImRT74Q=;
 b=U3N59eUxldtLn8b77TDU4eL1/ZGyhvQZ9P+2TN7O8a3/Rhz+19DRFhEj2l24yVx2KX
 i0pQnViWweE5tOBcAwMGJyXMowxDo9Kfhe0p8aUvl7XfJgG0IjbQsPdKdKT53zrKkZ/g
 Oig7pw4JmAheerFVwPG5q6GG0GVDQOsv7wxWmgFmS436I2YNPUWUQuvgUhXgrsBe14Ta
 ZEX7U+H0qu9aLM4VcUCZzFeFC/Gjblja2JsPl3BZrcchU7lGvQaDKlTLjeznUl/yIJq6
 yLFYxJt/ljsS7o/cLDWyzAVSk5UOf3y2+8xGotqUuf3tHoBAXI27COChLT2bREj9miJr
 TLkw==
X-Gm-Message-State: APjAAAVjVRWOX/MfxoP98XyCTTvNcK5bBylzJTu32QGNTpxlF4Qw1b+G
 QIphX9/kZ35XB4RvMKiSGPao0A==
X-Google-Smtp-Source: APXvYqyyvmpMV6UxoiAw6oNqpaKxbRnOQVGywr7htIuimBaTBFfOvraztV8a2ntnrTPplYWpShvBMw==
X-Received: by 2002:a17:90a:b386:: with SMTP id
 e6mr354511pjr.106.1582829229170; 
 Thu, 27 Feb 2020 10:47:09 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id e2sm3343567pfh.151.2020.02.27.10.47.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:47:08 -0800 (PST)
Date: Thu, 27 Feb 2020 11:47:06 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Siddharth Gupta <sidgup@codeaurora.org>
Subject: Re: [PATCH 3/6] remoteproc: sysmon: Inform current rproc about all
 active rprocs
Message-ID: <20200227184706.GA20116@xps15>
References: <1582167465-2549-1-git-send-email-sidgup@codeaurora.org>
 <1582167465-2549-4-git-send-email-sidgup@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582167465-2549-4-git-send-email-sidgup@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_104710_173553_BB3F9888 
X-CRM114-Status: GOOD (  18.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
 bjorn.andersson@linaro.org, agross@kernel.org, rishabhb@codeaurora.org,
 psodagud@codeaurora.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 06:57:42PM -0800, Siddharth Gupta wrote:
> A remoteproc that has just recovered from a crash will not be aware of the
> state of other remoteprocs. Send sysmon notifications on behalf of all the
> active/online remoteprocs to the one that just booted up.
> 
> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
> ---
>  drivers/remoteproc/qcom_sysmon.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/remoteproc/qcom_sysmon.c b/drivers/remoteproc/qcom_sysmon.c
> index 851664e..d0d59d5 100644
> --- a/drivers/remoteproc/qcom_sysmon.c
> +++ b/drivers/remoteproc/qcom_sysmon.c
> @@ -457,6 +457,7 @@ static int sysmon_start(struct rproc_subdev *subdev)
>  {
>  	struct qcom_sysmon *sysmon = container_of(subdev, struct qcom_sysmon,
>  						  subdev);
> +	struct qcom_sysmon *target;
>  	struct sysmon_event event = {
>  		.subsys_name = sysmon->name,
>  		.ssr_event = SSCTL_SSR_EVENT_AFTER_POWERUP
> @@ -464,6 +465,17 @@ static int sysmon_start(struct rproc_subdev *subdev)
>  
>  	blocking_notifier_call_chain(&sysmon_notifiers, 0, (void *)&event);
>  
> +	mutex_lock(&sysmon_lock);
> +	list_for_each_entry(target, &sysmon_list, node) {
> +		if (target == sysmon ||
> +		    target->rproc->state != RPROC_RUNNING)
> +			continue;
> +
> +		event.subsys_name = target->name;
> +		ssctl_send_event(sysmon, &event);
> +	}
> +	mutex_unlock(&sysmon_lock);
> +

The changelog is specific about crash recovery but to me this code will run
every time an MCU is switched on.  If I understand correctly, in a crash
recovery situation or simply an MCU coming on line, you want to make sure the
subdevices associated to the booting (or recovering) MCU knows about subdevices
that were registered with the sysmon_notifiers before it.

If that is the case, the changelog needs to be modified and a good chunk of
comments need to be added to this patch.

Lastly, shouldn't there be a provision for sysmon->ssctl_version == 2?

Thanks,
Mathieu 

>  	return 0;
>  }
>  
> -- 
> Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
