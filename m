Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B39B610CEAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 19:56:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+hutMqtqXD7cdU4TDsdIaegcaKtvo/thfmsoZEOBWI=; b=L2V2gsFVJNbYIc
	JI7TyznIgcjVlA0KusuEwIjiuz/QPYUXYij1kK8gdjlBxakTqJ2OxvdM9PjD04CAx/5NT1ppGwqQB
	Q0rO1AfguyMFKzGHXX61firPCUHrxlIKIgh2x1ckSJlfGxUb3nB2K7b9FApnJsR5nCYVdC1qFsKRx
	b/DK3Lpu0z7OKnQHelPm995PHfF8RX2c+9DDuPee22DbsA1Al9FueoZ1lxV1YGpoZs+cknRUfbydL
	VxnOC9fs6cR3gJ6hNIbazWt2MKDG2h9537G187Q/T6WRUfj/zFD987gn0fUYniw0zEMGtBaG7KNOt
	a6IfUv6AjS9ICq4HCKMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaOy3-0007sG-Pm; Thu, 28 Nov 2019 18:56:43 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaOxv-0007qZ-9f
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 18:56:36 +0000
Received: by mail-pg1-x541.google.com with SMTP id i5so4975374pgj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 10:56:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=X4s7u42R7m21KqCIzun+91e/z6/pprds5iyeLMuyZjA=;
 b=vUB2s48DwSj1GeQUCGhfF5En4oEF5BAUepS1PETwANDFYI6SLRvYbpWrBj2npf+IZ9
 LS4x3I/x1nDuNYx7xa84RUt0Z5Zp6GyZBQwXaJW4BJfdvW12vrvOW5i41P3bw3FeNAG8
 bEhYsin1k3ynuqs/RwFg+TlExbDu+1PtJOJ/i01s7q28dE9tHwDd++4pqnz0zFNwGOWU
 yastfgisFC9blkFrOXjt9jp9F7qbKzX6URY6pf3jR1RsLlb/VNPWmvxm14pM/L4EIQLy
 IEVpM7WZyW76vfHcids/7sFLaUCw8FOJ2tV5EaHvHbsuBQD+Q5ICp0fJzk/ifIVxUZKI
 VWsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=X4s7u42R7m21KqCIzun+91e/z6/pprds5iyeLMuyZjA=;
 b=mrEY5Yzq1PmPLFnHdq+gk6ar1r2J/dgrlbkpobtl7QapWJcna+WwmSwoES59aBvY+o
 ByrhBoL25r9D/zw7q7yYAsNn1Sdjj4LODMxX5bTiV0jmTg12itIDQuAyfitDlZ8hBMLJ
 JKQ3ETFhk7TzRPgsdUEHnngx2wmsOYpPBTHvlxC5ECkr3sEbnY3MEZI+gpcjTMB6RwRz
 zBV0zYLz1U1fa2l/LrAcSaQeNOCTLiOHx4HciY4HTj29dGxBHc/XyaaEyKw96BtLlvtJ
 N2irM29AwGdpRRxQijyW7A3X1TiEcsOhXW6W7jNoMq4YWgeLn8LuqghCjS8CdiW5zhjU
 ATLg==
X-Gm-Message-State: APjAAAUE+5hc7cHGTBHSZ5CBzKwY05dFyx5KF8fH1EfmL3UYG/7n2cId
 7fOPP6olasqiO5wUiBFBVGGE9A==
X-Google-Smtp-Source: APXvYqzGZz3sj0sr+yoE4xRhkabCKJUtpPxRDdtpg7LbtS4ixXYofF4Lp9bKjUaWV8tGrilbFzJ6HA==
X-Received: by 2002:aa7:9ec9:: with SMTP id r9mr1390358pfq.85.1574967393821;
 Thu, 28 Nov 2019 10:56:33 -0800 (PST)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id x3sm11356267pjq.10.2019.11.28.10.56.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 10:56:33 -0800 (PST)
Date: Thu, 28 Nov 2019 10:56:30 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH v1] clk: Convert managed get functions to devm_add_action
 API
Message-ID: <20191128185630.GK82109@yoga>
References: <3d8a58bf-0814-1ec1-038a-10a20b9646ad@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3d8a58bf-0814-1ec1-038a-10a20b9646ad@free.fr>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_105635_469169_468D0679 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Guenter Roeck <linux@roeck-us.net>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 26 Nov 08:13 PST 2019, Marc Gonzalez wrote:

> Date: Tue, 26 Nov 2019 13:56:53 +0100
> 
> Using devm_add_action_or_reset() produces simpler code and smaller
> object size:
> 
> 1 file changed, 16 insertions(+), 46 deletions(-)
> 
>     text	   data	    bss	    dec	    hex	filename
> -   1797	     80	      0	   1877	    755	drivers/clk/clk-devres.o
> +   1499	     56	      0	   1555	    613	drivers/clk/clk-devres.o
> 
> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>

Looks neat

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  drivers/clk/clk-devres.c | 62 +++++++++++-----------------------------
>  1 file changed, 16 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/clk/clk-devres.c b/drivers/clk/clk-devres.c
> index be160764911b..04379c1f203e 100644
> --- a/drivers/clk/clk-devres.c
> +++ b/drivers/clk/clk-devres.c
> @@ -4,31 +4,29 @@
>  #include <linux/export.h>
>  #include <linux/gfp.h>
>  
> -static void devm_clk_release(struct device *dev, void *res)
> +static void __clk_put(void *clk)
>  {
> -	clk_put(*(struct clk **)res);
> +	clk_put(clk);
>  }
>  
>  struct clk *devm_clk_get(struct device *dev, const char *id)
>  {
> -	struct clk **ptr, *clk;
> +	struct clk *clk = clk_get(dev, id);
>  
> -	ptr = devres_alloc(devm_clk_release, sizeof(*ptr), GFP_KERNEL);
> -	if (!ptr)
> -		return ERR_PTR(-ENOMEM);
> -
> -	clk = clk_get(dev, id);
> -	if (!IS_ERR(clk)) {
> -		*ptr = clk;
> -		devres_add(dev, ptr);
> -	} else {
> -		devres_free(ptr);
> -	}
> +	if (!IS_ERR(clk))
> +		if (devm_add_action_or_reset(dev, __clk_put, clk))
> +			clk = ERR_PTR(-ENOMEM);
>  
>  	return clk;
>  }
>  EXPORT_SYMBOL(devm_clk_get);
>  
> +void devm_clk_put(struct device *dev, struct clk *clk)
> +{
> +	devm_release_action(dev, __clk_put, clk);
> +}
> +EXPORT_SYMBOL(devm_clk_put);
> +
>  struct clk *devm_clk_get_optional(struct device *dev, const char *id)
>  {
>  	struct clk *clk = devm_clk_get(dev, id);
> @@ -116,42 +114,14 @@ int __must_check devm_clk_bulk_get_all(struct device *dev,
>  }
>  EXPORT_SYMBOL_GPL(devm_clk_bulk_get_all);
>  
> -static int devm_clk_match(struct device *dev, void *res, void *data)
> -{
> -	struct clk **c = res;
> -	if (!c || !*c) {
> -		WARN_ON(!c || !*c);
> -		return 0;
> -	}
> -	return *c == data;
> -}
> -
> -void devm_clk_put(struct device *dev, struct clk *clk)
> -{
> -	int ret;
> -
> -	ret = devres_release(dev, devm_clk_release, devm_clk_match, clk);
> -
> -	WARN_ON(ret);
> -}
> -EXPORT_SYMBOL(devm_clk_put);
> -
>  struct clk *devm_get_clk_from_child(struct device *dev,
>  				    struct device_node *np, const char *con_id)
>  {
> -	struct clk **ptr, *clk;
> -
> -	ptr = devres_alloc(devm_clk_release, sizeof(*ptr), GFP_KERNEL);
> -	if (!ptr)
> -		return ERR_PTR(-ENOMEM);
> +	struct clk *clk = of_clk_get_by_name(np, con_id);
>  
> -	clk = of_clk_get_by_name(np, con_id);
> -	if (!IS_ERR(clk)) {
> -		*ptr = clk;
> -		devres_add(dev, ptr);
> -	} else {
> -		devres_free(ptr);
> -	}
> +	if (!IS_ERR(clk))
> +		if (devm_add_action_or_reset(dev, __clk_put, clk))
> +			clk = ERR_PTR(-ENOMEM);
>  
>  	return clk;
>  }
> -- 
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
