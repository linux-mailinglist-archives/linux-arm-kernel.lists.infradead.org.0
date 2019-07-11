Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C596659FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 17:07:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FNme2wWUt7VH6bdek6aVkOQb8+vGctX9Mv0X6v4Ua0w=; b=ki1IC4THzrsN1K
	CLI3WDw3yO6sqC0WzESqT1AmWsWKd0N60Ej0j4C43aqVL5AFaUOcjfPjsccYiQMUgwbrjqoQNav9h
	jbIkDz7nJGb1Cpdo7qgqkoZSnHwD6xro7ciG0papls5LocVwuVro8XI01+H0bODDiFyMcZqtgKUMw
	fazr9JnEF3uEcfyIO4A8a5VKUFVrsbMTjAVFwaf70k7bVA4+JCyFK+kRVxpnkgdlSATVLO+JAKHPS
	mpBqDI3pxmlO4RHFZr/3aES81+QXLe0NodJCiQRm6F3DPRZvHk6bKnLeMR/0eQsGpKMlMNwL2KHhu
	IpiTTf7kra1Jdiq4xg9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlaex-0006ZL-Qf; Thu, 11 Jul 2019 15:06:59 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlaej-0006Yu-LS
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 15:06:46 +0000
Received: by mail-pf1-x444.google.com with SMTP id i189so2889555pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 08:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bReqO5jQsSZW0F1H8jewwqywC8kIWjwq+tdThkdVeG8=;
 b=Yh1L7+VabKoUHQqB4kt31tOafvZr+g3eGc9hP5fd0NVfMPiLQYXaS94RiZbN4lfZiA
 IaJicDs9h2XrbKFSTvjnJNG6WkpMjwFZUtk5s7CNpfZQFbGq5nfrz14zlB1/nwitf359
 rCALpWMCR3WC+9zXqWiJFWkzbKgCryjCEiVRN5FmVrdbVDqHAlYZKJ82lmNgJ5hgXKZM
 QgPnYyaEv76c2eIVIjoYsb8UbUHsF+85K01LmfXY7vnrT1TXTbxCr9ianxN/Da00Dmcf
 SL2yoc4aNxBQhpKWjDZSpJAosQI+ee78EvxWZa1qmnJh57m7zH77y+eZ/cHTL83T2C1a
 rIAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bReqO5jQsSZW0F1H8jewwqywC8kIWjwq+tdThkdVeG8=;
 b=lY851Ba27Rj2xN8EpXYXkV9D4RIVlSkGOLD7F1SCFaaJp1RfTvTW7jVC7PRqn+Uf/3
 PliS4WaFDZosuZW1j5Oj15dJm5T3hpQRXUvmn+qIlU5QiaO0pkXQVie5ac9Gy5yVuBbi
 LQbkKOy8BaftUkT8U/U7LcdC1ZfegeF9qOJxuxP4AS2eaxizWXRSswgpAzcxJQBa5MC8
 h5MrLsWV35kL+ebfjx9OeSl62NdL5LBgeZy9s3taTZ8XzbCotnVt2GT+segd6hPNd8Ye
 ctf3ZxRhSIT4mNoF5abvsG9VxC7zQd6RoZcv3ls+wc/rnIkHO+hm0L1A2PNklBQ7Z5e9
 +R8w==
X-Gm-Message-State: APjAAAWu7YqBssFeaEIX7wyDObWxQzs5J5Jd8fEg7KhdK6ql6+OTHtHa
 DX0iytYrNZ5pZDCCZdiYSWc/yw==
X-Google-Smtp-Source: APXvYqwybLYOQpq3m9ZZk/ESBRLmFo1YB4gta01w60F59LdyqKZ9l3cDqUd7fLdFctGzmcEuIAr9ZQ==
X-Received: by 2002:a17:90a:2343:: with SMTP id
 f61mr5470666pje.130.1562857605136; 
 Thu, 11 Jul 2019 08:06:45 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id l124sm5866595pgl.54.2019.07.11.08.06.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 08:06:44 -0700 (PDT)
Date: Thu, 11 Jul 2019 08:07:54 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Subject: Re: [PATCH v3 07/14] clk: qcom: hfpll: register as clock provider
Message-ID: <20190711150754.GH7234@tuxbook-pro>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
 <20190625164733.11091-8-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625164733.11091-8-jorge.ramirez-ortiz@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_080645_706805_B28A2421 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

> Make the output of the high frequency pll a clock provider.
> On the QCS404 this PLL controls cpu frequency scaling.
> 
> Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
> Acked-by: Stephen Boyd <sboyd@kernel.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/clk/qcom/hfpll.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/qcom/hfpll.c b/drivers/clk/qcom/hfpll.c
> index 87b7f46d27e0..0ffed0d41c50 100644
> --- a/drivers/clk/qcom/hfpll.c
> +++ b/drivers/clk/qcom/hfpll.c
> @@ -53,6 +53,7 @@ static int qcom_hfpll_probe(struct platform_device *pdev)
>  	struct regmap *regmap;
>  	struct clk_hfpll *h;
>  	struct clk *pclk;
> +	int ret;
>  	struct clk_init_data init = {
>  		.parent_names = (const char *[]){ "xo" },
>  		.num_parents = 1,
> @@ -87,7 +88,14 @@ static int qcom_hfpll_probe(struct platform_device *pdev)
>  	h->clkr.hw.init = &init;
>  	spin_lock_init(&h->lock);
>  
> -	return devm_clk_register_regmap(&pdev->dev, &h->clkr);
> +	ret = devm_clk_register_regmap(dev, &h->clkr);
> +	if (ret) {
> +		dev_err(dev, "failed to register regmap clock: %d\n", ret);
> +		return ret;
> +	}
> +
> +	return devm_of_clk_add_hw_provider(dev, of_clk_hw_simple_get,
> +					   &h->clkr.hw);
>  }
>  
>  static struct platform_driver qcom_hfpll_driver = {
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
