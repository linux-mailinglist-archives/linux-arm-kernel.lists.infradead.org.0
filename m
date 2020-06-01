Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BAA1EA4FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 15:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3gnf0AhyOX5xpsIeqFJmot84gC5PzsgHG1noDAdbljg=; b=jGiLuF5oso5aM6
	L9/M+bru8lGqJvX31EIflZh2/7P4ljSrd8COuxGAyMEd611idCWq2m6X1d4iu3VOmTmCQcoeFClf3
	OblKl+V6b+gRa4+14m5EbJ/PFQQXmZmR0CqFAc18sgr97CB5FtoEZICNbXhUK5sn8aB6yIHyZLmnf
	9rkjvLIVSoMrRpGd5SZ+mGDXacEthjcSUmnlzRqOKl47LA+JqL+mHHAjm4SHze0RY9zF3iXFT6hKy
	SIUeq6A7QqIvJrCm0EAgM6LS2JWNTxNh/GdwMWu99oxKX2XalUfRxSVy3PTrWQjISphB8exCKKxsB
	7wqxkEKPWToP+PTTc19A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfkTt-0007pa-SD; Mon, 01 Jun 2020 13:27:57 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfkTm-0007oe-C0
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 13:27:51 +0000
Received: by mail-ej1-x641.google.com with SMTP id a25so2005142ejg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 06:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8JJuCOOH8RdyowotzK9kI82M2Yj9yM7F/os1HkdyKYM=;
 b=Mky9fRdd7XLKQsd9lAv/YYGG/0o9TrtEeTojVwvK2dc5yWW2Tt+ptZTvz+0raNcp3M
 N34NJbhALxjTn1xcG9PeaznZExXVDJk2DJDRzS8IrmFpsPySRJuYPID1abcv4z8xiK/E
 bTy8cqD/U1IIgPIuf7UNrSebyBB0d/n4VWz/XJyXRmhQZaRKKuOWJKxAzrVK+XrdZTpv
 KIJQexh/L/HOnwvrlawKrL/Ed4VF6/tZSr76+RAd+B9/u47f21ZVSrr7DTXvxTitDuno
 HJeZ7isPxmCj3XmC29WEf67wXdWpczUeBQeZgviFjDg76RhEbW9hrMKZBg+S7fzV5jP3
 RWXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8JJuCOOH8RdyowotzK9kI82M2Yj9yM7F/os1HkdyKYM=;
 b=CX7oqqt3DZPNA4csEcOHRZfKxAPwfsxB5GVOeE5fHQ+Iq5tDJRCyVRIVGVbVU0YDtD
 x1VhCihZvj/aTkunBmaixY9xPBXMFzRBALZbM7Nk9w5dqHuitS5Exv082jzbfB+pMRu2
 YthocnDLJUmOzK7xJIxwXRQQ4ONrDZZvekOgx6uiYvgc9gF5D/Oj39NH32prBLZZXXkU
 usZkN0HS1PkfkJTqA1WYTdG52WpIUWJQoAkyOW6ADSkR+2H7dnbpxKMVkm3SL7+6Sk6p
 xqATmpoAmT2PCCX6nyRLU1yU20w7DC77q+cvKSuBShPZM2fiM323dzAnUC+CPjEe+M7X
 Wo1w==
X-Gm-Message-State: AOAM533gkj7KojWseAeCBvIEGwZSLqYWXoGLaF0SgKAvyNM+LlT90h2P
 BkH7rYg40gmR3aZwPMuAljlRa0kmYkM7E2BO9HTWsw==
X-Google-Smtp-Source: ABdhPJzYZICWrmW4FMgFWWqrndKLW4lZTBdMdQDXaf6oGPoMqEtnHDTYcLJCGbJRQSohmSn3AKpRofu5ADkRfevPb3I=
X-Received: by 2002:a17:907:9484:: with SMTP id
 dm4mr20655143ejc.56.1591018067462; 
 Mon, 01 Jun 2020 06:27:47 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <6e62147c36c76b9485d14960dced4f6acda17591.1590947174.git.saiprakash.ranjan@codeaurora.org>
In-Reply-To: <6e62147c36c76b9485d14960dced4f6acda17591.1590947174.git.saiprakash.ranjan@codeaurora.org>
From: Mike Leach <mike.leach@linaro.org>
Date: Mon, 1 Jun 2020 14:27:36 +0100
Message-ID: <CAJ9a7Vh=GPKdYcX3aiJfaAVQ3j8rEmoSvP0CDeF-mfPpV4DMaw@mail.gmail.com>
Subject: Re: [PATCH 1/2] coresight: tmc: Add enable flag to indicate the
 status of ETR/ETF
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_062750_440693_6825C2EF 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, 1 Jun 2020 at 09:02, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Add a flag to check whether TMC ETR/ETF is enabled or not.
> This is later used in shutdown callback to determine if
> we require to disable ETR/ETF.
>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  drivers/hwtracing/coresight/coresight-tmc.c | 2 ++
>  drivers/hwtracing/coresight/coresight-tmc.h | 2 ++
>  2 files changed, 4 insertions(+)
>
> diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
> index 39fba1d16e6e..5a271ebc4585 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc.c
> @@ -62,11 +62,13 @@ void tmc_flush_and_stop(struct tmc_drvdata *drvdata)
>
>  void tmc_enable_hw(struct tmc_drvdata *drvdata)
>  {
> +       drvdata->enable = true;
>         writel_relaxed(TMC_CTL_CAPT_EN, drvdata->base + TMC_CTL);
>  }
>
>  void tmc_disable_hw(struct tmc_drvdata *drvdata)
>  {
> +       drvdata->enable = false;
>         writel_relaxed(0x0, drvdata->base + TMC_CTL);
>  }
>
> diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
> index 71de978575f3..d156860495c7 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc.h
> +++ b/drivers/hwtracing/coresight/coresight-tmc.h
> @@ -184,6 +184,7 @@ struct etr_buf {
>   * @idr_mutex: Access serialisation for idr.
>   * @sysfs_buf: SYSFS buffer for ETR.
>   * @perf_buf:  PERF buffer for ETR.
> + * @enable:    Indicates whether ETR/ETF is enabled.
>   */
>  struct tmc_drvdata {
>         void __iomem            *base;
> @@ -207,6 +208,7 @@ struct tmc_drvdata {
>         struct mutex            idr_mutex;
>         struct etr_buf          *sysfs_buf;
>         struct etr_buf          *perf_buf;
> +       bool                    enable;

Is this flag needed?
For TMC, drvdata->mode indicates if the device is in use.

Regards

Mike
>  };
>
>  struct etr_buf_operations {
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
