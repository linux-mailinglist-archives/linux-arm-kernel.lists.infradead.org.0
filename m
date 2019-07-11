Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B41B5659F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 17:06:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZiJaGT8QC3lRE//8fXgnFYDWlo8MMX+KKD2NYw8q+8=; b=J3CSlcx/YGttHA
	QEhinThQIcm4od8ll0Bc4CYfXwT0m/P7OSoezLzEbGIV66oa79U9UIUB+alFtAa9u60DNBdBVRinI
	2xi1xF6M89KzfPkX5+C83KA2ZPB03w/UZShYzFyIYqhPr9TCCLiLXRJ4HMpE9f4sk7drfhGa17nUO
	LlLanozJx4o6k5xD1tuvJTBGFqqh6VXJgvz+0hlVg5pXG74CwfWFEcvQi+96uqtdBuY3e1gXsp2Qh
	ibWGEfWgQ9KuPsYy7W2JpAWVw54Jmu7xLpShuZBYWg8b6JXXXnql22EiBC8o6Jr+/8PKh0ZI9TbJH
	k1zfVkv3WXcExm6b2ogg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlaeR-0006Jk-HI; Thu, 11 Jul 2019 15:06:27 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlaeE-0006JA-Cq
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 15:06:15 +0000
Received: by mail-pf1-x444.google.com with SMTP id i189so2888859pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 08:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4c2dc7FdeZlI40XoYW7oVDGG9akgiuTr8uhcWS8yCeY=;
 b=CWE8YcZB0HKcuadLXbtPYj6kQ5wYic026seg1ZVQ3b+ApPmyoYWwNSd0mnKX9ohNXA
 jpxMK9+dbpVEbUI8ATFDIvQDf0YLM4pcNS0tuYQfjyYMQ9NfKSEQb0kpeWX2PcE0azhP
 egtlCiDuPqnWZQfcZmZw8J8u1YU62gkqkX+RoS1F5r5stTmEDfwxaEJUrA2j+shkdq7J
 r1Zl9gWRixLrdySBL2nCQPmP0Yn4vXIIDqBK1U6Wt2gTvksAnTxve2JEFWdcui5vuI+t
 56OIfwXw9RWrVLjsLcOJcFZOxIuRgyrOIDLi4Enun9yZVkuRjv1UVNzCypwA0pYfGrzv
 s/HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4c2dc7FdeZlI40XoYW7oVDGG9akgiuTr8uhcWS8yCeY=;
 b=sx06RF+EGNFfuxKjvAziChsZzRlv2IjphM8Tg+vuk5O/b+cyp4hi+rzsKG9EZ8rsAj
 nMPw2+SadxU6pOE9Pl5sxcHhB1t6coE7qEyuo4hKo2fPzmkW3zKpRqxOe52w9+PnNyEO
 iJFKlj0NotNX4MKbwP81xgAtASsDG6ZpOkfbeAhgaV7KDalXCf+RQz3eLMjys2pQOoUz
 ztnjbWOyv/8r77f8KiNWtwOdmQX7npBILxmVi2ywPtxy7TmcboEkB/2Oh6W2UZZ0AEWD
 Gw4rwcvr3bF2H3pRe1UOLVNxemeq2akdB/uPgoJjRlhg2yvelctIG8GgqNHxwbT6Ejjj
 2GiA==
X-Gm-Message-State: APjAAAX/dkUYYqFaP7MJdGzwodWSc1pCr+1waxzIbm/c5VI+7LwHaXsM
 DyWO9ZZyfaBtmMHy6snOyIz52A==
X-Google-Smtp-Source: APXvYqyTRN38u90ThnFEWr3vJtVT6c/7HeHr0dQPeDSpuUgsAlIZ8GEDPOCwlDn7VSwfNYWXYmf7JA==
X-Received: by 2002:a17:90a:2008:: with SMTP id n8mr5346113pjc.4.1562857573492; 
 Thu, 11 Jul 2019 08:06:13 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id s6sm9401870pfs.122.2019.07.11.08.06.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 08:06:12 -0700 (PDT)
Date: Thu, 11 Jul 2019 08:07:23 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Subject: Re: [PATCH v3 06/14] clk: qcom: hfpll: get parent clock names from DT
Message-ID: <20190711150723.GG7234@tuxbook-pro>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
 <20190625164733.11091-7-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625164733.11091-7-jorge.ramirez-ortiz@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_080614_445659_5B88676D 
X-CRM114-Status: GOOD (  16.71  )
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

> Allow accessing the parent clock name required for the driver
> operation using the device tree node.
> 
> This permits extending the driver to other platforms without having to
> modify its source code.
> 
> For backwards compatibility leave the previous value as default.
> 
> Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>

The driver should be updated to use parent_data instead, but I consider
that's an independent change.

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/clk/qcom/hfpll.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/clk/qcom/hfpll.c b/drivers/clk/qcom/hfpll.c
> index a6de7101430c..87b7f46d27e0 100644
> --- a/drivers/clk/qcom/hfpll.c
> +++ b/drivers/clk/qcom/hfpll.c
> @@ -52,6 +52,7 @@ static int qcom_hfpll_probe(struct platform_device *pdev)
>  	void __iomem *base;
>  	struct regmap *regmap;
>  	struct clk_hfpll *h;
> +	struct clk *pclk;
>  	struct clk_init_data init = {
>  		.parent_names = (const char *[]){ "xo" },
>  		.num_parents = 1,
> @@ -75,6 +76,13 @@ static int qcom_hfpll_probe(struct platform_device *pdev)
>  					  0, &init.name))
>  		return -ENODEV;
>  
> +	/* get parent clock from device tree (optional) */
> +	pclk = devm_clk_get(dev, "xo");
> +	if (!IS_ERR(pclk))
> +		init.parent_names = (const char *[]){ __clk_get_name(pclk) };
> +	else if (PTR_ERR(pclk) == -EPROBE_DEFER)
> +		return -EPROBE_DEFER;
> +
>  	h->d = &hdata;
>  	h->clkr.hw.init = &init;
>  	spin_lock_init(&h->lock);
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
