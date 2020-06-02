Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B20E81EC47A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 23:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSu4eyQQlHtWs/IzP8XVX86tRGqP6gbZgv0h5vfgMso=; b=oXVF6xSHJ2kkLi
	227aT3I5mNSm+7teqb1CUT8BlXY5MBdGfuYruLt4Lzafjlfn4Xn3fdHn7v9aG6wlUzcgvaNucOy9D
	abswV3Ekl0qIrTI2NERbOQCBcK0dbxccPe2EctvX5mhornejjt9xE7HyOzO8YLO7X4sdtx8V6tIV5
	HDXR9aYByTFBs6ullgl1OpLj+eS03yLpcQkwGr3dCMSxUuK2mv3QupCsbTnygLyqishOG8p/FmAwv
	xAiKT/3P2ZESqVD2g7vEwRhmS0JK2cthFIht7F78I5TqFUrZUMADzfjdLoNyDR4p1QNseibQHdA/3
	xbEB24HSZmsffenF7qng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgEg0-0003TU-RW; Tue, 02 Jun 2020 21:42:28 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgEft-0003Su-Hu
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 21:42:23 +0000
Received: by mail-pg1-x543.google.com with SMTP id p21so159965pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 14:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=a+Tcybpto4JW668grhb7VyG9dc5AOW4PN39gIL/jU6c=;
 b=eQZUhilGkaBHOOoh0h33kjW8acpHdskjmtnr8+p8u3+YcbEBAg1mnBMgsRYMZoUCe/
 zjPfbkxvN+R0xfop0+txC9jk+HXsmmPsQAri/yT+qSiMp/zP4q8ZYuZeiXtIlmu0yy4V
 3q80mdxcwijwNGit/BeIH9VP4K+Q4v83BqAb+AWyUQY6BMfAzGW2K4T7PlKqeDuY5iOV
 nc/WN5BlMzRAznAnzRH0k6EZSMN7A+NuZHIjNSlQupvXIJixIiqAGS2H768o0KFPWoHI
 V+2HWK7ARBBx0NMpK32joI9HR72nwqDdch3DyLjDpgabl65WF4kIlr1r6Ad/stVelagz
 2jtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=a+Tcybpto4JW668grhb7VyG9dc5AOW4PN39gIL/jU6c=;
 b=Fue7CS0bDoQZh1GusoF8/14/YSpn/Slh3SHJtuPS0gIJ3u91cO3ZOVegUrovIi6t+W
 cWATvycPtoLf0nTqf6yQOeJRuYtJYiCs3/Gc+DDhmurnBf2FIB5tu6c+3uH30mTmE34u
 RzVmYnKSztx3EPLl1p+xFfgaKRWaz3DhV/Tc58siWirC+NLESBzXHUwqShDdPXqNCz7B
 8KBKvKJFQN0oSnrCrmotU5xWbCMm+JTGxrQWqnklr74jXyAs5w+sGOwdRzGqZuCpe0Jv
 SvhlJhVrHYJM76pXH9hRxLGkW9UbTSHmLvppuRJTylFodeNJ2OSzQjS43pWrkHL536aN
 wImg==
X-Gm-Message-State: AOAM532iF8GXmGIvfvrSR9aImT859chGMr4ZybD23TutlS329coQZtbh
 zzgdu3Py0owDZM4dvACjlVABug==
X-Google-Smtp-Source: ABdhPJyqXHemvpCIKwQ9neFhznd2BQsaaQXX+YIDY6Y0U/tb+aUdp0BJUy4SV1Eo8wcOC7LdVW+xzA==
X-Received: by 2002:a62:86cd:: with SMTP id
 x196mr19446924pfd.158.1591134140823; 
 Tue, 02 Jun 2020 14:42:20 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m5sm3086044pjn.56.2020.06.02.14.42.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 14:42:20 -0700 (PDT)
Date: Tue, 2 Jun 2020 15:42:18 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH v2 4/4] remoteproc/k3-dsp: Add support for L2RAM loading
 on C66x DSPs
Message-ID: <20200602214218.GC29840@xps15>
References: <20200521001006.2725-1-s-anna@ti.com>
 <20200521001006.2725-5-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521001006.2725-5-s-anna@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_144221_605314_AAF38EF6 
X-CRM114-Status: GOOD (  30.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 07:10:06PM -0500, Suman Anna wrote:
> The resets for the DSP processors on K3 SoCs are managed through the
> Power and Sleep Controller (PSC) module. Each DSP typically has two
> resets - a global module reset for powering on the device, and a local
> reset that affects only the CPU while allowing access to the other
> sub-modules within the DSP processor sub-systems.
> 
> The C66x DSPs have two levels of internal RAMs that can be used to
> boot from, and the firmware loading into these RAMs require the
> local reset to be asserted with the device powered on/enabled using
> the module reset. Enhance the K3 DSP remoteproc driver to add support
> for loading into the internal RAMs. The local reset is deasserted on
> SoC power-on-reset, so logic has to be added in probe in remoteproc
> mode to balance the remoteproc state-machine.
> 
> Note that the local resets are a no-op on C71x cores, and the hardware
> does not supporting loading into its internal RAMs.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
> v2:
>  - Dropped the local-reset no-op checks from k3_dsp_rproc_prepare/unprepare()
>    callbacks. The logic will be adjusted back in the C71 patch series.
>  - The C71 local reset references are also removed from the comments for the
>    k3_dsp_rproc_prepare() function.
> v1: https://patchwork.kernel.org/patch/11458579/
> 
>  drivers/remoteproc/ti_k3_dsp_remoteproc.c | 72 +++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
> 

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> diff --git a/drivers/remoteproc/ti_k3_dsp_remoteproc.c b/drivers/remoteproc/ti_k3_dsp_remoteproc.c
> index e4036f5992fe..610fbbf85ee6 100644
> --- a/drivers/remoteproc/ti_k3_dsp_remoteproc.c
> +++ b/drivers/remoteproc/ti_k3_dsp_remoteproc.c
> @@ -174,6 +174,9 @@ static int k3_dsp_rproc_reset(struct k3_dsp_rproc *kproc)
>  		return ret;
>  	}
>  
> +	if (kproc->data->uses_lreset)
> +		return ret;
> +
>  	ret = kproc->ti_sci->ops.dev_ops.put_device(kproc->ti_sci,
>  						    kproc->ti_sci_id);
>  	if (ret) {
> @@ -191,6 +194,9 @@ static int k3_dsp_rproc_release(struct k3_dsp_rproc *kproc)
>  	struct device *dev = kproc->dev;
>  	int ret;
>  
> +	if (kproc->data->uses_lreset)
> +		goto lreset;
> +
>  	ret = kproc->ti_sci->ops.dev_ops.get_device(kproc->ti_sci,
>  						    kproc->ti_sci_id);
>  	if (ret) {
> @@ -198,6 +204,7 @@ static int k3_dsp_rproc_release(struct k3_dsp_rproc *kproc)
>  		return ret;
>  	}
>  
> +lreset:
>  	ret = reset_control_deassert(kproc->reset);
>  	if (ret) {
>  		dev_err(dev, "local-reset deassert failed, ret = %d\n", ret);
> @@ -209,6 +216,53 @@ static int k3_dsp_rproc_release(struct k3_dsp_rproc *kproc)
>  	return ret;
>  }
>  
> +/*
> + * The C66x DSP cores have a local reset that affects only the CPU, and a
> + * generic module reset that powers on the device and allows the DSP internal
> + * memories to be accessed while the local reset is asserted. This function is
> + * used to release the global reset on C66x DSPs to allow loading into the DSP
> + * internal RAMs. The .prepare() ops is invoked by remoteproc core before any
> + * firmware loading, and is followed by the .start() ops after loading to
> + * actually let the C66x DSP cores run.
> + */
> +static int k3_dsp_rproc_prepare(struct rproc *rproc)
> +{
> +	struct k3_dsp_rproc *kproc = rproc->priv;
> +	struct device *dev = kproc->dev;
> +	int ret;
> +
> +	ret = kproc->ti_sci->ops.dev_ops.get_device(kproc->ti_sci,
> +						    kproc->ti_sci_id);
> +	if (ret)
> +		dev_err(dev, "module-reset deassert failed, cannot enable internal RAM loading, ret = %d\n",
> +			ret);
> +
> +	return ret;
> +}
> +
> +/*
> + * This function implements the .unprepare() ops and performs the complimentary
> + * operations to that of the .prepare() ops. The function is used to assert the
> + * global reset on applicable C66x cores. This completes the second portion of
> + * powering down the C66x DSP cores. The cores themselves are only halted in the
> + * .stop() callback through the local reset, and the .unprepare() ops is invoked
> + * by the remoteproc core after the remoteproc is stopped to balance the global
> + * reset.
> + */
> +static int k3_dsp_rproc_unprepare(struct rproc *rproc)
> +{
> +	struct k3_dsp_rproc *kproc = rproc->priv;
> +	struct device *dev = kproc->dev;
> +	int ret;
> +
> +	ret = kproc->ti_sci->ops.dev_ops.put_device(kproc->ti_sci,
> +						    kproc->ti_sci_id);
> +	if (ret)
> +		dev_err(dev, "module-reset assert failed, ret = %d\n", ret);
> +
> +	return ret;
> +}
> +
>  /*
>   * Power up the DSP remote processor.
>   *
> @@ -352,6 +406,8 @@ static void *k3_dsp_rproc_da_to_va(struct rproc *rproc, u64 da, size_t len)
>  }
>  
>  static const struct rproc_ops k3_dsp_rproc_ops = {
> +	.prepare	= k3_dsp_rproc_prepare,
> +	.unprepare	= k3_dsp_rproc_unprepare,
>  	.start		= k3_dsp_rproc_start,
>  	.stop		= k3_dsp_rproc_stop,
>  	.kick		= k3_dsp_rproc_kick,
> @@ -614,6 +670,22 @@ static int k3_dsp_rproc_probe(struct platform_device *pdev)
>  		goto release_tsp;
>  	}
>  
> +	/*
> +	 * ensure the DSP local reset is asserted to ensure the DSP doesn't
> +	 * execute bogus code in .prepare() when the module reset is released.
> +	 */
> +	if (data->uses_lreset) {
> +		ret = reset_control_status(kproc->reset);
> +		if (ret < 0) {
> +			dev_err(dev, "failed to get reset status, status = %d\n",
> +				ret);
> +			goto release_mem;
> +		} else if (ret == 0) {
> +			dev_warn(dev, "local reset is deasserted for device\n");
> +			k3_dsp_rproc_reset(kproc);
> +		}
> +	}
> +
>  	ret = rproc_add(rproc);
>  	if (ret) {
>  		dev_err(dev, "failed to add register device with remoteproc core, status = %d\n",
> -- 
> 2.26.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
