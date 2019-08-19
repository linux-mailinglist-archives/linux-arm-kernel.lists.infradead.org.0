Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3892A94EB3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 22:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HSlMbKgya/Xev1kV3sjKNcsJ+sdW2FOKWm4hMYgocIE=; b=moAi6Mq7y5dqFw
	gDOS7UO5nTefyijy5mVlaOxTdFjpS7SRcDQFjiglM4jIhgOAVLI61+q5mTM9EBq6zwt/qjVu4vRmZ
	ICf9pC3wDY1qDhaxyBMVuEdJiOcra63ed56t1RZG6G09XtysZ5X0xhYQE45JuyS5jBpbxsYc4tN9o
	VPQ+G3jdkc/qAi2+7gTvwoIX7BfC3v+zO0wuaaSD+pZ+/a+fSuxmiRjyMK0IZ07Xs9hJMljWsVjek
	6B7Tem3nRhlEMKGJT78MeQ8m4xpmV18Mi+6mMGCwZ4f15tmapTkR0leGeGEPB7XJr7k+1gmUp8/JR
	2VFWtBjeBsXyI62DCPbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hznvc-0006PT-HZ; Mon, 19 Aug 2019 20:06:56 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hznvQ-0006P5-Ol
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 20:06:46 +0000
Received: by mail-pg1-x544.google.com with SMTP id l21so1819973pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 13:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YrBGd6BNAnyFpL18Qa9ZsHsIfGfM4A6+UQCW+vih99U=;
 b=pVpVTgo6/oRCkrRRZg6VIxCtNItwJJre+qf1/+V2U/2WtPs6+BqibE0LI5GNRB70O7
 R9A+DoT47Wlvku7ocGeUrcByoPxViGhNmeClekna2d5PnA0UizWQdPVbO3YcZRkDyenR
 IMzPVgjMc/IXeVoTCr7jsXnnhr3fQcfpjAaCpWfSmK8ByyFTz2EqRpKJf2WBfuxlJU7d
 ntPlrLwc8rcc1FEJjnNcgmhyWiC6RehNN6ZkggjVVcHSdoD8tMJAvQm0+BhfkGojK5ko
 ertq4vv5mfZ4aMsqdBUFMJHrPIzzzlSgm6oM8IxJ5t7TT/kJuoJaeMQGJh9oN93UomYA
 VeDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YrBGd6BNAnyFpL18Qa9ZsHsIfGfM4A6+UQCW+vih99U=;
 b=HlD1ecu4ySYDyoNfW9yKcOsrQI3rjmq8cgaOb3lzDjz5UuKh6cFwHOYjt9qt4OC7uf
 ZXt4+QjugvLuK0kAUKxf7uBxu1tXggDneMZeT0sCntxEQFcEnC3glaa0Z6SjgikoRw15
 CNXDV/AXW75b80VQDv9E4ERW+n+J3JyDpVGnwtKqNvVSu58yjI2abt+csFqyDV3C1hzc
 hiVz10Zds+BHwfoh6oi2kJfidhMZk3vsClU6beuvvuI4hyiCaeKkQExNX0KuzarUrXOi
 GCxf+FNcFHMvglWstYdmgSOCkH3CeEZZ2MMbRslqA9zzS82vjFt0RdAwiDGeiO4VVmxP
 a0vw==
X-Gm-Message-State: APjAAAXf9JMX0KG12V9if5kWlxFPmt/TlZignCn9NpDv9v29oZx+vIzO
 CrLQSKKm/UbzWJsynE0cE7azNw==
X-Google-Smtp-Source: APXvYqwtNIIQW7C5wHvjaIv5kbjzzXA+VlgHEYBTl1rmIPKC01oj1TlCohgBP7CHCS/jXwOxbC/21w==
X-Received: by 2002:a17:90a:374a:: with SMTP id
 u68mr22539788pjb.4.1566245203441; 
 Mon, 19 Aug 2019 13:06:43 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id r75sm18241262pfc.18.2019.08.19.13.06.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 19 Aug 2019 13:06:42 -0700 (PDT)
Date: Mon, 19 Aug 2019 14:06:40 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Tanmay Vilas Kumar Jagdale <tanmay@marvell.com>
Subject: Re: coresight: ACPI hook for funnel on ThunderX2
Message-ID: <20190819200640.GA8268@xps15>
References: <1565877479-1583-1-git-send-email-tanmay@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565877479-1583-1-git-send-email-tanmay@marvell.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_130644_814281_BBF2DBA4 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tomasz Nowicki <tnowicki@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tanmay,

On Thu, Aug 15, 2019 at 01:58:21PM +0000, Tanmay Vilas Kumar Jagdale wrote:
> Coresight topology on Marvell's ThunderX2 Processor is as follows:
> 
>  ETM0 _                                                   _ TPIU
>  ...   \    Static      Dynamic                          /
>  ...    --> FUNNEL0 --> FUNNEL1 --> ETF --> REPLICATOR --
> ETM127_/            |                                    \_ ETR
>                     |
>             ETM128--|
>                     /
>            Others--/
> 
> To support this topology add ACPI hook for Static Funnel0.
> 
> Signed-off-by: Tanmay Jagdale <tanmay@marvell.com>

There are a few things that aren't working with your patch.  First it doesn't
clear checkpatch.pl - a lot of maintainers will not even look at a patch when
it is the case.  Second it doesn't apply to my coresight next branch[1] and
third there are formatting issue with the subject line.

I suggest you peruse through the Documentation/process directory with a special
interest toward files submitting-patches.rst and submit-checklist.rst.  Your
life (and mine) will be greatly improved in the process. 

More comments below...

> ---
>  drivers/hwtracing/coresight/coresight-funnel.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
> index fa97cb9ab4f9..315691fd6f4b 100644
> --- a/drivers/hwtracing/coresight/coresight-funnel.c
> +++ b/drivers/hwtracing/coresight/coresight-funnel.c
> @@ -5,6 +5,7 @@
>   * Description: CoreSight Funnel driver
>   */
>  
> +#include <linux/acpi.h>
>  #include <linux/kernel.h>
>  #include <linux/init.h>
>  #include <linux/types.h>
> @@ -297,6 +298,11 @@ static int static_funnel_probe(struct platform_device *pdev)
>  	return ret;
>  }
>  
> +static const struct acpi_device_id static_funnel_acpi_ids[] = {
> +	{ "CAV901A" },
> +	{},
> +};
> +

Is there anything different between this static funnel and ARM's static funnel?
An ACPI device for static funnels has already been added[2] - this is probably
what you should be using.

Thanks,
Mathieu

[1]. https://git.linaro.org/kernel/coresight.git/log/?h=next
[2]. 991de72831b3 coresight: acpi: Static funnel support

>  static const struct of_device_id static_funnel_match[] = {
>  	{.compatible = "arm,coresight-static-funnel"},
>  	{}
> @@ -306,6 +312,7 @@ static struct platform_driver static_funnel_driver = {
>  	.probe          = static_funnel_probe,
>  	.driver         = {
>  		.name   = "coresight-static-funnel",
> +		.acpi_match_table = ACPI_PTR(static_funnel_acpi_ids),
>  		.of_match_table = static_funnel_match,
>  		.pm	= &funnel_dev_pm_ops,
>  		.suppress_bind_attrs = true,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
