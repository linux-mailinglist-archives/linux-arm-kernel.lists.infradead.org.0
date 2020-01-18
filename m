Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5011417F6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 15:23:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ooez7/eqIn4c38vWem3pqfF21ebET0DNH0bt8oVSwfk=; b=XyQgWl3i+Op/+Y
	hs59TfSl546Axx/SB/XG9G2CRZRMrs7G0L2G0Uww/tBEqPrznXVAMwL1Iyk6oH9qq9WKPJgkBRKE+
	SCN71+gjFVBPDRbPDSiduzXYkp3riBPBn6Pi6Fdr1T6DnldevuGe3yo2AlO66a3n++4jB8YW+bH7B
	Vlo3X8g2SFoBW1bMLyrOn0MPcdAskWdH4VxuLMO6CEsnla2jTqYqh0K8sZbLFbZntrQZtLYWJdLlg
	8DJEnCB8k4Xdi8MDYNu4Itky5KErPLUDeHSsC4Sdxv3GAb0Dn7pRrIangEIBhl/jLe/ercIL7fuz+
	S3WmGNrailyMxkC9B5Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isozg-0003Xr-2L; Sat, 18 Jan 2020 14:22:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isozb-0003Wk-2T
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Jan 2020 14:22:28 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD87A2469A;
 Sat, 18 Jan 2020 14:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579357337;
 bh=JrvLwcwKSbaYduAx1j/+g7iO4bO/gKI4RPpGC3Yexg0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=2F4p9QMA24NQEzvX8OMBVSJIXSbPlzCAGzcy7QK5fdv+s54Bng2xUXf16+eqBBPak
 F4JrGFYDJ/Vsq2R+jFQ2rTEUstN43mvE352lpE1zuRvwXNzyJllpx7bvQL1MrpGvzH
 bfcTjg1H+8ckLLEdj7MCzWokAPBgoAi6Aq+5l65U=
Date: Sat, 18 Jan 2020 14:22:12 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] iio: adc: stm32-adc: don't print an error on probe
 deferral
Message-ID: <20200118142212.55ea44fd@archlinux>
In-Reply-To: <1578921539-6353-1-git-send-email-fabrice.gasnier@st.com>
References: <1578921539-6353-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_062227_132383_8F8D4D19 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: etienne.carriere@st.com, lars@metafoo.de, olivier.moysan@st.com,
 alexandre.torgue@st.com, linux-iio@vger.kernel.org, pmeerw@pmeerw.net,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com, knaack.h@gmx.de,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Jan 2020 14:18:59 +0100
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> From: Etienne Carriere <etienne.carriere@st.com>
> 
> Do not print an error trace when deferring probe for some resource.
> 
> Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Applied.

Thanks,

Jonathan

> ---
>  drivers/iio/adc/stm32-adc-core.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
> index 97655d7..2df88d2 100644
> --- a/drivers/iio/adc/stm32-adc-core.c
> +++ b/drivers/iio/adc/stm32-adc-core.c
> @@ -688,7 +688,8 @@ static int stm32_adc_probe(struct platform_device *pdev)
>  	priv->vref = devm_regulator_get(&pdev->dev, "vref");
>  	if (IS_ERR(priv->vref)) {
>  		ret = PTR_ERR(priv->vref);
> -		dev_err(&pdev->dev, "vref get failed, %d\n", ret);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(&pdev->dev, "vref get failed, %d\n", ret);
>  		return ret;
>  	}
>  
> @@ -696,7 +697,8 @@ static int stm32_adc_probe(struct platform_device *pdev)
>  	if (IS_ERR(priv->aclk)) {
>  		ret = PTR_ERR(priv->aclk);
>  		if (ret != -ENOENT) {
> -			dev_err(&pdev->dev, "Can't get 'adc' clock\n");
> +			if (ret != -EPROBE_DEFER)
> +				dev_err(&pdev->dev, "Can't get 'adc' clock\n");
>  			return ret;
>  		}
>  		priv->aclk = NULL;
> @@ -706,7 +708,8 @@ static int stm32_adc_probe(struct platform_device *pdev)
>  	if (IS_ERR(priv->bclk)) {
>  		ret = PTR_ERR(priv->bclk);
>  		if (ret != -ENOENT) {
> -			dev_err(&pdev->dev, "Can't get 'bus' clock\n");
> +			if (ret != -EPROBE_DEFER)
> +				dev_err(&pdev->dev, "Can't get 'bus' clock\n");
>  			return ret;
>  		}
>  		priv->bclk = NULL;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
