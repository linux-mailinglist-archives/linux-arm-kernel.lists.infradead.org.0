Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A64B11B0238
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 09:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t3he4VYuFFVEwk4cbcNs2JOmuvRsVHTPBzPA2oH7XI4=; b=D5dtlFpLiKndSA
	hacQ/QRlVc8J37I8p/u/eNEspXjGF9J/ExdA/pNATaJkbwbhYVOTUHq1WuqBA5QSOTpJkQq6bthJV
	gZnxZ+psyj1bL+J3y8Hy2+QZeATtd20eVMue19ZyIWgiloZIsHZvy4gx9zjc9BuBwNgRrm/4KJw0I
	OwkeiQigCFsbn9YqXmhv7TGsmEVbcqG3AnaVvHy0FA9y/tNC9mOZtsl2bsrwIy+QQXNqePT3ebdYW
	tBbyBuGxdggKg+5YancLK0Rnv0/CvLgEgE4MbMTekEa75SrqSShKE06pInFXhSdhTrxlqxZyFfZAq
	CMFrR2LQorRFX6rnAccg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQQV6-0001NB-Jc; Mon, 20 Apr 2020 07:05:52 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQQUn-0001K2-IG
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 07:05:35 +0000
Received: by mail-pf1-x443.google.com with SMTP id r20so4500830pfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 00:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yfnkSN5f2gaTrJl0GVeCylF5vdCJFRacL3iq4ImD+rk=;
 b=YhWj2yqjYltdCafwN1HzBemr26x7U2lwSkpvnlqo6IJo0NlbzNWOVa0N07A77EWWwn
 d2a91DgOA4DrtHAUYiC1clPD7zxtFe+huZYpKXsIUAJUUEanN3GbJHsHNOF5n5MBgrrL
 LmmvUp4PIBnrB8/LsF0QrAWKyybh3GTDovnmlNTpu1Yg6wQ7+djap5VrV+JIDH79s3+Z
 x6x1zTpH7AM0+tQzYgMdlPXBDXUWkONuEBwWbtR0+Qj9dCl2U3N3ZKKY4atYgK171p/6
 T/6SojVqvnGwmoLFMhQt0EOkBStbxFKcI/VhdzCyb8PgZq+NWX6oktX01NeKbyuOnqGd
 qT8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yfnkSN5f2gaTrJl0GVeCylF5vdCJFRacL3iq4ImD+rk=;
 b=I0hUgJINzRCdwOHxqWWm8fsnIIDhwXTIkOrt5LR1c5XtDlYvROEg4Wj4tbyTyZ9xiV
 8SSbqVSY2lWXK2UZlGi28JtP5S4EzTHry/ZqV2SsfvLkhsYfL46LIrq9GVEvDUceX33R
 FWI4mwSb/RvMV/YZBa9bXCcP+nyeLiAbCI70djZOVu7UI/Wd/nzeBAAL7o4xFc0q6fS2
 7ZhtA6TS+wqB+afLcCnzAm0yyXjkx7eMOp79vqRlL0r558wb/q3cn83u/M/zx12uVBp1
 DOKLz5S+wO0jH8D6g3MyC7HUdbEF4uUJR7v9aivq1kaGbtCIicajnmdhjd+D7yP4zCfG
 1hEw==
X-Gm-Message-State: AGi0Pubp2xtwiC5oo5GraPOubxwca/gMtfBz5dAyGSOnHA0q96di9eiN
 qeVa6t35xsi7CI9fsIeN6C4IHQ==
X-Google-Smtp-Source: APiQypJioGGBXK8I/SnwK36fUlp2u0SXdz6IJW4yGBOeCoG0BZb46I63vjDyn384qG3lg9DF8qRufg==
X-Received: by 2002:a63:4c2:: with SMTP id 185mr14296077pge.1.1587366332598;
 Mon, 20 Apr 2020 00:05:32 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id b5sm161749pfb.190.2020.04.20.00.05.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 00:05:31 -0700 (PDT)
Date: Mon, 20 Apr 2020 00:05:55 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Siddharth Gupta <sidgup@codeaurora.org>
Subject: Re: [PATCH v2 2/6] remoteproc: sysmon: Add notifications for events
Message-ID: <20200420070555.GE1868936@builder.lan>
References: <1586389003-26675-1-git-send-email-sidgup@codeaurora.org>
 <1586389003-26675-3-git-send-email-sidgup@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586389003-26675-3-git-send-email-sidgup@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_000533_602625_90D9C51C 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

> Add notification for other stages of remoteproc boot and shutdown. This
> includes adding callback functions for the prepare and unprepare events,
> and fleshing out the callback function for start.
> 
> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

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
