Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB78A1AAF49
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 19:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AA0RhoxgA/Jml5SnMTV7XRHGEAcZPA7P6mpPd1f3eAA=; b=FqqcDXm+LdUPUy
	jS36mmdy7NFw1GeipTFt5p6VxXCELOrr+04DICc8MUylQ2RMEG0DD4FQCc6KTmULP+l+znfTqSbXI
	l34QSHDzpG8psCpZtx+ofUxrhBN6QUjD8Unc1AyxtS7iXhLDn0EWagkVN9vw5y/R8U57IFNBG4oyz
	+IPADwdLIYvywug9vXeC9QuKNO+xwQOeWJb56EeR33HtnC/EnMls8eKwbmAxRdSFZcxbvCaaWroti
	7uJPv0pvix3C11cOL94j86kvnlRQHNENI3x04A5B/BsxkxAacnry6cVU87fApDETH61Q29Cp3+AmL
	TFCCxZcwe7uU/tmIXHuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOleM-0000jz-Bu; Wed, 15 Apr 2020 17:16:34 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOleC-0000jC-Bj
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 17:16:26 +0000
Received: by mail-pg1-x541.google.com with SMTP id 2so199563pgp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 10:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Izg8ue8YhxY7H2kruJlEEdGPr0daRyfDG5yf987D9nU=;
 b=vTyEIRCFkbm/7cTNcpVWop+cR+0/QClCSDkUDVPtYAu7XEXkE2QPRNxHxymFQZR2Nj
 EKtN6f2MwtzpKVWkII8qfFECUdlvef4AtBgQbIx+cw1AFwa0hxhBN/Ckhipus8m1r0y0
 PaDtt5Ep1oV8ZTtV9liF/XKuf+IuBz9xw/1OaShQJUJgYNcgZmpkRQ9z3MfzdKp8pUFA
 CzIul5KZNqOShlWKg7nCWkAaK0nzehFlLHH4ZJ2j+3kjaeBKqiOryjcuyOIPTR5WuaAH
 +G1FYIft7HFjwx1EHCPl+YG7c+MqiVSo6sIKmtckJSVtzNh/8LRxxcj9nLSpNQIjWBfs
 PLgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Izg8ue8YhxY7H2kruJlEEdGPr0daRyfDG5yf987D9nU=;
 b=eo8vcgt7MBE1shIuFyHQZLQmN3U9968UeRSoS5GDqOKPLbzQeIgXnq6cu+Fo+aVd8I
 ohFXJF2awT5R70tQC9LjEUsjGBqxj3OUNZQAu8UsYAp+Hs0vT7HPzHrIQDAnhnL8dwwd
 sENHiFKSBYjbBArs5FAk3jpmYIawyyo/SQR8AjOuFFhM7q7AXVIxf72RVRKTp9ijfzwc
 AujxXJEBYimMQxNDoUHvB9J3pNtA0FlqM/IgTYaTxYzBC7xEMtm/Njl4D7QM7fNftB5d
 9I/m9LjgRopvrVIupvKwMZWhqL4tKUpUXjrz5cKmlPKbSZKQXZO7rr4rj3eEaA2tQB82
 V3TA==
X-Gm-Message-State: AGi0PuYpKtXqOmd03vjjUv2fUqu+I25bS2XAyVgXz8bfZl+GcdnR6gim
 IEaeA4axfDcQDupJSj8Rk4MG+Q==
X-Google-Smtp-Source: APiQypIp+tAuF/KpVGiXjJ/mXx6QMkfcSDg3akdI4diIPizZMvKY5qs0xrcxJMuI9kMP22k4IMHCKA==
X-Received: by 2002:a63:2057:: with SMTP id r23mr28157163pgm.232.1586970983425; 
 Wed, 15 Apr 2020 10:16:23 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id x27sm14559225pfj.74.2020.04.15.10.16.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 10:16:22 -0700 (PDT)
Date: Wed, 15 Apr 2020 11:16:20 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Siddharth Gupta <sidgup@codeaurora.org>
Subject: Re: [PATCH v2 3/6] remoteproc: sysmon: Inform current rproc about
 all active rprocs
Message-ID: <20200415171620.GC16583@xps15>
References: <1586389003-26675-1-git-send-email-sidgup@codeaurora.org>
 <1586389003-26675-4-git-send-email-sidgup@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586389003-26675-4-git-send-email-sidgup@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_101624_918446_F8F1D04F 
X-CRM114-Status: GOOD (  20.05  )
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

On Wed, Apr 08, 2020 at 04:36:40PM -0700, Siddharth Gupta wrote:
> Clients/services running on a remoteproc that booted up might need to be
> aware of the state of already running remoteprocs. When a remoteproc boots
> up (fresh or after recovery) it is not aware of the remoteprocs that booted
> before it, i.e., the system state is incomplete. So to keep track of it we
> send sysmon on behalf of all 'ONLINE' remoteprocs.
> 
> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
> ---
>  drivers/remoteproc/qcom_sysmon.c | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/drivers/remoteproc/qcom_sysmon.c b/drivers/remoteproc/qcom_sysmon.c
> index 851664e..8d8996d 100644
> --- a/drivers/remoteproc/qcom_sysmon.c
> +++ b/drivers/remoteproc/qcom_sysmon.c
> @@ -453,10 +453,20 @@ static int sysmon_prepare(struct rproc_subdev *subdev)
>  	return 0;
>  }
>  
> +/**
> + * sysmon_start() - start callback for the sysmon remoteproc subdevice
> + * @subdev:	instance of the sysmon subdevice
> + *
> + * Inform all the listners of sysmon notifications that the rproc associated
> + * to @subdev has booted up. The rproc that booted up also needs to know
> + * which rprocs are already up and running, so send start notifications
> + * on behalf of all the online rprocs.
> + */
>  static int sysmon_start(struct rproc_subdev *subdev)
>  {
>  	struct qcom_sysmon *sysmon = container_of(subdev, struct qcom_sysmon,
>  						  subdev);
> +	struct qcom_sysmon *target;
>  	struct sysmon_event event = {
>  		.subsys_name = sysmon->name,
>  		.ssr_event = SSCTL_SSR_EVENT_AFTER_POWERUP
> @@ -464,6 +474,21 @@ static int sysmon_start(struct rproc_subdev *subdev)
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
> +
> +		if (sysmon->ssctl_version == 2)
> +			ssctl_send_event(sysmon, &event);
> +		else if (sysmon->ept)
> +			sysmon_send_event(sysmon, &event);
> +	}
> +	mutex_unlock(&sysmon_lock);
> +

Acked-by: Mathieu Poirier <mathieu.poirier@linaro.org>

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
