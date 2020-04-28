Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E98831BCCD9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 21:59:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qPOKlQSjVcLeDpvjcmHGSofXjl7PLlmg968xhZljyhA=; b=qaeM8Im34jXG/w
	MTknlVePuk0b/1qnuKQ96ud/Fs5XseWjdmnFegwWr+eojr3zvl/tNUStf3AiY/rp9KleS9DMNhWSZ
	Dhw9Uem42ziQWjDzkYrCoEfDoIfGp2FGnjUSHK4zAIGvGYfkUqcptfEjWZnuUpL/zPEQ0QQ3eauk9
	kkPoVJEuIrQampd4u7YKr31lbaSiF0GgylpSv11hK3R865VweRE55hitmEXZ1eoPVfM/jQK1NJvr8
	YscIf2w+FbBkQ0JZPc5TbkSyhuLewzEutUAv2OXcG38Q7xW2ityHX0pGJcqKoX6e+tgCeGBvIrrS5
	F4w2ZfkQgU8PrZ966xTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTWNq-0001A6-I9; Tue, 28 Apr 2020 19:59:10 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTWNf-00018a-U8
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 19:59:02 +0000
Received: by mail-pj1-x1044.google.com with SMTP id a31so31076pje.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 12:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fEZQSwqgdVgK8Dc4Lm4abA9DcTezznGRFVnE2xG2IhU=;
 b=sT8+oE5b8EB90ljmegCi/3tIIqW0jgecb5RExDQPsz102kqx09Bs6j+ye6jzW66MGf
 ZrPnKe/P0Gnk3bK1WDlTx+WMEjbuRQiZt2IYr7zexD74xlMRzqiZKq7RsC0v7C4meSE8
 zX2eyGoWuSijH0XPRkT77jr3jXzE5LUi1SzaoeSkDgbwS3rHYjvUlhhP4HfFlKHJea3l
 F7stqe/gmTTYfZAoZ8gLWVy/bhNZM5/D6I8f7L7RQC5dwr3wBIiq4fCP3UtU5xcVVp1X
 SziCu1BuDc0YGieJcgzyzSlobUfVpyNB6e5hDh9tTnyMsHai3RSRFcU0Ns1FLMtqs+d/
 oeyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fEZQSwqgdVgK8Dc4Lm4abA9DcTezznGRFVnE2xG2IhU=;
 b=aHZycQACp8bDoh6J68F4enkWmtESUrrWknhrQPIVa74ccmuyk6v1y0y697VxYo7B4t
 1SL4bBfMdXOBDFfzMK2AEbvHUe3t7FoP/xh+cycEclksHd8tnSwVbHgzUV9tuYqfqX46
 VVZRLx6599Ly6RqZY+Xosw4u4mGp1r7q7GA5A1bFyWla+P0mUb8EExcinr/8UqhwsI/0
 HeixnaJT+rwcrwywtfuVrq36LIav9PEhVvkLEftOdR2d+PHU0eyn5Hb9YEJLr/UtKtX4
 vfhQeZq0ceEjhiJUGP+tetA9pcmjnfVWX3BdgIEFyK41/TTJ7TG3zkIuogwHC1Xxeb6J
 hvPw==
X-Gm-Message-State: AGi0PuaGBo+7pXHF9gSfdqz/qS++kIXZJD+Sm/ikTx2PajtkZhmgp34u
 nDoWKnBBtQCas2pYZhN0oq+Tgw==
X-Google-Smtp-Source: APiQypIK57JLnFpeho7mksYIVHhBF3Gc0olKcF4/PHj0nDqZdhZ94PjsIr3TYZMoZ/Z4b3mdOz7plw==
X-Received: by 2002:a17:902:8ec1:: with SMTP id
 x1mr30230396plo.180.1588103937943; 
 Tue, 28 Apr 2020 12:58:57 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id t23sm2924285pji.32.2020.04.28.12.58.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 12:58:57 -0700 (PDT)
Date: Tue, 28 Apr 2020 13:58:55 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 3/3] remoteproc/k3-dsp: Add support for L2RAM loading on
 C66x DSPs
Message-ID: <20200428195855.GC10552@xps15>
References: <20200325201839.15896-1-s-anna@ti.com>
 <20200325201839.15896-4-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325201839.15896-4-s-anna@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_125900_009971_5BDCA90F 
X-CRM114-Status: GOOD (  33.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 03:18:39PM -0500, Suman Anna wrote:
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
>  drivers/remoteproc/ti_k3_dsp_remoteproc.c | 82 +++++++++++++++++++++++
>  1 file changed, 82 insertions(+)
> 
> diff --git a/drivers/remoteproc/ti_k3_dsp_remoteproc.c b/drivers/remoteproc/ti_k3_dsp_remoteproc.c
> index fd0d84f46f90..7b712ef74611 100644
> --- a/drivers/remoteproc/ti_k3_dsp_remoteproc.c
> +++ b/drivers/remoteproc/ti_k3_dsp_remoteproc.c
> @@ -175,6 +175,9 @@ static int k3_dsp_rproc_reset(struct k3_dsp_rproc *kproc)
>  		return ret;
>  	}
>  
> +	if (kproc->data->uses_lreset)
> +		return ret;
> +
>  	ret = kproc->ti_sci->ops.dev_ops.put_device(kproc->ti_sci,
>  						    kproc->ti_sci_id);
>  	if (ret) {
> @@ -192,6 +195,9 @@ static int k3_dsp_rproc_release(struct k3_dsp_rproc *kproc)
>  	struct device *dev = kproc->dev;
>  	int ret;
>  
> +	if (kproc->data->uses_lreset)
> +		goto lreset;
> +
>  	ret = kproc->ti_sci->ops.dev_ops.get_device(kproc->ti_sci,
>  						   kproc->ti_sci_id);
>  	if (ret) {
> @@ -199,6 +205,7 @@ static int k3_dsp_rproc_release(struct k3_dsp_rproc *kproc)
>  		return ret;
>  	}
>  
> +lreset:
>  	ret = reset_control_deassert(kproc->reset);
>  	if (ret) {
>  		dev_err(dev, "local-reset deassert failed, ret = %d\n", ret);
> @@ -210,6 +217,63 @@ static int k3_dsp_rproc_release(struct k3_dsp_rproc *kproc)
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
> + * actually let the C66x DSP cores run. The local reset on C71x cores is a
> + * no-op and the global reset cannot be released on C71x cores until after
> + * the firmware images are loaded, so this function does nothing for C71x cores.
> + */
> +static int k3_dsp_rproc_prepare(struct rproc *rproc)
> +{
> +	struct k3_dsp_rproc *kproc = rproc->priv;
> +	struct device *dev = kproc->dev;
> +	int ret;
> +
> +	/* local reset is no-op on C71x processors */
> +	if (!kproc->data->uses_lreset)
> +		return 0;

In k3_dsp_rproc_release() the condition is "if (kproc->data->uses_lreset)" and
here it is the opposite, which did a good job at getting me confused.

Taking a step back, I assume c71 DSPs will have their own k3_dsp_dev_data where
the users_lreset flag will be false.  In that case I think it would make the
code easier to understand if the k3_dsp_rproc_ops was declared without the
.prepare and .unprepare.  In probe(), if data->uses_lreset is true then
k3_dsp_rproc_prepare() and k3_dsp_rproc_unprepare() are set.

I am done reviewing this set.

Thanks,
Mathieu

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
> +	/* local reset is no-op on C71x processors */
> +	if (!kproc->data->uses_lreset)
> +		return 0;
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
> @@ -353,6 +417,8 @@ static void *k3_dsp_rproc_da_to_va(struct rproc *rproc, u64 da, size_t len)
>  }
>  
>  static const struct rproc_ops k3_dsp_rproc_ops = {
> +	.prepare	= k3_dsp_rproc_prepare,
> +	.unprepare	= k3_dsp_rproc_unprepare,
>  	.start		= k3_dsp_rproc_start,
>  	.stop		= k3_dsp_rproc_stop,
>  	.kick		= k3_dsp_rproc_kick,
> @@ -644,6 +710,22 @@ static int k3_dsp_rproc_probe(struct platform_device *pdev)
>  		goto disable_clk;
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
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
