Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B76F1141807
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 15:31:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EtLkrhrGBw3aAVglywlzwZD3fEFPtRZ6ND6iKc7HFog=; b=svlNBs+WAYzUNt
	xRXa6kU7WOi4nIpg5Odrch31Smf3Hqs4+eJqvvJVd+0Vfc8Yap1tx3TnVr/+jvGkAEHyk+98aAeqX
	kTvHw9ZlsvsPFmfV1rkGUkxiTR2y8GIQn2N461JGFW6+HuXDhF0GfuwqhIjnkBbtXxbQJjrzSbrqL
	qmTPXBkd2P9Nbpu5AWxf5xUZZFSt9OLCbeSffKWvyJ8tOW9ZtWtmFolR4ryRuIN7y9SfbTyNrNoVH
	ZEAUrouM80C3lHhCuo2zJQXr8G6+SyOYGZ/WkRF2ix1HBqUXGhk1khKaQlZv2Hs7LQ2Olv50NJdR8
	uZ0hJe9HMAHAZk7ONaCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isp7r-0006op-04; Sat, 18 Jan 2020 14:30:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isp7k-0006oN-JR
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Jan 2020 14:30:53 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09F202469A;
 Sat, 18 Jan 2020 14:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579357851;
 bh=jfvpugoRaJiaAZmEMxDtm22xX+OLmTaCZAns9JDGkys=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=i0S03MHU7UpyT/JtNyiZqYkXMqCl0L7m3VILZk0LrEsxiEP/h7/21q3ekz5GpRAsp
 VB8BP6+LV0OZh7K0oyrxYE3YrGQRduRgNd3om4/rV1Tf7KqqqUse9g/KcANpAmimS8
 FwPOLxoMebXZ11T9+4dWQ+2ctTmdGV2SJ3dD6caI=
Date: Sat, 18 Jan 2020 14:30:46 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH 1/2] iio: dac: stm32-dac: use reset controller only at
 probe time
Message-ID: <20200118143046.4e6a6b95@archlinux>
In-Reply-To: <1578921266-6025-2-git-send-email-fabrice.gasnier@st.com>
References: <1578921266-6025-1-git-send-email-fabrice.gasnier@st.com>
 <1578921266-6025-2-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_063052_662041_8EAAA292 
X-CRM114-Status: GOOD (  15.76  )
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

On Mon, 13 Jan 2020 14:14:25 +0100
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> From: Etienne Carriere <etienne.carriere@st.com>
> 
> This change removes the reset controller reference from the local
> DAC instance since it is used only at probe time.
> 
> Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Makes sense.

Applied to the togreg branch of iio.git and pushed out as testing
to let those autobuilders poke at it for a few hours.

Thanks,

Jonathan

> ---
>  drivers/iio/dac/stm32-dac-core.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/iio/dac/stm32-dac-core.c b/drivers/iio/dac/stm32-dac-core.c
> index 9e6b4cd..4d93446 100644
> --- a/drivers/iio/dac/stm32-dac-core.c
> +++ b/drivers/iio/dac/stm32-dac-core.c
> @@ -20,13 +20,11 @@
>  /**
>   * struct stm32_dac_priv - stm32 DAC core private data
>   * @pclk:		peripheral clock common for all DACs
> - * @rst:		peripheral reset control
>   * @vref:		regulator reference
>   * @common:		Common data for all DAC instances
>   */
>  struct stm32_dac_priv {
>  	struct clk *pclk;
> -	struct reset_control *rst;
>  	struct regulator *vref;
>  	struct stm32_dac_common common;
>  };
> @@ -94,6 +92,7 @@ static int stm32_dac_probe(struct platform_device *pdev)
>  	struct regmap *regmap;
>  	struct resource *res;
>  	void __iomem *mmio;
> +	struct reset_control *rst;
>  	int ret;
>  
>  	if (!dev->of_node)
> @@ -148,11 +147,11 @@ static int stm32_dac_probe(struct platform_device *pdev)
>  	priv->common.vref_mv = ret / 1000;
>  	dev_dbg(dev, "vref+=%dmV\n", priv->common.vref_mv);
>  
> -	priv->rst = devm_reset_control_get_exclusive(dev, NULL);
> -	if (!IS_ERR(priv->rst)) {
> -		reset_control_assert(priv->rst);
> +	rst = devm_reset_control_get_exclusive(dev, NULL);
> +	if (!IS_ERR(rst)) {
> +		reset_control_assert(rst);
>  		udelay(2);
> -		reset_control_deassert(priv->rst);
> +		reset_control_deassert(rst);
>  	}
>  
>  	if (cfg && cfg->has_hfsel) {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
