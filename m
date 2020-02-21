Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A971689A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 22:56:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/bqr1pnrM0AMYD/n3zfHFzd7xeosg1QFvTRSnQYXeGo=; b=A/mn5rWpr23xBZ
	rR7jnLkv+hEG3cwugVPG1XyJn7LFkD0bXL4dWHLkSYzQjIIFlvaF4Aq3RAyCU9ocwOXYsqUkOaFv1
	CbvoSCTUH0O4dxih0/IGDYUgUGij0v0VaYWxrtnbvtI6RG9j2GTEQqOzmVT47R0GVkuRBxyl6fAE3
	IviTgEyYdPLzmkmrQpOUrtlkPyXQQMfpzphyikZi5RHkKe+1lB4TAhkNBJ05egetS5XLYxgL8vyVi
	y/rxei/tYExf+tMEoFTkfoPCOiT/+HW2mE/nbnvM+gDOPAOLFdKjal6yNAAOVgXXXKVaAmpTHJSth
	puz95KFI/wFTSPYJP1hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5GHT-0005z8-C8; Fri, 21 Feb 2020 21:56:19 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5GHJ-0005yC-F3
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 21:56:12 +0000
Received: by mail-pl1-x642.google.com with SMTP id d9so1420720plo.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 13:56:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4R75gLHGBZqI7rZdCrlVgn8bgkA+VU53aPQUf73iw7U=;
 b=I+k7ayqyClm2D7rCoFnih/D2ZbHNrdAKdYMiZsgvr3/8YQ/PswRNV+Ag8sRHA13Fl8
 5GG8QlXX8xyyeg5ZjML/PN3ZnZkcLGTfRc/qeTqLurZJVoPF9IvmFmBJjKScrnuS1Zmg
 Hu9BLmU8x4oXbNU9LW3fVSWW2PSr2sv8KWZRRwkrq0WsIuz8/eHaMACRA9dYAeoldwrV
 QbfLzPGYYw37ekbgDnKPEDSezIlGU0+4XzToj6Be+f0qtzwzMxZvnjLwVQS8sh9Osuoq
 eE7m4SGh5fiyElgoHNhVF1/uU3j79QFd6L0vzHwZjGLSRbvCdZz6xHq1invHhlCy+Nsj
 vpbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4R75gLHGBZqI7rZdCrlVgn8bgkA+VU53aPQUf73iw7U=;
 b=gfPtTqSPwUVmq09U+bu0qaD+p+2OdMzEasg8pMG2Y6o4a5n/jGKyPzJPNwltEpAXPf
 5SQGQYQmtpagSgKFsxr4bYMJky0Z33h0iWNX6Z3KNoadKsZOd0oimHLzhJ+NopqRCzkp
 y7XLWWQahS0rqgdqzhJOU18nxyJ/zfK73/zI/9sFYxUn13Ks8Gv8PfU5ax8jgEOh9B+8
 iA+cjHHrHw8mNrNVYZ1sU4xdP7Hy+DdynOfcsyW/paEAF+y0BOv/FBJTVRLT/Q6tr5WJ
 vuUXlMJEZmLkXGv0ktlew4+hrqiFhifc4CbOGvy4dcO1m9RdC/VgmjzH+xQ/WbmHUp1J
 Rv0Q==
X-Gm-Message-State: APjAAAWf5jIZIM7LpArELDDFnH9H5pRJsNMR8gIkKvaCGCuc7kuasL+o
 TmSWmX+UnZ29dvS2h5LXiGRvFw==
X-Google-Smtp-Source: APXvYqzBIUmw7IC4MYwzkgRvIoSRfaSA2ePp8ibxXugv7bCVL8F2ywUMJumZw5ngey7+HU21z3EjsA==
X-Received: by 2002:a17:902:8545:: with SMTP id
 d5mr36651230plo.116.1582322167908; 
 Fri, 21 Feb 2020 13:56:07 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id h26sm3931993pfr.9.2020.02.21.13.56.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:56:07 -0800 (PST)
Date: Fri, 21 Feb 2020 14:56:05 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH 5/9] remoteproc: imx_rproc: parse early-booted property
Message-ID: <20200221215605.GC10368@xps15>
References: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
 <1582097265-20170-6-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582097265-20170-6-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_135610_618422_8DCAFF77 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ohad@wizery.com, devicetree@vger.kernel.org, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 03:27:41PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> If early-property exists, there is no need to check syscon.
> Just mark early_boot as true.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/remoteproc/imx_rproc.c | 18 +++++++++++-------
>  1 file changed, 11 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
> index b9fabe269fd2..e31ea1090cf3 100644
> --- a/drivers/remoteproc/imx_rproc.c
> +++ b/drivers/remoteproc/imx_rproc.c
> @@ -483,7 +483,9 @@ static int imx_rproc_configure_mode(struct imx_rproc *priv)
>  	int ret;
>  	u32 val;
>  
> -	if (of_get_property(dev->of_node, "early-booted", NULL)) {
> +	if (dcfg->variants == IMX7ULP) {

Where does dcfg->variants comes from?  

This patch doesn't compile, nor does the one before it.  I will not review
another patchset like that. 

> +		priv->early_boot = true;
> +	} else if (of_get_property(dev->of_node, "early-booted", NULL)) {
>  		priv->early_boot = true;
>  	} else {
>  		ret = regmap_read(priv->regmap, dcfg->src_reg, &val);
> @@ -509,15 +511,17 @@ static int imx_rproc_probe(struct platform_device *pdev)
>  	struct rproc *rproc;
>  	struct regmap_config config = { .name = "imx-rproc" };
>  	const struct imx_rproc_dcfg *dcfg;
> -	struct regmap *regmap;
> +	struct regmap *regmap = NULL;
>  	int ret;
>  
> -	regmap = syscon_regmap_lookup_by_phandle(np, "syscon");
> -	if (IS_ERR(regmap)) {
> -		dev_err(dev, "failed to find syscon\n");
> -		return PTR_ERR(regmap);
> +	if (!of_get_property(np, "early-booted", NULL)) {
> +		regmap = syscon_regmap_lookup_by_phandle(np, "syscon");
> +		if (IS_ERR(regmap)) {
> +			dev_err(dev, "failed to find syscon\n");
> +			return PTR_ERR(regmap);
> +		}
> +		regmap_attach_dev(dev, regmap, &config);
>  	}
> -	regmap_attach_dev(dev, regmap, &config);
>  
>  	/* set some other name then imx */
>  	rproc = rproc_alloc(dev, "imx-rproc", &imx_rproc_ops,
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
