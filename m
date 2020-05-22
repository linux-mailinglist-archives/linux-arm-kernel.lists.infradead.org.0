Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBA51DF147
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 23:34:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Egvwy6nHY5J0FdB+dC+rWRY7F5bArl2xtGPRwhJtzGQ=; b=TAzSRDZj6hG1tl
	FPyjMEP8JPDQ0Tki/CS2EEUlrHvp8wJiN4OprPmvev+4kcgwWsE3Yul/H1wm8RCifcdqkoTCiOG97
	1/Gl9svDb85jE6Ms8M+Wl5UALn0Sqrd8BGWqusSC6RtLcjKS04WNbiqRMytuxpn+leKfjdy2DQF7Y
	3MMijEPa6n82KhZGQ7NXJ2rUVFDsCfHCyVq+C0E1PFFiKZQQ9HfrQpSoYXMInljOXQDTbwhZCMWoE
	kA2n4HNNI6dU7mC+xskt2JIr1wat4G5mNHCULqWaigtMUkuwypC2gcDwnVbmNTV5nnNM9FXmAqhO4
	/7J18u1zgenW8l7V93Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcFIl-0003Q9-7f; Fri, 22 May 2020 21:33:59 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcFIa-0003Pm-NP
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 21:33:50 +0000
Received: by mail-pf1-x443.google.com with SMTP id 23so5775601pfy.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 14:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vnJaM9mjGMcjKTst6k/o3Ihj9HZ6TC5CC7vbAyogCSY=;
 b=gS/ExEIiDtjoGGjCcG3305CaMh103RezZNkXU3aHVPnKd5+eLcok+/XnrJQVP8k8D/
 ASTGzGL4j6yxCBU0nzdQdrguYJ8pig73rSLb6pyQpvenkK09745zNJhKQ+c2zky94tCv
 v8oBt7gfzWkaurS59FibnG96QTBV6ZaiAmPLxA5Qv9EDCTLvXJZf5JYZOj4Y5LPjQiuh
 /RvnYrrKfetInoJY+CKVDX3zxwkZsz6aPYfWUqAqcuNi0vCZvB01UQtUPX84t9YMT7eQ
 oCLbVvHwOmQxAxnpLO8qq/ve0pTCJdrnw2WubtmE8G5mL3wfU+lcSk+oS1fRsTlObZij
 wswQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vnJaM9mjGMcjKTst6k/o3Ihj9HZ6TC5CC7vbAyogCSY=;
 b=Fww3CMbTdVTdiOsdTkqU26DOXNLL/6Kdg0U96zw4QxZNphbwdcmX9yAYaCtfij+5hf
 pKlhcpxD9669SXQfYhqwL1BizreKMtpVmKOxuKtOIVTaBGNrtx6SuYkVeC4kIigdtPm6
 Mf+aqhfmFcb4Yt8eAoFkHr5FAXynClPjQEhXbWo+zmPpsw9vJGchOScaKE/XUbotyCda
 uhE3bNzlLCCxGdhwXu7t2A1nzEQp5fnZmOErILw5KpQ2kCs4YEXc5KzlSdhmghvkV+Hz
 Lmgt+wlw7WItIzhsjtH4KoNaGkh3ELCF20TdYqE9EGn72A4OGOBcuvYKx24iGu2lkt5j
 GIFA==
X-Gm-Message-State: AOAM533JFadv0+SmUCQiSREoUGORun/9GEPoj3YpA9Mv/QtL23rjP1dz
 h5/WswDHIJtKLrDUzaRFkVLV4Q==
X-Google-Smtp-Source: ABdhPJxb3WVhC7sqMLz9svrvmKcYbNBtNNyJGOtl2G6PBnpJ+ZPuVc4zaUnWC6bhyU3Y+7wji+YEzQ==
X-Received: by 2002:a62:5214:: with SMTP id g20mr6053245pfb.132.1590183227091; 
 Fri, 22 May 2020 14:33:47 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m12sm7542813pjs.41.2020.05.22.14.33.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 14:33:46 -0700 (PDT)
Date: Fri, 22 May 2020 15:33:44 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH v2 2/2] remoteproc/k3-dsp: Add support for C71x DSPs
Message-ID: <20200522213344.GA19117@xps15>
References: <20200521151636.28260-1-s-anna@ti.com>
 <20200521151636.28260-3-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521151636.28260-3-s-anna@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_143348_800930_8BD3832D 
X-CRM114-Status: GOOD (  23.93  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 10:16:36AM -0500, Suman Anna wrote:
> The Texas Instrument's K3 J721E SoCs have a newer next-generation
> C71x DSP Subsystem in the MAIN voltage domain in addition to the
> previous generation C66x DSP subsystems. The C71x DSP subsystem is
> based on the TMS320C71x DSP CorePac module. The C71x CPU is a true
> 64-bit machine including 64-bit memory addressing and single-cycle
> 64-bit base arithmetic operations and supports vector signal processing
> providing a significant lift in DSP processing power over C66x DSPs.
> J721E SoCs use a C711 (a one-core 512-bit vector width CPU core) DSP
> that is cache coherent with the A72 Arm cores.
> 
> Each subsystem has one or more Fixed/Floating-Point DSP CPUs, with 32 KB
> of L1P Cache, 48 KB of L1D SRAM that can be configured and partitioned as
> either RAM and/or Cache, and 512 KB of L2 SRAM configurable as either RAM
> and/or Cache. The CorePac also includes a Matrix Multiplication Accelerator
> (MMA), a Stream Engine (SE) and a C71x Memory Management Unit (CMMU), an
> Interrupt Controller (INTC) and a Powerdown Management Unit (PMU) modules.
> 
> Update the existing K3 DSP remoteproc driver to add support for this C71x
> DSP subsystem. The firmware loading support is provided by using the newly
> added 64-bit ELF loader support, and is limited to images using only
> external DDR memory at the moment. The L1D and L2 SRAMs are used as scratch
> memory when using as RAMs, and cannot be used for loadable segments. The
> CMMU is also not supported to begin with, and the driver is designed to
> treat the MMU as if it is in bypass mode.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
> v2: 
>  - k3_dsp_rproc_prepare/unprepare plugged in dynamically based on local reset,
>    C71x doesn't use local resets
>  - Dropped the sanity_check ops override, not needed on latest codebase
> v1: https://patchwork.kernel.org/patch/11458595/
> 
>  drivers/remoteproc/ti_k3_dsp_remoteproc.c | 20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/remoteproc/ti_k3_dsp_remoteproc.c b/drivers/remoteproc/ti_k3_dsp_remoteproc.c
> index 610fbbf85ee6..2dbed316b6ac 100644
> --- a/drivers/remoteproc/ti_k3_dsp_remoteproc.c
> +++ b/drivers/remoteproc/ti_k3_dsp_remoteproc.c
> @@ -406,8 +406,6 @@ static void *k3_dsp_rproc_da_to_va(struct rproc *rproc, u64 da, size_t len)
>  }
>  
>  static const struct rproc_ops k3_dsp_rproc_ops = {
> -	.prepare	= k3_dsp_rproc_prepare,
> -	.unprepare	= k3_dsp_rproc_unprepare,
>  	.start		= k3_dsp_rproc_start,
>  	.stop		= k3_dsp_rproc_stop,
>  	.kick		= k3_dsp_rproc_kick,
> @@ -617,6 +615,10 @@ static int k3_dsp_rproc_probe(struct platform_device *pdev)
>  
>  	rproc->has_iommu = false;
>  	rproc->recovery_disabled = true;
> +	if (data->uses_lreset) {
> +		rproc->ops->prepare = k3_dsp_rproc_prepare;
> +		rproc->ops->unprepare = k3_dsp_rproc_unprepare;
> +	}

Yes

>  	kproc = rproc->priv;
>  	kproc->rproc = rproc;
>  	kproc->dev = dev;
> @@ -744,6 +746,12 @@ static const struct k3_dsp_mem_data c66_mems[] = {
>  	{ .name = "l1dram", .dev_addr = 0xf00000 },
>  };
>  
> +/* C71x cores only have a L1P Cache, there are no L1P SRAMs */
> +static const struct k3_dsp_mem_data c71_mems[] = {
> +	{ .name = "l2sram", .dev_addr = 0x800000 },
> +	{ .name = "l1dram", .dev_addr = 0xe00000 },
> +};
> +
>  static const struct k3_dsp_dev_data c66_data = {
>  	.mems = c66_mems,
>  	.num_mems = ARRAY_SIZE(c66_mems),
> @@ -751,8 +759,16 @@ static const struct k3_dsp_dev_data c66_data = {
>  	.uses_lreset = true,
>  };
>  
> +static const struct k3_dsp_dev_data c71_data = {
> +	.mems = c71_mems,
> +	.num_mems = ARRAY_SIZE(c71_mems),
> +	.boot_align_addr = SZ_2M,
> +	.uses_lreset = false,

Right

> +};
> +
>  static const struct of_device_id k3_dsp_of_match[] = {
>  	{ .compatible = "ti,j721e-c66-dsp", .data = &c66_data, },
> +	{ .compatible = "ti,j721e-c71-dsp", .data = &c71_data, },
>  	{ /* sentinel */ },
>  };

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>  MODULE_DEVICE_TABLE(of, k3_dsp_of_match);
> -- 
> 2.26.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
