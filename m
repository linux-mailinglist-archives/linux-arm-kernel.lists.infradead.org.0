Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 846E51B133D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 19:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/+XPyzaCV3Xeezp4cZr3bB2/nXWl+Qko0E/9kV/Hog=; b=R+SkpqPNZFvGf3
	6IISIpog//AwI6uzqoa93BEBCNP6Zb0AbuaVGe062EZmXu+uLFamgvmMtz3LoxkZ2CTX2c5cC/COW
	NIaNT7KxJdP6TcbfZ7v77MhfwzxUIZYGkC6rlGdRpq9Jsv8SCCdS/WdLCFwAqSPRtVZd6V+jpfELQ
	Y785oUChkaN5hs5uKDFNUlrnfAK7XR7RxwhduqmqWUfubMJwI2jXBp53DDQ+984ZZui2CVr+Tse0H
	ooCrorfuc/ukT6ZeC5CBcj5BZ69ltphdztCp3KO0jdaiJZI6CRHDH/WwbhL3gEzUVUtRqmOsnqiYL
	lOCI/u5YKjvxmTR7GyoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQaMB-0000tC-2I; Mon, 20 Apr 2020 17:37:19 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQaM0-0000sA-5a
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 17:37:10 +0000
Received: by mail-pf1-x441.google.com with SMTP id g30so5288050pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 10:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wp8Xrp59QlTq458T5KjDUO1tXKy+Khd8hcR7eA6qRkQ=;
 b=KHg1vdpcCjXP5/p5qTGrllYsV+lzuJriI2RLw+S4S3xki9OB0wEpeAVLdEce/vnvpd
 4Qj6qZY0OyB9S7P/fnTkWiPaLK2/IznodQKVslWtLWtqgVAYK5tvJ3ygHrcAETIAWCoA
 Ar0DzMHJ+Pcx1+Ztf0WF25JcRGXnJn2Cc419R8/tYnCMw3sjphihMiP39h92kuvvgv7F
 3upXSFD1DQPO8WG8vG+04fku98v0LbVxnBm0SNbeycDqzB71S/afMQamSfxE/MHjnUZD
 ux5z/woSc8UPoNeLMZVeBHX/E3+YcUJVVw7pnNoDjxiMJUaDbRGu8hUVHsD/eobbc1NY
 qN/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wp8Xrp59QlTq458T5KjDUO1tXKy+Khd8hcR7eA6qRkQ=;
 b=dsoElPGC3TAXi4MLm/sqvL0EJdUQsEpuOP54cIyXebiY7BdYJhCJxdqhz+LRozjusb
 00fVCVrsWci2y8+8WhSYoaRZ5cAvCOWYDkgtAgX4D+Ltky43xrE972Sy8vLG4VgxgEnv
 06aHvDhiXPX/1+jn/aZ+mYp2SzIvirMJOXQyg5F/12jlQ7zsBYvu8SLl+jfC1R5qMvUe
 QAkfY/h64xZNraxI9benjWVVfsPHomeogxlz+OGZelmuYluPdSx0jkBA2M4rt85+ViiN
 KeKBHbCo9pINYAtR+o9MA7US6BUuyBZGalNJwYz67eDodTgBHIUciVOxJFWzdr+FKyfH
 U99Q==
X-Gm-Message-State: AGi0PuZSH+Uir0cxrw/yKVtbyO+dRV+E27OovtOykTSMcVV3uhSygOtm
 ERTKcnB3SM1f/2CSHI8twMh1cg==
X-Google-Smtp-Source: APiQypI+fpzS9tvyIqAt1Qokh+WJel+RnWJGf1A4F99fII+mmjgwfsHSOcutEHEXBR/XlFLHD+fUGA==
X-Received: by 2002:a62:cf81:: with SMTP id b123mr17223856pfg.84.1587404225615; 
 Mon, 20 Apr 2020 10:37:05 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id d2sm103669pfc.7.2020.04.20.10.37.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 10:37:04 -0700 (PDT)
Date: Mon, 20 Apr 2020 11:37:03 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCHv2] coresight: tmc: Fix TMC mode read in
 tmc_read_prepare_etb()
Message-ID: <20200420173703.GA25885@xps15>
References: <20200416161459.29855-1-saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416161459.29855-1-saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_103708_728475_3A90B07D 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 09:44:59PM +0530, Sai Prakash Ranjan wrote:
> On some QCOM platforms like SC7180, SDM845 and SM8150,
> reading TMC mode register without proper coresight power
> management can lead to async exceptions like the one in
> the call trace below in tmc_read_prepare_etb(). This can
> happen if the user tries to read the TMC etf data via
> device node without setting up source and the sink first.
> Fix this by having a check for coresight sysfs mode
> before reading TMC mode management register.
> 
>  Kernel panic - not syncing: Asynchronous SError Interrupt
>  CPU: 7 PID: 2605 Comm: hexdump Tainted: G S                5.4.30 #122
>  Call trace:
>   dump_backtrace+0x0/0x188
>   show_stack+0x20/0x2c
>   dump_stack+0xdc/0x144
>   panic+0x168/0x36c
>   panic+0x0/0x36c
>   arm64_serror_panic+0x78/0x84
>   do_serror+0x130/0x138
>   el1_error+0x84/0xf8
>   tmc_read_prepare_etb+0x88/0xb8
>   tmc_open+0x40/0xd8
>   misc_open+0x120/0x158
>   chrdev_open+0xb8/0x1a4
>   do_dentry_open+0x268/0x3a0
>   vfs_open+0x34/0x40
>   path_openat+0x39c/0xdf4
>   do_filp_open+0x90/0x10c
>   do_sys_open+0x150/0x3e8
>   __arm64_compat_sys_openat+0x28/0x34
>   el0_svc_common+0xa8/0x160
>   el0_svc_compat_handler+0x2c/0x38
>   el0_svc_compat+0x8/0x10
> 
> Fixes: 4525412a5046 ("coresight: tmc: making prepare/unprepare functions generic")
> Reported-by: Stephen Boyd <swboyd@chromium.org>
> Suggested-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>

Applied - thanks,
Mathieu

> ---
> v2:
>  * Move the TMC mode read under CS_MODE_SYSFS as per Mathieu
> ---
>  drivers/hwtracing/coresight/coresight-tmc-etf.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> index d0cc3985b72a..36cce2bfb744 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> @@ -596,13 +596,6 @@ int tmc_read_prepare_etb(struct tmc_drvdata *drvdata)
>  		goto out;
>  	}
>  
> -	/* There is no point in reading a TMC in HW FIFO mode */
> -	mode = readl_relaxed(drvdata->base + TMC_MODE);
> -	if (mode != TMC_MODE_CIRCULAR_BUFFER) {
> -		ret = -EINVAL;
> -		goto out;
> -	}
> -
>  	/* Don't interfere if operated from Perf */
>  	if (drvdata->mode == CS_MODE_PERF) {
>  		ret = -EINVAL;
> @@ -616,8 +609,15 @@ int tmc_read_prepare_etb(struct tmc_drvdata *drvdata)
>  	}
>  
>  	/* Disable the TMC if need be */
> -	if (drvdata->mode == CS_MODE_SYSFS)
> +	if (drvdata->mode == CS_MODE_SYSFS) {
> +		/* There is no point in reading a TMC in HW FIFO mode */
> +		mode = readl_relaxed(drvdata->base + TMC_MODE);
> +		if (mode != TMC_MODE_CIRCULAR_BUFFER) {
> +			ret = -EINVAL;
> +			goto out;
> +		}
>  		__tmc_etb_disable_hw(drvdata);
> +	}
>  
>  	drvdata->reading = true;
>  out:
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
