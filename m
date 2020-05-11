Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAD21CE04B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 18:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAT/4u7TXYQig2K6iAZ1p+EQ2fZJ43WpPH3S5EOm0bQ=; b=otz1PwPXam+4Wq
	nOaXETSc4B4Juz0DU7EvkA/SqZgZ+YkvN3AussimnjqFLuHnd+LzDOcDq9RI/Iu245L4b2em/VJtJ
	4NJcfrF17t8w7BAYQuRgh9fRy3AWOEYuFYQUOeSTqbtMSZRSmuguSOFa/VuNNcl7gQwqDhtbcdXVZ
	6C1o6WZM+GjYM9c9A3Rwo9LbBHt8ot867vMp3qNZnmMqrl0146OL/aJMUmgWjk/LHUVlA2U50dh+C
	DOIublZJmEIR4uKdOTA9AmyP+2NMU/Kd3rgjitcMTJQAArpz61fR6cGqEV5nKmrDH5wAWXJG6rOxK
	ycRkg/V2HjAKEi7066mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYB9g-0003Me-Lw; Mon, 11 May 2020 16:19:48 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYB9V-0003GT-UB
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 16:19:39 +0000
Received: by mail-io1-xd42.google.com with SMTP id k18so1348657ion.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 09:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r5ultGYWM+kfVUYl0Re6KP46o+DUiGBX2CPe2HnhgSc=;
 b=nriex5rlMS5ZsBeaDpFICXYiiBtfrgAuBtSp+OnnEr07vu/8XPmuGDpGaSjT1+ghA2
 9rCdJbniSEQlWagTWL5/nm1BjG9Zn/TsfH5kleNw/4v9OZfKbgPCnrCyNankn93I+hKK
 mOQAAbJ6VFajiDuDTt08lyywtkMW/Clf5KPeqUoZly6UpGEULps5WEJiEIYTcibkeywy
 6tTPZQtKb4itbJ0zchS4vkCddRFdSrK5EFJCq/nBDhEv2lgiwEBYBWtpPAXjD1xifPZ4
 Uk2RJ1JZk5fjOfpNJl66v//Gvd2m2abQg4d2HBYFkMRtwJfnS78FaKDbiYj4S3235Rod
 cCsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r5ultGYWM+kfVUYl0Re6KP46o+DUiGBX2CPe2HnhgSc=;
 b=nmYvDN1SRTkcBmzIHDuzyNr5TItrVJ72eSNREugNKKpcaO6zfhq3CnTY/Bz7pL8PlQ
 +U/6ZmiLJYpnk7dYsV5tnLcZ9a8dCOrvyKkEISGQ/YkQcPjT7SrMi0XGzgd/sj3Y9P28
 p5DakBcqk+jM9tBacHojc/QmaZni0aSWqa9QL9I4c9mZCn3ZYd5nXsNPOMBJlLgpv4yf
 TVtyeZgKMvGjrGzxbZCT34GiiRgQSNAEsdbq46IvPpZs9GLOmy1msCAGO/Cx4S/iYk73
 /e8d7+tJGdRPPP9W0+oIqB3UUezDs1kZzPxZqminPPLH8r/zbR4mvBPiO8enHZwWOFap
 BeaA==
X-Gm-Message-State: AGi0PuYaKt+3yVidhVeEl3iY83GfuRwAWTTtvQRU0H/pKwvqK/rh781F
 7r4p/hAhEmVUoRSNSpbQ2etXQOb6HiTrj9ksGEqAHQ==
X-Google-Smtp-Source: APiQypIG522t0DAZMpOjlzhdn49pBkF6ZH6NY71G/guvuD3UeKSFMkvkzdllJUW4hevTFT8SMr9vzW9j3KAqXSdMgas=
X-Received: by 2002:a5d:8d1a:: with SMTP id p26mr2156549ioj.131.1589213972847; 
 Mon, 11 May 2020 09:19:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200511083400.26554-1-saiprakash.ranjan@codeaurora.org>
In-Reply-To: <20200511083400.26554-1-saiprakash.ranjan@codeaurora.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 11 May 2020 10:19:22 -0600
Message-ID: <CANLsYkx640pjt_crfHMUQt25w-xOfoVteYVpocYgPHRw-y-WeQ@mail.gmail.com>
Subject: Re: [PATCH] coresight: replicator: Reset replicator if context is lost
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_091937_975029_202A862F 
X-CRM114-Status: GOOD (  19.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sai,

On Mon, 11 May 2020 at 02:34, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> On some QCOM SoCs, replicators in Always-On domain loses its
> context as soon as the clock is disabled. Currently as a part
> of pm_runtime workqueue, clock is disabled after the replicator
> is initialized by amba_pm_runtime_suspend assuming that context
> is not lost which is not true for replicators with such
> limitations. Hence check the replicator idfilter registers
> in dynamic_replicator_enable() and reset again.
>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>
> More info here - https://lore.kernel.org/patchwork/patch/1231182/
>
> ---
>  drivers/hwtracing/coresight/coresight-replicator.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
> index e7dc1c31d20d..11df63f51071 100644
> --- a/drivers/hwtracing/coresight/coresight-replicator.c
> +++ b/drivers/hwtracing/coresight/coresight-replicator.c
> @@ -68,6 +68,17 @@ static int dynamic_replicator_enable(struct replicator_drvdata *drvdata,
>         int rc = 0;
>         u32 reg;
>
> +       /*
> +        * On some QCOM SoCs with replicators in Always-On domain, disabling
> +        * clock will result in replicator losing its context. Currently
> +        * as a part of pm_runtime workqueue, amba_pm_runtime_suspend disables
> +        * clock assuming the context is not lost which is not true for cases
> +        * with hardware limitations as the above.
> +        */
> +       if ((readl_relaxed(drvdata->base + REPLICATOR_IDFILTER0) == 0) &&
> +           (readl_relaxed(drvdata->base + REPLICATOR_IDFILTER1) == 0))
> +               dynamic_replicator_reset(drvdata);
> +

Based on your comment here[1] and the ongoing conversation, I will
wait for a V2.

Thanks,
Mathieu

[1]. https://lkml.org/lkml/2020/5/11/650

>         switch (outport) {
>         case 0:
>                 reg = REPLICATOR_IDFILTER0;
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
