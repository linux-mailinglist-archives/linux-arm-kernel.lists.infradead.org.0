Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 614191EB0F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 23:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RI18QgogQ0BjWsKNmOq3F+zvMSiLheEW+OEEID57IuA=; b=DUrvOktXLpcm+B
	7EYtkTx47m7mdGjyXLmKo1huXSu6oN91CSlikmQ3MC3GvSkQJTWUABpLm/Xi9Wi356ZAPNXhPNCWa
	1G05AfF0/NJe7hNFtXHsJ1/1vUhk/+H6pH/nbRd4piCQiT2HVntvzati77j6eG8dLz5t/Zb+tbHPi
	v9gl+CxIlds4mjmMAlB2T5xf+/St071sLF6pjU9xKcbnCAnn2tTHIlM/HxfRwecT2vGAT+loaQBkG
	UfqkG+U9Jl1DXYLMLDmXPpobVJwsb6Sc1XcPXTeQwlbMHjXz83nNyhTnYY3mFmeQEX4L0KQeSKo6m
	glXj03Na9BSUFnE+pkdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfrzZ-0005eh-2I; Mon, 01 Jun 2020 21:29:09 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfrzT-0005eD-0P
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 21:29:04 +0000
Received: by mail-pg1-x542.google.com with SMTP id s10so4082151pgm.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 14:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fUElKYdtd0S2QzT3Ha4tcMjoudyfwMGfy5qOgP152fM=;
 b=uCTJZLoSnSFLN5YaAStdYypi4L0N4WxVVQIshM7W5ntpJdCOjOhW0c/CHMtm7K6Upv
 hvdaxUxoZkeM6/P1WZTxZPODHacAjgdMX4Yg//pAc04y9KKhbEQ3BuR3dMIHM+4BmyCp
 ytlBCwNIBNzZ3Pxsv+9ech3jN+SAGfArx3/QSStuNuzi673aX64Xl6eLxe9vN7zYp0S0
 EqVfj4sApebndrMZ/YSUe9AsK29UeFNrH39b/Qn0xZzBTAH0qhJuLwBWSVw1hdujS33T
 3vgPkY+LInWKsbDawbq+YCU++wgqdmX1RaS+tK7twl8cpbOvgV9R2czXQ+zzeyn7TpsP
 /1dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fUElKYdtd0S2QzT3Ha4tcMjoudyfwMGfy5qOgP152fM=;
 b=h5oC2i9l17LxXZotWvOSBP+T9F5vQQL0z7JV0p83K1pTAi1Bt90QCio3NCZyd/7wUn
 hnXVT/d6qh1G0MN9csCfrTOfZGaMfW+0ROKWlqP7IJGRMxvIvzkJLxSYiYfxjAxWG/vb
 QX2eiHLqht5B6bUUV1rukr2Z7NW6ny1Gc7XPrBEXw+AgjChhtorkpOOYgcfHm1h1SVzF
 Atf19sDoxqijWQlMeNKsm0kTHrWw+raHN2AawZndSRRB4pqUya13rHZXjzyJRcRsEKvg
 p9T1Rn/8oPkm0JAbtAMVsboTscKNwc84X0EpJbu87ooTOCBU1q+Y0mp5S8vqfH6IaooH
 4jqQ==
X-Gm-Message-State: AOAM531q93tjZz0JrLCSBWWhr72iIAPpdtsXfn9TzJ93Romc8jwE5F/0
 jI2yQXOqmGZAaDdYNgq8Lc3vsw==
X-Google-Smtp-Source: ABdhPJwwGnA1dLyvE8AboSf3bXlwdAbmFrm8CLGzvi2WI3ozBrNN5gX0DVB4rXyNpdblkYo35H7Ojw==
X-Received: by 2002:a63:9304:: with SMTP id b4mr20494118pge.229.1591046941983; 
 Mon, 01 Jun 2020 14:29:01 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id 3sm311486pfi.68.2020.06.01.14.29.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 14:29:00 -0700 (PDT)
Date: Mon, 1 Jun 2020 15:28:58 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
Message-ID: <20200601212858.GB24287@xps15>
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_142903_054792_1CF06044 
X-CRM114-Status: GOOD (  24.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sai,

On top of the comments already privided by Mike, I have the following:

On Mon, Jun 01, 2020 at 01:32:26PM +0530, Sai Prakash Ranjan wrote:
> Implement a shutdown callback to ensure ETR/ETF hardware is
> properly shutdown in reboot/shutdown path. This is required
> for ETR/ETF which has SMMU address translation enabled like
> on SC7180 SoC and few others. If the hardware is still accessing
> memory after SMMU translation is disabled as part of SMMU
> shutdown callback in system reboot or shutdown path, then
> IOVAs(I/O virtual address) which it was using will go on the bus
> as the physical addresses which might result in unknown crashes
> (NoC/interconnect errors). So we make sure from this shutdown
> callback that the ETR/ETF is shutdown before SMMU translation is
> disabled and device_link in SMMU driver will take care of ordering
> of shutdown callbacks such that SMMU shutdown callback is not
> called before any of its consumer shutdown callbacks.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  .../hwtracing/coresight/coresight-tmc-etf.c   |  4 +--
>  .../hwtracing/coresight/coresight-tmc-etr.c   |  2 +-
>  drivers/hwtracing/coresight/coresight-tmc.c   | 29 +++++++++++++++++++
>  drivers/hwtracing/coresight/coresight-tmc.h   |  3 ++
>  4 files changed, 35 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> index 36cce2bfb744..cba3e7592820 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> @@ -85,7 +85,7 @@ static void __tmc_etb_disable_hw(struct tmc_drvdata *drvdata)
>  	CS_LOCK(drvdata->base);
>  }
>  
> -static void tmc_etb_disable_hw(struct tmc_drvdata *drvdata)
> +void tmc_etb_disable_hw(struct tmc_drvdata *drvdata)
>  {
>  	__tmc_etb_disable_hw(drvdata);
>  	coresight_disclaim_device(drvdata->base);
> @@ -118,7 +118,7 @@ static int tmc_etf_enable_hw(struct tmc_drvdata *drvdata)
>  	return 0;
>  }
>  
> -static void tmc_etf_disable_hw(struct tmc_drvdata *drvdata)
> +void tmc_etf_disable_hw(struct tmc_drvdata *drvdata)
>  {
>  	CS_UNLOCK(drvdata->base);
> 

Why do we care about ETB and ETF when they both use RAM internal to the device?
Moreover, the system RAM they use is not dedicated and as such falls back to the
kernel's memory pool. 
 
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index 625882bc8b08..b29c2db94d96 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> @@ -1110,7 +1110,7 @@ static void __tmc_etr_disable_hw(struct tmc_drvdata *drvdata)
>  
>  }
>  
> -static void tmc_etr_disable_hw(struct tmc_drvdata *drvdata)
> +void tmc_etr_disable_hw(struct tmc_drvdata *drvdata)
>  {
>  	__tmc_etr_disable_hw(drvdata);
>  	/* Disable CATU device if this ETR is connected to one */
> diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
> index 5a271ebc4585..7e687a356fe0 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc.c
> @@ -540,6 +540,34 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
>  	return ret;
>  }
>  
> +static void tmc_shutdown(struct amba_device *adev)
> +{
> +	struct tmc_drvdata *drvdata = amba_get_drvdata(adev);
> +
> +	if (!drvdata->enable)
> +		goto out;
> +
> +	/*
> +	 * We do not care about the active trace sessions here
> +	 * since the system is going down unlike remove callback,
> +	 * just make sure that the hardware is shutdown.
> +	 */
> +	switch (drvdata->config_type) {
> +	case TMC_CONFIG_TYPE_ETB:
> +		tmc_etb_disable_hw(drvdata);
> +		break;
> +	case TMC_CONFIG_TYPE_ETF:
> +		tmc_etf_disable_hw(drvdata);
> +		break;
> +	case TMC_CONFIG_TYPE_ETR:
> +		tmc_etr_disable_hw(drvdata);
> +	}
> +
> +out:
> +	misc_deregister(&drvdata->miscdev);
> +	coresight_unregister(drvdata->csdev);

If a session is active when tmc_shutdown() is called, unregistering the ETF/ETR
will result in a kernel crash if the session is stopped before the kernel has
had the opportunity to shutdown.  It is the problem as trying to make coresight
drivers modular. 

For this to really work the ongoing session would need to be stopped.  That
would teardown the path and stop the sink.

That being said I'm sure that dependencies on an IOMMU isn't a problem confined
to coresight. I am adding Robin Murphy, who added this commit [1], to the thread
in the hope that he can provide guidance on the right way to do this.

Thanks,
Mathieu

[1]. 2ac15068f346 arm64: dts: juno: Add SMMUs device nodes  

> +}
> +
>  static const struct amba_id tmc_ids[] = {
>  	CS_AMBA_ID(0x000bb961),
>  	/* Coresight SoC 600 TMC-ETR/ETS */
> @@ -558,6 +586,7 @@ static struct amba_driver tmc_driver = {
>  		.suppress_bind_attrs = true,
>  	},
>  	.probe		= tmc_probe,
> +	.shutdown	= tmc_shutdown,
>  	.id_table	= tmc_ids,
>  };
>  builtin_amba_driver(tmc_driver);
> diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
> index d156860495c7..f4f56c474e58 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc.h
> +++ b/drivers/hwtracing/coresight/coresight-tmc.h
> @@ -262,6 +262,8 @@ u32 tmc_get_memwidth_mask(struct tmc_drvdata *drvdata);
>  /* ETB/ETF functions */
>  int tmc_read_prepare_etb(struct tmc_drvdata *drvdata);
>  int tmc_read_unprepare_etb(struct tmc_drvdata *drvdata);
> +void tmc_etb_disable_hw(struct tmc_drvdata *drvdata);
> +void tmc_etf_disable_hw(struct tmc_drvdata *drvdata);
>  extern const struct coresight_ops tmc_etb_cs_ops;
>  extern const struct coresight_ops tmc_etf_cs_ops;
>  
> @@ -270,6 +272,7 @@ ssize_t tmc_etb_get_sysfs_trace(struct tmc_drvdata *drvdata,
>  /* ETR functions */
>  int tmc_read_prepare_etr(struct tmc_drvdata *drvdata);
>  int tmc_read_unprepare_etr(struct tmc_drvdata *drvdata);
> +void tmc_etr_disable_hw(struct tmc_drvdata *drvdata);
>  extern const struct coresight_ops tmc_etr_cs_ops;
>  ssize_t tmc_etr_get_sysfs_trace(struct tmc_drvdata *drvdata,
>  				loff_t pos, size_t len, char **bufpp);
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
