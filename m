Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2F71DD647
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 20:49:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1HUnTIodPzwOOo3PMHXMxzUie7E+nWH9pzdlgxFlKco=; b=iz1hFPyLP6VuXe
	Sr4T3K+CZKACF/HRhYMCCYgILf13RDp2iRJvg2VKrgu8x/sCpCTySuDZ+SHrM2sg8SUoubvN58HsB
	GjmURWU4HAVv+ZZF7JE077wKd09dXzFoAwmKIIB5Q8FhsdXjCaouh+O0LbEpmu8yUyD42vbyOFEY1
	/qE42WbxYt7SbZp5sbJUj/QjUj9NsJVWOlUeduLR+J6/LCc7uxTdjcf6sW/MA2Ti0QJbeQSXbB7/P
	lJMQVOQ+exVdnuoww0z5U/iExUO9e+7VNBF0fkFPa9ZcI/zCJrEthxF02v54b8kY8bazI9A6sIjJA
	q6tCFvoInZYD3HC21U8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbqG5-0008Hz-Lf; Thu, 21 May 2020 18:49:33 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbqFv-0008H3-No
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 18:49:25 +0000
Received: by mail-pf1-x442.google.com with SMTP id y198so3776902pfb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 11:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vKhdX7VroNvNGwmyw4pwCoJqbqonHHryY8fJ3jkzGJM=;
 b=Va/yGpiJd9MABqJyRSMy0YLsOCgMWuHuIvx4zDntC9TJCYU1Ub/nc73NUxB7u1g4iq
 Zzpfff+WCiGb2Ed4q6N8CqB+RlNx6RJ/Il/kT5V80XRXFfMNUUnElFXAzfW1IvU4pjcc
 8zYRc2WQPd1uVttH3TbA+O+x2z40w3xhGJOo9roFQ6cOCeRsXy7Z+jtqkZsESa9hs8LL
 fCxbZPduDWFDMdeG7mdgPItbe4I6XnLNLoWis6Dvvqp21EUstWw+3EKHI9OY6WUF37Mv
 zgTOSNRe/YjUzncPdVEG4z0Oxq55C2AYd2JGo6bC7x8AcOT1eDHkGpkV3mCxs8ly2K2A
 G8Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vKhdX7VroNvNGwmyw4pwCoJqbqonHHryY8fJ3jkzGJM=;
 b=iyvJMEH7ibUlDebWPleyCxw4+2ITvHx/CWmEmLXPNPe+7TR02IznHFuclXV80XX5T5
 3nbMclP0yP6AjGdFYhfJgr26ywiQq6pUDdiRbWkfY0PVHTHR+PlSomQRbxu3ZfTdTUv/
 6fCdyioxyWXP0WjqbeYR3TJXYwy4tv1OrDYKXLJrdVqoj2P8WffRMGCQel+hZ2Nb9dUo
 Mo+pmOQYo5jjE4Yv9QKKG7Ihbfq570sutURm9NYRRsP2RNPmd6da2LXfb1KMLphy4MrP
 914EyTt3Mut7vSrE10q8iTpfzCWJRzrtkncDEDOPkk13O0CitQy4POY/H2UFNx0tkLPG
 t8rA==
X-Gm-Message-State: AOAM531ALk8Nv27PuIGEWKB3c2UXGJ0GV5Vdn7xXyLCRtsW0TW0zbFzt
 GGI6utrH7XHT76jHQOJc65odbg==
X-Google-Smtp-Source: ABdhPJyRa2D5PE+qUrTiBzlqBLvPjQtuo0C6gW/bqiU5zxyYikIfUjmXJIX2cRiI06/5aZQyPAa8qQ==
X-Received: by 2002:a65:4903:: with SMTP id p3mr9929512pgs.318.1590086962644; 
 Thu, 21 May 2020 11:49:22 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id ep10sm3324168pjb.25.2020.05.21.11.49.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 11:49:22 -0700 (PDT)
Date: Thu, 21 May 2020 11:48:04 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH v2 4/4] remoteproc/k3-dsp: Add support for L2RAM loading
 on C66x DSPs
Message-ID: <20200521184804.GM408178@builder.lan>
References: <20200521001006.2725-1-s-anna@ti.com>
 <20200521001006.2725-5-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521001006.2725-5-s-anna@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_114923_780526_6E423CD7 
X-CRM114-Status: GOOD (  30.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 20 May 17:10 PDT 2020, Suman Anna wrote:

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

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

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
