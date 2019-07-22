Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A2D70AB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 22:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kKrbHw4JyMgujvqmM5ddwmbQSFKZi06swijXPeLuBZI=; b=pwPY8jGee2pZeA
	SBJH4ZaT9QvTaPUhdG1fgyA3OHra8R/QuBDBMn1sXmO97HlWF205I81HVBxS04RuAmQchWTgwPZMV
	qj+vynUGc7UTdUbkvJmVDU7LUC9HoK6wM9r0pEBUVtRRvt87EwKovTxiQ3841TYSujOVMWwFEPX8F
	CfEYoAqEOi06lqVd3xbMGz2yYccGElfjwKkwl8Fe33sq/KoYH4s77zqxA/QQcpp2Rx8TCKpH3A0m8
	ijtt6PwOvwjPBmyxQcLD4VSDkmRR8Ybtj3RSKUqrTRt+jCf71FiKtTPep9EZBYISIdJTbLPFgq13D
	r5rdKIHNhkToZqgWgvKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpez3-0006a9-VA; Mon, 22 Jul 2019 20:32:34 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpeyp-0006Xh-Na
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 20:32:21 +0000
Received: by mail-io1-xd42.google.com with SMTP id k8so76986309iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 13:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DnYCdgKMradCtbCt8L6MHo0Dum4nrSYZqcCkzIarqFw=;
 b=lonW3aAtH05UakG52pHTyOert+JZ36ubzNSg4ZXKpBRqpBkwbkD3tUOob1EQx9YKMo
 OKHmWljl6AltG7qbB0EK+tztdKjAdHm0Mz5Rd5+EDYQI/QdZ5w/Lwkc/XccGZGGCGp1g
 kTru5HtzIDGtu859d5N6CevlRyz0eRGlQlkF1g7ZWh44nc6MPBJVmctAQOvEw+3r1fD0
 6+kYVAVy6759c0es+rEsO8fkQJzIXIY18i3NnldkH15iNquks+k3v8LoxuzEt6qDd9X8
 Y9VruAD1jf8Us9vhRWuFfK99RbiqMqbBP4Fcv82SP3nWffD7VLCL+wMwF/XTW1GwqlgH
 sumQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DnYCdgKMradCtbCt8L6MHo0Dum4nrSYZqcCkzIarqFw=;
 b=gGL3D1QPRZX3Gs4J2v76nxSdSQY9y53i/aDhG8zH5RxNVt8/qBBF0A2DIQkUParMxO
 t17vmn8ZaI7ZFjrZ9FLW3Mdx9APzYHJTKn5oIc5p3SvM8WYl0+CIjOJzbudZWQV8MDoX
 TdndiL/c+Vcz6AlTB63MnTsXkw1rwnFbNVSQuREM7HzVw7rbI676RCp3C+3P5sA1RSZB
 XXDsB8BFBpvCAfpUJMzn7BD6svUcHkxgn8uoGyoyCNfihbb14nl0ArckNSvwToZMZIYa
 +Yj3G/sOlWgVY5Z0FG2dTJvdl3MynQDh3mdupiR5Xmy2hiRHyHo35bhJikU1ufFyls+N
 9paw==
X-Gm-Message-State: APjAAAUpSOBmeRlXKtcIrjPdVB0eR7n6dVke3L2jtLdPm9vQdvRcwVoO
 H58G9mJ6TqEqwVkiUimFiovGKPZWF1UABmGF6GPLQA==
X-Google-Smtp-Source: APXvYqzORuT09RFJviLtjyQM7DmlwxPlqlDNE6lg9T4hYL7s883izJ5TGR98qSttLMFdVVrKu7gCkutPJiTHZV7WAUM=
X-Received: by 2002:a5e:c241:: with SMTP id w1mr62992006iop.58.1563827537927; 
 Mon, 22 Jul 2019 13:32:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190711160114.634-6-andrew.murray@arm.com>
 <20190712150056.15775-1-andrew.murray@arm.com>
In-Reply-To: <20190712150056.15775-1-andrew.murray@arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 22 Jul 2019 14:32:07 -0600
Message-ID: <CANLsYkyE2erOeSM69XTVL-oizFj6WhXLcSKGT2qnFr0ArNskzA@mail.gmail.com>
Subject: Re: [PATCH] coresight: etm4x: lazily allocate memory for save_state
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_133219_788190_B8743BFF 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Coresight ML <coresight@lists.linaro.org>, Leo Yan <leo.yan@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

Sorry for the late reply - you patch got lost under the pile.

On Fri, 12 Jul 2019 at 09:01, Andrew Murray <andrew.murray@arm.com> wrote:
>
> I had intended to lazily allocate memory for the save_state structure when
> it is first used. Following is a patch that I will squash into "[PATCH v3 5/6]
> coresight: etm4x: save/restore state across CPU low power states" on my
> next respin. I thought I'd share it here to get some feedback along with
> the rest of v3.
>
> Thanks,
>
> Andrew Murray
>
> ---
>  drivers/hwtracing/coresight/coresight-etm4x.c | 14 +++++++++++---
>  drivers/hwtracing/coresight/coresight-etm4x.h |  2 +-
>  2 files changed, 12 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index b0bd8158bf13..cd02372194bc 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -1112,6 +1112,13 @@ static int etm4_cpu_save(struct etmv4_drvdata *drvdata)
>         struct etmv4_save_state *state;
>         struct device *etm_dev = &drvdata->csdev->dev;
>
> +       if (!drvdata->save_state) {
> +               drvdata->save_state = devm_kmalloc(etm_dev,
> +                               sizeof(struct etmv4_save_state), GFP_KERNEL);

GFP_KERNEL may sleep and will not work in the context where
etm4_cpu_save() is called.

Thanks,
Mathieu

> +               if (!drvdata->save_state)
> +                       return -ENOMEM;
> +       }
> +
>         /*
>          * As recommended by 3.4.1 ("The procedure when powering down the PE")
>          * of ARM IHI 0064D
> @@ -1134,7 +1141,7 @@ static int etm4_cpu_save(struct etmv4_drvdata *drvdata)
>                 goto out;
>         }
>
> -       state = &drvdata->save_state;
> +       state = drvdata->save_state;
>
>         state->trcprgctlr = readl(drvdata->base + TRCPRGCTLR);
>         state->trcprocselr = readl(drvdata->base + TRCPROCSELR);
> @@ -1234,9 +1241,10 @@ static int etm4_cpu_save(struct etmv4_drvdata *drvdata)
>  static void etm4_cpu_restore(struct etmv4_drvdata *drvdata)
>  {
>         int i;
> -       struct etmv4_save_state *state;
> +       struct etmv4_save_state *state = drvdata->save_state;
>
> -       state = &drvdata->save_state;
> +       if (WARN_ON_ONCE(!state))
> +               return;
>
>         CS_UNLOCK(drvdata->base);
>
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h b/drivers/hwtracing/coresight/coresight-etm4x.h
> index c31634c64f87..a70cafbbb8cf 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.h
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.h
> @@ -441,7 +441,7 @@ struct etmv4_drvdata {
>         bool                            atbtrig;
>         bool                            lpoverride;
>         struct etmv4_config             config;
> -       struct etmv4_save_state         save_state;
> +       struct etmv4_save_state         *save_state;
>         bool                            state_needs_restore;
>  };
>
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
