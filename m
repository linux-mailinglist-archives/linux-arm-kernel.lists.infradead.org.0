Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1351265987
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 16:57:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J3UGitqjNgHygq1De5RhMTuDWfO5yNhrZo/SyNK2GeM=; b=jNZ+jR3aVTwr2E
	4H1qWhH/RmQjtkGRxPTTqVi/kKSa7rt/XvQWL2KpYPVnbB0B0JIWFdMx+PVQX6eAswFfa7Ff31j9V
	mIXNRIPapKG1Z1+H6bq/eob5T/WaVuRnnEgYLN3PMDYgI9leKndEkvIKfeoPcGxkRKe83F0HUfhgl
	YZjsylx+2hGf+4tIVgmQ+kmsvzHkmrocMBTtxqzNulXb2ZXnzEn6zZ5Jntv6NZGa7lpeowIDPit+l
	CSwO+5NUT8m02HIT6j8UIa+6B2rgP9H1BiF7b33ILi+gGYMANPMNMmKS9Fj/8tlIE+jecMgdrQhg3
	/KGCd71f437PFNpAp9Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlaW2-0001Nd-Qq; Thu, 11 Jul 2019 14:57:46 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlaVq-0001N1-Rb
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 14:57:36 +0000
Received: by mail-pl1-x643.google.com with SMTP id i2so3178561plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 07:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1/51w3laLLHPJ0Jx8O5jQMFKbvaBG/KhA0i4QusfUus=;
 b=NUlVnSN1ZMozKzTTGTTf+dnmZy+oc7h+fkpA9vhU47HxFHvlVDPSulkA1Se+YW0lul
 a2Hl+Y+UF18CpnIowTxwNNiel7ZRfnqqs8kywkv/NBUopy1XvcOOZJMB3iAT0EXbtseS
 VAzcoF4h8N7Q9r6KXfZdvxPjGp0UjEV+v3L3IgsHLIyiRi7CrwchE/rsxF593RlIxYHi
 3wiwOvkX6fhJh2rotOBUo9vVg2/Xyp0lUMABQezBmPnrFbCPGRndV2BOmlH/aWDp57+s
 gfmEyQlNCfGHDvidcClyVlOqb9FZMYOAicIGBfnKPPwvWhttN9JYVRiE24tySch7kg15
 oZXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1/51w3laLLHPJ0Jx8O5jQMFKbvaBG/KhA0i4QusfUus=;
 b=Rfmf26sh+rROKzzkMNhf8aoW44havVSZG2pvK1EvGGzoXA+3nyvgwlID1Ae0+2hWBV
 X378OUfe1HKgCz0lSUGaGOhuQuCh5RAbmAjsL9m0hGMxFKfKovkhPvjA7md3kXg53X5q
 Uuf13BLNJX25CGoY1O62/XSrla1JhsvvjqvCIVqUNCYybSxTnscjG1Thdz28IdTtUzyR
 LR6DYxwNfAoPbA2ohz83VA2xQn4RRUGnonBwW1aPEkNm+yEkaKGvgYdPgChuPkbRNCgi
 XDP+ZCkNYoEAityB6eV5Um+9Y228XgInPgVCgSvIq1UdLgYaBPXU7i0WdBWaWUSEga6n
 OAug==
X-Gm-Message-State: APjAAAW6xN9ay79QvD+T7dlKjMI9pH7Dmntqfw0z7YBnUNFAdprzoKMx
 YfmNvIycJBCAZK6l7gHdIQZhOQ==
X-Google-Smtp-Source: APXvYqz9ilITyyaY2+RDyr6nQhrALzPWqIjNUnMLGWpxZ53G74RZ+C2rjf+qUux7JInSF+mZPbR+/g==
X-Received: by 2002:a17:902:848b:: with SMTP id
 c11mr5083756plo.217.1562857053720; 
 Thu, 11 Jul 2019 07:57:33 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id x13sm6878242pfn.6.2019.07.11.07.57.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 07:57:33 -0700 (PDT)
Date: Thu, 11 Jul 2019 07:58:38 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Subject: Re: [PATCH v3 05/14] clk: qcom: apcs-msm8916: get parent clock names
 from DT
Message-ID: <20190711145838.GF7234@tuxbook-pro>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
 <20190625164733.11091-6-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625164733.11091-6-jorge.ramirez-ortiz@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_075734_917901_AB923B68 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: mark.rutland@arm.com, heiko@sntech.de, mturquette@baylibre.com,
 will.deacon@arm.com, david.brown@linaro.org, linux-clk@vger.kernel.org,
 jassisinghbrar@gmail.com, sibis@codeaurora.org, jagan@amarulasolutions.com,
 devicetree@vger.kernel.org, niklas.cassel@linaro.org, arnd@arndb.de,
 linux-arm-msm@vger.kernel.org, olof@lixom.net, robh+dt@kernel.org,
 horms+renesas@verge.net.au, linux-arm-kernel@lists.infradead.org,
 sboyd@kernel.org, linux-kernel@vger.kernel.org, amit.kucheria@linaro.org,
 vkoul@kernel.org, khasim.mohammed@linaro.org, enric.balletbo@collabora.com,
 georgi.djakov@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 25 Jun 09:47 PDT 2019, Jorge Ramirez-Ortiz wrote:

> Allow accessing the parent clock names required for the driver
> operation by using the device tree node.
> 
> This permits extending the driver to other platforms without having to
> modify its source code.
> 
> For backwards compatibility leave previous values as default.
> 
> Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/clk/qcom/apcs-msm8916.c | 23 ++++++++++++++++++++---
>  1 file changed, 20 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/qcom/apcs-msm8916.c b/drivers/clk/qcom/apcs-msm8916.c
> index a6c89a310b18..dd82eb1e5202 100644
> --- a/drivers/clk/qcom/apcs-msm8916.c
> +++ b/drivers/clk/qcom/apcs-msm8916.c
> @@ -19,7 +19,7 @@
>  
>  static const u32 gpll0_a53cc_map[] = { 4, 5 };
>  
> -static const char * const gpll0_a53cc[] = {
> +static const char *gpll0_a53cc[] = {
>  	"gpll0_vote",
>  	"a53pll",
>  };
> @@ -50,6 +50,8 @@ static int qcom_apcs_msm8916_clk_probe(struct platform_device *pdev)
>  	struct regmap *regmap;
>  	struct clk_init_data init = { };
>  	int ret = -ENODEV;
> +	const char *parents[2];
> +	int pll_index = 0;
>  
>  	regmap = dev_get_regmap(parent, NULL);
>  	if (!regmap) {
> @@ -61,6 +63,16 @@ static int qcom_apcs_msm8916_clk_probe(struct platform_device *pdev)
>  	if (!a53cc)
>  		return -ENOMEM;
>  
> +	/* legacy bindings only defined the pll parent clock (index = 0) with no
> +	 * name; when both of the parents are specified in the bindings, the
> +	 * pll is the second one (index = 1).
> +	 */
> +	if (of_clk_parent_fill(parent->of_node, parents, 2) == 2) {
> +		gpll0_a53cc[0] = parents[0];
> +		gpll0_a53cc[1] = parents[1];
> +		pll_index = 1;
> +	}
> +
>  	init.name = "a53mux";
>  	init.parent_names = gpll0_a53cc;
>  	init.num_parents = ARRAY_SIZE(gpll0_a53cc);
> @@ -76,10 +88,11 @@ static int qcom_apcs_msm8916_clk_probe(struct platform_device *pdev)
>  	a53cc->src_shift = 8;
>  	a53cc->parent_map = gpll0_a53cc_map;
>  
> -	a53cc->pclk = devm_clk_get(parent, NULL);
> +	a53cc->pclk = of_clk_get(parent->of_node, pll_index);
>  	if (IS_ERR(a53cc->pclk)) {
>  		ret = PTR_ERR(a53cc->pclk);
> -		dev_err(dev, "failed to get clk: %d\n", ret);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(dev, "failed to get clk: %d\n", ret);
>  		return ret;
>  	}
>  
> @@ -87,6 +100,7 @@ static int qcom_apcs_msm8916_clk_probe(struct platform_device *pdev)
>  	ret = clk_notifier_register(a53cc->pclk, &a53cc->clk_nb);
>  	if (ret) {
>  		dev_err(dev, "failed to register clock notifier: %d\n", ret);
> +		clk_put(a53cc->pclk);
>  		return ret;
>  	}
>  
> @@ -109,6 +123,8 @@ static int qcom_apcs_msm8916_clk_probe(struct platform_device *pdev)
>  
>  err:
>  	clk_notifier_unregister(a53cc->pclk, &a53cc->clk_nb);
> +	clk_put(a53cc->pclk);
> +
>  	return ret;
>  }
>  
> @@ -117,6 +133,7 @@ static int qcom_apcs_msm8916_clk_remove(struct platform_device *pdev)
>  	struct clk_regmap_mux_div *a53cc = platform_get_drvdata(pdev);
>  
>  	clk_notifier_unregister(a53cc->pclk, &a53cc->clk_nb);
> +	clk_put(a53cc->pclk);
>  
>  	return 0;
>  }
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
